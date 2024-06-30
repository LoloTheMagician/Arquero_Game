#Agregamos una clase para que se identifique de mejor manera
class_name Player extends CharacterBody2D


@export var speed : int = 400

func _physics_process(_delta):
	var axis_y :float = Input.get_axis('UP', 'DOWN')
	var axis_x : float = Input.get_axis('LEFT', 'RIGHT')
	var direction := Vector2(axis_x, axis_y).normalized()
	velocity = direction * speed
	move_and_slide()

