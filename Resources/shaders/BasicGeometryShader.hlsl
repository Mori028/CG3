#include "BasicShaderHeader.hlsli"

//[maxvertexcount(1)]
//void main(
//	point VSOutput input[1]:SV_POSITION,
//	//�����X�g���[��
//	inout PointStream< GSOutput > output
//)
//{
//	GSOutput element;
//	//���_���
//	element.normal = input[0].normal;
//	element.uv = input[0].uv;
//	element.svpos = input[0].svpos;
//	output.Append(element);
//}

[maxvertexcount(3)]
void main(
	point VSOutput input[1]:SV_POSITION,
	inout TriangleStream< GSOutput > output
)
{
	GSOutput element;
	//����
	element.normal = input[0].normal;
	element.uv = input[0].uv;
	//1�_��
	element.svpos = input[0].svpos;
	output.Append(element);
	//2�_��
	element.svpos = input[0].svpos + float4(10.0f, 10.0f, 0, 0);
	output.Append(element);
	//3�_��
	element.svpos = input[0].svpos + float4(10.0f,0,0,0);
	output.Append(element);
}