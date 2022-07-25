//
//  JXViewController.m
//  PrintHelloWorld
//
//  Created by 569099804@qq.com on 07/22/2022.
//  Copyright (c) 2022 569099804@qq.com. All rights reserved.
//

#import "JXViewController.h"
#import "JXPrintTool.h"
#import "JXRedView.h"


@interface JXViewController ()
@property (nonatomic, strong) UIImageView *iconImageView;
@end

@implementation JXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor purpleColor];
    JXRedView *view = [[JXRedView alloc] init];
    [view log];
    view.frame = CGRectMake(0, 0, 100, 100);
    [self.view addSubview:view];
    
    [self.view addSubview:self.iconImageView];
    self.iconImageView.frame = CGRectMake(100, 300, 200, 200);
    
    
    
    
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [JXPrintTool sayHello];
    
    self.iconImageView.image = [JXViewController imageWithName:@"abc"];
}

//-(UIImage *)loadBundleImage:(NSString *)imageName{
//    // 获取当前的bundle,self只是在当前pod库中的一个类，也可以随意写一个其他的类
//    NSBundle *currentBundle = [NSBundle bundleForClass:[self class]];
//    NSString *imagefailName = [NSString stringWithFormat:@"%@",imageName];
//
//    NSString *curBundleName = currentBundle.infoDictionary[@"CFBundleName"];
//    NSString *curBundleDirectory = [NSString stringWithFormat:@"%@.bundle",curBundleName];
//
//    NSString *imagePath = [currentBundle pathForResource:imagefailName ofType:nil inDirectory:curBundleDirectory];
//    // 获取图片
//    return [UIImage imageWithContentsOfFile:imagePath];
//}

+ (UIImage *)imageWithName:(NSString *)imageName {
    UIImage *image;
    NSBundle *mainBundle = [NSBundle bundleForClass:[self class]];
    NSBundle *resourceBundle = [NSBundle bundleWithPath:[mainBundle pathForResource:@"PrintHelloWorld.bundle" ofType:nil]];
    if (!resourceBundle) {
        resourceBundle = mainBundle;
    }
    if (resourceBundle) {
        image = [UIImage imageNamed:imageName inBundle:resourceBundle compatibleWithTraitCollection:nil];
    }
    return image ? : [UIImage imageNamed:imageName];
}

#pragma mark - 懒加载

- (UIImageView *)iconImageView
{
    if (!_iconImageView) {
        _iconImageView = [[UIImageView alloc] init];
    }
    return _iconImageView;
}


@end
