//
//  ViewController.h
//  TestLocationManager
//
//  Created by Bruce Chen on 2019/4/17.
//  Copyright © 2019 APP技術部-陳冠志. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

@interface ViewController : UIViewController<CLLocationManagerDelegate>

@property (nonatomic, strong) CLLocationManager *lcManager;

@end

