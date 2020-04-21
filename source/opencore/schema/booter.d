module opencore.schema.booter;
import opencore.schema.common;

struct BooterWlEntry {
    @PlistKey("Address") long address;
    @PlistKey("Enabled") bool enabled;
    @PlistKey("Comment") string comment;
}

struct BooterQuirks {
    @PlistKey("AvoidRuntimeDefrag")
        bool avoid_runtime_defrag;
    @PlistKey("DevirtualiseMmio") 
        bool devirtualize_mmio;
    @PlistKey("DisableSingleUser") 
        bool disable_single_user;
    @PlistKey("DisableVariableWrite") 
        bool disable_variable_write;
    @PlistKey("DiscardHibernateMap") 
        bool discard_hibernate_map;
    @PlistKey("EnableSafeModeSlide")
        bool enable_safe_mode_slide;
    @PlistKey("EnableWriteUnprotector")
        bool enable_write_unprotector;
    @PlistKey("ForceExitBootServices")
        bool force_exit_boot_services;
    @PlistKey("ProtectMemoryRegions")
        bool protect_memory_regions;
    @PlistKey("ProtectSecureBoot")
        bool protect_secure_boot;
    @PlistKey("ProtectUefiServices")
        bool protect_uefi_services;
    @PlistKey("ProvideCustomSlide")
        bool provide_custom_slide;
    @PlistKey("RebuildAppleMemoryMap")
        bool rebuild_apple_memory_map;
    @PlistKey("SetupVirtualMap")
        bool setup_virtual_map;
    @PlistKey("SignalAppleOS")
        bool signal_apple_os;
    @PlistKey("SyncRuntimePermissions")
        bool sync_runtime_permissions;
}

struct BooterConfig {
    @PlistKey("MmioWhitelist") BooterWlEntry[] mmio_whitelist;
    @PlistKey("Quirks") BooterQuirks quirks;
}
