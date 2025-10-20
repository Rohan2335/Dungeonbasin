extends Node
@onready var gamemanage: Node = %Gamemanage
@onready var score: Label = $"../CharacterBody2D/Score"

 var scora2 = gamemanage.scora 


func add_candy():
	scora2 += 1
	score.text = " candy:" + str(scora2.scora )
