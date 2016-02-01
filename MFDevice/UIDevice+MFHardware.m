//
//  UIDevice+MFHardware.m
//  MFDeviceDemo
//
//  Created by andy on 1/29/16.
//  Copyright © 2016 MFKit. All rights reserved.
//

#import "UIDevice+MFHardware.h"
#import <objc/message.h>
#import <sys/sysctl.h>

static const void* kMFDeviceHardwareInfoKey = &kMFDeviceHardwareInfoKey;

@implementation UIDevice (MFHardware)

- (NSString *)mf_deviceMode
{
    int mib[2];
    size_t len;
    char *machine;
    
    mib[0] = CTL_HW;
    mib[1] = HW_MACHINE;
    sysctl(mib, 2, NULL, &len, NULL, 0);
    machine = malloc(len);
    sysctl(mib, 2, machine, &len, NULL, 0);
    
    NSString *platform = [NSString stringWithCString:machine encoding:NSASCIIStringEncoding];
    free(machine);
    
    if ([platform isEqualToString:@"iPhone1,1"]) return @"iPhone 2G (A1203)";
    if ([platform isEqualToString:@"iPhone1,2"]) return @"iPhone 3G (A1241/A1324)";
    if ([platform isEqualToString:@"iPhone2,1"]) return @"iPhone 3GS (A1303/A1325)";
    if ([platform isEqualToString:@"iPhone3,1"]) return @"iPhone 4 (A1332)";
    if ([platform isEqualToString:@"iPhone3,2"]) return @"iPhone 4 (A1332)";
    if ([platform isEqualToString:@"iPhone3,3"]) return @"iPhone 4 (A1349)";
    if ([platform isEqualToString:@"iPhone4,1"]) return @"iPhone 4S (A1387/A1431)";
    if ([platform isEqualToString:@"iPhone5,1"]) return @"iPhone 5 (A1428)";
    if ([platform isEqualToString:@"iPhone5,2"]) return @"iPhone 5 (A1429/A1442)";
    if ([platform isEqualToString:@"iPhone5,3"]) return @"iPhone 5c (A1456/A1532)";
    if ([platform isEqualToString:@"iPhone5,4"]) return @"iPhone 5c (A1507/A1516/A1526/A1529)";
    if ([platform isEqualToString:@"iPhone6,1"]) return @"iPhone 5s (A1453/A1533)";
    if ([platform isEqualToString:@"iPhone6,2"]) return @"iPhone 5s (A1457/A1518/A1528/A1530)";
    if ([platform isEqualToString:@"iPhone7,1"]) return @"iPhone 6 Plus (A1522/A1524)";
    if ([platform isEqualToString:@"iPhone7,2"]) return @"iPhone 6 (A1549/A1586)";
    if ([platform isEqualToString:@"iPhone8,1"]) return @"iPhone 6s (A1633/A1688/A1691/A1700)";
    if ([platform isEqualToString:@"iPhone8,2"]) return @"iPhone 6s Plus (A1634/A1687/A1690/A1699)";
    
    if ([platform isEqualToString:@"iPod1,1"])   return @"iPod Touch 1G (A1213)";
    if ([platform isEqualToString:@"iPod2,1"])   return @"iPod Touch 2G (A1288)";
    if ([platform isEqualToString:@"iPod3,1"])   return @"iPod Touch 3G (A1318)";
    if ([platform isEqualToString:@"iPod4,1"])   return @"iPod Touch 4G (A1367)";
    if ([platform isEqualToString:@"iPod5,1"])   return @"iPod Touch 5G (A1421/A1509)";
    if ([platform isEqualToString:@"iPod7,1"])   return @"iPod Touch 6G (A1574)";
    
    if ([platform isEqualToString:@"iPad1,1"])   return @"iPad (A1219/A1337)";
    
    if ([platform isEqualToString:@"iPad2,1"])   return @"iPad 2 (A1395)";
    if ([platform isEqualToString:@"iPad2,2"])   return @"iPad 2 (A1396)";
    if ([platform isEqualToString:@"iPad2,3"])   return @"iPad 2 (A1397)";
    if ([platform isEqualToString:@"iPad2,4"])   return @"iPad 2 (A1395+New Chip)";
    
    if ([platform isEqualToString:@"iPad3,1"])   return @"iPad 3 (A1416)";
    if ([platform isEqualToString:@"iPad3,2"])   return @"iPad 3 (A1403)";
    if ([platform isEqualToString:@"iPad3,3"])   return @"iPad 3 (A1430)";
    
    if ([platform isEqualToString:@"iPad3,4"])   return @"iPad 4 (A1458)";
    if ([platform isEqualToString:@"iPad3,5"])   return @"iPad 4 (A1459)";
    if ([platform isEqualToString:@"iPad3,6"])   return @"iPad 4 (A1460)";
    
    if ([platform isEqualToString:@"iPad4,1"])   return @"iPad Air (A1474)";
    if ([platform isEqualToString:@"iPad4,2"])   return @"iPad Air (A1475)";
    if ([platform isEqualToString:@"iPad4,3"])   return @"iPad Air (A1476)";
    
    if ([platform isEqualToString:@"iPad5,3"])   return @"iPad Air 2 (A1566)";
    if ([platform isEqualToString:@"iPad5,4"])   return @"iPad Air 2 (A1567)";
    
    if ([platform isEqualToString:@"iPad6,7"])   return @"iPad Pro (A1584)";
    if ([platform isEqualToString:@"iPad6,8"])   return @"iPad Pro (A1652)";
    
    if ([platform isEqualToString:@"iPad2,5"])   return @"iPad Mini (A1432)";
    if ([platform isEqualToString:@"iPad2,6"])   return @"iPad Mini (A1454)";
    if ([platform isEqualToString:@"iPad2,7"])   return @"iPad Mini (A1455)";
    
    if ([platform isEqualToString:@"iPad4,4"])   return @"iPad Mini 2 (A1489)";
    if ([platform isEqualToString:@"iPad4,5"])   return @"iPad Mini 2 (A1490)";
    if ([platform isEqualToString:@"iPad4,6"])   return @"iPad Mini 2 (A1491)";
    if ([platform isEqualToString:@"iPad4,7"])   return @"iPad Mini 3 (A1599)";
    if ([platform isEqualToString:@"iPad4,8"])   return @"iPad Mini 3 (A1600)";
    if ([platform isEqualToString:@"iPad4,9"])   return @"iPad Mini 3 (A1601)";
    if ([platform isEqualToString:@"iPad5,1"])   return @"iPad Mini 4 (A1538)";
    if ([platform isEqualToString:@"iPad5,2"])   return @"iPad Mini 4 (A1550)";
    
    
    if ([platform isEqualToString:@"i386"])      return @"iPhone Simulator";
    if ([platform isEqualToString:@"x86_64"])    return @"iPhone Simulator";
    return platform;
}



