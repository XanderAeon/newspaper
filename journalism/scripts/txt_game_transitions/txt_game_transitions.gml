function txt_maintutorial() {
	msg = msglang([
	btxt(s_sky),
	txt("Interview different developers as Toshiko!"),
	txt("But stay mindful: You only have 72 hours to set up your newspaper."),
	txt ("You'll have to balance interviewing, sleeping, and finding team members!"),
	txt ("You can find team members with the 'find team members' button on the right!"),
	txt ("It will take at least 1 hour to find a team member, but could take more."),
	txt ("Find all your team members before 55 hours are up, or you'll have to end early!"),
	txt ("Finally, you can use the control key to skip through text!"),
	txt ("Good luck!")
	],[
	
	txt(""),
	
	]);
	endevent = function() {
		global.gameflag = true;
		music_choice = random(2);
		if music_choice <= 1 music_set(mus.interview1);
		else music_set(mus.interview2);	
		if !c_minigamecheck() c_makemenu(global.menus.main);
	};
}

function txt_sleeptutorial() {
	msg = msglang([
	btxt(s_youkaimountain),
	txt("Wow, I'm tired. Whelp, early bird gets the worm.", TOSHIKO.TIRED, SPRITEPOS.CENTER),
	txt("Turn all the Kappa-power lights off so you can fall asleep!"),
	txt("Left click on a light to turn its adjacent light off."),
	txt("The faster you turn the lights off, the less time it will take to fall asleep."),
	txt("If you get stuck, press the control key to turn all the lights back on.")
	],[
	
	txt(""),
	
	]);
	endevent = function() {
		music_set(mus.minigame1);
		room_goto(lightsout);
	};
}
function txt_sleepwin() {
	msg = msglang([
		txt("You turned all the lights off in time! Eight hours have passed!")
	]);
	//c_makemenu(global.menus.main);
	endevent = function() {
		
		global.timeremaining -= 8;
		audio_play_sound(se_successful, 1, false);
		music_choice = random(2);
		if music_choice <= 1 music_set(mus.interview1);
		else music_set(mus.interview2);
		if !c_minigamecheck() {
			c_makemenu(global.menus.main);
			room_goto(AYAZONE2);
		}
		
	};
}
function txt_sleeplose(){
	msg = msglang([
	txt("You weren't fast enough. Ten hours have passed.")
]);
	endevent = function() {
		room_goto(AYAZONE2);
		global.timeremaining -= 10;
		music_choice = random(2);
		if music_choice <= 1 music_set(mus.interview1);
		else music_set(mus.interview2);	
		if !c_minigamecheck() c_makemenu(global.menus.main);
	};
}
function txt_recruit() {
	if window_get_fullscreen()
	{
		msg = msglang([
		btxt(s_sky),
		txt("It's time to find a team-member!", TOSHIKO.NEUTRAL, SPRITEPOS.CENTER),
		txt("I'll search for a " + global.recruit_char + "!", TOSHIKO.NEUTRAL, SPRITEPOS.CENTER),
		txt("Left click the right character to recruit them!"),
		txt("Be careful: if you click on the wrong character, you'll lose an hour of time!")
		],[
	
		txt(""),	
		]);
	}
	else
	{
		msg = msglang([
		btxt(s_sky),
		txt("It's time to find a team-member!", TOSHIKO.NEUTRAL, SPRITEPOS.CENTER),
		txt("I'll search for a " + global.recruit_char + "!", TOSHIKO.NEUTRAL, SPRITEPOS.CENTER),
		txt("Left click the right character to recruit them!")
		],[
	
		txt(""),	
		]);
	}

	endevent = function() {
		textbox_create(txt_recruitcheck);
	};
}
function txt_recruitcheck() {
	if (global.recruit_char == "Artist"){
		msg = msglang([
		btxt(s_sky),
		txt("The " + global.recruit_char + " looks like this.", HEADS.Artist, SPRITEPOS.CENTER)
		],[
	
		txt(""),
	
		]);
	}
	else if (global.recruit_char == "Test Reader")
	{
		msg = msglang([
		btxt(s_sky),
		txt("The " + global.recruit_char + " looks like this.", HEADS.TestReader, SPRITEPOS.CENTER)
		],[
	
		txt(""),
	
		]);
	}
	else if (global.recruit_char == "Distributor"){
		msg = msglang([
		btxt(s_sky),
		txt("The " + global.recruit_char + " looks like this.", HEADS.Distributor, SPRITEPOS.CENTER)
		],[
	
		txt(""),
	
		]);
	}
	else if (global.recruit_char == "Interviewer")
	{
		msg = msglang([
		btxt(s_sky),
		txt("The " + global.recruit_char + " looks like this.", HEADS.Interviewer, SPRITEPOS.CENTER)
		],[
	
		txt(""),
	
		]);
	}
	endevent = function() {
		music_set(mus.minigame2);
		room_goto(FRIENDZONE);
	};
	
}

