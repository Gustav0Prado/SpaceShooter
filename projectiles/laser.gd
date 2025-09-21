class_name Laser
extends Node2D

const SPEED: int = 500

var direction: Vector2 = Vector2.ZERO

func _process(delta: float) -> void:
	global_position += direction * delta * SPEED


func _on_area_2d_body_entered(body: StaticBody2D) -> void:
	if body.is_in_group("Limits"):
		self.queue_free()
