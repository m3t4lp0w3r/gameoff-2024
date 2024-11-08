extends Node2D

signal task_completed(task_id : String)
signal all_task_completed()

#TOOO this should be moved insiede the audio system
signal set_volume(bus : String, volume : float)
signal play_sound(audio_key : String, bus : String)
signal play_music(audio_key : String)
