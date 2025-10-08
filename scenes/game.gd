extends Node2D

@onready var gameover: Control = $gameover
@onready var bird: CharacterBody2D = $bird

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	bird.collided.connect(_on_collision)

func _on_collision():
	gameover.visible = true
	get_tree().paused = true
