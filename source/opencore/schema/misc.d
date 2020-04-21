module opencore.schema.misc;
import opencore.schema.common;

struct MiscBootFields {
    @PlistKey("PickerMode") string pickerMode;
    @PlistKey("HibernateMode") string hibernateMode;
    @PlistKey("ConsoleAttributes") ulong consoleAttributes;
    @PlistKey("PickerAttributes") ulong pickerAttributes;
    @PlistKey("TakeoffDelay") ulong takeoffDelay;
    @PlistKey("Timeout") ulong timeout;
    @PlistKey("PickerAudioAssist") bool pickerAudioAssist;
    @PlistKey("HideAuxiliary") bool hideAuxiliary;
    @PlistKey("HideSelf") bool hideSelf;
    @PlistKey("PollAppleHotKeys") bool pollAppleHotkeys;
    @PlistKey("ShowPicker") bool showPicker;
}

struct MiscDebugFields {
    @PlistKey("DisplayLevel") ulong displayLevel;
    @PlistKey("DisplayDelay") ulong displayDelay;
    @PlistKey("Target") ulong target;
    @PlistKey("AppleDebug") bool appleDebug;
    @PlistKey("DisableWatchDog") bool disableWatchdog;
}

struct MiscSecurityFields {
    @PlistKey("Vault") string vault;
    @PlistKey("ScanPolicy") ulong scanPolicy;
    @PlistKey("AllowNvramReset") bool allowNVRAMReset;
    @PlistKey("AllowSetDefault") bool allowSetDefault;
    @PlistKey("ExposeSensitiveData") ulong exposeSensitiveData;
    @PlistKey("AuthRestart") bool authRestart;
    @PlistOptional @PlistKey("EnablePassword") bool enablePassword;
    @PlistOptional @PlistKey("PasswordHash") ubyte[] passwordHash;
    @PlistOptional @PlistKey("PasswordSalt") ubyte[] passwordSalt;
    @PlistKey("HaltLevel") ulong haltLevel;
}

struct MiscToolEntry {
    @PlistKey("Arguments") string arguments;
    @PlistKey("Comment") string comment;
    @PlistKey("Auxiliary") bool auxiliary;
    @PlistKey("Enabled") bool enabled;
    @PlistKey("Name") string name;
    @PlistKey("Path") string path;
}

struct MiscConfig {
    @PlistKey("BlessOverride") PlistElementArray blessOverride;
    @PlistKey("Boot") MiscBootFields boot;
    @PlistKey("Debug") MiscDebugFields debug_;
    @PlistKey("Security") MiscSecurityFields security;
    @PlistKey("Entries") MiscToolEntry[] entries;
    @PlistKey("Tools") MiscToolEntry[] tools;
}

