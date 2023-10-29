/*
 * XCPM power management compatibility table with Darwin method
 * for Alder Lake CPUs and others with CPU objects
 * declared as Device instead of Processor.
 *
 * This is a modified version of:
 * https://github.com/acidanthera/OpenCorePkg/blob/master/Docs/AcpiSamples/Source/SSDT-PLUG-ALT.dsl
 *
 * This only defines 8 CPU objects for my i5-10310U (4c8t)
 */
DefinitionBlock ("", "SSDT", 2, "GWYD", "CpuPlugA", 0x00000000)
{
    External (_SB_, DeviceObj)

    Scope (\_SB)
    {
        Processor (PR00, 0x00, 0x00000410, 0x06)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, Zero)
            Method (_STA, 0, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }

            Method (_DSM, 4, NotSerialized)
            {
                If (Arg2 == Zero) {
                    Return (Buffer (One) { 0x03 })
                }

                Return (Package (0x02)
                {
                    "plugin-type", 
                    One
                })
            }
        }

        Processor (PR01, 0x01, 0x00000410, 0x06)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, One)
            Method (_STA, 0, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR02, 0x02, 0x00000410, 0x06)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 0x02)
            Method (_STA, 0, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR03, 0x03, 0x00000410, 0x06)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 0x03)
            Method (_STA, 0, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR04, 0x04, 0x00000410, 0x06)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 0x04)
            Method (_STA, 0, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR05, 0x05, 0x00000410, 0x06)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 0x05)
            Method (_STA, 0, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR06, 0x06, 0x00000410, 0x06)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 0x06)
            Method (_STA, 0, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }

        Processor (PR07, 0x07, 0x00000410, 0x06)
        {
            Name (_HID, "ACPI0007")
            Name (_UID, 0x07)
            Method (_STA, 0, NotSerialized)
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}

