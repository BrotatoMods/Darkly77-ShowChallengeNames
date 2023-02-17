extends Node

const MOD_DIR = "Darkly77-ShowChallengeNames/" # name of the folder that this file is in
const SCNAMES = "Darkly77-ShowChallengeNames" # full ID of your mod (Darkly77-ShowChallengeNames)

var dir = ""
var ext_dir = ""

func _init(modLoader = ModLoader):
	ModLoaderUtils.log_info("Init", SCNAMES)

	dir = modLoader.UNPACKED_DIR + MOD_DIR
	ext_dir = dir + "extensions/"

	# Add extensions
	modLoader.install_script_extension(ext_dir + "ui/menus/ingame/challenge_ui.gd")


func _ready()->void:
	ModLoaderUtils.log_info("Ready", SCNAMES)
