var _speed = speed_mul;
var _side_random = irandom(360) + (32 * xdir);
var _foff = irandom(speed_mul * yspeed);

var _raindrop = instance_create(o_ow_raindrop, (o_camera.x + _side_random) - (_foff * xspeed * xdir), o_camera.y - (_foff * yspeed), -4400);

_raindrop.sprite_index = rain_sprite[rain_style];
_raindrop.image_speed = 0;
_raindrop.image_index = irandom(9);
_raindrop.hspeed = xspeed * xdir * _speed;
_raindrop.vspeed = yspeed * _speed;
_raindrop.image_xscale *= xdir;