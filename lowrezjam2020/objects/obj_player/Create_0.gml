my_sprites[PLAYER_STATE.IDLE] = spr_player_idle_r;
my_sprites[PLAYER_STATE.WALK] = spr_player_walk_r;
my_sprites[PLAYER_STATE.DASH] = spr_player_dash_r;
my_sprites[PLAYER_STATE.OUCH] = spr_player_ouch_r;
my_sprites[PLAYER_STATE.DEAD] = spr_player_ouch_r;

arm_sprites[PLAYER_STATE.IDLE] = spr_player_arm_idle_r;
arm_sprites[PLAYER_STATE.WALK] = spr_player_arm_walk_r;
arm_sprites[PLAYER_STATE.DASH] = spr_blank;
arm_sprites[PLAYER_STATE.OUCH] = spr_blank;
arm_sprites[PLAYER_STATE.DEAD] = spr_blank;

my_state = PLAYER_STATE.IDLE;
my_facing = FACING.RIGHT;
is_invincible = false;
invincible_flash_visible = true;

yspeed = 0;
firing_y_offset = 0;
lives = 3;