#
# A plugin to enable PlayDASH to be played using vlc (or whatever in custom-convert.conf) 
# VLC must be version 3 or greater to support DASH

use strict;

package Plugins::PlayDASH::Plugin;

use base qw(Slim::Plugin::OPMLBased);

use Slim::Utils::Log;
use Slim::Utils::Prefs;

# create log categogy before loading other modules
my $log = Slim::Utils::Log->addLogCategory({
	'category'     => 'plugin.playdash',
	'defaultLevel' => 'WARN',
	'description'  => getDisplayName(),
});

my $prefsServer = preferences('server');

use Slim::Utils::Misc;


################################
### Plugin Interface ###########
################################


sub initPlugin 
{
	my $class = shift;

	$log->info("Initialising " . $class->_pluginDataFor('version'));
	
	return 1;
}

sub shutdownPlugin 
{
 return;
}

sub getDisplayName() 
{ 
	return('PLUGIN_PLAYDASH')
}

1;

# Local Variables:
# tab-width:4
# indent-tabs-mode:t
# End:
