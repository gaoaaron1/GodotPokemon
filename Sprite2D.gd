extends Sprite2D

var speed = 400
var direction_map = {
	"left": Vector2(-1, 0),
	"right": Vector2(1, 0),
	"up": Vector2(0, -1),
	"down": Vector2(0, 1)
}

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	var movement = Vector2()
	
	for action in direction_map.keys(): 
		if Input.get_action_strength(action):
			movement += direction_map[action]
	
	position += movement * speed * delta
	rotation_degrees += 1
