extends Sprite

var screen_size 
var angular_speed = PI
var speed = 200.0

func _ready():
	screen_size = get_viewport_rect().size

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
	
