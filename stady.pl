# Perlスクリプト内で使用されるプラグマ（pragma）
use v5.12;
# バージョンの指定。

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
# 文字列の'と"の違い。
# 'は特殊文字の\nや\tが使えない。加えて変数展開も不可。
# 不可例。
my $a = 'Hello$b' . 'world!!\n';
my $b = '変数b';
# 可能例。
my $c = "Hello$b" . "world!!\n";
my $str = $c;
# x 2 とする事で2回strを表示できる。
print $str x 2;

# 配列変数。
# 配列に格納する際データ型は問わない。
my @ex = (100, 200.5, "red");
print @ex;

my @num = (1..10);
# 文字列の別の表記方法。
my @str = qw(red green);
print @str;
# 配列の中身を取り出す[数字]、注意点：＠ではなく＄になる。
print $num[1];
# 配列の最後を指定する際の指定方法（$#〇〇)。
print @ex[1..$#ex];

# ハッシュ変数。
my %name = ("takasi"=>1, "takesi"=>2, "takako"=>3, "takeko"=>4);
# 取り出し方。
print $name{"takasi"};

# 文字列の比較演算子。（辞書順で比較するときに利用する演算子）
# 先頭から1文字づつ、文字コードの大きさを比べる。
# eq:AとBは等しい。
# ne:AとBは等しくない。
# gt:AはBより大きい。
# ge:AはB以上。
# lt:AはBより小さい。
# le:AはB以下。
my $strif = "test";
if ($strif eq "test") {
  print ("true\n");
}

my $str1 = "1";
my $str2 = "02";

if ($str1 gt $str2) {
  print "str1 is big\n";
} else {
  print "str2 is big\n";
}

# 部分一致。(/ここが含まれるもの/)
if ($strif =~ /es/) {
  print ("on es\n");
} else {
  print ("no es\n");
}

my $numA = 10;
my $numB = 20;
#  AがBより大きかったらAをmaxにいれ違った場合、Bをmaxに入れる。
my $max = ($numA > $numB) ? $numA : $numB;
print $max;

# unlessの記述方法。
# 基本ifとelseの記述は同様のため省略。
my $unless = 10;
unless($unless <= 0){
   print("unless is greater than 0\n")	                   
}

# ifの別記述。
my $if = 1;
print("Welcome to Perl if tutorial\n") if($if == 1);

# given/whenの記述。
my $color;
my $code;
print("Please enter a RGB color to get its code:\n");
$color = <STDIN>;
chomp($color);
$color = uc($color);
given($color){
  # use v5.10以降で使用可能表現。
  # when ('RED') {$code = '#FF0000';}
  # when ('GREEN') {$code = '#00FF00';}
  # when ('BLUE') {$code = '#0000FF';}
  # use v5.12以降で使用可能表現。
  $code = '#FF0000' when 'RED';
  $code = '#00FF00' when 'GREEN';
  $code = '#0000FF' when 'BLUE';
  default{$code = '';}
}
if($code ne ''){
   print("code of $color is $code \n");
}
else{
    print("$color is not RGB color\n");
}