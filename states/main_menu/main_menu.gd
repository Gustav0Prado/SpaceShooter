class_name MainMenu
extends Node2D

const GAME: PackedScene = preload("res://states/main_game/main_game.tscn")

@onready var play_btn: Button = $ButtonContainer/Play

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ESCAPE:
			play_btn.grab_focus()

func _ready() -> void:
	play_btn.grab_focus()

func _on_exit_pressed() -> void:
	self.get_tree().quit()

func _on_play_pressed() -> void:
	var game: MainGame = GAME.instantiate()
	add_child(game)
	play_btn.release_focus()
