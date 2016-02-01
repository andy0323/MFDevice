//
//  UIDevice+MFSystem.h
//  MFDeviceDemo
//
//  Created by andy on 1/29/16.
//  Copyright © 2016 MFKit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIDevice (MFSystem)

/// cpu使用率
@property (nonatomic, readonly) float mf_cpuUsage;

/// 存储容量
@property (nonatomic, readonly) long long mf_totalDiskSize;

/// 可用存储容量
@property (nonatomic, readonly) long long mf_availableDiskSize;

/// 总内存容量
@property (nonatomic, readonly) long long mf_totalMemoryBytes;

/// 可用内存总容量
@property (nonatomic, readonly) long long mf_availableMemory;

@end
