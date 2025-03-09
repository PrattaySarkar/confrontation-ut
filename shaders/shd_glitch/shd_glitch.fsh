varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float time;

void main() {
    vec2 glitch = v_vTexcoord;
    glitch.x += sin(time * 10.0) * 0.02;  // Small horizontal glitch
    glitch.y += cos(time * 5.0) * 0.02;   // Small vertical glitch

    vec4 color = texture2D(gm_BaseTexture, glitch);
    gl_FragColor = vec4(color.rgb, 1.0);
}
