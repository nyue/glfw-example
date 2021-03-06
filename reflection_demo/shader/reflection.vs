#version 120

uniform mat4 projection_matrix;
uniform mat4 model_view_matrix;
uniform mat3 normal_matrix;

attribute vec4 vertex_position;
attribute vec3 vertex_normal;
attribute vec2 vertex_tex_coord;

varying vec3 position;
varying vec3 normal;
varying vec2 tex_coord;

void main(void) {
	vec4 p = model_view_matrix * vertex_position;
	
	position = p.xyz;
	normal = normal_matrix * vertex_normal;	
	tex_coord = vertex_tex_coord;
	
	gl_Position = projection_matrix * p;
}
