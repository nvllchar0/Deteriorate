extends Node2D



func _on_bedroom_body_entered(body):

	get_tree().change_scene_to_file("res://scenes/levels/bedroom.tscn")


func _on_living_room_body_entered(body):

	get_tree().change_scene_to_file("res://scenes/levels/living_room.tscn")


			
		
