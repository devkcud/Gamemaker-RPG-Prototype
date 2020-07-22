/// @desc Object Init
switch (state) {
	case enemyState.IDLE:
		EnemyIdle();
	break;
	
	case enemyState.CHASE:
		EnemyChase();
	break;
	
	case enemyState.ATTACK:
		EnemyAttack();
	break;
}

if (life <= 0)
	instance_destroy();