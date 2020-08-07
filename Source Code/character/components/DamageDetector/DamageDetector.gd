extends Area2D

signal DamageTaken

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	print(get_overlapping_areas())
