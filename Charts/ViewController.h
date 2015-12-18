//
//  ViewController.h
//  Charts
//
//  Created by Aseem 1 on 18/12/15.
//  Copyright (c) 2015 codeBrew. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <PNChart/PNChart.h>
#import "PNCircleChart.h"
#import "PNChartDelegate.h"
@interface ViewController : UIViewController<PNChartDelegate>

@property (nonatomic) BOOL lineChartTrue;
@property (nonatomic) BOOL barChartTrue;
@property (nonatomic) BOOL circleChartTrue;
@property (nonatomic) BOOL pieChartTrue;
@end

