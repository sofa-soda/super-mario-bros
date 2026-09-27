@tool
@icon("res://assets/art/ui/icon/grass.png")
class_name PascalCase
extends Node
## Brief description of class
#
## Longer documentation goes here

@export var exported_var: Node

@onready var on_ready_var: Sprite2D = $Sprite2D

signal something_happened(value: int)

enum EnumName {
	ITEM_1,
	ITEM_2
}

const CONSTANT_VAR: float = 19.39

var _private_var: bool = true

var public_var: bool = false

# callback method
func _on_something_happened() -> void:
	pass

# optional built-in virtual methods:
# _init()
# _enter_tree()

# remaining built-in virtual methods
func _ready() -> void:
	pass

func _process(_delta: float) -> void:
	pass

func _physics_process(_delta: float) -> void:
	pass

# private methods
func _private_method() -> void:
	pass

# public methods
func public_method(_thing: Node) -> void:
	""" 
	Documentation of functionality of method. 
	Arguments:
		_thing (Node)
	Returns:
		void
	"""
	pass

# inner class
class InnerClassName:
	pass
