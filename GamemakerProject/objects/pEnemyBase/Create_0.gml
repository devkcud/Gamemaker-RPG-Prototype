/// @desc Init Variables
hitDelay = 60;
hit = false;

image_speed = velocity;

maxLife = life;

enum enemyState { IDLE, CHASE, ATTACK }
state = enemyState.IDLE;