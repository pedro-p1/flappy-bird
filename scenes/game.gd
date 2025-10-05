extends Node2D

var score = 5
const PIPE = preload("uid://b8n2u3wxdiopa")

func create_pipe():
	for i in range(score):
		PIPE.instantiate()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
