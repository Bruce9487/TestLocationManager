//
//  ViewController.m
//  TestLocationManager
//
//  Created by Bruce Chen on 2019/4/17.
//  Copyright © 2019 bruce. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *latLabel;
@property (weak, nonatomic) IBOutlet UILabel *longLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    if ([CLLocationManager locationServicesEnabled]) {
        self.lcManager = [[CLLocationManager alloc] init];
        self.lcManager.delegate = self;
        self.lcManager.distanceFilter = 100;
        self.lcManager.desiredAccuracy = kCLLocationAccuracyBest;
        [self.lcManager requestWhenInUseAuthorization];
        [self.lcManager startUpdatingLocation];
    }
}

- (IBAction)checkPermission:(id)sender {
    
    
}

-(void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations{
    
    CLLocation *currentLocation = [locations lastObject];
    if(currentLocation != nil){
        self.latLabel.text = [NSString stringWithFormat:@"%.2f",currentLocation.coordinate.latitude];
        self.longLabel.text = [NSString stringWithFormat:@"%.2f",currentLocation.coordinate.longitude];
    }
}

@end
