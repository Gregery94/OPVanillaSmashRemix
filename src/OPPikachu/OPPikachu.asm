
// This file contains file inclusions, action edits, and assembly for making this character OP

scope OPPikachu {

    // Insert Moveset files

    // Modify Action Parameters              // Action              // Animation    // Moveset Data                 // Flags

    // JPIKA moves
    Character.edit_vanilla_action_parameters(PIKACHU,   Action.FTiltLow,       -1,             JPika.FTILT_DOWN,               -1)

    // EPIKA Buffs
    Character.edit_vanilla_action_parameters(PIKACHU,   Action.AttackAirD,     -1,             EPika.DAIR,                     -1)
    Character.edit_vanilla_action_parameters(PIKACHU,   Action.FSmash,         -1,             EPika.FSMASH,                   -1)
    Character.edit_vanilla_action_parameters(PIKACHU,   Action.UTilt,          -1,             EPika.UTILT,                    -1)
    Character.edit_vanilla_action_parameters(PIKACHU,   0xE2,                  -1,             EPika.DOWN_SPECIAL_CONNECT,     -1)
    Character.edit_vanilla_action_parameters(PIKACHU,   0xE6,                  -1,             EPika.DOWN_SPECIAL_CONNECT,     -1)
    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags

    // Modify Actions            // Action          // Staling ID   // Main ASM                 // Interrupt/Other ASM          // Movement/Physics ASM         // Collision ASM

}
