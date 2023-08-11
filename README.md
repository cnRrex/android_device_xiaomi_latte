Copyright 2017 - The LineageOS Project

this branch need to edit some source file:

In file: cm-13.0/system/core/libpixelflinger/codeflinger/x86/X86Assembler.h
line 29:
--- #include "enc_wrapper.h"
+++ #include "codeflinger/x86/libenc/enc_wrapper.h"

In file: cm-13.0/bootable/recovery/updater/updater.c
line 32:
--- #include "register.inc"
+++ // #include "register.inc"
line 104:
--- RegisterDeviceExtensions();
+++ // RegisterDeviceExtensions();

In file: cm-13.0/bootable/recovery/updater/Android.mk
line 107:
--- LOCAL_32_BIT_ONLY := true
+++ # LOCAL_32_BIT_ONLY := true

You should apply these commit to build ffmpeg 32-bit only:
cm-13.0/external/ffmpeg/:
https://review.lineageos.org/c/LineageOS/android_external_ffmpeg/+/60259
github:https://github.com/LineageOS/android_external_ffmpeg/commit/07d2a0ce8b14dcd688798410ef49eed60e2f9a1d

cm-13.0/external/stagefright-plugins/:
https://review.lineageos.org/c/LineageOS/android_external_stagefright-plugins/+/61448
github:https://github.com/LineageOS/android_external_stagefright-plugins/commit/db45c0fb502f21307a9179ac79011d11323e72b3

Android 6.x Device configuration for Xiaomi Mi Pad 2
=====================================

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Quad Core Intel Atom X5-Z8500 (Cherry-Trail)
CLOCK	| 1.44GHz w/ boost up to 2.24GHz
GPU     | Intel Gen8 HD Graphics up to 600MHz
Memory  | 2 GB
Shipped Android Version | 5.1 Lolipop w/ MIUI 7
Storage | 16GB GB (Android only) 64GB (Windows/Android)
Battery | 6020 mAh (non-removable)
Dimensions | 200.4 x 132.6 x 7 mm (7.89 x 5.22 x 0.28 in)
Display | 2048 x 1536 pixels, 7.9" IPS LCD
Weight  | 322 g
Rear Camera  | 8 MP (S5K4H8YX/T4KA3)
Front Camera | 5 MP (OV5693)
Release Date | November 2015

![Xiaomi Mi Pad 2](http://cdn2.gsmarena.com/vv/pics/xiaomi/xiaomi-mi-pad-2-1.jpg "Xiaomi Mi Pad 2")

