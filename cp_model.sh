#!/bin/bash
cd result_open_biGRU/
num=$(ls -l | grep -F 'weights.h5' | awk -F "_" '{print $2}' | sort -n | tail -1)
# 找到除了最大标号的其他权重文件
filelist=$(ls | grep -F 'weights.h5' | grep -v $num)
# 删除文件
cp $filelist ../open_model