function txt_recruitend() {
	msg = msglang([
	btxt(s_sky),
	txt("Sweet I found them!", TOSHIKO.NEUTRAL, SPRITEPOS.CENTER),
	txt(global.recruit_char + " recruited!"),
	],[
	
	txt(""),
	
	]);
	endevent = function() {
		global.timeremaining -= 1;
		global.recruittimeremaining -= 1;
		audio_play_sound(se_successful, 1, false);
		music_choice = random(2);
		if music_choice <= 1 music_set(mus.interview1);
		else music_set(mus.interview2);
		if !c_minigamecheck() {
			c_makemenu(global.menus.main);
			room_goto(AYAZONE2);
		}
	};
}
function txt_recruitfail() {
	msg = msglang([
		btxt(s_desk),
	txt("I don't have time for any more interviews. I've gotta recruit team members.", TOSHIKO.NEUTRAL, SPRITEPOS.CENTER),	
	txt("Toshiko uses the remaining time to recruit her team members."),
	]);
	endevent = function() {
		textbox_create(txt_publish);
	}
}

function txt_publish(){
	if (array_length(global.paper.columns)== 0){
		msg = msglang([
		btxt(s_desk),
		txt("I didn't have time to interview anyone...", TOSHIKO.TIRED, SPRITEPOS.CENTER),
		txt("Try again!")
		]);
	}
	else{
	msg = msglang([
		btxt(s_desk),
	txt("The newspaper is ready!", TOSHIKO.NEUTRAL, SPRITEPOS.CENTER),
	txt("Your interviews are ready to read. Click on pages to go forward and back through the newspaper."),
	txt("Even if a page is blank, you can still click it.")
	]);
	}
	endevent = function() {
		if (array_length(global.paper.columns)== 0){
			instance_destroy(o_menuman);
			global.gameflag = false;
			c_makemenu(global.menus.start);
			music_set(mus.title);
			global.timeremaining = 72;
			global.recruittimeremaining = 4;
			global.paper.columns = [];
		}
		else
		{
		music_set(mus.reading);
		global.gameflag = false;
		c_makemenu(global.menus.paper);
		}
	}
}

function bonus_interview(){
	msg = msglang([
		btxt(s_desk),
	txt("I've got an interview with some special!", TOSHIKO.NEUTRAL, SPRITEPOS.LEFT),
	txt("I asked them for an interview, and they were like: 'Huh k.'", TOSHIKO.NEUTRAL, SPRITEPOS.LEFT),
	txt("Heyo.", RAK.NEUTRAL, SPRITEPOS.RIGHT),
	txt("Enjoy this special interview with jamhost Rakaasac.")
	]);
	endevent = function() {
		rakaasac_column();
		music_set(mus.reading);
		global.gameflag = false;
		c_makemenu(global.menus.paper);
	}
}