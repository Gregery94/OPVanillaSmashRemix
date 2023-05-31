
// This file contains file inclusions, action edits, and assembly for making this character OP

scope OPNess {

    // Insert Moveset files
    insert UTILT, "moveset/UTILT.bin"

    // Modify Action Parameters                             // Action           // Animation    // Moveset Data                 // Flags
    Character.edit_vanilla_action_parameters(NESS, Action.UTilt,           -1,                         UTILT,                            -1)
    Character.edit_vanilla_action_parameters(NESS, Action.DSmash,          -1,                         JNess.DSMASH,                     -1)
    Character.edit_vanilla_action_parameters(NESS, Action.AttackAirU,      -1,                         JNess.UAIR,                       -1)
    Character.edit_vanilla_action_parameters(NESS, Action.USmash,          -1,                         JNess.USMASH,                     -1)
    Character.edit_vanilla_action_parameters(NESS, Action.FSmash,          -1,                         JNess.FSMASH,                     -1)
    Character.edit_vanilla_action_parameters(NESS, 0xEC,                   -1,                         JNess.PKTHUNDER2,                 -1)
    Character.edit_vanilla_action_parameters(NESS, 0xE7,                   -1,                         JNess.PKTHUNDER2,                 -1)

    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags

    // Modify Actions            // Action          // Staling ID   // Main ASM                 // Interrupt/Other ASM          // Movement/Physics ASM         // Collision ASM

}
