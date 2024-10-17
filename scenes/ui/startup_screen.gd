extends Node2D


func _on_start_pressed():
	get_tree().change_scene_to_file("res://scenes/levels/bedroom.tscn")

func _on_exit_pressed():
	get_tree().quit()


func _on_settings_pressed():
	get_tree().change_scene_to_file("res://scenes/ui/settings.tscn")


func _on_credits_pressed():
	get_tree().change_scene_to_file("res://scenes/ui/credit_screen.tscn")
