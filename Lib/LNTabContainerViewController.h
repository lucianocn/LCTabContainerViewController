//
//  LNTabContainerViewController.h
//  Get In Manager
//
//  Created by Luciano Carone do Nascimento on 2/11/16.
//  Copyright © 2016 Tyll Soluções Criativas Ltda. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LNTabContainerViewController : UIViewController

- (void)loadViewWithIdentifier:(NSString *)idenfifier forTab:(NSUInteger)tab;
- (void)showTab:(NSUInteger)tab;

@end
