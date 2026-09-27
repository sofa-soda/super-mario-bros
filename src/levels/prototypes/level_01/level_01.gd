extends Node2D

@export var Mario : Sprite2D

func _ready() -> void:
	Mario.start_level_one.connect(_on_level_one_started)

func _on_level_one_started() -> void:
	visible = false
