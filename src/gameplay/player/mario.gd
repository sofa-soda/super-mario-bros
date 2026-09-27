extends Sprite2D

const FLIP_SPEED : float = 0.15

enum P {
	BOUD,
	STRT,
	COIN,
	LVL1
}

var map_vector : Vector2 = Vector2(0,1)
var tile_size : int = 32
var inputs = {
	"right": Vector2.RIGHT,
	"left": Vector2.LEFT,
	"up": Vector2.UP,
	"down": Vector2.DOWN
}
var map : Array[Array] = [
	[P.BOUD,P.STRT,P.BOUD,P.BOUD,P.BOUD,P.BOUD],
	[P.LVL1,P.COIN,P.BOUD,P.BOUD,P.BOUD,P.BOUD],
	[P.BOUD,P.BOUD,P.BOUD,P.BOUD,P.BOUD,P.BOUD],
	[P.BOUD,P.BOUD,P.BOUD,P.BOUD,P.BOUD,P.BOUD],
	[P.BOUD,P.BOUD,P.BOUD,P.BOUD,P.BOUD,P.BOUD],
]


func _ready() -> void:
	var new_timer : Timer = Timer.new()
	add_child(new_timer)
	new_timer.timeout.connect(flip_sprite)
	new_timer.call_deferred("start", FLIP_SPEED)


func _unhandled_input(event):
	for dir in inputs.keys():
		if event.is_action_pressed(dir):
			move(dir)
	if event.is_action_pressed("accept"):
		if map[map_vector.x][map_vector.y] == P.LVL1:
			Events.levels.level_started.emit("01")


func move(dir: String):
	var new_vector : Vector2 = map_vector + inputs[dir]
	if new_vector >= Vector2.ZERO and map[new_vector.x][new_vector.y] != P.BOUD:
		map_vector = new_vector
		position += inputs[dir] * tile_size


func flip_sprite() -> void:
	flip_h = !flip_h
