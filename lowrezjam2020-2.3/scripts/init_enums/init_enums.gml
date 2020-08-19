function init_enums() {
	enum PLAYER_STATE {
		IDLE,
		WALK,
		DASH,
		OUCH,
		DEAD,
		INTRO,
		PREINTRO
	};

	enum FACING {
		LEFT = -1,
		RIGHT = 1
	};
}