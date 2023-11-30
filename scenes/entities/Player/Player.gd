extends CharacterBody2D


@export var speed: float = 300.0
@export var jump_velocity: float = -150.0
@export var healt: float = 100.0
var damage: float = 1.0
signal damage_signal

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	self.damage_signal.connect("apply_damage")
	

func _physics_process(delta):	
	move(delta)

func move(delta):
	velocity = Vector2(Input.get_axis("ui_left", "ui_right"), Input.get_axis("ui_up", "ui_down")).normalized() * speed
	if not is_on_floor():
		velocity.y += gravity * delta
	move_and_slide()

func apply_damage(damage:float):
	healt -= damage
	
func attack():
	pass

