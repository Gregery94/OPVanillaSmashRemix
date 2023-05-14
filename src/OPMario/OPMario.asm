
// This file contains file inclusions, action edits, and assembly for making this character OP

scope OPMario {

    // Insert Moveset files

    // Modify Action Parameters                             // Action           // Animation    // Moveset Data                 // Flags

    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags

    // Modify Actions            // Action          // Staling ID   // Main ASM                 // Interrupt/Other ASM          // Movement/Physics ASM         // Collision ASM

    // double down b y velocity acceleration  (default is 0x41B0)
    // affects luigi + variants
    OS.patch_start(0xD113E, 0x801566FE)
    dh  0x4230
    OS.patch_end()

    // double increase down b max y velocity (default is 0x4220)
    // affects luigi + variants
    OS.patch_start(0xD114A, 0x8015670A)
    dh  0x42A0
    OS.patch_end()

}
