extends CharacterBody2D

@onready var health_component : Health_Component = %Health_Component


func _on_hurtbox_area_entered(area : Hitbox):
	health_component.substract_health(area.damage)
	
