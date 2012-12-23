# sympa-qa

Unistra will work on

* the debian backport of sympa 6.1.16
* the CPAN Bundle::Sympa

and those are tests that must pass on an installed system. Next step is a test farm.

* t/debian.t must run after a debian installation

## TODO

* packaging of sympa debian package must be "sysop friendly" (don't break my
configuration management system). the idea is 

	* sympa-cpan for the Bundle::Sympa debianisation
	* sympa-core for the mail routing system
	* sympa-www  for the web interface
	* sympa-site for an out of the box sympa install 

