extends Sprite2D

var tweet
var default_scale
var default_position

var scale_b
var position_center
var timer

signal finish

# Called when the node enters the scene tree for the first time.
func _ready():
	default_scale = Vector2(scale)
	default_position = Vector2(position)
	
	position_center = Vector2(1920 / 2, 1080 / 2)
	scale_b = Vector2(5, 5)
	
	timer = 2
	
	position = position_center
	scale = scale_b

	
func create_animation():
	tweet = create_tween()
	tweet.finished.connect(on_finish)
	tweet.set_parallel(true)
	tweet.tween_property(self, "position", default_position, timer)
	tweet.tween_property(self, "scale", default_scale, timer)
	

func on_finish():
	finish.emit()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
