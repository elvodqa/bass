module bass.stream;

extern (C) {
    int BASS_StreamCreate(int freq, int chans, int flags, void* proc, void* user);
    int BASS_StreamCreateFile(bool mem, void* file, long offset, long length, int flags);
    int BASS_StreamCreateFileUser(int system, int flags, void* procs, void* user);
    int BASS_StreamCreateURL(void* url, int offset, int flags, void* proc, void* user);
    bool BASS_StreamFree(int handle);
    bool BASS_StreamGetFilePosition(int handle, int mode);
    bool BASS_StreamPutData(int handle, void* buffer, int length);
    bool BASS_StreamPutFileData(int handle, void* buffer, int length);
}

int BASS_StreamCreateFile(bool mem, string file, long offset, long length, int flags) {
    import std.string;
    auto chan = BASS_StreamCreateFile(mem, cast(void*)toStringz(file), offset, length, flags);
    return chan;
}

int BASS_StreamCreateURL(string url, int offset, int flags, void* proc, void* user) {
    import std.string;
    auto chan = BASS_StreamCreateURL(cast(void*)toStringz(url), offset, flags, proc, user);
    return chan;
}