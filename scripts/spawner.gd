class_name GeneradorSierras
extends Node2D

const SIERRA = preload("res://escenas/sierra.tscn")
var gameManager:Node2D

func _ready() -> void:
	gameManager=$"../GameManager"

func _on_timer_timeout() -> void:
	generarSierra()
	
func generarSierra():
	var sierra=SIERRA.instantiate()
	var mi_posicion=randf_range(-234,234)
	sierra.position.x=mi_posicion
	sierra.position.y=position.y
	sierra.gameManager=gameManager
	add_child(sierra)
	
func pararDeGenerar():
	$Timer.stop()
