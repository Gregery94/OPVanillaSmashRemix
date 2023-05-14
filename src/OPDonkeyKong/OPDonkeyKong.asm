
// This file contains file inclusions, action edits, and assembly for making this character OP

scope OPDonkeyKong {

    // Insert Moveset files


    // Modify Action Parameters                             // Action           // Animation    // Moveset Data                 // Flags

    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags

    // Modify Actions            // Action          // Staling ID   // Main ASM                 // Interrupt/Other ASM          // Movement/Physics ASM         // Collision ASM

    // increased up special height
    // default = 0x3D8F5C29 (0.07)
    OS.patch_start(0x1072B4,0x8018C874)
    dw 0xBE0F5C29   // (-0.14)
    OS.patch_end()

}
