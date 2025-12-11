@echo off
echo ========================================
echo 部署到新的 GitHub 仓库
echo ========================================
echo.

echo 步骤1: 删除旧的 Git 关联
if exist .git (
    rmdir /s /q .git
    echo 已删除旧的 .git 文件夹
) else (
    echo 没有找到 .git 文件夹
)
echo.

echo 步骤2: 初始化新的 Git 仓库
git init
echo.

echo 步骤3: 添加所有文件
git add .
echo.

echo 步骤4: 创建第一次提交
git commit -m "Initial commit: Ethereum Coupon System"
echo.

echo 步骤5: 设置主分支名称
git branch -M main
echo.

echo ========================================
echo 接下来请手动执行以下命令:
echo.
echo 1. 在 GitHub 创建新仓库后，复制仓库地址
echo 2. 运行: git remote add origin https://github.com/你的用户名/仓库名.git
echo 3. 运行: git push -u origin main
echo ========================================
echo.

pause
