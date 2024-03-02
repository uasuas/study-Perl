use strict;
use warnings;

# foreachについて。p72
my @score = (60, 70, 90);
my $sum = 0;
  # 複数の書き方。
foreach my $item (@score) {
  # $sum = $sum + $item;
  $sum += $item;
}
print "$sum\n";
# my $item を省略した記法。
$sum = 0;
foreach (@score) {
  $sum += $_;
}
print "$sum\n";
# 配列の中身の取り出しと追加。p75
print "$score[0], $score[1], $score[2]\n";
# ここで配列に値を追加。
$score[3] = 100;
# 配列を表示すると追加されていることが確認できる。
print "@score\n";

# 文字列の配列と別記法。
# パターン１
my @week = ("Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat");
# パターン２ qwを（）前に施術することで、スペースで区切った配列にできる。
my @week2 = qw(Sun Mon Tue Wed Thu Fri Sat);
print "@week / @week2\n";

# 配列の中身があるかを確認。p78
if (@week > 0) {
  print "文字列あり\n";
} else {
  print "文字列なし\n";
}

# 配列の後ろから取得する方法。p79
# 後ろから -1 -2 -3 -4 と取得できる。
print "$week[-1]\n";