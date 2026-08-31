# AppsPorter
Tool for porting OEM specific apps on every devices without root. 

<p align="center">
  <img src="readme/apc.jpg" alt="AppsPorter" width="500"/>
</p>

Usage 
```bash
bash build_port.sh <apk>  <patch name> 
```

This patch will work only for specific oem that patch is selected.

> [!WARNING]
> Compatibility depends on the selected OEM patch. A patch designed for one OEM may not work correctly on another.

Apps that require System UI privilages cannot work here.

## Patch Structure

All patches are located inside:

```text
apc/patches/
```

Create your patch using the following structure:

```text
apc/patches/
└── patch_name/
    │
    ├── framework/
    │   ├── framework-res.apk
    │   └── *.jar
    │
    ├── lib/
    │   └── *.so
    │
    ├── lib64/
    │   └── *.so
    │
    └── mods/
        └── custom smali files
```

### `framework/`

Place only the required framework files here:

* Required `.jar` files
* `framework-res.apk`

> Do not include an entire firmware dump. Only add dependencies required by the target application.

### `lib/` and `lib64/`

Place required native libraries (`.so`) inside:

```text
lib/
```

for 32-bit libraries, or:

```text
lib64/
```

for 64-bit libraries.

### `mods/`

Place your custom smali modifications here.

The directory structure inside `mods/` should match the desired destination inside the decompiled APK.

Example:

```text
mods/
    └── com/
        └── example/
            └── CustomClass.smali
```

---

## Licensing

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

- **[android-tools](https://github.com/nmeum/android-tools)** - Licensed under Apache License 2.0
- **[apktool](https://github.com/iBotPeaches/Apktool)** - Licensed under Apache License 2.0  
- **[smali](https://github.com/google/smali)** - Licensed under BSD 3-Clause License
---

## Contributing
Contributions are always welcome!

If you like this project, star it, fork it or contribute.

Take love from APC ❤️

## Credits
Sameer Al Sahab, reiryuki and you!!!
