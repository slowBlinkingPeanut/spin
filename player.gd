extends Area2D

signal hit

var screen_size 
var angular_speed = PI
var speed = 200.0


# Called when the node enters the scene tree for the first time.
func _ready():
	screen_size = get_viewport_rect().size


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var direction = 0
	if Input.is_action_pressed("click"):
		direction = -1
	#elif InputEventScreenTouch:
	#	direction = -1
	else:
		direction = 1
	rotation += angular_speed * direction * delta
	
	var velocity = Vector2.UP.rotated(rotation) * speed
	position += velocity * delta
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)


func _on_player_body_entered(body):
	emit_signal("hit")
	print("hit")
	body.hide()
	self.show()

	
