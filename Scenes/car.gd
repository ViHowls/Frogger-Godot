extends Area2D

var direction = Vector2.LEFT
var speed = .5
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if position.x < 0:
		direction.x = 1
		print("car direction")
	if position.x > 0:
		print("car is right")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position += direction * speed
	if abs(position.x) > 250:
		queue_free()
	
	


func _on_visible_on_screen_enabler_2d_screen_exited() -> void:
	queue_free()
