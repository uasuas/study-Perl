use strict;
use warnings;

# 文字列関数substr。p32
# substr 関数、文字列の一部を取り出すために使用。
# substr（対象の文字列、取り出す部分文字列の開始位置を示す整数値、取り出す部分文字列の長さを示す整数値）
my $text = 'Programming Lesson';
my $s = substr($text, 0, 7);
print "$s\n";
# 12個目を含むところから最後までを抽出。
my $s1 = substr($text, 12);
print "$s1\n";
# 切り出したところの文字列を入れ替える。
my $str = 'Programming Lesson is fun!';
# (切り出す元の文字列,切り出す範囲初め,切り出す範囲終わり,入れたい内容)
my $s2 = substr($str, 12, 6, 'Perl');
print "\$str = $str\n";
print "\$s2 = $s2\n";