class_name SelectorSkins
extends Node2D

const MENU_PRINCIPAL="res://escenas/MenuPrincipal.tscn"

static var skins_posibles={
	"malePerson":"res://imagenes/personajes/malePerson/",
	"femalePerson":"res://imagenes/personajes/femalePerson/",
	"maleAdventurer":"res://imagenes/personajes/maleAdventurer/",
	"femaleAdventurer":"res://imagenes/personajes/femaleAdventurer/",
	"robot":"res://imagenes/personajes/Robot/",
	"zombie":"res://imagenes/personajes/Zombie/"
	}
static var skin=skins_posibles.get("malePerson")

func _on_btn_skin_male_person_button_down() -> void:
	skin=skins_posibles.get("malePerson")
	get_tree().change_scene_to_file(MENU_PRINCIPAL)

func _on_btn_female_person_button_down() -> void:
	skin=skins_posibles.get("femalePerson")
	get_tree().change_scene_to_file(MENU_PRINCIPAL)

func _on_btn_male_adventurer_button_down() -> void:
	skin=skins_posibles.get("maleAdventurer")
	get_tree().change_scene_to_file(MENU_PRINCIPAL)

func _on_btn_female_adventurer_button_down() -> void:
	skin=skins_posibles.get("femaleAdventurer")
	get_tree().change_scene_to_file(MENU_PRINCIPAL)

func _on_btn_robot_button_down() -> void:
	skin=skins_posibles.get("robot")
	get_tree().change_scene_to_file(MENU_PRINCIPAL)

func _on_btn_zombie_button_down() -> void:
	skin=skins_posibles.get("zombie")
	get_tree().change_scene_to_file(MENU_PRINCIPAL)
