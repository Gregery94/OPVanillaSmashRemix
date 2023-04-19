
// This file contains file inclusions, action edits, and assembly for making this character OP

scope OPSamus {

    // Insert Moveset files
    insert UAIR,"moveset/UAIR.bin"

    // Modify Action Parameters                             // Action           // Animation    // Moveset Data                 // Flags

    // UAIR HITBOX FIX
    Character.edit_vanilla_action_parameters(SAMUS,         Action.AttackAirU,   -1,            UAIR,                           -1)

    // JPN UP SPECIAL
    Character.edit_vanilla_action_parameters(SAMUS,         0xE3,                -1,            JSamus.UP_SPECIAL_GROUND,       -1)
    Character.edit_vanilla_action_parameters(SAMUS,         0xE4,                -1,            JSamus.UP_SPECIAL_AIR,          -1)

    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags

    // Modify Actions            // Action          // Staling ID   // Main ASM                 // Interrupt/Other ASM          // Movement/Physics ASM         // Collision ASM

}
