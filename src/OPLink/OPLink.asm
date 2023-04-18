
// This file contains file inclusions, action edits, and assembly for making Link and variants overpowered.

scope OPLink {
    // Insert Moveset files
    insert FSMASH,"moveset/FORWARD_SMASH.bin"

    // Modify Action Parameters             // Action               // Animation                // Moveset Data             // Flags

    // COPY ELINK
    Character.edit_vanilla_action_parameters(LINK, Action.FSmash,   -1,                         Elink.FSMASH,               -1)

    // COPY JLINK
    Character.edit_vanilla_action_parameters(LINK, Action.UTilt,           -1,                         JLink.UTILT,                -1)
    Character.edit_vanilla_action_parameters(LINK, Action.USmash,          -1,                         JLink.USMASH,               -1)
    Character.edit_vanilla_action_parameters(LINK, Action.AttackAirB,      -1,                         JLink.BAIR,                 -1)
    Character.edit_vanilla_action_parameters(LINK, Action.AttackAirN,      -1,                         JLink.NAIR,                 -1)
    Character.edit_vanilla_action_parameters(LINK, Action.AttackAirF,      -1,                         JLink.FAIR,                 -1)
    Character.edit_vanilla_action_parameters(LINK, Action.AttackAirD,      -1,                         JLink.DAIR,                 -1)
    

    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags

    // Modify Actions            // Action          // Staling ID   // Main ASM                 // Interrupt/Other ASM          // Movement/Physics ASM         // Collision ASM

}
