class_name Main
extends Node2D

func _on_upper_limit_body_entered(body: Node2D) -> void:
	print(body.name)
