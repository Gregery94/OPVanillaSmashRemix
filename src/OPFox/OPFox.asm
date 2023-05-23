
// This file contains file inclusions, action edits, and assembly for making this character OP

scope OPFox {

    // Insert Moveset files
    //insert UAIR,"moveset/UAIR.bin"

    // Modify Action Parameters                             // Action           // Animation    // Moveset Data                 // Flags

    // JPN UP SPECIAL
    // Modify Action Parameters             // Action               // Animation                // Moveset Data             // Flags
    Character.edit_vanilla_action_parameters(FOX, 0xDD,                   -1,                         JFox.NEUTRAL_INF,                -1)
    Character.edit_vanilla_action_parameters(FOX, 0xE5,                   -1,                         JFox.UPSPECIALMID,               -1)
    Character.edit_vanilla_action_parameters(FOX, 0xE6,                   -1,                         JFox.UPSPECIALMID,               -1)
    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags

    // Modify Actions            // Action          // Staling ID   // Main ASM                 // Interrupt/Other ASM          // Movement/Physics ASM         // Collision ASM

}
