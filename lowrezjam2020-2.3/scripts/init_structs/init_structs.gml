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