//
//  ViewController.m
//  CollectionView2
//
//  Created by Quazi Ridwan Hasib on 18/01/2016.
//  Copyright © 2016 Quazi Ridwan Hasib. All rights reserved.
//

#import "ViewController.h"
#import "CustomCell.h"

@interface ViewController ()
{
    NSArray *images;
    NSArray *labelNames;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    images = [[NSArray alloc]initWithObjects:@"1.jpg", @"2.jpg",@"3.jpg",@"4.jpg",@"5.jpg",  nil];
    labelNames = [[NSArray alloc]initWithObjects:@"1", @"2",@"3",@"4",@"5",  nil];
    
}


-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView*)collectionView
{
    return 1;
}

-(NSInteger)collectionView:(UICollectionView*)collectionView numberOfItemsInSection:(NSInteger)section
{
    return [images count];
}

-(UICollectionViewCell*)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(nonnull NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    CustomCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:CellIdentifier forIndexPath:indexPath];
    [[cell imageView1]setImage:[UIImage imageNamed:[images objectAtIndex: indexPath.item]]];
    [[cell label1]setText:[labelNames objectAtIndex:indexPath.item]];
    
    return cell;
}


#pragma mark collection view cell paddings
- (UIEdgeInsets)collectionView:(UICollectionView*)collectionView layout:(UICollectionViewLayout *)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    return UIEdgeInsetsMake(0, 0, 0, 0); // top, left, bottom, right
}

- (CGFloat)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout minimumInteritemSpacingForSectionAtIndex:(NSInteger)section {
    
    return 35.0;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
