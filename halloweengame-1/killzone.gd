extends Area2D

@onready var timer: Timer = $Timer


func _on_body_entered(_body):

	print("you died")

#	Engine.time_scale = 0.5
	timer.start()
	_body.get_node("CollisionShape2D").queue_free()


func _on_timer_timeout():
	get_tree().reload_current_scene()
	Engine.time_scale = 1
