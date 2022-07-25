//
//  JXBlueView.m
//  PrintHelloWorld
//
//  Created by gaoxinqiang on 2022/7/22.
//

#import "JXBlueView.h"

@implementation JXBlueView

- (instancetype)init
{
    if (self = [super init]) {
        [self UI];
    }
    return self;
}

- (void)UI
{
    self.backgroundColor = [UIColor blueColor];
}

@end
