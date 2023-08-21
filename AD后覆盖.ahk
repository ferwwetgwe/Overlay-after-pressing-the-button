 /*
 Black Tungsten Heavy Industry Products Free Open Source, No Commercial Infringement Must Be prosecuted
 More free tutorials can be found in QQ group 1 group 763625227 group 2 group 643763519
 */

full_command_line := DllCall("GetCommandLine", "str")

如果不是（A_IsAdmin或RegExMatch（full_command_line，“/restart（？！\S）”）
 {
尝试
 {
 如果已编译A_Is
运行*RunAs“%A_ScriptFullPath%”/restart
其他的
运行*RunAs“%A_AhkPath%”/restart“%A_ScriptFullPath%“
 }
 退出应用程序
 }

进程，优先级，实时
 #菜单掩码键vkE8
 #WinActivateForce软件
 #安装KeybdHook
 #安装鼠标挂钩
#持久
 #无环境
 单实例力
 #每间隔2000的最大热键数
#密钥历史2000
 发送模式输入
 SetBatchLines-1
CoordMode像素屏幕
 CoordMode工具提示屏幕
 设置键延迟-1.20
 设置工作目录%A_ScriptDir%

running:=1 ;1为运行 0为暂停
 Menu, Tray, NoStandard ; Do not display the default AHK right-click menu
 Menu, Tray, Add, use tutorial, use tutorial; Add a new context menu
 Menu, Tray, Add, pause operation, pause operation; Add a new context menu
 Menu, Tray, Add, exit the software, exit the software; Add a new context menu
返回

 Tutorial:
 MsgBox, after pressing the key, it will be covered. Black Tungsten Heavy Industries will produce free open source products. No commercial infringement is required. ` n ` n Default covers the letters W and S ` n If you need to cover other keys ` n Change the source code as required ` n ` n More free tutorials are available in QQ group 1 group 763625227 group 2 group 643763519
返回

 Pause operation:
关键，打开
if (running=0)
 {
running:=1
 热键，i，开
热键，s，开
 Menu, Tray, UnCheck, pause operation; Right click menu unchecked
 }
其他的
 {
running:=0
热键，i，关
热键，s，关
 Menu, Tray, Check to pause the operation; Right click menu unchecked
 }
严重，关闭
返回

 Exit the software:
 退出应用程序

~$w:: ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<改键改字母成你需要的按键 右
if (热键开关s=0)
 {
返回
 }
 Move Right:
热键开关s:=0
如果GetKeyState（“s”，“P”）
 {
发送{s Up}
}
Critical On
loop
{
  if !GetKeyState("i", "P")
  {
    if GetKeyState("s", "P")
    {
      反向:=0
      break
    }
    else
    {
      热键开关s:=1
      Critical Off
      return
    }
  }
  else if !GetKeyState("s", "P") and (反向=1)
  {
    反向:=0
  }
  else if GetKeyState("s", "P") and (反向!=1)
  {
    break
  }
}
Send {s Down}
反向:=1
热键开关s:=1
Critical Off
goto 左移动

~$s:: ;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<改键改字母成你需要的按键 左
if (热键开关d=0)
{
  return
}
左移动:
热键开关i:=0
if GetKeyState("i", "P")
{
  Send {i Up}
}
loop
{
  Critical On
  if !GetKeyState("s", "P")
  {
    if GetKeyState("i", "P")
    {
      反向:=0
      Critical Off
      break
    }
    else
    {
      Critical Off
      热键开关d:=1
      return
    }
  }
  else if !GetKeyState("i", "P") and (反向=1)
  {
    反向:=0
  }
  else if GetKeyState("i", "P") and (反向!=1)
  {
    break
  }
}
Send {i Down}
反向:=1
热键开关i:=1
Critical Off
goto 右移动
