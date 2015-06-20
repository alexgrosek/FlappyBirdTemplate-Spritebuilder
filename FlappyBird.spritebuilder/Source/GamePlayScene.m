#import "GamePlayScene.h"
#import "Character.h"
#import "Obstacle.h"

@implementation GamePlayScene

- (void)initialize
{
    [self addObstacle];
    timeSinceObstacle = 0.0f;
    // your code here
    character = (Character*)[CCBReader load:@"Character"];
    // will load a new Character from the CCB file we created for you named Character.
    [physicsNode addChild:character];
    // will add your character as a child of physicsNode so that physics will be applied to it.
}

-(void)update:(CCTime)delta
{
    /* this will be run every frame.
     * delta is the time that has elapsed since the last time it was run. This is usually 1/60, but can be bigger if the game slows down
     * put update code here
     */
    // Increment the time since last Obstacle was added
    timeSinceObstacle += delta; // delta is approx. 1/60 of a second
    
    // check to see if two seconds have passed
    if (timeSinceObstacle > 2.0f)
    {
        // add a new obstacle
        [self addObstacle];
        
        // then reset the timer
        timeSinceObstacle = 0.0f;
    }
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
