//
//  ViewController.m
//  Ex174_ex11
//
//  Created by SDT-1 on 2014. 1. 6..
//  Copyright (c) 2014년 SDT-1. All rights reserved.
//
//
#import "ViewController.h"
#define CELL_ID @"CELL_ID"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *data;
}

@end

@implementation ViewController

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"select Row %d",indexPath.row);
}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"악세사리 버튼 눌림 %d",indexPath.row );
}




- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_ID];
    if(0 == indexPath.row)cell.accessoryType = UITableViewCellAccessoryCheckmark;
    else if(1 == indexPath.row)cell.accessoryType = UITableViewCellAccessoryDetailDisclosureButton;
    else if(2 == indexPath.row)cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;

    cell.textLabel.text = data[indexPath.row];
    
    
    cell.textLabel.text = data[indexPath.row];
    return cell;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [data count];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    data = @[@"a",@"b",@"c",@"d",@"e",@"f",@"g",@"h",@"i"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

