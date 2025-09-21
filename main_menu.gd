class_name MainMenu
extends Node2D

const GAME: PackedScene = preload("res://main_game.tscn")

func _on_exit_pressed() -> void:
	self.get_tree().quit()

func _on_play_pressed() -> void:
	var game: MainGame = GAME.instantiate()
	self.add_child(game)
