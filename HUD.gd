extends CanvasLayer

#Notifies the main scene that the start button has been pressed.
signal start_game

func show_message(text):
	$message.text = (text)
	$message.show()
	$messageTimer.start()
	
	func game_over():
		show_message("Game over")
		#wait for the message timer to end
		await $MessageTimer.timeout
		
		$message.text("Dodge the creeps")
		$message.show()
		#Make a one-shot timer and wait for it to finish
		await get_tree().create_timer(1,0).timeout
		$StartButtonshow()
		func update_score(score):
			$scorelabel.text = str(score)
			
		
