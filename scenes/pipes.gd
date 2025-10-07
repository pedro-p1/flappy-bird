extends Node2D

const MOVESPEED = 200 # speed that the pipes move
var height: int = 0 # range of the y coord
var xcoord: int = 0
var pipe = preload("res://scenes/pipe.tscn")
@onready var pipes: Node2D = $"."

func createPipe(delta):
	for i in range(50):
		var newPipe = pipe.instantiate()
		height = randi_range(500, 1000)
		xcoord = 3000 + i * 800
		newPipe.position = Vector2(xcoord, height)
		add_child(newPipe)
		
		while pipes.position.x != -MOVESPEED * delta + i * 800:
			pass

func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.move_local_x(-MOVESPEED * delta)
	
	
	createPipe(delta)
