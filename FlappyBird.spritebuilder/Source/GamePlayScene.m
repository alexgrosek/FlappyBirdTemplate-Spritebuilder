#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    [self addObstacle];
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    // will load a new Character from the CCB file we created for you named Character.
    [physicsNode addChild:character];
    // will add your character as a child of physicsNode so that physics will be applied to it.
}

-(void)update:(CCTime)delta
{
    // put update code here
}
/* To declare a method in Objective-C, follow the following format:
 * -(type I return)nameOfMethod: (type of first parameter) firstParameter continuationOfMethodName: (type of second parameter) secondParameter
 */
// put new methods here
- 
 (void)touchBegan:(CCTouch *)touch withEvent:(CCTouchEvent *)event{
    // this will get called everytime the player touches the screen
    [character flap];
}

@end
