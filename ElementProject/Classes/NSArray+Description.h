//
//  NSArray+Description.h
//  PROFirstProject
//
//  Created by hanPro on 2019/7/20.
//  Copyright © 2019 hanPro. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (Description)


@property (nonatomic,copy) NSString *descriptionArrayLog;


- (void)logDescription;

@end

NS_ASSUME_NONNULL_END
