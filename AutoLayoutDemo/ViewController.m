//
//  ViewController.m
//  AutoLayoutDemo
//
//  Created by DR_Kun on 2018/6/19.
//  Copyright © 2018年 DR_Kun. All rights reserved.
//

#import "ViewController.h"

NSString *cellID = @"CellID";

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic, copy) NSArray *dataSource;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)configData {
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (NSArray *)dataSource {
    if (!_dataSource) {
        self.dataSource = @[@"StackView"];
    }
    return _dataSource;
}

#pragma mark ======= delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _dataSource.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID];
    cell.textLabel.text = self.dataSource[indexPath.row];
    return cell;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 44.0;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
