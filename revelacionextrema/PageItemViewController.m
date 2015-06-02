//
//  PageItemViewController.m
//  revelacionextrema
//
//  Created by Cristian Palomino Rivera on 17/05/15.
//  Copyright (c) 2015 Cristian Palomino Rivera. All rights reserved.
//

#import "PageItemViewController.h"

@interface PageItemViewController ()

@end

@implementation PageItemViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.titulo.text = self.mtitulo;
    self.descripcion.text = self.mdescripcion;
    self.imagen.image = [UIImage imageNamed:self.mimagen];
    self.imagen.contentMode = UIViewContentModeScaleAspectFit;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
