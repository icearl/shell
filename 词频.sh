#!/usr/bin/env bash
#写一个 bash 脚本以计算一个文本文件 words.txt中单词的出现频率。
#
#为了简单起见，你可以假设：
#
#words.txt只包括小写字母和 ' ' 。
#每个单词只能由小写字母组成。
#单词由一个或多个空格字符分隔。
#例如，假设words.txt 有如下内容：
#
#the day is sunny the the
#the sunny is is
#你的脚本应当有如下输出，以频率降序排列：
#
#the 4
#is 3
#sunny 2
#day 1
#说明:
#不要担心处理排序，每个词的出现频率是唯一的。

# Read from the file words.txt and output the word frequency list to stdout.
cat words.txt | tr -s ' ' '\n' | sort | uniq -c | sort -r | awk '{ print $2, $1 }'


#    tr -s: truncate the string with target string, but only remaining one instance (e.g. multiple whitespaces)
#
#    sort: To make the same string successive so that uniq could count the same string fully and correctly.
#
#    uniq -c: uniq is used to filter out the repeated lines which are successive, -c means counting
#
#    sort -r: -r means sorting in descending order
#
#    awk ‘{ print $2, $1 }’: To format the output, see here:
#    https://linux.cn/article-3945-1.html