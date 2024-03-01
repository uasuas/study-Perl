use strict;
use warnings;

# htmlの生成と表示。p37
my $html = <<"EOD";
<html>
  <head>
    <title>stady html</title>
  </head>
  <body>
    <h1>my page</h1>
    <p>text</p>
  </body>
</html>
EOD
print $html;

# ターミナルで (Perl section1_html.pl > sample.html) を入力する事でsample.htmlが生成される。
# 生成されたhtmlを開きVSCでは右下の Go Live でhtmlを表示する。