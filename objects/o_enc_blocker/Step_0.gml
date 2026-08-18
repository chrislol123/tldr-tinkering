var _dir = image_angle - idealdir;
var _angledifference = _dir;


if (abs(_dir) > 180)
{
    if (image_angle > idealdir)
        _angledifference = -((360 - image_angle) + idealdir);
    else
        _angledifference = (360 - idealdir) + image_angle;
}

if (abs(_angledifference) <= 2)
{
    image_angle = idealdir;
}
else if (_angledifference > 0)
{
    image_angle -= min(45, abs(_angledifference));
}
else
{
    image_angle += min(45, abs(_angledifference));
}