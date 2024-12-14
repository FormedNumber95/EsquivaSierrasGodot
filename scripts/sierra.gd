class_name Sierra
extends RigidBody2D

var gameManager:Node2D

func _physics_process(delta: float) -> void:
	# Añade una velocidad angular constante
	angular_velocity += PI

func _on_body_entered(body: Node) -> void:
	if body is Jugador:
		print("JUGADOR")
		if (body.has_method("tocado")):
			body.tocado()
	else:
		print("SUELO")
		gameManager.conseguir_puntos()
	queue_free()
