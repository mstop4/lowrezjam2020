var ratio = health / obj_player.max_health;
heart_top_y = ratio >= 1 ? 0 : floor(6 - ratio * 4);
heart_height = ratio >= 1 ? 7 : ceil(ratio * 4) + 1;