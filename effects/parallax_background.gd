class_name ParallaxBG extends Node2D

@onready var space_layer: Parallax2D = $SpaceLayer
@onready var close_stars_layer: Parallax2D = $CloseStarsLayer
@onready var far_stars_layer: Parallax2D = $FarStarsLayer

func _ready() -> void:
	close_stars_layer.repeat_size = Vector2(1152, 648)
	far_stars_layer.repeat_size = Vector2(1152, 648)
	space_layer.repeat_size = Vector2(1152, 648)
	
func _process(delta: float) -> void:
	close_stars_layer.scroll_offset += Vector2(0, 20) * delta
	far_stars_layer.scroll_offset += Vector2(0, 10) * delta
	space_layer.scroll_offset += Vector2(0, 5) * delta
