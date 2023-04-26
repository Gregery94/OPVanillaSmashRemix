
// This file contains file inclusions, action edits, and assembly for making this character OP

scope OPJigglyPuff {

    // Insert Moveset files
    JIGGLY_BAIR:
    insert BACK_AIR,"moveset/BACK_AIR.bin"

    // Modify Action Parameters                             // Action           // Animation    // Moveset Data                 // Flags
    Character.edit_vanilla_action_parameters(JIGGLYPUFF, Action.AttackAirB,     -1,                  BACK_AIR,                       -1)
    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags

    // Modify Actions            // Action          // Staling ID   // Main ASM                 // Interrupt/Other ASM          // Movement/Physics ASM         // Collision ASM

}
