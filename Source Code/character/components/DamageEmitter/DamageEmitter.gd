extends Area2D

signal Damage

enum DamageType {Once,Continuous}
export(DamageType) var mode = DamageType.Once
export(float) var time = 1
export(int) var Damage = 1
export(int) var knockBack = 1

func _ready():
	pass

func _process(delta):
	
	self.position += Vector2(0.4,0)
	
	if mode == DamageType.Once:
		return
		
	if($Timer.is_stopped()):
		$Timer.start(time)
		emit_signal("Damage",Damage,knockBack)

func _on_DamageEmitter_area_entered(area):
	
	if not is_connected("Damage",area,"SignalDamage"):
		self.connect("Damage",area,"SignalDamage")
		
		if mode == DamageType.Once:
			emit_signal("Damage",Damage,knockBack)

func _on_DamageEmitter_area_exited(area):
	if is_connected("Damage",area,"SignalDamage"):
		self.disconnect("Damage",area,"SignalDamage")
