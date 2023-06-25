extends Node

const MOD_DIR = "Darkly77-ShowChallengeNames/" # name of the folder that this file is in
const SCNAMES = "Darkly77-ShowChallengeNames" # full ID of your mod (Darkly77-ShowChallengeNames)

var dir = ""
var ext_dir = ""

func _init(modLoader = ModLoader):
	ModLoaderLog.info("Init", SCNAMES)

	dir = ModLoaderMod.get_unpacked_dir() + MOD_DIR
	ext_dir = dir + "extensions/"

	# Add extensions
	ModLoaderMod.install_script_extension(ext_dir + "ui/menus/ingame/challenge_ui.gd")


func _ready()->void:
	ModLoaderLog.info("Ready", SCNAMES)
