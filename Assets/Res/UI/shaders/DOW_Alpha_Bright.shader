// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:1,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:33464,y:32559,varname:node_4795,prsc:2|custl-4722-OUT,alpha-797-A,clip-6074-A;n:type:ShaderForge.SFN_Tex2d,id:6074,x:31856,y:32542,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2393,x:32674,y:32520,varname:node_2393,prsc:2|A-6074-RGB,B-797-RGB,C-8493-OUT;n:type:ShaderForge.SFN_Color,id:797,x:31856,y:32752,ptovrint:True,ptlb:MainColor,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1397059,c2:0.3658216,c3:0.5,c4:1;n:type:ShaderForge.SFN_Slider,id:8493,x:31883,y:33008,ptovrint:False,ptlb:Bright,ptin:_Bright,varname:node_8493,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3.858731,max:10;n:type:ShaderForge.SFN_Fresnel,id:7440,x:32409,y:32935,varname:node_7440,prsc:2|EXP-2116-OUT;n:type:ShaderForge.SFN_Color,id:4004,x:32373,y:33112,ptovrint:False,ptlb:F_Color,ptin:_F_Color,varname:node_4004,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:4850,x:32563,y:32811,varname:node_4850,prsc:2|A-7440-OUT,B-4004-RGB;n:type:ShaderForge.SFN_Add,id:4722,x:33155,y:32833,varname:node_4722,prsc:2|A-2393-OUT,B-182-OUT;n:type:ShaderForge.SFN_Slider,id:2095,x:32186,y:33325,ptovrint:False,ptlb:F_Bright,ptin:_F_Bright,varname:node_2095,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3.610245,max:5;n:type:ShaderForge.SFN_Multiply,id:182,x:32819,y:32854,varname:node_182,prsc:2|A-4850-OUT,B-2095-OUT,C-7827-OUT;n:type:ShaderForge.SFN_RemapRange,id:2116,x:32013,y:33165,varname:node_2116,prsc:2,frmn:0,frmx:1,tomn:11,tomx:0.1|IN-4081-OUT;n:type:ShaderForge.SFN_Slider,id:4081,x:31605,y:33320,ptovrint:False,ptlb:F_Range,ptin:_F_Range,varname:node_4081,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8591559,max:1;n:type:ShaderForge.SFN_ToggleProperty,id:7827,x:32617,y:33247,ptovrint:False,ptlb:F_Toggle,ptin:_F_Toggle,varname:node_7827,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True;n:type:ShaderForge.SFN_Color,id:3015,x:32452,y:32983,ptovrint:True,ptlb:Color_copy_copy_copy,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:797-6074-8493-7827-4004-2095-4081;pass:END;sub:END;*/

Shader "DOW_Shader/DOW_Alpha_Bright" {
    Properties {
        _TintColor ("MainColor", Color) = (0.1397059,0.3658216,0.5,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _Bright ("Bright", Range(0, 10)) = 3.858731
        [MaterialToggle] _F_Toggle ("F_Toggle", Float ) = 1
        _F_Color ("F_Color", Color) = (0.5,0.5,0.5,1)
        _F_Bright ("F_Bright", Range(0, 5)) = 3.610245
        _F_Range ("F_Range", Range(0, 1)) = 0.8591559
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "DisableBatching"="True"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            //#define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            //#pragma only_renderers d3d9 d3d11 glcore gles metal 
            #pragma target 3.0
            uniform sampler2D _MainTex; 
			uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform float _Bright;
            uniform float4 _F_Color;
            uniform float _F_Bright;
            uniform float _F_Range;
            uniform fixed _F_Toggle;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                clip(_MainTex_var.a - 0.5);
////// Lighting:
                float3 finalColor = ((_MainTex_var.rgb*_TintColor.rgb*_Bright)+((pow(1.0-max(0,dot(normalDirection, viewDirection)),(_F_Range*-10.9+11.0))*_F_Color.rgb)*_F_Bright*_F_Toggle));
                return fixed4(finalColor,_TintColor.a);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
