
// This file contains file inclusions, action edits, and assembly for making this character OP

scope OPLuigi {

    // Insert Moveset files
    insert DASH_ATTACK,"moveset/DASH_ATTACK.bin"
    insert USPECIALAIR,"moveset/USPECIALAIR.bin"

    // Modify Action Parameters                       // Action            // Animation // Moveset Data                 // Flags

    // DASH ATTACK HITBOX FIX
    Character.edit_vanilla_action_parameters(LUIGI,   Action.DashAttack,   -1,          DASH_ATTACK,                    -1)

    // FROM JLUIGI
    Character.edit_vanilla_action_parameters(LUIGI,   Action.ThrowB,       -1,          JLuigi.BTHROW,                  -1)
    Character.edit_vanilla_action_parameters(LUIGI,   0xE1,                -1,          JLuigi.USPECIALGRND,            -1)

    // USP AIR
    Character.edit_vanilla_action_parameters(LUIGI,   0xE2,                -1,          USPECIALAIR,                    -1)

    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags

    // Modify Actions            // Action          // Staling ID   // Main ASM                 // Interrupt/Other ASM          // Movement/Physics ASM         // Collision ASM

    // @ Description
    // Set Luigis fireball duration to be the same as JLuigi
    OS.patch_start(0x1038A0, 0x80188E60)
    dw 90
    OS.patch_end()

}
