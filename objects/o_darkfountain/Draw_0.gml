var sx=1,sy=1,top_h=140; 
var bg=spr_eff_fountain,tx=1,ty=1; 
siner += 0.5; 
hscroll += 0.5; 
var tile_w = sprite_get_width(bg) * tx; 
var tile_h = sprite_get_height(bg) * ty; 
if(tile_w > 0){ if(hscroll >= tile_w) hscroll -= tile_w; if(hscroll < 0) hscroll += tile_w; }
if(adjust==0){ colcol=make_color_hsv(siner/4,160+(sin(siner/32)*60),255); change_fountain_color(make_color_hsv(siner/4,255,(sin(siner/16)*40)+60)); }
else if(adjust==1){ colcol=merge_color(colcol,c_white,0.06); change_fountain_color(merge_color(nowcolor,c_black,0.06)); }
else if(adjust==2){ if(slowdown<1) slowdown+=0.02; siner-=slowdown*0.5; bgsiner-=(slowdown/16*0.5); change_fountain_color(merge_color(nowcolor,c_white,0.03)); }
else if(adjust==3){ if(slowdown<1) slowdown+=0.01; siner-=(slowdown*0.5*0.5); bgsiner-=(slowdown/24*0.5); hscroll-=(slowdown*0.8*0.5); colcol=merge_color(nowcolor,make_color_hsv(siner/16,160+(sin(siner/128)*60),255),slowdown); change_fountain_color(merge_color(nowcolor,make_color_hsv(siner/16,255,(sin(siner/64)*40)+60),slowdown)); }

bgsiner += 0.0625*0.5; if(bgsiner>7) bgsiner -= 7; 
var ox1 = -(siner mod tile_w); 
var oy1 = -(siner mod tile_h); 
draw_sprite_tiled_ext(bg,0,ox1,oy1,tx,ty,colcol,0.7*eyebody); 
var ox2 = -tile_w + (hscroll mod tile_w); 
var oy2 = (siner mod tile_h); 
draw_sprite_tiled_ext(bg,0,ox2,oy2,tx,ty,colcol,0.3*eyebody); 
var cx = room_width*0.5; 
var spr_w = sprite_get_width(sprite_index)*sx; 
draw_set_color(c_black); 
draw_rectangle(0,0,(room_width/2)-(sprite_width/2),140,0); 
draw_rectangle((room_width/2)+(sprite_width/2),0,room_width,140,0); 
var cy_off = (bgsiner*top_h)/7; 
draw_sprite_ext(sprite_index,0,cx-spr_w*0.5,0-cy_off,sx,sy,0,colcol,1); 
draw_sprite_ext(sprite_index,0,cx-spr_w*0.5,top_h-cy_off,sx,sy,0,colcol,1); 
var wob = sin(siner/16)*6; 
draw_sprite_ext(sprite_index,0,(cx-spr_w*0.5)+wob,0-cy_off,sx,sy,0,colcol,0.5); 
draw_sprite_ext(sprite_index,0,(cx-spr_w*0.5)+wob,top_h-cy_off,sx,sy,0,colcol,0.5); 
draw_sprite_ext(sprite_index,0,(cx-spr_w*0.5)-wob,0-cy_off,sx,sy,0,colcol,0.5); 
draw_sprite_ext(sprite_index,0,(cx-spr_w*0.5)-wob,top_h-cy_off,sx,sy,0,colcol,0.5); 
draw_sprite_ext(spr_fountainbottom,0,cx-spr_w*0.5-8,-4+(sin(siner/16)*4),sx,sy,0,colcol,0.3); 
draw_sprite_ext(spr_fountainbottom,0,cx-spr_w*0.5-8,-2+(sin(siner/16)*2),sx,sy,0,colcol,0.5); 
draw_sprite_ext(spr_fountainbottom,0,cx-spr_w*0.5-8,0,sx,sy,0,colcol,1); 
draw_set_color(nowcolor); 
draw_rectangle(0,140,320,240,0);
draw_set_color(c_black);
draw_rectangle(0,0,0+100,240,0)
draw_rectangle(320-100,0,320,240,0)
draw_set_color(c_white)
with (o_actor) {
    draw_sprite_ext(sprite_index, image_index, x, y - 3, image_xscale, image_yscale, 0, o_darkfountain.colcol, 1);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_black, 1);
    draw_sprite_ext(sprite_index, image_index, x, y + image_yscale - 1, image_xscale, -2.5, 0, c_black, 1);
}