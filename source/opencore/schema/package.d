module opencore.schema;
public import plist;
public import opencore.schema.acpi;
public import opencore.schema.booter;
public import opencore.schema.device_properties;
public import opencore.schema.kernel;
public import opencore.schema.misc;
public import opencore.schema.nvram;
public import opencore.schema.platform_info;
public import opencore.schema.uefi;

struct OpenCoreConfig {
    @PlistKey("ACPI") ACPIConfig acpiConfig;
    @PlistKey("Booter") BooterConfig booterConfig; 
    @PlistKey("DeviceProperties") DeviceProperties deviceProperties;
    @PlistKey("Kernel") KernelConfig kernelConfig;
    @PlistKey("Misc") MiscConfig miscConfig;
    @PlistKey("NVRAM") NVRAMConfig nvramConfig;
    @PlistKey("PlatformInfo") PlatformConfig platformConfig;
    @PlistKey("UEFI") UEFIConfig uefi;
}
