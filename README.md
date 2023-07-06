# BASS
This project provides bindings to the [BASS](https://www.un4seen.com/bass.html), a simple and easy-to-use library to enjoy audio programming.

See [API](https://www.un4seen.com/doc/).

## Usage
To use BASS, add `bass` as a dependency to your project's package config file.

__dub.json__
```
dependencies {
    "bass": "~>0.1.3",
}
```

__dub.sdl__
```
dependency "bass" version="~>0.1.3"
```

## Examples

You can find examples inside [examples directory](https://github.com/elvodqa/bass/tree/master/examples).

A simple example:

```d
import std.stdio;
import bass;

void main()
{
    BASS_Init(-1, 44100, 0, null, null);
    auto chan = BASS_StreamCreateFile(false, "audio.mp3", 0, 0, 0);
    BASS_ChannelPlay(chan, false);
    readln();
}

```

## Dependencies
- [bass](https://www.un4seen.com/bass.html)
