##Title		获取匹配行后面的多行
##Purpose	每行含有Error或者Warning则匹配成功，将匹配行在内的连续三行打印并写入文件report.log
##Time		2020年6月24日13:51:42

#!/usr/bin/perl -w
use strict  ;
my $eachline ;
my $result;
my $line_cnt=0;
open (INFILE, "crm.log");
while ($eachline=<INFILE>) {
 
if  ($eachline =~ m/(Error)|(Warning)/){   #匹配 Error或者Warning
    $line_cnt = 0;
    print $eachline."\n";
    $result = $result . $eachline ."\n";
 
} elsif($line_cnt<3) { # 匹配成功后的连续三行写入report.log，并打印
   $line_cnt++         ;
   print $eachline."\n";
   $result = $result . $eachline ."\n";
}
}
close(INFILE);
open(OUTFILE, ">report.log");
print OUTFILE ($result);

##————————————————
##版权声明：本文为CSDN博主「IC小鸽」的原创文章，遵循CC 4.0 BY-SA版权协议，转载请附上原文出处链接及本声明。
##原文链接：https://blog.csdn.net/icxiaoge/article/details/81514213
