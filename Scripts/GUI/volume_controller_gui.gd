class_name VolumeController
extends Control


# ----------------------------- DECLARE VARIABLES ------------------------------


export (String) var audio_bus_name = ""

# Node References
onready var slider: Slider = $HSlider

onready var audio_bus_index: int = -1


# ---------------------------------- RUN CODE ----------------------------------


func _ready() -> void:
	self._initialize_asserts()
	self._initialize()
	
	# warning-ignore: return_value_discarded
	slider.connect("value_changed", self, "_on_Slider_value_changed")


# ------------------------------ DECLARE FUNCTIONS -----------------------------


func _initialize_asserts() -> void:
	assert(self.audio_bus_name != "")


func _initialize() -> void:
	audio_bus_index = AudioServer.get_bus_index(self.audio_bus_name)
	self.slider.min_value = -80
	self.slider.max_value = 0
	
	self.slider.value = AudioServer.get_bus_volume_db(audio_bus_index)


func _on_Slider_value_changed(value) -> void:
	if value == self.slider.min_value:
		AudioServer.set_bus_mute(self.audio_bus_index, true)
	else:
		AudioServer.set_bus_mute(self.audio_bus_index, false)
		AudioServer.set_bus_volume_db(audio_bus_index, value)
