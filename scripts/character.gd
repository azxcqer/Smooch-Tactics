extends Node2D

onready var drink = load("res://objects/drink.tscn")
onready var hand1 = $hand1
onready var hand2 = $hand2
var drinking = false

func _ready():
	print(hand1)
	print(hand2)

func give_drink():
	if not drinking():
		var a = drink.instance()
		a.set_position(hand1.get_position())
		add_child(a)
		drinking = true