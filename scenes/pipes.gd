extends Node2D

const MOVESPEED = 200 # speed that the pipes move
var xCoord = 0


func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	self.move_local_x(-MOVESPEED * delta)
