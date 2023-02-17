extends "res://ui/menus/ingame/challenge_ui.gd"

func set_data(p_chal_data:ChallengeData, locked:bool = false, locked_icon:Texture = null)->void :
	.set_data(p_chal_data, locked, locked_icon)

	if locked:
		# If locked, apply the same code that vanilla uses for unlocked challenges
		_name.text = Text.text(p_chal_data.name, p_chal_data.get_title_args())
