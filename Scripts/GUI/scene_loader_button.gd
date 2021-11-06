class_name SceneLoaderButton
extends Button


# ----------------------------- DECLARE VARIABLES ------------------------------


export var scene_to_load: PackedScene = null


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	self._initialize_asserts()


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _initialize_asserts() -> void:
	assert(self.scene_to_load != null)


func _on_SceneLoaderButton_pressed() -> void:
	get_tree().change_scene_to(self.scene_to_load)
