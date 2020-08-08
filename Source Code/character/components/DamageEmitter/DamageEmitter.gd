extends Area2D

signal Damage

export(int) var Damage
export(int) var knockBack

func _ready():
	pass # Replace with function body.

func _process(delta):
	position += Vector2(0.5,0)

func _on_DamageEmitter_area_entered(area):
	if not is_connected("Damage",area,"SignalDamage"):
		self.connect("Damage",area,"SignalDamage")
		print("enter")

func _on_DamageEmitter_area_exited(area):
	if is_connected("Damage",area,"SignalDamage"):
		self.disconnect("Damage",area,"SignalDamage")
