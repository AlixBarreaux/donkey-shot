class_name SceneLoaderButton
extends Button


# ----------------------------- DECLARE VARIABLES ------------------------------

export var scene_to_load_path: String = ""

onready var scene_to_load = load(self.scene_to_load_path)


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	self._initialize_asserts()


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _initialize_asserts() -> void:
	assert(self.scene_to_load_path != "")


func _on_SceneLoaderButton_pressed() -> void:
	GeneralHelpers.check_for_generic_error_code(self, get_tree().change_scene(self.scene_to_load_path))
