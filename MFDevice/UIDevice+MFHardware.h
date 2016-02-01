//
//  UIDevice+MFHardware.h
//  MFDeviceDemo
//
//  Created by andy on 1/29/16.
//  Copyright © 2016 MFKit. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, MFDeviceType) {
    MFDeviceTypeUnknow,
    MFDeviceTypeSimulator,
    MFDeviceTypeIpad2,
    MFDeviceTypeIpad3,
    MFDeviceTypeIpad4,
    MFDeviceTypeIpadAir,
    MFDeviceTypeIpadMini,
    MFDeviceTypeIpadMiniRetina,
    MFDeviceTypeIpadPro,
    MFDeviceTypeIphone3GS,
    MFDeviceTypeIphone4,
    MFDeviceTypeIphone4S,
    MFDeviceTypeIphone5,
    MFDeviceTypeIphone5C,
    MFDeviceTypeIphone5S,
    MFDeviceTypeIphone6,
    MFDeviceTypeIphone6Plus,
    MFDeviceTypeIphone6S,
    MFDeviceTypeIphone6SPlus,
    MFDeviceTypeIpodTouch3,
    MFDeviceTypeIpodTouch4,
    MFDeviceTypeIpodTouch5,
    MFDeviceTypeIpodTouch6
};

@interface UIDevice (MFHardware)

/** 设备机型 eg：iPhone 6s Plus (A1634/A1687/A1690/A1699) */
@property (nonatomic, readonly) NSString *mf_deviceMode;

/** 设备类型*/
@property (nonatomic, readonly) MFDeviceType mf_deviceType;

/** 设备硬件信息 */
@property (nonatomic, readonly) NSDictionary *mf_deviceHardwareInfo;

#pragma mark - 硬件信息

/// cpu类型
@property (nonatomic, readonly) NSString *mf_cpu;

/// 设备尺寸
@property (nonatomic, readonly) NSString *mf_dimensions;

/// 设备重量
@property (nonatomic, readonly) NSString *mf_weight;

/// 分辨率
@property (nonatomic, readonly) NSString *mf_resolution;

/// dpi
@property (nonatomic, readonly) NSString *mf_dpi;

/// 电池容量
@property (nonatomic, readonly) NSString *mf_batteryVoltage;

/// 蓝牙
@property (nonatomic, readonly) NSString *mf_bluetooth;

/// 屏幕大小
@property (nonatomic, readonly) NSString *mf_screenInch;

/// 无线网卡
@property (nonatomic, readonly) NSString *mf_wlan;

/// 前置摄像头
@property (nonatomic, readonly) NSString *mf_cameraSecondary;

/// 后置摄像头
@property (nonatomic, readonly) NSString *mf_cameraPrimary;

/// 是否支持陀螺仪
@property (nonatomic, readonly) BOOL mf_supportGyroscope;

/// 是否支持方向传感器
@property (nonatomic, readonly) BOOL mf_supportDirctorySencer;

/// 是否支持距离传感器
@property (nonatomic, readonly) BOOL mf_supportDistanceSencer;

/// 是否支持光线传感器
@property (nonatomic, readonly) BOOL mf_supportLightSencer;

/// 是否支持指纹识别传感器
@property (nonatomic, readonly) BOOL mf_supportTouchID;

@end
