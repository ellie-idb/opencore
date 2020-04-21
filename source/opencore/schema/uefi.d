module opencore.schema.uefi;
import opencore.schema.common;

struct UEFIAPFSFields {
    @PlistKey("MinVersion") ulong minVersion;
    @PlistKey("MinDate") ulong minDate;
    @PlistKey("EnableJumpstart") bool enableJumpstart;
    @PlistKey("HideVerbose") bool hideVerbose;
    @PlistKey("JumpstartHotPlug") bool jumpstartHotPlug;
}

struct UEFIAudioFields {
    @PlistKey("AudioDevice") string audioDevice;
    @PlistKey("VolumeAmplifier") ulong volumeAmplifier;
    @PlistKey("AudioSupport") bool audioSupport;
    @PlistKey("PlayChime") bool playChime;
    @PlistKey("AudioCodec") ulong audioCodec;
    @PlistKey("AudioOut") ulong audioOut;
    @PlistKey("MinimumVolume") ulong minimumVolume;
}

struct UEFIInputFields {
    @PlistKey("KeySupportMode") string keySupportMode;
    @PlistKey("PointerSupportMode") string pointerSupportMode;
    @PlistKey("TimerResolution") ulong timerResolution;
    @PlistKey("KeyForgetThreshold") ulong keyForgetThreshold;
    @PlistKey("KeyMergeThreshold") ulong keyMergeThreshold;
    @PlistKey("KeySupport") bool keySupport;
    @PlistKey("KeyFiltering") bool keyFiltering;
    @PlistKey("KeySwap") bool keySwap;
    @PlistKey("PointerSupport") bool pointerSupport;
}

struct UEFIOutputFields {
    @PlistKey("ConsoleMode") string consoleMode;
    @PlistKey("Resolution") string resolution;
    @PlistKey("TextRenderer") string textRenderer;
    @PlistKey("DirectGopCacheMode") string directGOPCacheMode;
    @PlistKey("IgnoreTextInGraphics") bool ignoreTextInGraphics;
    @PlistKey("ClearScreenOnModeSwitch") bool clearScreenOnModeSwitch;
    @PlistKey("ProvideConsoleGop") bool provideConsoleGOP;
    @PlistKey("ReplaceTabWithSpace") bool replaceTabWithSpace;
    @PlistKey("ReconnectOnResChange") bool reconnectOnResChange;
    @PlistKey("SanitiseClearScreen") bool sanitiseClearScreen;
    @PlistKey("DirectGopRendering") bool directGOPRendering;
}

struct UEFIProtocolFields {
    @PlistKey("AppleAudio") bool appleAudio;
    @PlistKey("AppleBootPolicy") bool appleBootPolicy;
    @PlistKey("AppleDebugLog") bool appleDebugLog;
    @PlistKey("AppleEvent") bool appleEvent;
    @PlistKey("AppleImageConversion") bool appleImageConversion;
    @PlistKey("AppleKeyMap") bool appleKeyMap;
    @PlistKey("AppleSmcIo") bool appleSMCIO;
    @PlistKey("AppleUserInterfaceTheme") bool appleUserInterfaceTheme;
    @PlistKey("DataHub") bool dataHub;
    @PlistKey("DeviceProperties") bool deviceProperties;
    @PlistKey("FirmwareVolume") bool firmwareVolume;
    @PlistKey("HashServices") bool hashServices;
    @PlistKey("OSInfo") bool osInfo;
    @PlistKey("UnicodeCollation") bool unicodeCollation;
}

struct UEFIQuirksFields {
    @PlistKey("ExitBootServicesDelay") ulong exitBootServicesDelay;
    @PlistKey("IgnoreInvalidFlexRatio") bool ignoreInvalidFlexRatio;
    @PlistKey("ReleaseUsbOwnership") bool releaseUSBOwnership;
    @PlistKey("RequestBootVarFallback") bool requestBootVarFallback;
    @PlistKey("RequestBootVarRouting") bool requestBootVarRouting;
    @PlistKey("UnblockFsConnect") bool unblockFSConnect;
}

struct UEFIConfig {
    @PlistKey("ConnectDrivers") bool connectDrivers;
    @PlistKey("APFS") UEFIAPFSFields apfs;
    @PlistKey("Audio") UEFIAudioFields audio;
    @PlistKey("Drivers") PlistElementArray drivers;
    @PlistKey("Input") UEFIInputFields input;
    @PlistKey("Output") UEFIOutputFields output;
    @PlistOptional @PlistKey("Protocols") UEFIProtocolFields protocols;
    @PlistOptional @PlistKey("ProtocolOverrides") UEFIProtocolFields protocolOverrides;
    @PlistKey("Quirks") UEFIQuirksFields quirks;
}
