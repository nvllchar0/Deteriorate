extends CharacterBody2D
var rotate: float = 90


var can_interact: bool = true
var current_dir = "none"

@onready var animationPlayer = $AnimationPlayer
@onready var animationTree = $AnimationTree
@onready var animationState = animationTree.get("parameters/playback")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):	
	var input_vector = Vector2.ZERO
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 75

	input_vector.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	input_vector.y = Input.get_action_strength("down") - Input.get_action_strength("up")
	input_vector = input_vector.normalized()
	
	
	if input_vector != Vector2.ZERO:
		animationTree.set("parameters/Idle/blend_position", input_vector)
		animationTree.set("parameters/Move/blend_position", input_vector)
		animationState.travel("Move")
	else:
		animationState.travel("Idle")
	
	
	move_and_slide()
	
	
	if(Input.is_action_just_pressed("inv")):
		print("Inventory")	
		
	if(Input.is_action_pressed("sprint")):
		velocity = direction * 100
		move_and_slide()
		
	if(Input.is_action_just_pressed("pause")):
		print("pause")
		get_tree().change_scene_to_file("res://scenes/pause_menu.tscn")
		
	if(Input.is_action_just_pressed("interact") and can_interact):
		print("Interact")	
		can_interact = false
		$Interact.start()
	
		
		

func _on_interact_timeout():
	can_interact = true
	
	
	

