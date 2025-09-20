class_name Player extends Node2D

func _process(delta: float) -> void:
	move_player()
	
func move_player() -> void:
	if Input.is_action_pressed("ui_left"):
		self.global_position.x -= 2
	if Input.is_action_pressed("ui_right"):
		self.global_position.x += 2
	self.global_position.x = clamp(self.global_position.x, 32, 1120)
