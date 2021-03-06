#!/usr/bin/env bash
#给一个文本文件 file.txt ，包括了一个电话号码的列表（一行一个），写一个 bash 脚本打印所有有效的电话号码。
#
#你可以假定一个有效的电话号码必须以下列两种格式之一出现： (xxx) xxx-xxxx 或者 xxx-xxx-xxxx。（x 表示一个数字）
#
#你也可以假定每行前后没有多余的空格。
#
#例如，假设 file.txt 包括下面的内容：
#
#987-123-4567
#123 456 7890
#(123) 456-7890
#你的脚本应当输出下面这些有效的电话号码：
#
#987-123-4567
#(123) 456-7890


# Read from the file file.txt and output all valid phone numbers to stdout.
# 不能用 grep -E "^(\(\d{3}\) |\d{3}-)\d{3}-\d{4}$" file.txt
# 因为不能控制位数
grep -E  "^(\([0-9]{3}\) |[0-9]{3}-)[0-9]{3}-[0-9]{4}$" file.txt