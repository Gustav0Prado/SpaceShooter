class_name Player
extends Node2D

const SPEED: int = 5
const LASER: PackedScene = preload("res://projectiles/laser.tscn")

const PLAYER_SIZE: int = 32
const SCREEN_SIZE: int = 1152

@onready var left_muzzle: Marker2D = $LeftMuzzle
@onready var right_muzzle: Marker2D = $RightMuzzle

func _process(_delta: float) -> void:
	move_player()
	shoot()
	
func move_player() -> void:
	if Input.is_action_pressed("ui_left"):
		self.global_position.x -= SPEED
	if Input.is_action_pressed("ui_right"):
		self.global_position.x += SPEED
	self.global_position.x = clamp(self.global_position.x, PLAYER_SIZE, SCREEN_SIZE-PLAYER_SIZE)

func shoot() -> void:
	if Input.is_action_just_pressed("action"):
		var tween: Tween = get_tree().create_tween()
		tween.tween_property(self, "scale", Vector2(1.2, 1.2), 0.1)
		tween.tween_property(self, "scale", Vector2(1, 1), 0.1)

		var laser1: Laser = LASER.instantiate()
		var laser2: Laser = LASER.instantiate()
		owner.add_child(laser1)
		owner.add_child(laser2)
		laser1.global_position = left_muzzle.global_position
		laser2.global_position = right_muzzle.global_position
		
		laser1.direction = Vector2.UP
		laser2.direction = Vector2.UP
