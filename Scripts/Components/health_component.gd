class_name Health_Component extends Node

@export_range(10, 100, 10) var health : int = 100:
	set = set_health,
	get = get_health

func set_health(new_health : int) -> int:
	health = new_health
	var owner_is_alive = is_alive()
	if not owner_is_alive:
		dead()
	print(health)
	return get_health()
	

func get_health() -> int:
	return health


func add_health(amount_new_health : int):
	if amount_new_health <= 0:
		return
	var actual_health := get_health()
	actual_health += amount_new_health
	set_health(actual_health)	


func substract_health(amount_new_health : int):
	if amount_new_health <= 0:
		return
	var actual_health := get_health()
	actual_health -= amount_new_health
	set_health(actual_health)


func is_alive() -> bool:
	const no_life = 0
	return get_health() > no_life 


func dead():
	owner.queue_free()
