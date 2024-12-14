class_name GameManager
extends Node2D

var generador:Node2D
var puntos:int=0
var gameOver:bool=false

func _ready() -> void:
	generador=get_node("../Spawner")

func conseguir_puntos():
	if(!gameOver):
		puntos+=1
		$"../CanvasLayer/Label".text=str(puntos)

func game_over() -> void:
	gameOver=true
	generador.pararDeGenerar()
	#TODO acabar el metodo con el UI