#pragma mark - 硬件信息

- (NSString *)mf_cpu
{
    return self.mf_deviceHardwareInfo[@"cpu"];
}

- (NSString *)mf_dimensions
{
    return self.mf_deviceHardwareInfo[@"dimensions"];
}

- (NSString *)mf_weight
{
    return self.mf_deviceHardwareInfo[@"weight"];
}

- (NSString *)mf_resolution
{
    return self.mf_deviceHardwareInfo[@"resolution"];
}

- (NSString *)mf_dpi
{
    return self.mf_deviceHardwareInfo[@"display-density"];
}

- (NSString *)mf_batteryVoltage
{
    NSString *batteryVoltage = self.mf_deviceHardwareInfo[@"batteryVoltage"];
    NSString *batteryCapacity = self.mf_deviceHardwareInfo[@"batteryCapacity"];
    return [NSString stringWithFormat:@"%@ %@", batteryVoltage, batteryCapacity];
}

- (NSString *)mf_bluetooth
{
    return self.mf_deviceHardwareInfo[@"bluetooth"];
}

- (NSString *)mf_screenInch
{
    return self.mf_deviceHardwareInfo[@"screenInch"];
}

- (NSString *)mf_wlan
{
    return self.mf_deviceHardwareInfo[@"WLAN"];
}

- (NSString *)mf_cameraSecondary
{
    return self.mf_deviceHardwareInfo[@"camera-secondary"];
}

- (NSString *)mf_cameraPrimary
{
    return self.mf_deviceHardwareInfo[@"camera-primary"];
}

- (BOOL)mf_supportGyroscope
{
    return [self.mf_deviceHardwareInfo[@"gyroscope"] boolValue];
}

- (BOOL)mf_supportDirctorySencer
{
    return [self.mf_deviceHardwareInfo[@"dirctorySencer"] boolValue];
}

- (BOOL)mf_supportDistanceSencer
{
    return [self.mf_deviceHardwareInfo[@"distanceSencer"] boolValue];
}

- (BOOL)mf_supportLightSencer
{
    return [self.mf_deviceHardwareInfo[@"lightSencer"] boolValue];
}

