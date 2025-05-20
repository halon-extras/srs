use Mail::SRS;

my $srsp = new Mail::SRS(Secret	=> "secret");
my $s0p = $srsp->forward('usera@hosta.com', 'userb@hostb.com');
print "$s0p\n";
my $s1p = $srsp->forward($s0p, 'userc@hostc.com');
print "$s1p\n";
my $s1p2 = $srsp->forward($s0p, 'userc@hostd.com');
print "$s1p2\n";

my $s1r = $srsp->reverse($s1p2);
print "$s1r\n";
my $s0r = $srsp->reverse($s1r);
print "$s0r\n";