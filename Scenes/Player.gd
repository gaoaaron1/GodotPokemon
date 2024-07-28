extends CharacterBody2D

var speed = 200
var direction_map = {
	"left": Vector2(-1, 0),
	"right": Vector2(1, 0),
	"up": Vector2(0, -1),
	"down": Vector2(0, 1)
}

var sprite
var animation

# Called when the node enters the scene tree for the first time.
func _ready():
	sprite = $Red_Sprite
	animation = $Animation

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	var movement = Vector2()
	
	for action in direction_map.keys(): 
		if Input.is_action_pressed(action):
			animation.play(action)
			movement += direction_map[action] * speed * delta
			move_and_collide(movement)
			return
	animation.stop()

