//
//  ViewController.m
//  GCLLintCode
//
//  Created by tggcl on 2018/1/6.
//  Copyright © 2018年 tggcl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
/*
    NSMutableArray *aArr = [NSMutableArray arrayWithArray:@[@1,@2,@3,@4]];
    NSArray *bArr = @[@2,@4,@5,@6];
    NSArray *cArr = [self mergeTwoSortedArrays:aArr :bArr];
    NSLog(@"%@",cArr);
    //return [1,2,2,3,4,4,5,6]
*/
/*
    NSArray *arr = @[@1, @2, @3, @3, @4, @5, @10];
    NSNumber *num = [self firstPositionOfTarget:arr :8];
    NSLog(@"%@",num);
*/
    
//    NSInteger zeroNum = [self trailingZeros:11];
//    NSLog(@"%ld",zeroNum);
    
    
}

#pragma mark - 6. Merge Two Sorted Arrays
- (NSArray *)mergeTwoSortedArrays:(NSArray *)aArr :(NSArray *)bArr{
    
    NSMutableArray *marr = [NSMutableArray arrayWithArray:aArr];
    for (int i = 0; i<bArr.count; i++) {
        NSInteger bNum = [bArr[i] integerValue];
        
        for (int j = 0; j<marr.count; j++) {
            NSInteger aNum = [marr[j] integerValue];
            if (bNum<aNum) {
                [marr insertObject:bArr[i] atIndex:j];
                break;
            }else if (j == aArr.count-1){
                [marr insertObject:bArr[i] atIndex:marr.count];
                break;
            }
        }
    }
    return [marr copy];
}

#pragma mark - 14. First Position of Target
- (NSNumber *)firstPositionOfTarget:(NSArray *)arr :(NSInteger)index{
    if (arr.count-1>index) {
        NSNumber *num = arr[index];
        return num;
    }else{
        return @-1;
    }
}

#pragma mark - 2. Trailing Zeros
- (NSInteger)trailingZeros:(NSInteger)num{
    NSInteger multiResult = 1;
    for (int i = 1; i<=num; i++) {
        multiResult *= i;
    }
    NSLog(@"1.%ld",multiResult);
    NSInteger zeroNum = 0;
    for (int i = 0; i<multiResult; i++) {
        if (multiResult%10 == 0) {
            zeroNum++;
            multiResult = multiResult/10;
        }else{
            break;
        }
    }
    
    return zeroNum;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
