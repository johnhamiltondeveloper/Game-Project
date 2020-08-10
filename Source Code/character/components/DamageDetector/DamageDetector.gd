extends Area2D

signal DamageTaken

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func SignalDamage(damage,knock_back):
	print("Damage: ",damage)
	print("Knock_back ", knock_back)
