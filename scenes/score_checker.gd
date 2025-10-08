extends Area2D

@onready var player = null

func _ready() -> void:
	body_exited.connect(_on_body_exited)
	
func _on_body_exited(body):
	if body == player:
		player.on_zone_exit()
