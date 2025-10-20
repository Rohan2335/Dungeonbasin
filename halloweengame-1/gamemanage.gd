extends Node
var scora = 0
@onready var score: Label = $"../CharacterBody2D/Score"
var hearts = 3

func dec_health():
	hearts -= 1
	print(hearts)
	if (hearts == 0 ):
		get_tree().reload_current_scene()	
func add_candy():
	scora+= 1
	score.text = " candy: " + str(scora)
	
