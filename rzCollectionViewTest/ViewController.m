//
//  ViewController.m
//  rzCollectionViewTest
//
//  Created by Robert Zimmelman on 10/31/15.
//  Copyright © 2015 Robert Zimmelman. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *myImage;
@end
NSMutableArray *myArray;
NSMutableArray *myNamesArray;
@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    myNamesArray = [[NSMutableArray alloc] init];
    [myNamesArray addObject:@"spark"];
    [myNamesArray addObject:@"Rocks"];
    [myNamesArray addObject:@"Paper"];
    [myNamesArray addObject:@"Marble"];
    [myNamesArray addObject:@"Bricks"];
    [myNamesArray addObject:@"BrownSwirly"];
    [myNamesArray addObject:@"Stars"];
    [myNamesArray addObject:@"Swirly"];
    [myNamesArray addObject:@"Checker"];
    [myNamesArray addObject:@"Basket"];
    [myNamesArray addObject:@"Green"];
    [myNamesArray addObject:@"Red"];
    [myNamesArray addObject:@"Yellow"];
    [myNamesArray addObject:@"Leopard"];
    [myNamesArray addObject:@"Blue"];
    [myNamesArray addObject:@"Grey"];
    [myNamesArray addObject:@"Wood"];
    myArray = [[NSMutableArray alloc] init];
    for (NSString *myImageName in myNamesArray ) {
        [myArray addObject:[UIImage imageNamed:myImageName]];
    }
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark colleciton view methods

-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return [myArray count];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *myCell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    UIImageView *myCellImage = (UIImageView *) [myCell viewWithTag:100];
    UILabel *myLabel = (UILabel *) [myCell viewWithTag:200];
    [myLabel setText: [myNamesArray objectAtIndex:indexPath.row]];
    NSLog(@"%@" , [myNamesArray objectAtIndex:indexPath.row]);
    NSLog(@"Row = %ld",indexPath.row);
    myCellImage.image = [ myArray objectAtIndex:indexPath.row ];
    myCell.layer.contents = myCellImage;
    [myCell.layer setBorderWidth:2.0f];
    [myCell.layer setBorderColor:[UIColor whiteColor].CGColor];
    [myCell.layer setCornerRadius:15.0f];
    return myCell;
     
}


@end
