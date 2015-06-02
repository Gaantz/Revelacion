//
//  ViewController.h
//  revelacionextrema
//
//  Created by Cristian Palomino Rivera on 17/05/15.
//  Copyright (c) 2015 Cristian Palomino Rivera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPageViewControllerDataSource>

- (IBAction)startPlayer:(id)sender;
@property (strong, nonatomic) UIPageViewController *pageViewController;

@property (strong, nonatomic) NSArray *imagenes;
@property (strong, nonatomic) NSArray *titulos;
@property (strong, nonatomic) NSArray *descripciones;

@end

