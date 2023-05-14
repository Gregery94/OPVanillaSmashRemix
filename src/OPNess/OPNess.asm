
// This file contains file inclusions, action edits, and assembly for making this character OP

scope OPNess {

    // Insert Moveset files

    // Modify Action Parameters                             // Action           // Animation    // Moveset Data                 // Flags
    Character.edit_vanilla_action_parameters(NESS, Action.DSmash,          -1,                         JNess.DSMASH,                     -1)
    Character.edit_vanilla_action_parameters(NESS, Action.AttackAirU,      -1,                         JNess.UAIR,                       -1)
    Character.edit_vanilla_action_parameters(NESS, Action.USmash,          -1,                         JNess.USMASH,                     -1)
    Character.edit_vanilla_action_parameters(NESS, Action.FSmash,          -1,                         JNess.FSMASH,                     -1)
    Character.edit_vanilla_action_parameters(NESS, 0xEC,                   -1,                         JNess.PKTHUNDER2,                 -1)
    Character.edit_vanilla_action_parameters(NESS, 0xE7,                   -1,                         JNess.PKTHUNDER2,                 -1)

    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags

    // Modify Actions            // Action          // Staling ID   // Main ASM                 // Interrupt/Other ASM          // Movement/Physics ASM         // Collision ASM

    // @ Description
    // Ness/Lucas clones will transition to aerial idle after up special
    OS.patch_start(0xCEE60, 0x80154420)
    jal     0x8013F9E0
    OS.patch_end()
}
