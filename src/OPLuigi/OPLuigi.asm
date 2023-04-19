
// This file contains file inclusions, action edits, and assembly for making this character OP

scope OPLuigi {

    // Insert Moveset files
    insert DASH_ATTACK,"moveset/DASH_ATTACK.bin"

    // Modify Action Parameters                             // Action           // Animation    // Moveset Data                 // Flags

    // DASH ATTACK HITBOX FIX
    Character.edit_vanilla_action_parameters(LUIGI,         Action.DashAttack,   -1,            DASH_ATTACK,                           -1)

    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags

    // Modify Actions            // Action          // Staling ID   // Main ASM                 // Interrupt/Other ASM          // Movement/Physics ASM         // Collision ASM

}
