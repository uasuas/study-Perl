use strict;
use warnings;

# hashについて。p111
# キー => 値
# キーに値を対応させる。
my %hash = (
  "use1" => 36,
  "use2" => 22,
  "use3" => 21,
  "use4" => 22,
);
print $hash{"use1"};