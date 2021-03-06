precision mediump float;

// uniforms
uniform highp mat4 u_ModelView;
uniform highp mat4 u_Projection;
uniform lowp vec4 u_SurfaceColor;

// attributes
attribute vec4 i_Position;
attribute vec2 i_TexCoord;
attribute vec3 i_Normal;

// varying
varying lowp vec4 frag_Color;
varying vec2 frag_TexCoord;
varying vec3 frag_Normal;varying vec3 frag_Position;

void main(void) {
    frag_Color = u_SurfaceColor * u_SurfaceColor;
    frag_TexCoord = i_TexCoord;
    frag_Normal = normalize(mat3(u_ModelView) * i_Normal);
    frag_Position = (u_ModelView * i_Position).xyz;
    gl_Position = u_Projection * u_ModelView * i_Position;
}
