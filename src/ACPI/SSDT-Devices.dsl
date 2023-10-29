/*
 * Misc Devices for KLED Chromebook
 */
DefinitionBlock ("", "SSDT", 2, "GWYD", "KledDev", 0x00000000)
{
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.RP09, DeviceObj)

    //
    // Provides an ACPI device to represent the NVMe Device.
    // Device Property injection fails without this.
    //

    Scope (\_SB.PCI0.RP09)
    {
        Device (NVME)
        {
            Name (_ADR, Zero)  // _ADR: Address
        }
    }

    //
    // macOS iGPU drivers require an ACPI IMEI device.
    //

    Scope (\_SB.PCI0)
    {
        Device (IMEI)
        {
            Name (_ADR, 0x00160000)
        }
    }
}

