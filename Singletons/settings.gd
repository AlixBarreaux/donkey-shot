# Settings Singleton
extends Node


# ----------------------------- DECLARE VARIABLES ------------------------------


var tutorial_enabled: bool = true setget set_tutorial_enabled, get_tutorial_enabled


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
#	TranslationServer.set_locale(OS.get_locale())
	TranslationServer.set_locale("fr_FR")


# ------------------------------ DECLARE FUNCTIONS -----------------------------


# Tutorial Enabled
func set_tutorial_enabled(value: bool) -> void:
	tutorial_enabled = value


func get_tutorial_enabled():
	return tutorial_enabled
