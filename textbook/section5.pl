use strict;
use warnings;

# hashについて。p111
# キー => 値
# キーに値を対応させる。
# キーは重複不可 値は重複可。
# 順番に意味は持たない。
my %hash = (
  "use1" => 36,
  "use2" => 22,
  "use3" => 21,
  "use4" => 22,
);
print $hash{"use1"}, "\n";


# keys(%ハッシュ名)について。p115
# keysは関数を使用しており、hashのキーをリスト化している。リストの内容（"use1", "use2", "use3", "use4")
foreach my $key(keys(%hash)){
  # $hash{"use1"}の "" 内でリスト化した内容は入った $key を代わりに入れる事で、$hash{$key} の結果である各値を $value に代入している。
  my $value = $hash{$key};
  print "$key => $value\n";
}
# 上記と比較すると%hashの中身が全て入った形になっている。
# 内容
# use2
# 22
# use3
# 21
# use1
# 36
# use4
# 22
foreach my $i(%hash){
  print "$i\n";
}
# 別記法。p116
foreach (keys(%hash)){
  print "$_ => $hash{$_}\n";
}

# hach の内容追加。p117
# この場合 => ではない。
$hash{"use5"} = 42;

# $hash{キー} = 値;
# $array[添字] = 値;
# {} と [] の違いで大きく変わる。

# 既にある キー を使用した場合、値 が上書きされる。
$hash{"use1"} = 10;
print "$hash{\"use1\"}\n";

# ----------
# sortの使用。p120
# sortはキーのみで値はsortの対象ではない。
foreach (sort keys %hash) {
  print "$_ => $hash{$_}\n";
}
# 別表記。
foreach (sort(keys(%hash))) {
  print "$_ => $hash{$_}\n";
}

# 値のsort。
foreach (sort{$hash{$a} <=> $hash{$b}} keys %hash) {
  print "$_ => $hash{$_}\n";
} 

# 要素の重複をとり除く。p123
my %uniq;
my @array = (3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5);
foreach my $item (@array) {
  $uniq{$item} = 1;
}
my @uniqarray = keys(%uniq);
print "@uniqarray\n";