@echo off
echo ========================================
echo Git 代理配置工具
echo ========================================
echo.

echo 请选择操作:
echo 1. 设置 HTTP 代理 (如果你使用代理上网)
echo 2. 取消代理设置
echo 3. 查看当前配置
echo.

set /p choice=请输入选项 (1/2/3): 

if "%choice%"=="1" (
    echo.
    echo 请输入代理地址，格式: http://127.0.0.1:端口号
    echo 例如: http://127.0.0.1:7890
    set /p proxy=代理地址: 
    git config --global http.proxy %proxy%
    git config --global https.proxy %proxy%
    echo.
    echo ✓ 代理设置成功！
) else if "%choice%"=="2" (
    git config --global --unset http.proxy
    git config --global --unset https.proxy
    echo.
    echo ✓ 代理已取消！
) else if "%choice%"=="3" (
    echo.
    echo 当前 Git 配置:
    git config --global --list
)

echo.
echo ========================================
pause
