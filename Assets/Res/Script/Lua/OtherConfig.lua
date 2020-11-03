--程序集反射
require 'tolua.reflection'
tolua.loadassembly('Assembly-CSharp')
--UI程序集
tolua.loadassembly('UnityEngine.UI')
print "反射准备就绪..."

GameObject = UnityEngine.GameObject;
PlayerPrefs = UnityEngine.PlayerPrefs;
UGUI = UnityEngine.UI;
Camera = UnityEngine.Camera;
Application = UnityEngine.Application
CanvasGroup = UnityEngine.CanvasGroup
Shader = UnityEngine.Shader
Material = UnityEngine.Material
RenderTexture = UnityEngine.RenderTexture

require 'Main';