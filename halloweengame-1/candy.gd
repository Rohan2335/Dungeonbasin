extends Area2D

@onready var gamemanage: Node = %Gamemanage


func _on_body_entered(_body: Node2D) -> void:
	gamemanage.add_candy()
	queue_free()
