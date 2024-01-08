function txt_toshiko() {
	
	msg = msglang([
	btxt(s_sky),
	txt("The story begins with a curious Tengu..."),
	txt("Uwuh, huh?", TOSHIKO.NEUTRAL, SPRITEPOS.LEFT),
	txt("Hm? Who are you?", TOSHIKO.NEUTRAL, SPRITEPOS.LEFT),
	txt("I'm Rakaasac, the game developer Youkai.", RAK.NEUTRAL, SPRITEPOS.RIGHT),
	txt("I've spirited in some game designers to create games about Gensokyo!", RAK.NEUTRAL, SPRITEPOS.RIGHT),
	txt("Games? Like Shogi?", TOSHIKO.CURIOUS, SPRITEPOS.LEFT),
	txt("Er, kinda.", RAK.NEUTRAL, SPRITEPOS.RIGHT),
	txt("The game developers are gonna get residents of Gensokyo to roleplay their game ideas.", RAK.NEUTRAL, SPRITEPOS.RIGHT),
	txt("It'll be really cool.", RAK.NEUTRAL, SPRITEPOS.RIGHT),
	txt("What are the games about!?", TOSHIKO.CURIOUS, SPRITEPOS.LEFT),
	txt("Dunno. That's up to the devs.", RAK.NEUTRAL, SPRITEPOS.RIGHT),
	txt("But I gotta know! Ahhhhh!", TOSHIKO.CURIOUS, SPRITEPOS.LEFT),
	txt("Oh! I'll just go ask the devs themselves!", TOSHIKO.NEUTRAL, SPRITEPOS.LEFT),
	txt("That'll work I think.", RAK.NEUTRAL, SPRITEPOS.RIGHT),
	txt("I can only keep them here for 3 days tho.", RAK.NEUTRAL, SPRITEPOS.RIGHT),
	txt("Three days?!", TOSHIKO.CURIOUS, SPRITEPOS.LEFT),
	txt("Not knowing what these games are about would keep me up at night!", TOSHIKO.CURIOUS, SPRITEPOS.LEFT),
	txt("I'll have to work to interview as many people as possible.", TOSHIKO.NEUTRAL, SPRITEPOS.LEFT),
	txt("Ah, alright.", RAK.NEUTRAL, SPRITEPOS.RIGHT),
	txt("Please make sure to sleep...", RAK.NEUTRAL, SPRITEPOS.RIGHT),
	],[
	
	txt(""),
	
	]);
	
	endevent = function() {
		textbox_create(txt_maintutorial);
	};
}

function c_minigamecheck() {
	//worst function youve ever seen, i dont care, its a jam game
	var did = false;
	if global.recruittimeremaining <= 0 && global.timeremaining <= 72 - 55 {
		instance_destroy(o_menuman);
		textbox_create(txt_publish);
		did = true;
	}
	else if global.recruittimeremaining >= 1 && global.timeremaining <= 72 - 55 {
		instance_destroy(o_menuman);
		textbox_create(txt_recruitfail);
		did = true;
	}
	else if !global.didsleep && global.timeremaining <= 72-12 {
		global.lighttimer = 2500;
		instance_destroy(o_menuman);
		textbox_create(txt_sleeptutorial);
		global.didsleep++;
		did = true;
	} else if global.didsleep < 2 && global.timeremaining <= 72-36 {
		global.lighttimer = 1300;
		instance_destroy(o_menuman);
		textbox_create(txt_sleeptutorial);
		global.didsleep++;
		did = true;
	} else if global.didsleep < 3 && global.timeremaining <= 72-60 {
		global.lighttimer = 1300;
		instance_destroy(o_menuman);
		textbox_create(txt_sleeptutorial);
		global.didsleep++;
		did = true;
	}
	return did;
}

global.didramen = 0;
global.didsleep = 0;
global.teammates = 0;