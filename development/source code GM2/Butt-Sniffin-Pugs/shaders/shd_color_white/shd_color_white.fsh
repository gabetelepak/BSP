 //
// turns the sprite completely white.
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 bcolor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	gl_FragColor = vec4( 1,1,1,bcolor.a );
}
       