extends Control


#função dar play no jogo
func _on_Jogar_pressed():
	get_tree().change_scene("res://world.tscn")

#função sair do jogo
func _on_Sair_pressed():
	get_tree().quit()
