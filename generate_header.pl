#!/usr/bin/perl -w
use strict;
use POSIX;
my $cur_time = strftime("%m/%d/%Y",localtime());
my $file_name;
my $tab=" "*4;
if (@ARGV == 1){
	$file_name = $ARGV[0];
}
else {
	&help_message();
}	
open(LOG,">"$file_name) or die "Can not open $file_name for writing!\n";
my $str = "";
$str .= "#!/use/bin/perl -w\n";
$str .= "use strict;\n";
$str .= "# ---------------------------------\n";
$str .= "#Filename	: $file_name			\n";
$str .= "#		\n";
$str .= "# Description:						\n";
$str .= "#		\n";
$str .= "#		\n";
$str .= "#									\n";
$str .= "# Author:							\n";
$str .= "# Igroc_Wang						\n";
$str .= "#		$cur_time \n";
$str .= "# ---------------------------------\n";
$str .= "# $file_name \n";
print LOG $str;
close (LOG);
print "\nThe header for specified file $file_name has been generated!\n\n";

sub help_message {
	print "\nThe $0 script used to generated the head of a perl example file header for";
	exit;
}