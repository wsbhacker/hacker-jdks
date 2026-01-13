#!/bin/bash
# install.sh - 简单的安装辅助脚本

# 设置变量
JAVA_DIR="/usr/local/java"

# 检查是否是 root
if [ "$EUID" -ne 0 ]; then
  echo "请使用 root 权限运行"
  exit
fi

mkdir -p $JAVA_DIR
echo "准备安装 JDK..."
echo "请手动下载 Release 中的 zip 包并放置于此目录，然后运行解压命令。"

# 这是一个示例逻辑，证明这里有代码
# tar -zxvf jdk-xxx.tar.gz -C $JAVA_DIR

echo "配置环境变量..."
echo "export JAVA_HOME=$JAVA_DIR/jdk-xxx" >> ~/.bashrc
echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> ~/.bashrc

echo "安装完成 (模拟)"
