$i=0;
my %tz=(
    "01EST"=>-5,
    "02EDT"=>-4,
    "03CST"=>-6,
    "04CDT"=>-5,
    "05IST"=>5.5,
    "06PHT"=>8,
    "07CEST"=>1,
    "08CEDT"=>2
    );

print "<table>\n";
print "\t<tr>\n";
print "\t\t<td><b>UTC</b></td>\n";
foreach $k (sort(keys %tz)) {
    $k=~/..(.*)/;
    print "\t\t<td><b>".$1."</b></td>\n";
}
print "\t</tr>\n";

foreach $i (0..23) {
    print "\t<tr>\n";
    print "\t\t<td>".zeroinfront($i).":00</td>\n";
    foreach $k (sort(keys %tz)) {
	print "\t\t<td>".applyoffset($i,$tz{$k})."</td>\n";
    }
    print "\t</tr>\n";
}
print "</table>\n";

sub zeroinfront {
    if($_[0]<10) {
	return "0".$_[0];
    } else {
	return $_[0];
    }
}

sub applyoffset {
    #applyoffset(time,offset)
    local $tm=$_[0];
    local $offset=$_[1];
    local $nt=$tm+$offset;
    if($nt<0) {
	$nt=24+$nt;
    }
    if($nt>24) {
	$nt=$nt-24;
    }
    if($nt==int($nt)) {
	return zeroinfront($nt).":00";
    } else {
	return zeroinfront(int($nt)).":30";
    }	
}
