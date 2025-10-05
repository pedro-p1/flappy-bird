extends StaticBody2D

var score: int = 0

func _on_scorechecker_body_exited():
	score += 1
	print(score)
