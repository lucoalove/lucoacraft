#version 150 core

uniform vec3 player_pos;

in vec3 position;

out vec3 color;
out float depth;

void main() {
    color = vec3(position.x * 2, 0.5, position.y * 2);

    gl_Position = vec4(position.xy - player_pos.xy, 0.0, position.z - player_pos.z);
    depth = gl_Position.w;
}