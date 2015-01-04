package Perinci::CLI;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Perinci::CmdLine::Any -prefer_lite => 1;

sub import {
    my $class = shift;
    my $url = shift
        or die "Please specify URL as import argument to Perinci::CLI";
    Perinci::CmdLine::Any->new(url => $url)->run;
}

1;
# ABSTRACT: Run Perinci::CmdLine app as one-liner

=for Pod::Coverage ^(import)$

=head1 SYNOPSIS

 % perl -MPerinci::CLI=/URL/To/Your/Function

which is a shortcut for:

 use Perinci::CmdLine::Any -prefer_lite=>1;
 Perinci::CmdLine::Any->new(url => '/URL/To/Your/Function')->run;

To specify options/arguments to your CLI:

 % perl -MPerinci::CLI=/URL/To/Your/Function -E1 -- --opt1 val arg


=head1 DESCRIPTION


=head1 SEE ALSO

L<Perinci::CmdLine::Any>
