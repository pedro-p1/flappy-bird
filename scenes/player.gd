extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0

signal collided

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump"):
		velocity.y = JUMP_VELOCITY
		
	var collision = move_and_collide(velocity * delta)
	if collision and not collision.get_collider().is_in_group("world boundaries"):
		emit_signal("collided")
		
	move_and_slide()
