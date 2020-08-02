//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float u_fFadeFactor;

void main()
{
    gl_FragColor = vec4(v_vColour.rgb, v_vColour.a - 1.0/512.0) * texture2D( gm_BaseTexture, v_vTexcoord ) ;
}
