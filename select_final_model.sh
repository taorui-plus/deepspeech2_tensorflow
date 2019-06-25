#!/bin/bash
cd model_0617_45w_0620/
num=$(ls -l | grep -F 'weights.h5' | awk -F "_" '{print $2}' | sort -n | tail -1)
# 找到除了最大标号的其他权重文件
filelist=$(ls | grep -F 'weights.h5' | grep -v $num)
# 删除文件
rm $filelist
