# Acer Spin 713 (KLED) Hackintosh

Hackintosh project for the Acer Spin 713, utilizing [OpenCore](https://github.com/acidanthera/OpenCorePkg) and [OCE-Build](https://github.com/Qonfused/OCE-Build)

| Component  | Device | Status |
| ---------- | ------ | ------ |
| CPU        | Intel Core i5-10210U | Supported |
| GPU        | Intel UHD 620        | Supported |
| Display    | 2256x1200 @ 60Hz     | Supported |
| Touchpad   | Elans I2C Touchpad (ELAN0000) | Supported |
| TouchScreen | HID TouchScreen     | Supported |
| Keyboard   | PS/2 Keyboard        | Supported with ACPI Keymap |
| Audio      | SOF DSP              | ❌ Unsupported |
| Camera     | USB Built-in         | Supported |
| Wi-Fi      | Intel AX201          | Supported |
| Bluetooth  | Intel Bluetooth      | Supported |
| Storage    | 256GB WDC SN530 NVMe | Supported |

## Fixing Graphics Glitches on Wake

This requires a custom version of CoreBoot with `DISABLE_HECI1_AT_PRE_BOOT` disabled.

1. Clone [coreboot](https://github.com/MrChromebox/coreboot)
2. Run `./build-uefi.sh kled`
3. Run `make menuconfig`, then disable `Chipset->DISABLE_HECI1_AT_PRE_BOOT`
4. Save then exit
5. Run `make -j$(nprocs)`
6. The output will be at `./build/coreboot.rom`