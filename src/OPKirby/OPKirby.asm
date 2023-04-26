
// This file contains file inclusions, action edits, and assembly for making this character OP

scope OPKirby {

    // Insert Moveset files

    // Modify Action Parameters                             // Action           // Animation    // Moveset Data                 // Flags
    Character.edit_vanilla_action_parameters(KIRBY, Action.Jab2,           -1,                  JKirby.NEUTRAL2,                   -1)
    Character.edit_vanilla_action_parameters(KIRBY, Action.DSmash,         -1,                  JKirby.DSMASH,                     -1)
    Character.edit_vanilla_action_parameters(KIRBY, Action.USmash,         -1,                  JKirby.USMASH,                     -1)
    Character.edit_vanilla_action_parameters(KIRBY, Action.AttackAirU,     -1,                  JKirby.UAIR,                       -1)
    Character.edit_vanilla_action_parameters(KIRBY, 0xDD,                  -1,                  JKirby.NEUTRALINF,                 -1)
    Character.edit_vanilla_action_parameters(KIRBY, 0x109,                 -1,                  JKirby.DOWN_SPECIAL_FALL,          -1)
    Character.edit_vanilla_action_parameters(KIRBY, 0x10A,                 -1,                  JKirby.DOWN_SPECIAL_LANDING,       -1)
    Character.edit_vanilla_action_parameters(KIRBY, 0x10B,                 -1,                  JKirby.DOWN_SPECIAL_FALL_OFF,      -1)

    // stone armour modified in kirbyshared.asm

    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags

    // Modify Actions            // Action          // Staling ID   // Main ASM                 // Interrupt/Other ASM          // Movement/Physics ASM         // Collision ASM

}
