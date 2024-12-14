class_name Jugador
extends CharacterBody2D

signal jugadorEliminado()

const SPEED:float = 300.0

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
# TODO cambiar los controles por los controles personalizados
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
	
func tocado():
	jugadorEliminado.emit()
	queue_free()