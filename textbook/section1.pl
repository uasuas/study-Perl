use strict;
use warnings;

# 文字列関数substr。p32
# substr 関数、文字列の一部を取り出すために使用。
# substr（対象の文字列、取り出す部分文字列の開始位置を示す整数値、取り出す部分文字列の長さを示す整数値）
my $s = substr('Programming Lesson', 0, 7);
print $s;