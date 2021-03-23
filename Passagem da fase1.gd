extends Area2D

export(String, FILE, "*.tscn") var fases

func _on_Passagem_da_fase1_body_entered(body):
	get_tree().change_scene(fases)
