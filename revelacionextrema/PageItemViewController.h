//
//  PageItemViewController.h
//  revelacionextrema
//
//  Created by Cristian Palomino Rivera on 17/05/15.
//  Copyright (c) 2015 Cristian Palomino Rivera. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageItemViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *imagen;
@property (weak, nonatomic) IBOutlet UILabel *titulo;
@property (weak, nonatomic) IBOutlet UILabel *descripcion;

@property NSString *mimagen;
@property NSString *mtitulo;
@property NSString *mdescripcion;
@property NSUInteger mindex;

@end
