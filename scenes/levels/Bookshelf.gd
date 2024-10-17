extends StaticBody2D

const lines: Array[String] = [
	"This",
]

func _unhandled_input(event):
	if event.is_action_pressed("interact"):
		DialogueManager.start_dialog(global_position, lines)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
