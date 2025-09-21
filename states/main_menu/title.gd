class_name TitleLabel
extends Label

const OFFSET: int = 30

func _init() -> void:
	var tween: Tween = create_tween()
	
	# Saves original and modified position
	var original_position: Vector2 = self.global_position
	var new_postion: Vector2 = Vector2(original_position.x, original_position.y+OFFSET)
	
	# Tweens in loop
	tween.set_loops()
	tween.tween_property(self, "global_position", new_postion, 1)
	tween.tween_property(self, "global_position", original_position, 1)
