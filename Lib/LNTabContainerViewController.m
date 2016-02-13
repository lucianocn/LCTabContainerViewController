//
//  LNTabContainerViewController.m
//  Get In Manager
//
//  Created by Luciano Carone do Nascimento on 2/11/16.
//  Copyright © 2016 Tyll Soluções Criativas Ltda. All rights reserved.
//

#import "LNTabContainerViewController.h"

@interface LNTabContainerViewController ()

@property (strong, nonatomic) NSMutableDictionary *viewControllersByIdentifier;
@property (strong, nonatomic) UIViewController *lastViewController;

@end

@implementation LNTabContainerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.viewControllersByIdentifier = [NSMutableDictionary dictionary];
}

- (void)loadViewIdentifier:(NSString *)idenfifier forTab:(NSUInteger)tab
{
    UIViewController *viewController = [self.storyboard instantiateViewControllerWithIdentifier:idenfifier];
    [viewController view];
    
    [self.viewControllersByIdentifier setObject:viewController forKey:@(tab)];
}

- (void)showTab:(NSUInteger)tab
{
    UIViewController *viewController = [self.viewControllersByIdentifier objectForKey:@(tab)];
    
    if (self.lastViewController) {
        [self.lastViewController.view removeFromSuperview];
        [self.lastViewController removeFromParentViewController];
    }
    
    viewController.view.frame = self.view.bounds;
    [self addChildViewController:viewController];
    [self.view addSubview:viewController.view];
    [viewController didMoveToParentViewController:self];
    
    self.lastViewController = viewController;
}

@end
