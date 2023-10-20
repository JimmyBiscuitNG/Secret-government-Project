extends Node2D


func _on_tool_1_pressed():
	if global.amt >= 150:
		global.Tool1Bought = 1
		global.Tool1Multi = 2
		$"../../../UI/MouseMenu".hide()
