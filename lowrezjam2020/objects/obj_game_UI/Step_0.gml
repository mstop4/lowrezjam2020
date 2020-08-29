var ratio = health / player_id.max_health;
heart_top_y = ratio >= 1 ? 0 : floor(6 - ratio * 4);
heart_height = ratio >= 1 ? 7 : ceil(ratio * 4) + 1;

if (collision_rectangle(1, 0, 12, 7, obj_enemy, false, true) != noone) {
	health_alpha = max(min_fade_alpha, health_alpha - fade_alpha_delta);
} else {
	health_alpha = min(1, health_alpha + fade_alpha_delta);
}

var _score_len = string_width(string(score));
if (collision_rectangle(63 - _score_len, 1, 63, 6, obj_enemy, false, true)) {
	score_alpha = max(min_fade_alpha, score_alpha - fade_alpha_delta);
} else {
	score_alpha = min(1, score_alpha + fade_alpha_delta);
}