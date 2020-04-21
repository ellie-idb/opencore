module opencore.schema.device_properties;
import opencore.schema.common;

struct DeviceProperties {
    @PlistKey("Add") PlistElementDict[] add;
    @PlistKey("Block") PlistElementDict[] block;
}

