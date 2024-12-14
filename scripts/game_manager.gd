class_name GameManager
extends Node2D

var generador:Node2D
var puntos:int=0
var gameOver:bool=false
const escenaMuerte="res://escenas/interfaz_botones_restart.tscn"

func _ready() -> void:
	generador=get_node("../Spawner")

func conseguir_puntos():
	if(!gameOver):
		puntos+=1
		$"../CanvasLayer/Label".text=str(puntos)
		if(puntos%10==0):
			$"../Spawner/Timer".wait_time=$"../Spawner/Timer".wait_time*0.9

func game_over() -> void:
	gameOver=true
	generador.pararDeGenerar()
	var escena_final=preload(escenaMuerte).instantiate()
	add_child(escena_final)
