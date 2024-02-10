if input_check_pressed("deny", player_number)
{
_bullet = instance_create_layer(x,y-8,layer,Bullet)
_bullet.dir = face
}