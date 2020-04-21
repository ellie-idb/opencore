module opencore.schema.acpi;
import opencore.schema.common;

struct ACPIAddEntry {
    @PlistKey("Enabled") bool enabled;
    @PlistKey("Comment") string comment;
    @PlistKey("Path") string path;
}

struct ACPIBlockEntry {
    @PlistKey("All") bool all;
    @PlistKey("Enabled") bool enabled;
    @PlistKey("Comment") string comment;
    @PlistKey("OemTableId") ubyte[] oem_table_id;
    @PlistKey("TableLength") ulong table_length;
    @PlistKey("TableSignature") ubyte[] table_signature;
}

struct ACPIPatchEntry {
    @PlistKey("Count") ulong count;
    @PlistKey("Enabled") bool enabled;
    @PlistKey("Comment") string comment;
    @PlistKey("Find") ubyte[] find;
    @PlistKey("Limit") ulong limit;
    @PlistKey("Mask") ubyte[] mask;
    @PlistKey("Replace") ubyte[] replace;
    @PlistKey("ReplaceMask") ubyte[] replace_mask;
    @PlistKey("OemTableId") ubyte[] oem_table_id;
    @PlistKey("TableLength") ulong table_length;
    @PlistKey("TableSignature") ubyte[] table_signature;
    @PlistKey("Skip") ulong skip;
}

struct ACPIQuirks {
    @PlistKey("FadtEnableReset") bool fadt_enable_reset;
    @PlistKey("NormalizeHeaders") bool normalize_headers;
    @PlistKey("RebaseRegions") bool rebase_regions;
    @PlistKey("ResetHwSig") bool reset_hw_sig;
    @PlistKey("ResetLogoStatus") bool reset_logo_status;
}

struct ACPIConfig {
    @PlistKey("Add") ACPIAddEntry[] add;
    @PlistKey("Block") ACPIBlockEntry[] block;
    @PlistKey("Patch") ACPIPatchEntry[] patch;
    @PlistKey("Quirks") ACPIQuirks quirks;
}



