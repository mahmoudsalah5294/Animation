//
//  ViewController.m
//  Animation
//
//  Created by Mahmoud Mohamed on 23/03/2021.
//

#import "ViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIView *ball;
@property UIDynamicAnimator *animator;
-(void) gravity;
@property BOOL colorChange;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _colorChange = false;
    _ball.layer.cornerRadius = 25;
    _animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    
    [self gravity];
    
}

-(void) gravity{
    UIGravityBehavior *gravityBehavior = [[UIGravityBehavior alloc] initWithItems:@[self.ball]];
    
    [self.animator addBehavior:gravityBehavior];
    
    UICollisionBehavior *collision = [[UICollisionBehavior alloc] initWithItems:@[self.ball]];

    [collision addBoundaryWithIdentifier:@"main" fromPoint:CGPointMake(self.tabBarController.tabBar.frame.origin.x, self.tabBarController.tabBar.frame.origin.y-34) toPoint:CGPointMake(self.tabBarController.tabBar.frame.origin.x+self.tabBarController.tabBar.frame.size.width, self.tabBarController.tabBar.frame.origin.y-34)];
    
    collision.translatesReferenceBoundsIntoBoundary = YES;
    collision.collisionDelegate = self;

    [self.animator addBehavior:collision];
    
    
//    UICollisionBehavior *collision2 = [[UICollisionBehavior alloc] initWithItems:@[self.ball]];
//    collision2.translatesReferenceBoundsIntoBoundary = YES;
//    collision2.collisionDelegate = self;
//
//    [collision2 translatesReferenceBoundsIntoBoundary];
//    [self.animator addBehavior:collision2];
    
    UIDynamicItemBehavior *ballBehavior = [[UIDynamicItemBehavior alloc] initWithItems:@[self.ball]];
    
    ballBehavior.elasticity = 0.75;
    [self.animator addBehavior:ballBehavior];
    
}


- (void)collisionBehavior:(UICollisionBehavior *)behavior beganContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier{
    if(self.colorChange) {
        
        self.ball.backgroundColor = [UIColor greenColor];
        self.colorChange = NO;
    } else {
        
        self.ball.backgroundColor = [UIColor redColor];
        self.colorChange = YES;

    }
}

-(void)collisionBehavior:(UICollisionBehavior *)behavior beganContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier atPoint:(CGPoint)p {
    
    
    if(self.colorChange) {
        
        self.ball.backgroundColor = [UIColor greenColor];
        self.colorChange = NO;
    } else {
        
        self.ball.backgroundColor = [UIColor redColor];
        self.colorChange = YES;

    }
    
}



@end
