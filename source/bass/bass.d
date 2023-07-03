module bass.bass;

extern (C) {
    int BASS_ErrorGetCode();
    bool BASS_Free();
    float BASS_GetCPU();
    bool BASS_GetDevice();
    bool BASS_GetDeviceInfo(int device, BASS_DEVICEINFO* info);
    bool BASS_GetInfo(BASS_INFO* info);
    int BASS_GetVersion();
    float BASS_GetVolume();
    bool BASS_Init(int device, int freq, int flags, void* win, void* dsguid);
    int BASS_IsStarted();
    bool BASS_Pause();
    bool BASS_SetDevice(int device);
    bool BASS_SetVolume(float volume);
    bool BASS_Start();
    bool BASS_Stop();
    bool BASS_Update(int length);
}

struct BASS_DEVICEINFO {
    char* name;
    char* driver;
    int flags;
}

struct BASS_INFO {
    int flags;
    int hwsize;
    int hwfree;
    int freesam;
    int free3d;
    int minrate;
    int maxrate;
    bool eax;
    int minbuf;
    int dsver;
    int latency;
    int initflags;
    int speakers;
    int freq;
}