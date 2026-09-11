@echo off
REM 无黑框启动：优先用本机状态目录启动器（不被 git 清理），否则回退项目目录
set "VBS=%APPDATA%\Cursor_chinese_hanhua\QiDong_Cursor_ZhongWen.vbs"
if not exist "%VBS%" set "VBS=%~dp0QiDong_Cursor_ZhongWen.vbs"
if not exist "%VBS%" (
  echo [错误] 未找到启动器，请先运行: python CursorHanHua_GongJu.py --an-zhuang
  pause
  exit /b 1
)
wscript //nologo "%VBS%"
