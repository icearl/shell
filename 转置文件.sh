#!/usr/bin/env bash
# 给定一个文件 file.txt，转置它的内容。

# 你可以假定每行列数相同，并且每个字段由 ' ' 分隔.

# 例如，如果 file.txt 有如下内容：

# name age
# alice 21
# ryan 30
# 输出下面的内容：

# name alice ryan
# age 21 30

# Read from the file file.txt and print its transposed content to stdout.
# using awk for this purpose
awk '   # 依次读取每一行
    {
        for(i=1; i<=NF; i++){   # NF 表示每行的 n 列
            if(line[i] == ""){
                line[i] = $i
            }
            else{
                line[i] = line[i]" "$i
            }
        }
    }   # 先保存每行的数据
    END{
         for(i=1; i<=NF; i++){
             print line[i]
         }
    }
    ' file.txt

# awk 教程
# https://www.jianshu.com/p/ea22c809ae9f
# https://coolshell.cn/articles/9070.html
# https://linux.cn/article-3945-1.html