extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$"../UI/ScrollContainer/VBoxContainer/TotalAmount".text = "Total Dirt Made: " + str(floor(global.tamt))
	$CurAmount.text = "Dirt Made: " + str(floor(global.amt))
	$"../UI/ScrollContainer/VBoxContainer/TotalClick".text = "Total Clicks: " + str(global.tclk)
	$DPS.text = "Dirt Per Second: " + str(global.autoz)
