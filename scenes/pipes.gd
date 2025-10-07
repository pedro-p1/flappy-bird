extends Node2D

const MOVESPEED = 200 # speed that the pipes move
var height: int = 0 # range of the y coord
var xcoord: int = 0
var pipe = preload("res://scenes/pipe.tscn")

func createPipe():
	for i in range(1000000000):
		var newPipe = pipe.instantiate()
		height = randi_range(500, 940)
		xcoord = 3000 + i * 800
		newPipe.position = Vector2(xcoord, height)
		add_child(newPipe)
		await get_tree().create_timer(4).timeout

func _ready() -> void:
	createPipe()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.move_local_x(-MOVESPEED * delta)
	
