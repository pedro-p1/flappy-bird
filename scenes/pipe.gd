extends StaticBody2D

var passed: bool = false

func _on_scorechecker_body_exited(_body: Node2D) -> void:
	passed = true
	print("passed")
