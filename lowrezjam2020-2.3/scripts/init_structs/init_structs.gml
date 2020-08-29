function Vector2(_x, _y) constructor {
	x = _x;
	y = _y;
}

function Slider(_value, _delta, _min_v, _max_v) constructor {
	v = _value;
	d = _delta;
	min_v = _min_v;
	max_v = _max_v;

	static update = function() {
		if (d != 0) {
			v = clamp(v + d, min_v, max_v);
		}
	}
}

function Slider2(_x, _y, _dx, _dy) constructor {
	x = _x;
	y = _y;
	dx = _dx;
	dy = _dy;
	
	static update = function() {
		var _updated = false;
		if (dx != 0) {
			x += dx;
			_updated = true;
		}
		
		if (dy != 0) {
			y += dy;
			_updated = true;
		}
		
		return _updated;
	}
}

function MenuItem(
		_label,
		_x_offset,
		_y_offset,
		_on_confirm,
		_play_sfx_on_confirm,
		_on_change,
		_max_selection,
		_init_selection
	) constructor {
	label = _label;
	x_offset = _x_offset;
	y_offset = _y_offset;
	on_confirm =  _on_confirm;
	play_sfx_on_confirm = _play_sfx_on_confirm;
	on_change = _on_change;
	selection = _init_selection;
	max_selection = _max_selection;
}