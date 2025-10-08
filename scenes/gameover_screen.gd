extends Control



func _on_restart_pressed() -> void:
	get_tree().reload_current_scene()
	get_tree().paused = false

func _on_quit_pressed() -> void:
	pass # Replace with function body.
