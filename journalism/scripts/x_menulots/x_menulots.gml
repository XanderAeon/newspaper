var z=2;
nu menu("main", [
	new button(
		new vec2(553, 34),
		new vec2(553+270, 34+125),
		function() {
			historyleaf_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			if (array_get_index(global.unlocks, "historyleaf") != -1)
			{
				draw_meaning(x, y - 40, "***", u, u, c_black);
			}
			draw_meaning(x, y, "historyleaf", u, u, c_black);
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(186, 207),
		new vec2(186+270, 207+125),
		function() {
			juney_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			if (array_get_index(global.unlocks, "juney") != -1)
			{
				draw_meaning(x, y - 40, "***", u, u, c_black);
			}
			draw_meaning(x, y, "juney");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(28, 427),
		new vec2(28+270, 427+125),
		function() {
			molly_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			if (array_get_index(global.unlocks, "molly") != -1)
			{
				draw_meaning(x, y - 40, "***", u, u, c_black);
			}
			draw_meaning(x, y, "molly");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(178, 618),
		new vec2(178+270, 618+125),
		function() {
			theo_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			if (array_get_index(global.unlocks, "theo") != -1)
			{
				draw_meaning(x, y - 40, "***", u, u, c_black);
			}
			draw_meaning(x, y, "theo");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(24, 894),
		new vec2(24+270, 894+125),
		function() {
			liam_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			if (array_get_index(global.unlocks, "liam") != -1)
			{
				draw_meaning(x, y - 40, "***", u, u, c_black);
			}
			draw_meaning(x, y, "liam");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(511, 862),
		new vec2(511+270, 862+125),
		function() {
			vinyis_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			if (array_get_index(global.unlocks, "vinyis") != -1)
			{
				draw_meaning(x, y - 40, "***", u, u, c_black);
			}
			draw_meaning(x, y, "vinyis");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(516, 385),
		new vec2(516+270, 385+125),
		function() {
			icedlemon_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			if (array_get_index(global.unlocks, "icedlemon") != -1)
			{
				draw_meaning(x, y - 40, "***", u, u, c_black);
			}
			draw_meaning(x, y, "icedlemon");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(751, 651),
		new vec2(751+270, 651+125),
		function() {
			solaris_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			if (array_get_index(global.unlocks, "solaris") != -1)
			{
				draw_meaning(x, y - 40, "***", u, u, c_black);
			}
			draw_meaning(x, y, "solaris");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(952, 883),
		new vec2(952+270, 883+125),
		function() {
			trace_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			//log("im trace");
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			if (array_get_index(global.unlocks, "trace") != -1)
			{
				draw_meaning(x, y - 40, "***", u, u, c_black);
			}
			draw_meaning(x, y, "trace");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(917, 485),
		new vec2(917+270, 485+125),
		function() {
			saishoo_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			if (array_get_index(global.unlocks, "saishoo") != -1)
			{
				draw_meaning(x, y - 40, "***", u, u, c_black);
			}
			draw_meaning(x, y, "saishoo");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(1200, 485),
		new vec2(1200+270, 485+125),
		function() {
			zzzzleepy_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "zzzzleepy");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(1239, 209),
		new vec2(1239+270, 209+125),
		function() {
			kit_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			if (array_get_index(global.unlocks, "kit") != -1)
			{
				draw_meaning(x, y - 40, "***", u, u, c_black);
			}
			draw_meaning(x, y, "kit");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(937, 27),
		new vec2(937+270, 27+125),
		function() {
			citrus_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			if (array_get_index(global.unlocks, "citrus") != -1)
			{
				draw_meaning(x, y - 40, "***", u, u, c_black);
			}
			draw_meaning(x, y, "citrus");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	new button(
		new vec2(1208, 653),
		new vec2(1208+270, 653+125),
		function() {
			rad_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			if (array_get_index(global.unlocks, "rad") != -1)
			{
				draw_meaning(x, y - 40, "***", u, u, c_black);
			}
			draw_meaning(x, y, "the red remix");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	
	new button(
		new vec2(700, 209),
		new vec2(700+270, 209+125),
		function() {
			kevin_column();
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			if (array_get_index(global.unlocks, "kevin") != -1)
			{
				draw_meaning(x, y - 40, "***", u, u, c_black);
			}
			draw_meaning(x, y, "kevin");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	/*
	new button(
		new vec2(1208, 653),
		new vec2(1208+370, 653+125),
		function() {
			textbox_create(txt_interviews);
			instance_destroy(o_menuman);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "mystery");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 6
	),
	*/
		new button(
		new vec2(1499, 574),
		new vec2(1499+370, 574+125),
		function() {
			if (global.recruittimeremaining >= 1)
			{
			instance_destroy(o_menuman);
			textbox_create(txt_recruit);
			}
		}, function() {
			if (global.recruittimeremaining == 4) global.recruit_char = "Artist"
			if (global.recruittimeremaining == 3) global.recruit_char = "Test Reader"
			if (global.recruittimeremaining == 2) global.recruit_char = "Distributor"
			if (global.recruittimeremaining == 1) global.recruit_char = "Interviewer"
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "Recruit");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 0,
	),
	
	new button(
		new vec2(1499, 874),
		new vec2(1499+370, 874+125),
		function() {
			instance_destroy(o_menuman);
			textbox_create(txt_publish);
		}, function() {
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			draw_meaning(x, y, "publish");
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			c_drawbutton();
		}, 0,
	),
	
], function() {
	draw_spr(0, 0, s_whiteyoukaimountain);
});