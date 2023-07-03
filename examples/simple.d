module examples.simple;

import std.stdio;
import bass;
import std.string;
import std.conv;

void main()
{
	BASS_Init(-1, 44100, 0, null, null);
	auto chan = BASS_StreamCreateFile(false, "audio.mp3", 0, 0, 0);
	BASS_ChannelPlay(chan, false);
	while (true) {
		auto pos = BASS_ChannelGetPosition(chan, 0);
		auto len = BASS_ChannelGetLength(chan, 0);
		auto time = BASS_ChannelBytes2Seconds(chan, pos);
		auto total = BASS_ChannelBytes2Seconds(chan, len);
		writefln("pos: %s/%s", time.to!string, total.to!string);
	}
}
