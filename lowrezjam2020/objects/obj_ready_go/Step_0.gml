image_xscale = dsin(t) * cur_pulse_strength + 1;
image_yscale = dsin(t+180) * cur_pulse_strength + 1;

t += t_delta;
cur_pulse_strength = lerp(0, pulse_strength, p_t);
p_t = max(0, p_t - 1/65);

if (t >= 360) {
	t -= 360;
}