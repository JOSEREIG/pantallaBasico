//
//  ViewController.m
//  PantallaBasico
//
//  Created by LLBER on 26/10/13.
//  Copyright (c) 2013 LLBER. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



// Problema: Hacer éste ejercicio para que se vea en todos los devices de Apple: iPhone y iPad.


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UITapGestureRecognizer * gesto = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(animacionMovimiento:)];
    [self.view addGestureRecognizer:gesto];
    
}

-(void)animacionMovimiento: (UIGestureRecognizer*) recognizer
{
    CGSize medidaPantalla = [UIScreen mainScreen].bounds.size;
    
    [UIImageView animateWithDuration:2 animations:^{
        recognizer.enabled = NO;
        //self.circulo.center = CGPointMake(320, 480);
        self.circulo.center = CGPointMake(medidaPantalla.width, medidaPantalla.height);
    } completion:^(BOOL finished) {
        [UIImageView animateWithDuration:2 animations:^{
            //self.circulo.center = CGPointMake(320, 0);
            self.circulo.center = CGPointMake(medidaPantalla.width, 0);
        } completion:^(BOOL finished) {
            [UIImageView animateWithDuration:2 animations:^{
                //self.circulo.center = CGPointMake(160, 240);
                self.circulo.center = self.view.center;
            } completion:^(BOOL finished) {
                recognizer.enabled = YES;
            }];
        }];
    }];
    
}

@end

