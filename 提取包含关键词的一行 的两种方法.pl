

##————————方法1：每次读取一行————————##

#!/usr/bin/perl -w
use strict  ;
my $eachline ;
my $result;
open (INFILE, "crm.log");       #提取crm.log文件内容
while ($eachline=<INFILE>) {
if  ($eachline =~ m/(Error:)|(Warning)/){   #匹配关键词
print $eachline."\n";
$result = $result . $eachline ."\n";  #将匹配行保存在result中
}
}
close(INFILE);
open(OUTFILE, ">report.log");  
print OUTFILE ($result);  #将result写入到report.log中

##———————方法1：每次读取一行 END—————————##



##———————方法2：一次读取原文件所有数据—————————##

#!/usr/bin/perl
use strict  ;
my @array    ;
my $string   ;
my $result   ;
open (INFILE, "crm.log");
 @array = <INFILE> ;
foreach $string (@array){
if ($string =~ m/(Error:)|(Warning)/){
print $string."\n";
$result = $result . $string ."\n";
}
}
close(INFILE);
open(OUTFILE, ">outfile");
print OUTFILE ($result);

##———————方法2：一次读取原文件所有数据 END—————————##