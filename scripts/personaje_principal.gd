class_name Jugador
extends CharacterBody2D

signal jugadorEliminado()

const SPEED:float = 350.0

var skin_elegida
var moviendose:bool=false
var skins_correr
var skin_correr_actual:int

func _ready() -> void:
	skin_elegida=SelectorSkins.new().skin
	cambiar_textura(skin_elegida+"idle.png")
	skins_correr=[skin_elegida+"run0.png",skin_elegida+"run1.png",skin_elegida+"run2.png"]

func _process(delta: float) -> void:
	if(velocity.x==0):
		$Timer.stop()
		moviendose=false
		cambiar_textura(skin_elegida+"idle.png")
	else:
		if(!moviendose):
			skin_correr_actual=0
			moviendose=true
			cambiar_textura(skins_correr[skin_correr_actual])
		if $Timer.is_stopped():
			$Timer.start(0.1)
			if(velocity.x<0):
				$Sprite2D.flip_h=true
			else:
				$Sprite2D.flip_h=false

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

func cambiar_textura(ruta_textura: String) -> void:
	var nueva_textura = load(ruta_textura)  # Carga la textura desde la ruta
	$Sprite2D.texture = nueva_textura


func _on_timer_timeout() -> void:
	if(moviendose):
		skin_correr_actual=(skin_correr_actual+1)%3
		print(skin_correr_actual)
		cambiar_textura(skins_correr[skin_correr_actual])
