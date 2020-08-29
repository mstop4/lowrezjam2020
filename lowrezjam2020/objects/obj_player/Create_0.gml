my_sprites[PLAYER_STATE.IDLE] = spr_player_idle_r;
my_sprites[PLAYER_STATE.WALK] = spr_player_walk_r;
my_sprites[PLAYER_STATE.DASH] = spr_player_dash_r;
my_sprites[PLAYER_STATE.OUCH] = spr_player_ouch_r;
my_sprites[PLAYER_STATE.DEAD] = spr_player_ouch_r;
my_sprites[PLAYER_STATE.INTRO] = spr_player_dash_r;
my_sprites[PLAYER_STATE.PREINTRO] = spr_player_dash_r;

arm_sprites[PLAYER_STATE.IDLE] = spr_player_arm_idle_r;
arm_sprites[PLAYER_STATE.WALK] = spr_player_arm_walk_r;
arm_sprites[PLAYER_STATE.DASH] = spr_blank;
arm_sprites[PLAYER_STATE.OUCH] = spr_blank;
arm_sprites[PLAYER_STATE.DEAD] = spr_blank;
arm_sprites[PLAYER_STATE.INTRO] = spr_blank;
arm_sprites[PLAYER_STATE.PREINTRO] = spr_blank;

my_state = PLAYER_STATE.PREINTRO;
my_facing = FACING.RIGHT;
is_invincible = false;
invincible_flash_visible = true;

yspeed = 0;
firing_y_offset = 0;
lives = max_lives;
health = max_health;
score = 0;
x = 32;
y = 68;

alarm[5] = 30;
timeline_index = tmln_player_intro;
ctrl_id = obj_controller.id;