if (!init)
{
    if (hspeed > 0)
        maxx += xbuffer;
    else
        minx += -xbuffer;
    
    init = true;
}

if ((y - o_camera.y) >= 280)
    instance_destroy();
else if (x >= (o_camera.x + maxx))
    x -= (320 + xbuffer);
else if (x <= (o_camera.x + minx))
    x += (320 + xbuffer);
	
if (place_meeting(x, y, o_ow_rain_dryzone)) {
    instance_destroy()
}