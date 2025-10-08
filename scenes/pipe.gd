extends StaticBody2D

signal pipe_passed

func _on_scorechecker_body_exited(_body: Node2D) -> void:
	emit_signal("pipe_passed")
