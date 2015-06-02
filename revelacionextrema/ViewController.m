//
//  ViewController.m
//  revelacionextrema
//
//  Created by Cristian Palomino Rivera on 17/05/15.
//  Copyright (c) 2015 Cristian Palomino Rivera. All rights reserved.
//

#import "ViewController.h"
#import "MediaItem.h"
#import "PageItemViewController.h"

@interface ViewController ()
{
    UIView *rootview;
    MediaItem *mediaitem;
    AUMediaPlayer *mediaplayer;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _imagenes = @[@"a.jpg",@"b.jpg",@"c.jpg",@"e.jpg",@"d.jpg"];
    _titulos = @[@"TITA",@"TITB",@"TITC",@"TITD",@"TITD"];
    _descripciones = @[@"DESA",@"DESB",@"DESC",@"DESD",@"DESD"];
    
    mediaplayer = [self player];
    self.pageViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"PageViewController"];
    self.pageViewController.dataSource = self;
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    PageItemViewController *pageitem = [self viewControllerAtIndex:0];
    NSArray *viewControllers = @[pageitem];
    [self.pageViewController setViewControllers:viewControllers
                             direction:UIPageViewControllerNavigationDirectionForward
                             animated:NO
                             completion:nil];
    
    self.pageViewController.view.frame = CGRectMake(0,
                                                    64,
                                                    self.view.frame.size.width,
                                                    275);
    
    [self addChildViewController:_pageViewController];
    [self.view addSubview:_pageViewController.view];
    [self.pageViewController didMoveToParentViewController:self];
    
    mediaitem = [[MediaItem alloc] init];
    mediaitem.author = @"Revelacion Extrema";
    mediaitem.title = @"Radio";
    mediaitem.uid = @"1";
    mediaitem.remotePath = @"http://198.100.152.234:8010/";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)startPlayer:(id)sender
{
    if(mediaplayer.playbackStatus == AUMediaPlaybackStatusPlaying)
    {
        [mediaplayer stop];
    }else
    {
        [mediaplayer playItem:mediaitem error:nil];
    }
}

- (AUMediaPlayer *)player
{
    return [AUMediaPlayer sharedInstance];
}

- (PageItemViewController *)viewControllerAtIndex:(NSUInteger)index
{
    if (([self.titulos count] == 0) || (index >= [self.titulos count])) {
        return nil;
    }
    
    PageItemViewController *pageitem = [self.storyboard instantiateViewControllerWithIdentifier:@"PageItemViewController"];
    pageitem.mimagen = self.imagenes[index];
    pageitem.mtitulo = self.titulos[index];
    pageitem.mdescripcion = self.descripciones[index];
    pageitem.mindex = index;
    
    return pageitem;
}

#pragma mark - Page View Controller Data Source

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger index = ((PageItemViewController*)viewController).mindex;
    if ((index == 0) || (index == NSNotFound)) {
        return nil;
    }
    
    index--;
    return [self viewControllerAtIndex:index];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger index = ((PageItemViewController*)viewController).mindex;
    
    if (index == NSNotFound) {
        return nil;
    }
    
    index++;
    if (index == [self.titulos count]) {
        return nil;
    }
    return [self viewControllerAtIndex:index];
}

- (NSInteger)presentationCountForPageViewController:(UIPageViewController *)pageViewController
{
    return [self.titulos count];
}

- (NSInteger)presentationIndexForPageViewController:(UIPageViewController *)pageViewController
{
    return 0;
}

@end
