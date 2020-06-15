//
//  NSArray+Description.m
//  PROFirstProject
//
//  Created by hanPro on 2019/7/20.
//  Copyright © 2019 hanPro. All rights reserved.
//

#import "NSArray+Description.h"
#import "objc/runtime.h"
@implementation NSArray (Description)

static char *KEY = "key";
- (void)setDescriptionArrayLog:(NSString *)descriptionArrayLog
{
    objc_setAssociatedObject(self, KEY, descriptionArrayLog, OBJC_ASSOCIATION_COPY);
}


- (NSString *)descriptionArrayLog
{
    return  objc_getAssociatedObject(self, KEY);
}




- (void)logDescription
{
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%ld -- %@",idx,obj);
    }];
}

@end
