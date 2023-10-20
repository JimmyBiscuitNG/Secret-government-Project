extends Node2D
var colorclone
var autodirt = global.Up1amt * 0.5
signal savetime
signal gotime
# Called when the node enters the scene tree for the first time.


# Called every frame. 'delta' is the elapsed time since the previous frame.



func _on_click_pressed():
	$"../Sound/Click".play()
	global.amt = global.amt + global.pwr
	global.tamt = global.tamt + global.pwr
	global.tclk = global.tclk + 1


func _on_save_pressed():
	SaveSystem.save()
	emit_signal("savetime")


func _process(delta):
	autodirt = global.autoz
	#Upgrade1#
	if global.tamt >= 25:
		$Upgrades/ScrollContainer/VBoxContainer/Up1.disabled = false
		$Upgrades/ScrollContainer/VBoxContainer/Up1.text = "Minor Miners"
		$Upgrades/ScrollContainer/VBoxContainer/Up1/Amt.show()
		$Upgrades/ScrollContainer/VBoxContainer/Up1/Cst.show()
		$Upgrades/ScrollContainer/VBoxContainer/Up1/Amt.text = "Amount: " + str(global.Up1amt)
		$Upgrades/ScrollContainer/VBoxContainer/Up1/Cst.text = "Cost: " + str(global.Up1cst)
	else:
		pass
	#Upgrade2#


func _on_auto_timer_timeout():
	global.amt = (global.amt + autodirt)
	global.tamt = (global.tamt + autodirt)
	print(global.Up1Multi)

func _on_quit_pressed():
	SaveSystem.save()
	emit_signal("savetime")
	emit_signal("gotime")










func _on_quit_save_timeout():
	get_tree().quit()


func _on_up_1_pressed():
	if global.amt >= global.Up1cst:
		$"../Sound/Upg".play()
		global.amt = global.amt - global.Up1cst
		global.Up1amt = global.Up1amt + 1

