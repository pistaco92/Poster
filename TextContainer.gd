extends Control

class_name TextContainer

var tweetHoverReproduce
var tweetExitReproduce

var tweetIn
var tweetOut
@export var scale_b: Vector2

var scale_default
var backgroundColor

var timer

var mouse_in

# Called when the node enters the scene tree for the first time.
func _ready():
	tweetExitReproduce = false
	tweetHoverReproduce = false	
	timer = 4
	scale_default = Vector2(scale)	
	
	
func animation_hover():
	tweetIn = create_tween()
	tweetIn.finished.connect(on_tweet_on_finish)
	var tween = tweetIn
	tween.tween_property(self, "scale", scale_b, timer)
	
	
func animation_off_hover():
	tweetOut = create_tween()
	tweetOut.finished.connect(on_tweet_off_finish)
	var tween = tweetOut
	tween.tween_property(self, "scale", scale_default, timer)
	

func on_tweet_on_finish():
	tweetHoverReproduce = false
	
func on_tweet_off_finish():
	tweetExitReproduce = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	print(mouse_in)


