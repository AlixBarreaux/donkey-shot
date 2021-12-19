class_name Game
extends Node


# ----------------------------- DECLARE VARIABLES ------------------------------


onready var canvas_layer: CanvasLayer = $CanvasLayer


export var tutorial_menu_scene_path: String = ""


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	self._initialize_asserts()
	
	if Settings.get_tutorial_enabled():
		var tutorial_menu_instance = load(self.tutorial_menu_scene_path).instance()
		
		self.canvas_layer.add_child(tutorial_menu_instance)


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _initialize_asserts() -> void:
	assert(self.tutorial_menu_scene_path != "")
