use strict;
use warnings;

# foreachについて。p72
my @score = (60, 70, 90);
my $sum = 0;
  # 複数の書き方。
foreach my $item (@score) {
  $sum = $sum + $item;
  $sum += $item;
}
print $sum;