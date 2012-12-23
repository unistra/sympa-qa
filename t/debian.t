use Test::More;
use Modern::Perl '2012';

sub sh ($) {
	my $script
	= '{ '
	. $_[0]
	. '; } 1>/dev/null 2>&1';

	qx{$script};
	not $?
}

ok sh "man sympa| grep rename_list"
, "rename_list is now in the man" ;

ok sh "perldoc sympa| grep rename_list"
, "rename_list is now in the pod" ;

