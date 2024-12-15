extends CanvasLayer

const JUEGO="res://escenas/escenaJuego.tscn"
const SKINS="res://escenas/interfaz_skins.tscn"

func _on_btn_empezar_button_down() -> void:
	get_tree().change_scene_to_file(JUEGO)

func _on_btn_salir_button_down() -> void:
	get_tree().quit()
	

func _on_btn_skin_button_down() -> void:
	get_tree().change_scene_to_file(SKINS)
