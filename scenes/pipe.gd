extends StaticBody2D

var score: int = 0
@onready var score_checker: Area2D = $"score-checker"

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if score_checker.body_exited:
		score += 1
		print(score)
