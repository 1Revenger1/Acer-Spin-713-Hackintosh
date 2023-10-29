/*
 * Chromebook (KLED) PS/2 to HID Keymap
 * 
 * HID keys are made up of a Usage Page and Usage.
 * For example, Brightness down would be 0x00FF0005 (0xFF, 0x5)
 * Usage Page 0xFF is Apple's Keyboard Usage Page.
 *
 * Another commonly used Usage Page is 0xC (Consumer),
 * which defines media keys.
 *
 * HID: https://usb.org/sites/default/files/hut1_2.pdf
 * Apple Vendor Pages: https://github.com/acidanthera/MacKernelSDK/blob/master/Headers/IOKit/hid/AppleHIDUsageTables.h
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "KledMap", 0x00000000)
{
    External (_SB_.PCI0.PS2K, DeviceObj)

    Scope (\_SB.PCI0.PS2K)
    {
        Name (RMCF, Package (0x02)
        {
            "Keyboard", 
            Package (0x04)
            {
                "Swap command and option", 
                ">y",

                "Custom ADB Map", 
                Package (0x0B)
                {
                    Package (0x00){}, // Array
                    // Key -> HID Key (Page, Usage) 
                    // F1  -> Web Back (0xC, 0x224)
                    "3b=000c0224",
                    // F2  -> Web Forward (0xC, 0x225)
                    "3c=000c0225",
                    // F3  -> Refresh (0xC, 0x227)
                    "3d=000c0227",
                    // F4  -> Launchpad (0xFF01, 0x4)
                    "3e=ff010004",
                    // F5  -> Expose All (0xFF01, 0x10)
                    "3f=ff010010",
                    // F6  -> Brightness Down (0xFF, 0x5)
                    "40=00ff0005",
                    // F7  -> Brightness Up (0xFF, 0x4)
                    "41=00ff0004",
                    // F8  -> Mute (0xC, 0xE2)
                    "42=000c00e2",
                    // F9  -> Volume Down (0xC, 0xEA)
                    "43=000c00ea",
                    // F10 -> Volume Up (0xC, 0xE9)
                    "44=000c00e9"
                }
            }
        })
    }
}

