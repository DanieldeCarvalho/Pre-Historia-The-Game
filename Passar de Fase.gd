extends Area2D

export(String, FILE, "*.tscn") var fases

func _on_Passar_de_Fase_body_entered(body):
	get_tree().change_scene(fases)