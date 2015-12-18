//
//  ViewController.m
//  Charts
//
//  Created by Aseem 1 on 18/12/15.
//  Copyright (c) 2015 codeBrew. All rights reserved.
//

#import "ViewController.h"
#import <PNChart/PNChart.h>
#import "PNCircleChart.h"
#import "PNChartDelegate.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.lineChartTrue = TRUE;
    self.barChartTrue = FALSE;
    self.circleChartTrue = FALSE;
    if (self.lineChartTrue) {
       
    //For Line Chart
    PNLineChart * lineChart = [[PNLineChart alloc] initWithFrame:CGRectMake(0, 135.0, SCREEN_WIDTH, 200.0)];
    [lineChart setXLabels:@[@"SEP 1",@"SEP 2",@"SEP 3",@"SEP 4",@"SEP 5"]];
    
    // Line Chart No.1
    NSArray * data01Array = @[@60.1, @160.1, @126.4, @262.2, @186.2];
    PNLineChartData *data01 = [PNLineChartData new];
    data01.color = PNFreshGreen;
    data01.itemCount = lineChart.xLabels.count;
    data01.getData = ^(NSUInteger index) {
        CGFloat yValue = [data01Array[index] floatValue];
        return [PNLineChartDataItem dataItemWithY:yValue];
    };
    // Line Chart No.2
    NSArray * data02Array = @[@20.1, @180.1, @26.4, @202.2, @126.2];
    PNLineChartData *data02 = [PNLineChartData new];
    data02.color = PNTwitterColor;
    data02.itemCount = lineChart.xLabels.count;
    data02.getData = ^(NSUInteger index) {
        CGFloat yValue = [data02Array[index] floatValue];
        return [PNLineChartDataItem dataItemWithY:yValue];
    };
    
    lineChart.chartData = @[data01, data02];
    [lineChart strokeChart];
    [self.view addSubview:lineChart];
    } if(self.barChartTrue){
        
        //For BarC hart
        PNBarChart * barChart = [[PNBarChart alloc] initWithFrame:CGRectMake(0, 135.0, SCREEN_WIDTH, 200.0)];
        [barChart setXLabels:@[@"SEP 1",@"SEP 2",@"SEP 3",@"SEP 4",@"SEP 5"]];
        [barChart setYValues:@[@1,  @10, @2, @6, @3]];
        [barChart strokeChart];
        [self.view addSubview:barChart];
    }
    
    
//       if(self.circleChartTrue){
//        
//       PNCircleChart * circleChart = [[PNCircleChart alloc] initWithFrame:CGRectMake(0, 80.0, SCREEN_WIDTH, 100.0) total:[NSNumber numberWithInt:100] current:[NSNumber numberWithInt:60] clockwise:NO shadow:NO];
//       circleChart.backgroundColor = [UIColor clearColor];
//      [circleChart setStrokeColor:PNGreen];
//      [circleChart strokeChart];
//       [self.view addSubview:circleChart];
//   
//   }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
