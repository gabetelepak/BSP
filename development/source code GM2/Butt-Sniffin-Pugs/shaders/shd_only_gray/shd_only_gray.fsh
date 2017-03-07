 //
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 bcolor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	if (bcolor.r < 0.25){
	gl_FragColor = vec4( 0,0,0,0);} 
	else
	if (bcolor.r > 0.75){
	gl_FragColor = vec4( 0,0,0,0);} 
	else
	{gl_FragColor = bcolor;}
	
	
	
}
       