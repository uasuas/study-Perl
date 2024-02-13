# Perlスクリプト内で使用されるプラグマ（pragma）
use strict;
# 未宣言の変数の使用を許可しません。変数はmyキーワードを使用して宣言する必要がある。
# 変数の名前空間の異なる変数が同じ名前を持つ場合に警告を生成。
# ファイルスコープ変数（ourで宣言された変数）の動作を制限。
use warnings;
# 問題を警告するために使用。

print "Hello, world!\n";
# スカラー変数
my $x = 10;
my $y = 10.3;
# "_"は変数で無視される。
my $z = 123_456_789;
my $num1 = $x * $y;
my $num2 = $x % $y;
my $num3 = $x ** 3;
my $num = $num3;
if ($num == 5) {
  print ($num, "Ture\n");
} elsif ($num != 5) {
  print ($num, "False\n");
} else {
  print "エラー";
}