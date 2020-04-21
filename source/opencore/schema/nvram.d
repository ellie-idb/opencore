module opencore.schema.nvram;
import opencore.schema.common;

struct NVRAMConfig {
    @PlistKey("Add") PlistElementDict add;
    @PlistKey("Block") PlistElementDict block;
    @PlistOptional @PlistKey("Legacy") PlistElementDict legacy;
    @PlistOptional @PlistKey("LegacySchema") PlistElementDict legacySchema;
    @PlistKey("LegacyEnable") bool legacyEnable;
    @PlistKey("LegacyOverwrite") bool legacyOverwrite;
    @PlistKey("WriteFlash") bool writeFlash;
}
