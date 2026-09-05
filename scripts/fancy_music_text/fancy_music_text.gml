function fancy_music_text(encounter_data){ // Make this a script because its way easier for git to merge one line of code then a bunch
	if struct_exists(encounter_data, "bgm_fancy") && struct_exists(encounter_data, "bgm_fancytitle") && encounter_data.bgm_fancy {
		// do something here
		draw_set_font(font_main)
		draw_text_scale("♪ " + encounter_data.bgm_fancytitle, o_camera.x + 35 + offset, o_camera.y + 20, 2, c_white, fancyalpha)
	}
}