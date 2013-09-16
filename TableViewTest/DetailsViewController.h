//
//  DetailsViewController.h
//  TableViewTest
//
//  Created by Paul John Parreno on 9/4/13.
//  Copyright (c) 2013 Paul John Parreno. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailsViewController : UIViewController <UIAlertViewDelegate, UIActionSheetDelegate>

@property (nonatomic, strong) IBOutlet UILabel *countryLabel;
@property (nonatomic, strong) IBOutlet UILabel *capitalLabel;
@property (nonatomic, strong) IBOutlet UIImageView *countryImage;

- (id) initWithCountryName: (NSString *) pCountryName capitalName: (NSString *) pCapitalName andCountryImage: (UIImage *) pCountryImage;

-(IBAction)didTapShowAlertViewButton:(id)sender;
-(IBAction)didTapShowActionSheetControlButton:(id)sender;

@end
