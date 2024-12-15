class_name GameManager
extends Node2D

const escenaMuerte="res://escenas/interfaz_botones_restart.tscn"

var generador:Node2D
var jugador:CharacterBody2D
var puntos:int=0
var gameOver:bool=false
var skin_elegida

func _ready() -> void:
	generador=get_node("../Spawner")
	jugador=get_node("../CharacterBody2D")
	#TODO Fijar la skin del jugador en funcion de la variable skin del gestor_skins
	skin_elegida=SelectorSkins.new().skin
	jugador.cambiar_textura(skin_elegida+"idle.png")

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