- (BOOL)mf_supportTouchID
{
    return [self.mf_deviceHardwareInfo[@"touch-id"] boolValue];
}

#pragma mark -
#pragma mark Private Method

/// 获取设备类型
- (MFDeviceType)mf_deviceType
{
    int mib[2];
    size_t len;
    char *machine;
    
    mib[0] = CTL_HW;
    mib[1] = HW_MACHINE;
    sysctl(mib, 2, NULL, &len, NULL, 0);
    machine = malloc(len);
    sysctl(mib, 2, machine, &len, NULL, 0);
    
    NSString *platform = [NSString stringWithCString:machine
                                            encoding:NSASCIIStringEncoding];
    free(machine);
    
    // Phone
    if ([platform isEqualToString:@"iPhone2,1"]) return MFDeviceTypeIphone3GS;
    if ([platform isEqualToString:@"iPhone3,1"]) return MFDeviceTypeIphone4;
    if ([platform isEqualToString:@"iPhone3,2"]) return MFDeviceTypeIphone4;
    if ([platform isEqualToString:@"iPhone3,3"]) return MFDeviceTypeIphone4;
    if ([platform isEqualToString:@"iPhone4,1"]) return MFDeviceTypeIphone4S;
    if ([platform isEqualToString:@"iPhone5,1"]) return MFDeviceTypeIphone5;
    if ([platform isEqualToString:@"iPhone5,2"]) return MFDeviceTypeIphone5;
    if ([platform isEqualToString:@"iPhone5,3"]) return MFDeviceTypeIphone5C;
    if ([platform isEqualToString:@"iPhone5,4"]) return MFDeviceTypeIphone5C;
    if ([platform isEqualToString:@"iPhone6,1"]) return MFDeviceTypeIphone5S;
    if ([platform isEqualToString:@"iPhone6,2"]) return MFDeviceTypeIphone5S;
    if ([platform isEqualToString:@"iPhone7,1"]) return MFDeviceTypeIphone6Plus;
    if ([platform isEqualToString:@"iPhone7,2"]) return MFDeviceTypeIphone6;
    if ([platform isEqualToString:@"iPhone8,1"]) return MFDeviceTypeIphone6S;
    if ([platform isEqualToString:@"iPhone8,2"]) return MFDeviceTypeIphone6SPlus;
    
    // Pod
    if ([platform isEqualToString:@"iPod3,1"])   return MFDeviceTypeIpodTouch3;
    if ([platform isEqualToString:@"iPod4,1"])   return MFDeviceTypeIpodTouch4;
    if ([platform isEqualToString:@"iPod5,1"])   return MFDeviceTypeIpodTouch5;
    if ([platform isEqualToString:@"iPod7,1"])   return MFDeviceTypeIpodTouch6;
    
    // Pad
    if ([platform isEqualToString:@"iPad2,1"])   return MFDeviceTypeIpad2;
    if ([platform isEqualToString:@"iPad2,2"])   return MFDeviceTypeIpad2;
    if ([platform isEqualToString:@"iPad2,3"])   return MFDeviceTypeIpad2;
    if ([platform isEqualToString:@"iPad2,4"])   return MFDeviceTypeIpad2;
    
    if ([platform isEqualToString:@"iPad3,1"])   return MFDeviceTypeIpad3;
    if ([platform isEqualToString:@"iPad3,2"])   return MFDeviceTypeIpad3;
    if ([platform isEqualToString:@"iPad3,3"])   return MFDeviceTypeIpad3;
    
    if ([platform isEqualToString:@"iPad3,4"])   return MFDeviceTypeIpad4;
    if ([platform isEqualToString:@"iPad3,5"])   return MFDeviceTypeIpad4;
    if ([platform isEqualToString:@"iPad3,6"])   return MFDeviceTypeIpad4;
    
    if ([platform isEqualToString:@"iPad4,1"])   return MFDeviceTypeIpadAir;
    if ([platform isEqualToString:@"iPad4,2"])   return MFDeviceTypeIpadAir;
    if ([platform isEqualToString:@"iPad4,3"])   return MFDeviceTypeIpadAir;
    
    if ([platform isEqualToString:@"iPad5,3"])   return MFDeviceTypeIpadAir;
    if ([platform isEqualToString:@"iPad5,4"])   return MFDeviceTypeIpadAir;
    
    if ([platform isEqualToString:@"iPad6,7"])   return MFDeviceTypeIpadPro;
    if ([platform isEqualToString:@"iPad6,8"])   return MFDeviceTypeIpadPro;
    
    // Pad Mini
    if ([platform isEqualToString:@"iPad2,5"])   return MFDeviceTypeIpadMini;
    if ([platform isEqualToString:@"iPad2,6"])   return MFDeviceTypeIpadMini;
    if ([platform isEqualToString:@"iPad2,7"])   return MFDeviceTypeIpadMini;
    
    if ([platform isEqualToString:@"iPad4,4"])   return MFDeviceTypeIpadMiniRetina;
    if ([platform isEqualToString:@"iPad4,5"])   return MFDeviceTypeIpadMiniRetina;
    if ([platform isEqualToString:@"iPad4,6"])   return MFDeviceTypeIpadMiniRetina;
    if ([platform isEqualToString:@"iPad4,7"])   return MFDeviceTypeIpadMiniRetina;
    if ([platform isEqualToString:@"iPad4,8"])   return MFDeviceTypeIpadMiniRetina;
    if ([platform isEqualToString:@"iPad4,9"])   return MFDeviceTypeIpadMiniRetina;
    if ([platform isEqualToString:@"iPad5,1"])   return MFDeviceTypeIpadMiniRetina;
    if ([platform isEqualToString:@"iPad5,2"])   return MFDeviceTypeIpadMiniRetina;
    
    // Simulator
    if ([platform isEqualToString:@"i386"])      return MFDeviceTypeSimulator;
    if ([platform isEqualToString:@"x86_64"])    return MFDeviceTypeSimulator;
    
    return MFDeviceTypeUnknow;
}

