spawn_left = sprite_get_xoffset(spr_enemy1);
spawn_right = room_width - sprite_get_width(spr_enemy1) + sprite_get_xoffset(spr_enemy1);

is_active = false;
can_spawn = true;

spawn_delay_table = [50, 40, 30, 25, 20, 15, 10];
max_enemies_table = [10, 12, 16, 20, 25, 33, 50];
kill_quota_table = [15, 18, 24, 30, 37, 49, 75];

level = 0;
max_level = array_length_1d(kill_quota_table) - 1;

kills = 0;

spawn_delay = spawn_delay_table[level];
max_enemies = max_enemies_table[level];
kill_quota = kill_quota_table[level];