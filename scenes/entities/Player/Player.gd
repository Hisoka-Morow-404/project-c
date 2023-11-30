extends CharacterBody2D


@export var speed: float = 300.0
@export var healt: float = 100.0
var damage: float = 1.0


func _physics_process(delta):
	move()

func move():
	velocity = Vector2(Input.get_axis("ui_left", "ui_right"), Input.get_axis("ui_up", "ui_down")).normalized() * speed
	move_and_slide()

func applay_damage(damage:float):
	healt -= damage
	
