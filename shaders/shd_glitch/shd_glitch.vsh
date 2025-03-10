<<<<<<< HEAD
attribute vec3 in_Position;
attribute vec2 in_TextureCoord;
attribute vec4 in_Colour;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main() {
    gl_Position = vec4(in_Position.x, in_Position.y, in_Position.z, 1.0);
    v_vTexcoord = in_TextureCoord;
    v_vColour = in_Colour;
}
=======
attribute vec3 in_Position;
attribute vec2 in_TextureCoord;
attribute vec4 in_Colour;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main() {
    gl_Position = vec4(in_Position.x, in_Position.y, in_Position.z, 1.0);
    v_vTexcoord = in_TextureCoord;
    v_vColour = in_Colour;
}
>>>>>>> 5da5967 (title screen update yay)
