extends Node

var amt = 0
var tamt = 0
var pwr = 1
var tclk = 0
var autoz = 0


#----------------#
#Upgrade Var's

var Up1amt = 0
var Up1cst = 10 

#-----------#
#Tool Var's

var Tool1Bought = 0
var Up1Multi = 1

func _process(delta):
	autoz = (Up1amt * 0.1 * Up1Multi) 
	Up1amt = Up1amt
	Up1cst = ceil(pow(1.2, Up1amt) * 25)

