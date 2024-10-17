extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	#$Player.position = Vector2(700,700)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	#$Player.rotation_degrees += $Player.rotate * delta
	pass



func _on_hallway_body_entered(body):
	get_tree().change_scene_to_file("res://scenes/levels/hallway.tscn")
   
