extends Node2D

var carScene: PackedScene = preload("res://Scenes/car.tscn") #Store car scene as a variable.

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass





func _on_finish_area_2d_body_entered(body: Node2D) -> void:
	print(body)
	print("player entered like")


func _on_car_timer_timeout() -> void:
	var car = carScene.instantiate() as Area2D
	var posMarker = $CarStartPositions.get_children().pick_random() as Marker2D
	car.position = posMarker.position
	$Objects.add_child(car)
	
	
