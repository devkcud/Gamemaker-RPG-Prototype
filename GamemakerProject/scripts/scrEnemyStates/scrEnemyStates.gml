function EnemyIdle() {
	if (distance_to_object(oPlayer) < viewRange)
		state = enemyState.CHASE;
}

function EnemyChase() {
	var targetX = oPlayer.x - x,
		targetY = oPlayer.y - y;

	var speedTargetX = sign(targetX) * velocity,
		speedTargetY = sign(targetY) * velocity;

	if (speedTargetX != 0 || speedTargetY != 0)
		image_speed = velocity;
	else
		image_speed = 0;
	
	if (sign(targetX) != 0)
		image_xscale = sign(targetX);

	// Horizontal Collision
	if (place_meeting(x + speedTargetX, y, oCollisionWall)) {
		while (!place_meeting(x + speedTargetX, y, oCollisionWall))
			x += sign(speedTargetX);
	
		speedTargetX = 0;
	}

	// Vertical Collision
	if (place_meeting(x, y + speedTargetY, oCollisionWall)) {
		while (!place_meeting(x, y + speedTargetY, oCollisionWall))
			y += sign(speedTargetY);
	
		speedTargetY = 0;
	}

	x += speedTargetX;
	y += speedTargetY;

	/* Change State */
	if (distance_to_object(oPlayer) > viewRange)
		state = enemyState.IDLE;

	if (place_meeting(x, y, oPlayer))
		state = enemyState.ATTACK;
}

function EnemyAttack() {
	hitDelay--;

	if (hitDelay < 0) {
		with (oPlayer) life -= other.damage;
	
		// Hit
		alarm[0] = 5; // The player takes 5 frames to clear up.
		hit = true;

		hitDelay = 60;
	}

	if (!place_meeting(x, y, oPlayer))
		state = enemyState.CHASE;
}