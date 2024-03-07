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

# 要素の交換。p80
my $x = 0;
my $y = 1;
my $i = $x;
$x = $y;
$y = $i;
print "$x $y\n";
# 別記法。
($x, $y) = ($y, $x);
print "$x $y\n";

# joinの使用。p81
# print "$score[0],$score[1],$score[2]\n";と似たプリント内容。
print join(",", @score), "\n";
# 別表記。
# ()内を連結する。
print join(",", ($score[0], $score[1], $score[2])), "\n";

# splitの使用方法。p83
my @score2 = split(//, "1,2,3"); #出力　1 , 2 , 3
@score2 = split(/,/, "1,2,3"); #出力　1 2 3
@score2 = split(/1,/, "1,2,3"); #出力　 2,3
print "@score2\n";

# pushの使用。p88
# 最後に要素を加える。
push(@score2, "LAST");
print "@score2\n";
# スタック（後入れ先出し）である。
my @array = ("one", "on", "one");
# push(@array, "I", "Love", "You");
push(@array, ("I", "Love", "You")); # 上記と同様の動作。
print "@array\n";

# popの使用。p90
# 最後の要素だけ取り除く。
my $arrayone = pop(@array);
print "$arrayone\n";
print "@array\n";

# undefの使用。p91
my $range = @array;
my $array = pop(@array);
# 確認のため中身をカラ（undef）にする。
for (my $i = 0; $i < $range; $i++) {
  $array = pop(@array);
  print "@array => $array\n";
}
# defined関数を使用して中身がカラ（undef）だった際false、それ以外ならtureを返す。
if (defined($array)) {
  print "$array\n";
} else {
  print "undef\n";
}

# shiftの使用。p93
# 最初の要素を取り出す。
@array = ("one", "on", "one");
my $shift = shift(@array);
print "@array\n";
print "$shift\n";

# unshiftの使用。p93
# 最初に要素を加える。
unshift(@array, ("I", "Love", "You"));
print "@array\n"; #出力 I Love You on one

# push と shift を組み合わせるとキュー（先入先出し）、
# unshift と pop を組み合わせるとキュー（先入先出し）の２通りあるが　
# 大量データを使用する際は前者の方が高速。

# spliceの使用。p95
# 要素の抜き出しと挿入。
my @spell = qw(A B C D E F G);
my @test = qw(X Y Z);
# 新たに用意するn行き出したものの変数 = splice(出し入れ元, 初め, 終わり, 入れる内容)
my @result = splice(@spell, 1, 3, @test);

# 入れる内容 を記入しなければ、取り出しのみ。
# @result = splice(@spell, 1, 3);

# 出し入れ元, 初め のみの記述にするとその箇所から最後まで取り出し。
@result = splice(@spell, 1);

# 出し入れ元 のみの記述にすると全て取り出し。
# @result = splice(@spell);

# 編集後の内容。
print "@spell\n";
# 取り出した内容。
print "@result\n";

# sortの使用。p98
# sortはASCIIコードの数値順（ABC順）
my @array2 = ("sun", "mon", "tue", "wed", "thu", "fri", "sat");
my @sort = sort(@array2);
print join(", ", @sort), "\n";
# reverseの使用。p98
# reverseはASCIIコードの数値順を逆にする（ABC逆順）
my @reverse = reverse(sort(@array2));
print join(", ", @reverse), "\n";

# 数字のsortについて。p100
my @sort2 = (31, 41, 82, 58, 9, 72);
# 通常sortをすると（31, 41, 58, 72, 82, 9）となってしまう為。
# 配列の中身を比較する。
my @sorted2 = sort{$a <=> $b} @sort2;
print "@sorted2\n";

# 練習問題。p105
my $time = "01:23:45";
my ($hour, $min, $sec) = split(/:/, $time);
print "$hour時$min分$sec秒です。\n";

my $index = 2;
my @array3 = qw(1 2 3 4 5 6 7 8 9);
my $arrayrange = @array3;
if (0 <= $index and $index < $arrayrange) {
  print $array3[$index], "\n";
}

# この周辺は理解が未熟。
my @a = qw(a r r a y);
my $b = 'A';
my @ans = splice(@a, 5, 5, $b);
print @a, "\n";

@a = qw(a r r a y);
my @c = '';
@c = splice(@a, 4, 4);
print "@c\n";

@a = qw(a r r a y);
@c = '';
@c = splice(@a, 0, 1);
print "@c\n";

@a = qw(a r r a y);
$b = 'A';
splice(@a, 0, 0, $b);
print "@a\n";

@a = qw(a r r a y);
my $d = 3;
@c = splice(@a, $d-1, 1);
print "@c\n";