// 获取设备详细的硬件信息
- (NSDictionary *)mf_deviceHardwareInfo
{
    NSDictionary *ret = objc_getAssociatedObject(self, kMFDeviceHardwareInfoKey);
    if (!ret) {
        MFDeviceType deviceType = self.mf_deviceType;
        
        NSString *bundleName = nil;
        switch (deviceType) {
            case MFDeviceTypeIphone3GS:
                bundleName = @"iPhone3GS";
                break;
            case MFDeviceTypeIphone4:
                bundleName = @"iPhone4";
                break;
            case MFDeviceTypeIphone4S:
                bundleName = @"iPhone4S";
                break;
            case MFDeviceTypeIphone5:
                bundleName = @"iPhone5";
                break;
            case MFDeviceTypeIphone5C:
                bundleName = @"iPhone5C";
                break;
            case MFDeviceTypeIphone5S:
                bundleName = @"iPhone5S";
                break;
            case MFDeviceTypeIphone6:
                bundleName = @"iPhone6";
                break;
            case MFDeviceTypeIphone6Plus:
                bundleName = @"iPhone6Plus";
                break;
            case MFDeviceTypeIphone6S:
                bundleName = @"iPhone6s";
                break;
            case MFDeviceTypeIphone6SPlus:
                bundleName = @"iPhone6sPlus";
                break;
            case MFDeviceTypeIpad2:
                bundleName = @"iPad2";
                break;
            case MFDeviceTypeIpad3:
                bundleName = @"iPad3";
                break;
            case MFDeviceTypeIpad4:
                bundleName = @"iPad4";
                break;
            case MFDeviceTypeIpadAir:
                bundleName = @"iPadAir";
                break;
            case MFDeviceTypeIpadMini:
                bundleName = @"iPadMini";
                break;
            case MFDeviceTypeIpadMiniRetina:
                bundleName = @"iPadMiniRetina";
                break;
            case MFDeviceTypeIpadPro:
                bundleName = nil;
                break;
            case MFDeviceTypeIpodTouch3:
                bundleName = @"iPodTouch3";
                break;
            case MFDeviceTypeIpodTouch4:
                bundleName = @"iPodTouch4";
                break;
            case MFDeviceTypeIpodTouch5:
                bundleName = @"iPodTouch5";
                break;
            case MFDeviceTypeIpodTouch6:
                bundleName = nil;
                break;
            case MFDeviceTypeSimulator:
                bundleName = nil;
                break;
            case MFDeviceTypeUnknow:
                bundleName = nil;
                break;
        }
        
        ret = [NSDictionary dictionaryWithContentsOfFile:[[NSBundle mainBundle] pathForResource:bundleName ofType:@"plist"]];
        objc_setAssociatedObject(self, kMFDeviceHardwareInfoKey, ret, OBJC_ASSOCIATION_RETAIN);
    }
    
    return objc_getAssociatedObject(self, kMFDeviceHardwareInfoKey);
}

@end
