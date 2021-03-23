extends Area2D

export(String, FILE, "*.tscn") var fases

func _on_Inicio_fase2_body_entered(body):
	get_tree().change_scene(fases)

func _on_Inicio_fase2_body_exited(body):
	get_tree().change_scene(fases)
