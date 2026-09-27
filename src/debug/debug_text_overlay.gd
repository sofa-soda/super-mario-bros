extends Control

const VERSION_SETTING: String = "application/config/version"

@export var fps_label: Label
@export var version_info: Label

func _ready() -> void:
	_add_version_to_info_label()
	
func _process(_delta: float) -> void:
	fps_label.set_text("FPS: " + str(Engine.get_frames_per_second()))
