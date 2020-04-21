module opencore.schema.platform_info;
import opencore.schema.common;

struct PlatformGenericConfigFields {
    @PlistKey("SystemProductName") string systemProductName;
    @PlistKey("SystemSerialNumber") string systemSerialNumber;
    @PlistKey("SystemUUID") string systemUUID;
    @PlistKey("MLB") string mlb;
    @PlistKey("ROM") ubyte[] rom;
    @PlistKey("SpoofVendor") bool spoofVendor;
    @PlistKey("AdviseWindows") bool adviseWindows;
}

struct PlatformDataHubConfigFields {
    @PlistKey("PlatformName") string platformName;
    @PlistKey("SystemProductName") string systemProductName;
    @PlistKey("SystemSerialNumber") string systemSerialNumber;
    @PlistKey("SystemUUID") string systemUUID;
    @PlistKey("BoardProduct") string boardProduct;
    @PlistKey("BoardRevision") ubyte[] boardRevision;
    @PlistKey("StartupPowerEvents") ulong startupPowerEvents;
    @PlistKey("InitialTSC") ulong initialTSC;
    @PlistKey("FSBFrequency") ulong fsbFrequency;
    @PlistKey("ARTFrequency") ulong artFrequency;
    @PlistKey("DevicePathsSupported") ulong devicePathsSupported;
    @PlistKey("SmcRevision") ubyte[] smcRevision;
    @PlistKey("SmcBranch") ubyte[] smcBranch;
    @PlistKey("SmcPlatform") ubyte[] smcPlatform;
}

struct PlatformNVRAMConfigFields {
    @PlistKey("BID") string bid;
    @PlistKey("MLB") string mlb;
    @PlistKey("ROM") ubyte[] rom;
    @PlistKey("FirmwareFeatures") ubyte[] firmwareFeatures;
    @PlistKey("FirmwareFeaturesMask") ubyte[] firmwareFeaturesMask;
}

struct PlatformSMBIOSConfigFields { 
    @PlistKey("BIOSVendor") string biosVendor;
    @PlistKey("BIOSVersion") string biosVersion;
    @PlistKey("BIOSReleaseDate") string biosReleaseDate;
    @PlistKey("SystemManufacturer") string systemManufacturer;
    @PlistKey("SystemProductName") string systemProductName;
    @PlistKey("SystemVersion") string systemVersion;
    @PlistKey("SystemSerialNumber") string systemSerialNumber;
    @PlistKey("SystemUUID") string systemUUID;
    @PlistKey("SystemSKUNumber") string systemSKUNumber;
    @PlistKey("SystemFamily") string systemFamily;
    @PlistKey("BoardManufacturer") string boardManufacturer;
    @PlistKey("BoardProduct") string boardProduct;
    @PlistKey("BoardVersion") string boardVersion;
    @PlistKey("BoardSerialNumber") string boardSerialNumber;
    @PlistKey("BoardAssetTag") string boardAssetTag;
    @PlistKey("BoardType") ulong boardType;
    @PlistKey("BoardLocationInChassis") string boardLocationInChassis;
    @PlistKey("ChassisManufacturer") string chassisManufacturer;
    @PlistKey("ChassisType") ulong chassisType;
    @PlistKey("ChassisVersion") string chassisVersion;
    @PlistKey("ChassisSerialNumber") string chassisSerialNumber;
    @PlistKey("ChassisAssetTag") string chassisAssetTag;
    @PlistKey("PlatformFeature") ulong platformFeature;
    @PlistKey("FirmwareFeatures") ubyte[] firmwareFeatures;
    @PlistKey("FirmwareFeaturesMask") ubyte[] firmwareFeaturesMask;
    @PlistKey("SmcVersion") ubyte[] smcVersion;
    @PlistKey("ProcessorType") ulong processorType;
    @PlistKey("MemoryFormFactor") ulong memoryFormFactor;
}

struct PlatformConfig {
    @PlistKey("Automatic") bool automatic;
    @PlistKey("UpdateDataHub") bool updateDataHub;
    @PlistKey("UpdateNVRAM") bool updateNVRAM;
    @PlistKey("UpdateSMBIOS") bool updateSMBIOS;
    @PlistKey("UpdateSMBIOSMode") string updateSMBIOSMode;
    @PlistKey("Generic") PlatformGenericConfigFields generic;
    @PlistKey("DataHub") PlatformDataHubConfigFields dataHub;
    @PlistOptional @PlistKey("NVRAM") PlatformNVRAMConfigFields nvram;
    @PlistKey("SMBIOS") PlatformSMBIOSConfigFields smbios;
}
