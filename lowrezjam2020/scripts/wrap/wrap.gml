function wrap(_value, _min, _max) {
	var _range = _max - _min + 1;

	if (_range + _min == 0)
		return 0;

	while (_value < _min)
		_value += _range;

	return (_value - _min) mod _range + _min;
}