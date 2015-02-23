# playDASH
This is a proof of concept plugin to allow the playback of MPEG-DASH streams via Squeezebox/LMS.

Currently only Mac OS is supported and VLC must be installed with a minimum version of 3.0.0.

The plugin sill successfully play simple feeds from an MPD file but does not handle more complex streams such as the BBC's test R&D feed: http://rdmedia.bbc.co.uk/dash/ondemand/bbb/2/client_manifest-audio.mpd. This appears to be a limitation of VLC's experimental MPEG-DASH support.
