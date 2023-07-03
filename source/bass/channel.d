module bass.channel;

extern (C) {
    double BASS_ChannelBytes2Seconds(int handle, long pos);
    int BASS_ChannelFlags(int handle, int flags, int mask);
    bool BASS_ChannelFree(int handle);
    bool BASS_ChannelGet3DAttributes(int handle, int* mode, float* min, float* max, int* iangle, int* oangle, float* outvol);
    bool BASS_ChannelGet3DPosition(int handle, void* pos, void* orient, void* vel);
    bool BASS_ChannelGetAttribute(int handle, int attrib, float* value);
    int BASS_ChannelGetAttributeEx(int handle, int attrib, void* value, int size);
    int BASS_ChannelGetData(int handle, void* buffer, int length);
    int BASS_ChannelGetDevice(int handle);
    bool BASS_ChannelGetInfo(int handle, void* info);
    int BASS_ChannelGetLength(int handle, int mode);
    int BASS_ChannelGetLevel(int handle, void* levels);
    bool BASS_ChannelGetLevelEx(int handle, void* levels, float length, int flags);
    int BASS_ChannelGetPosition(int handle, int mode);
    bool BASS_ChannelGetTags(int handle, int tags); // TAG structs are not defined.
    int BASS_ChannelIsActive(int handle);
    bool BASS_ChannelIsSliding(int handle, int attrib);
    bool BASS_ChannelLock(int handle, bool lock);
    bool BASS_ChannelPause(int handle);
    bool BASS_ChannelPlay(int handle, bool restart);
    bool BASS_ChannelRemoveDSP(int handle, int dsp);
    bool BASS_ChannelRemoveFX(int handle, int fx);
    bool BASS_ChannelRemoveLink(int handle, int chan);
    bool BASS_ChannelRemoveSync(int handle, void* sync);
    int BASS_ChannelSeconds2Bytes(int handle, double pos);
    bool BASS_ChannelSet3DAttributes(int handle, int mode, float min, float max, int iangle, int oangle, float outvol);
    bool BASS_ChannelSet3DPosition(int handle, void* pos, void* orient, void* vel);
    bool BASS_ChannelSetAttribute(int handle, int attrib, float value);
    bool BASS_ChannelSetAttributeEx(int handle, int attrib, void* value, int size);
    bool BASS_ChannelSetDevice(int handle, int device);
    bool BASS_ChannelSetDSP(int handle, void* proc, void* user, int priority); // Returns HDSP
    bool BASS_ChannelSetFX(int handle, int type, int priority); // Returns HFX
    bool BASS_ChannelSetLink(int handle, int chan);
    bool BASS_ChannelSetPosition(int handle, int pos, int mode);
    bool BASS_ChannelSetSync(int handle, int type, int param, void* proc, void* user); // Returns HSYNC
    bool BASS_ChannelSlideAttribute(int handle, int attrib, float value, int time);
    bool BASS_ChannelStart(int handle);
    bool BASS_ChannelStop(int handle);
    bool BASS_ChannelUpdate(int handle, int length);
}

struct BASS_CHANNELINFO {
    int freq;
    int chans;
    int flags;
    int ctype;
    int origres;
    int plugin;
    int sample;
    void* filename;
}


bool BASS_ChannelGetInfo(int handle, BASS_CHANNELINFO* info) {
    return BASS_ChannelGetInfo(handle, info);
}
