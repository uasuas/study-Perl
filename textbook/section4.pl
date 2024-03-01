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