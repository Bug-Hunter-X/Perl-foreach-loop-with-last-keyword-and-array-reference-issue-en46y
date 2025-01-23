my @array = (1..10); foreach my $i (@array) { if ($i == 5) { last; } print "$i\n"; }
#The above code has a subtle bug.  The last keyword is not behaving as expected due to a foreach loop and an array reference.
# Here's the corrected version:
my @array = (1..10);
for my $i (@array) { # Use 'for' instead of 'foreach' 
  if ($i == 5) {
    last;
  }
  print "$i\n";
}
#Alternatively, using foreach with explicit index:
my @array = (1..10);
foreach my $i (0..$#array) { # Iterate using index
  if ($array[$i] == 5) {
    last;
  }
  print "$array[$i]\n";
}