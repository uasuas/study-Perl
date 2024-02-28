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
# LessonをPerlに変える例。
# =~ 演算子は、正規表現パターンに基づいて文字列を置換する際に使用する。
# 正規表現は、特定の文字列パターンを記述し、そのパターンに一致する文字列を見つけるために使用する。
$str =~ s/Lesson/Perl/;
print "\$s2 = $str\n";
# <<"EOD" から EODの範囲を $string に代入。
my $string = <<"EOD";
Test Text
Test2 Text2
EOD
print "$string\n";