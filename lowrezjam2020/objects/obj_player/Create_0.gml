my_sprites[PLAYER_STATE.IDLE] = spr_player_idle_r;
my_sprites[PLAYER_STATE.WALK] = spr_player_walk_r;
my_sprites[PLAYER_STATE.DASH] = spr_player_walk_r;
my_sprites[PLAYER_STATE.OUCH] = spr_player_walk_r;
my_sprites[PLAYER_STATE.DEAD] = spr_player_walk_r;

arm_sprites[PLAYER_STATE.IDLE] = spr_player_arm_idle_r;
arm_sprites[PLAYER_STATE.WALK] = spr_player_arm_walk_r;
arm_sprites[PLAYER_STATE.DASH] = spr_player_arm_walk_r;
arm_sprites[PLAYER_STATE.OUCH] = spr_player_arm_walk_r;
arm_sprites[PLAYER_STATE.DEAD] = spr_player_arm_walk_r;

my_state = PLAYER_STATE.IDLE;
my_facing = FACING.RIGHT;
is_invincible = false;

firing_y_offset = 0;