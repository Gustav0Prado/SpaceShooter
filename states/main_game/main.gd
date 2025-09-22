class_name MainGame
extends Node2D

func _on_upper_limit_body_entered(body: Node2D) -> void:
	print(body.name)

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		queue_free()
