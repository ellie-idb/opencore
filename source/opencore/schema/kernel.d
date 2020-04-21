module opencore.schema.kernel;
import opencore.schema.common;

struct KernelAddEntry {
    @PlistKey("Enabled") bool enabled;
    @PlistKey("Comment") string comment;
    @PlistKey("MaxKernel") string maxKernel;
    @PlistKey("MinKernel") string minKernel;
    @PlistKey("BundlePath") string bundlePath;
    @PlistKey("ExecutablePath") string executablePath;
    @PlistKey("PlistPath") string plistPath;
    @PlistOptional @PlistKey("ImageData") ubyte[] imageData;
    @PlistOptional @PlistKey("ImageDataSize") ulong imageDataSize;
    @PlistOptional @PlistKey("PlistData") char[] plistData;
    @PlistOptional @PlistKey("PlistDataSize") ulong plistDataSize;
}

struct KernelBlockEntry {
    @PlistKey("Enabled") bool enabled;
    @PlistKey("Comment") string comment;
    @PlistKey("Identifier") string identifier;
    @PlistKey("MaxKernel") string maxKernel;
    @PlistKey("MinKernel") string minKernel;
}

struct KernelEmulateEntry {
    @PlistKey("Cpuid1Data") ubyte[] cpuId1Data;
    @PlistKey("Cpuid1Mask") ubyte[] cpuId1Mask;
}

struct KernelPatchEntry {
    @PlistKey("Base") string base;
    @PlistKey("Comment") string comment;
    @PlistKey("Count") ulong count;
    @PlistKey("Enabled") bool enabled;
    @PlistKey("Find") ubyte[] find;
    @PlistKey("Identifier") string identifier;
    @PlistKey("Mask") ubyte[] mask;
    @PlistKey("MaxKernel") string maxKernel;
    @PlistKey("MinKernel") string minKernel;
    @PlistKey("Replace") ubyte[] replace;
    @PlistKey("ReplaceMask") ubyte[] replaceMask;
    @PlistKey("Limit") ulong limit;
    @PlistKey("Skip") ulong skip;
}

struct KernelQuirks {
    @PlistKey("AppleCpuPmCfgLock") bool appleCPUPmCfgLock;
    @PlistKey("AppleXcpmCfgLock") bool appleXcpmCfgLock;
    @PlistKey("AppleXcpmExtraMsrs") bool appleXcpmExtraMsrs;
    @PlistKey("AppleXcpmForceBoost") bool appleXcpmForceBoost;
    @PlistKey("CustomSMBIOSGuid") bool customSMBiosGUID;
    @PlistKey("DisableIoMapper") bool disableIOMapper;
    @PlistKey("DummyPowerManagement") bool dummyPowerManagement;
    @PlistKey("ExternalDiskIcons") bool externalDiskIcons;
    @PlistKey("IncreasePciBarSize") bool increasePCIBarSize;
    @PlistKey("LapicKernelPanic") bool lapicKernelPanic;
    @PlistKey("PanicNoKextDump") bool panicNoKextDump;
    @PlistKey("PowerTimeoutKernelPanic") bool powerTimeoutKernelPanic;
    @PlistKey("ThirdPartyDrives") bool thirdPartyDrives;
    @PlistKey("XhciPortLimit") bool xhciPortLimit;
}

struct KernelConfig {
    @PlistKey("Add") KernelAddEntry[] add;
    @PlistKey("Block") KernelBlockEntry[] block;
    @PlistKey("Emulate") KernelEmulateEntry emulate;
    @PlistKey("Patch") KernelPatchEntry[] patch;
    @PlistKey("Quirks") KernelQuirks quirks;
}
