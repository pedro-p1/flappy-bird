extends Node2D

const MOVESPEED = 200 # speed that the pipes move
var height: int = 0 # range of the y coord
var xcoord: int = 0
@export var pipe_scene: PackedScene

func _ready() -> void:
	for i in range(10):
		var newPipe = pipe_scene.instantiate()
		height = randi_range(500, 1000)
		xcoord = 1500 + i * 500
		newPipe.position = Vector2(xcoord, height)
		print("created pipe number:", i)
		print("coords are: ", str(xcoord) + "," + str(height))
		await get_tree().create_timer(5).timeout


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.move_local_x(-MOVESPEED * delta)
	
