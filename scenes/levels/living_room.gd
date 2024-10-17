extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	#$Player.position = Vector2(60,60)
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#$Player.rotation_degrees += $Player.rotate * delta
	pass

	
	


func _on_hallway_body_entered(body):
	get_tree().change_scene_to_file("res://scenes/levels/hallway.tscn")
