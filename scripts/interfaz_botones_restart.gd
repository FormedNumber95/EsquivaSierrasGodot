class_name InterfazBotones
extends CanvasLayer

const JUEGO="res://escenas/escenaJuego.tscn"
const MENU_INICIO="res://escenas/MenuPrincipal.tscn"

func _on_btn_empezar_button_down() -> void:
	get_tree().change_scene_to_file(JUEGO)

func _on_btn_menu_button_down() -> void:
	get_tree().change_scene_to_file(MENU_INICIO)
