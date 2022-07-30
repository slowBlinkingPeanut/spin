extends RigidBody2D
var screen_size

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size
	var x = randi() % int(screen_size.x)
	var y = randi() % int(screen_size.y)
	start(Vector2(x,y))
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func start(pos):
	position = pos

func _on_player_hit():
	pass # Replace with function body.


func _on_VisibilityNotifier2D_screen_exited():
	#queue_free()
	pass # Replace with function body.


func _on_VisibilityNotifier2D_visibility_changed():
	#self.hide()
	
	pass # Replace with function body.
