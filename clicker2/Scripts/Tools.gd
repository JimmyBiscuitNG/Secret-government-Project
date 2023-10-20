extends Node2D


func _process(delta):
	if global.Up1amt >= 1:
		$ScrollContainer/VBoxContainer/Row1/Tool1.disabled = false
	if global. Up1amt >= 1 and global.Tool1Bought == 0:
		$ScrollContainer/VBoxContainer/Row1/Tool1.show()
	if global.Tool1Bought == 1 or global.Up1amt == 0:
		$ScrollContainer/VBoxContainer/Row1/Tool1.hide()




func _on_tool_1_mouse_entered():
	if global.Up1amt >= 1 and $ScrollContainer/VBoxContainer/Row1/Tool1.disabled == false:
		$"../../UI/MouseMenu/Desc".text = "Plasic Shovels
		Doubles Minor Miner's Dirt Per Second!"
		$"../../UI/MouseMenu/Cost".text = "Cost: 150 Dirt"
		$"../../UI/MouseMenu".show()



func _on_tool_1_mouse_exited():
	if global.Up1amt >= 1:
		$"../../UI/MouseMenu".hide()





func _on_tool_1_pressed():
	if global.amt >= 150 and global.Up1amt >= 1:
		global.amt = global.amt - 150
		global.Tool1Bought = 1
		global.Up1Multi += 1 
		$"../../UI/MouseMenu".hide()
		$ScrollContainer/VBoxContainer/Row1/Tool1.hide()
