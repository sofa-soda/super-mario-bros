extends Node2D

@export var Mario : Sprite2D

func _ready() -> void:
	Events.levels.level_started.connect(_on_level_started)

func _on_level_started(level_num: String) -> void:
	if level_num == "01":
		visible = false
	
	# spawn level{01}
