// JKirby.asm

// This file contains file inclusions, action edits, and assembly for JKirby.

scope JKirby {
    // Insert Moveset files

    insert DSMASH, "moveset/DSMASH.bin"
    insert USMASH, "moveset/USMASH.bin"
    insert UAIR, "moveset/UAIR.bin"
    insert NEUTRAL2, "moveset/NEUTRAL2.bin"
    insert NEUTRALINF_SUB, "moveset/NEUTRALINF_SUB.bin"
    insert NEUTRALINF, "moveset/NEUTRALINF.bin"
        dw  0x5c000001; Moveset.SUBROUTINE(NEUTRALINF_SUB)
        dw  0x08000006
        dw  0x5c000002; Moveset.SUBROUTINE(NEUTRALINF_SUB)
        dw  0x58000001
        dw  0x0800000b
        dw  0x5c000003; Moveset.SUBROUTINE(NEUTRALINF_SUB)
        dw  0x58000001
        dw  0x08000010
        dw  0x5c000004; Moveset.SUBROUTINE(NEUTRALINF_SUB)
        dw  0x58000001
        dw  0x08000015
        dw  0x5c000005; Moveset.SUBROUTINE(NEUTRALINF_SUB)
        dw  0x58000001
        dw  0x94000000; Moveset.SUBROUTINE(NEUTRALINF_SUB)
        dw  0x58000001; Moveset.GO_TO(NEUTRALINF)
    insert FTHROW_DATA, "moveset/FTHROW_DATA.bin"
    FTHROW:; Moveset.THROW_DATA(FTHROW_DATA); insert "moveset/FTHROW.bin"
    insert NEUTRAL_SPECIAL_START_THROW_DATA, "moveset/NEUTRAL_SPECIAL_START_THROW_DATA.bin"
    NEUTRAL_SPECIAL_START:; Moveset.THROW_DATA(NEUTRAL_SPECIAL_START_THROW_DATA); insert "moveset/NEUTRAL_SPECIAL_START.bin"
    insert FTHROW_IMPACT, "moveset/FTHROW_IMPACT.bin"
    insert DOWN_SPECIAL_FALL, "moveset/DOWN_SPECIAL_FALL.bin"
    insert DOWN_SPECIAL_LANDING, "moveset/DOWN_SPECIAL_LANDING.bin"
    insert DOWN_SPECIAL_FALL_OFF, "moveset/DOWN_SPECIAL_FALL_OFF.bin"



    // Modify Action Parameters              // Action              // Animation                // Moveset Data             // Flags
    Character.edit_action_parameters(JKIRBY, Action.Jab2,           -1,                         NEUTRAL2,                   -1)
    Character.edit_action_parameters(JKIRBY, Action.DSmash,         -1,                         DSMASH,                     -1)
    Character.edit_action_parameters(JKIRBY, Action.USmash,         -1,                         USMASH,                     -1)
    Character.edit_action_parameters(JKIRBY, Action.AttackAirU,     -1,                         UAIR,                       -1)
    Character.edit_action_parameters(JKIRBY, 0xDD,                  -1,                         NEUTRALINF,                 -1)
    Character.edit_action_parameters(JKIRBY, 0xE4,                  -1,                         FTHROW,                     -1)
    Character.edit_action_parameters(JKIRBY, 0xE6,                  -1,                         FTHROW_IMPACT,              -1)
    Character.edit_action_parameters(JKIRBY, 0x10E,                 -1,                         NEUTRAL_SPECIAL_START,      -1)
    Character.edit_action_parameters(JKIRBY, 0x117,                 -1,                         NEUTRAL_SPECIAL_START,      -1)
    Character.edit_action_parameters(JKIRBY, 0x109,                 -1,                         DOWN_SPECIAL_FALL,          -1)
    Character.edit_action_parameters(JKIRBY, 0x10A,                 -1,                         DOWN_SPECIAL_LANDING,       -1)
    Character.edit_action_parameters(JKIRBY, 0x10B,                 -1,                         DOWN_SPECIAL_FALL_OFF,      -1)

    // Add Action Parameters                // Action Name       // Base Action // Animation                    // Moveset Data             // Flags
    Character.add_new_action_params(JKIRBY, GND_NSP_Ground,             0x127,  -1,                             Kirby.GND_NSP_GROUND,       -1)
    Character.add_new_action_params(JKIRBY, GND_NSP_Air,                0x128,  -1,                             Kirby.GND_NSP_AIR,          -1)
    Character.add_new_action_params(JKIRBY, DRM_NSP_Ground,             0xE7,   -1,                             Kirby.DRM_NSP_GROUND,       -1)
    Character.add_new_action_params(JKIRBY, DRM_NSP_Air,                0xE8,   -1,                             Kirby.DRM_NSP_AIR,          -1)
    Character.add_new_action_params(JKIRBY, DSAMUS_Charge,              0xEE,   -1,                             Kirby.DSAMUS_CHARGE,        -1)
    Character.add_new_action_params(JKIRBY, YLINK_NSP_Ground,           0x11F,  -1,                             Kirby.YLINK_NSP,            -1)
    Character.add_new_action_params(JKIRBY, YLINK_NSP_Air,              0x122,  -1,                             Kirby.YLINK_NSP,            -1)
    Character.add_new_action_params(JKIRBY, LUCAS_NSP_Ground,           0xFE,   File.KIRBY_LUCAS_NSP_G,         -1,                         0x40000000)
    Character.add_new_action_params(JKIRBY, LUCAS_NSP_Air,              0xFF,   File.KIRBY_LUCAS_NSP_A,         -1,                         0x00000000)
    Character.add_new_action_params(JKIRBY, WARIO_NSP_Ground,           -1,     File.KIRBY_WARIO_NSP_G,         Kirby.WARIO_NSP_GROUND,     0)
    Character.add_new_action_params(JKIRBY, WARIO_NSP_Air,              -1,     File.KIRBY_WARIO_NSP_A,         Kirby.WARIO_NSP_AIR,        0)
    Character.add_new_action_params(JKIRBY, WARIO_NSP_Recoil_Ground,     -1,    File.KIRBY_WARIO_NSPR_G,        Kirby.WARIO_NSP_RECOIL,     0)
    Character.add_new_action_params(JKIRBY, WARIO_NSP_Recoil_Air,        -1,    File.KIRBY_WARIO_NSPR_A,        Kirby.WARIO_NSP_RECOIL,     0)
    Character.add_new_action_params(JKIRBY, FALCO_NSP_Ground,           0xEB,   File.KIRBY_FALCO_NSP_G,         Kirby.FALCO_NSP_GROUND,     0)
    Character.add_new_action_params(JKIRBY, FALCO_NSP_Air,              0xEC,   File.KIRBY_FALCO_NSP_A,         Kirby.FALCO_NSP_AIR,        0)
    Character.add_new_action_params(JKIRBY, BOWSER_NSP_Ground,          0x129,  File.KIRBY_BOWSER_NSP,          Kirby.BOWSER_NSP,           0x1D000000)
    Character.add_new_action_params(JKIRBY, BOWSER_NSP_Air,             0x12C,  File.KIRBY_BOWSER_NSP,          Kirby.BOWSER_NSP,           0x1D000000)
    Character.add_new_action_params(JKIRBY, PIANO_NSP_Ground,           0xE7,   File.KIRBY_PIANO_NSP_G,         Kirby.PIANO_NSP,            0x1C000000)
    Character.add_new_action_params(JKIRBY, PIANO_NSP_Air,              0xE8,   File.KIRBY_PIANO_NSP_A,         Kirby.PIANO_NSP,            0x1C000000)
    Character.add_new_action_params(JKIRBY, WOLF_NSP_Ground,            0xE7,   File.KIRBY_WOLF_NSP_G,          Kirby.WOLF_NSP_GROUND,      -1)
    Character.add_new_action_params(JKIRBY, WOLF_NSP_Air,               0xE8,   File.KIRBY_WOLF_NSP_A,          Kirby.WOLF_NSP_AIR,         -1)
    Character.add_new_action_params(JKIRBY, CONKER_NSP_Ground_Begin,    -1,     File.KIRBY_CONKER_NSPG_BEGIN,   Kirby.CONKER_NSP_BEGIN,     0)
    Character.add_new_action_params(JKIRBY, CONKER_NSP_Ground_Wait,     -1,     File.KIRBY_CONKER_NSPG_WAIT,    Kirby.CONKER_NSP_WAIT,      0)
    Character.add_new_action_params(JKIRBY, CONKER_NSP_Ground_End,      -1,     File.KIRBY_CONKER_NSPG_END,     Kirby.CONKER_NSP_END,       0)
    Character.add_new_action_params(JKIRBY, CONKER_NSP_Air_Begin,       -1,     File.KIRBY_CONKER_NSPA_BEGIN,   Kirby.CONKER_NSP_BEGIN,     0)
    Character.add_new_action_params(JKIRBY, CONKER_NSP_Air_Wait,        -1,     File.KIRBY_CONKER_NSPA_WAIT,    Kirby.CONKER_NSP_WAIT,      0)
    Character.add_new_action_params(JKIRBY, CONKER_NSP_Air_End,         -1,     File.KIRBY_CONKER_NSPA_END,     Kirby.CONKER_NSP_END,       0)
    Character.add_new_action_params(JKIRBY, MTWO_NSP_Ground_Begin,      -1,     File.KIRBY_MTWO_NSPG_BEGIN,     Kirby.MTWO_NSPG_BEGIN,      0x10000000)
    Character.add_new_action_params(JKIRBY, MTWO_NSP_Ground_Charge,     -1,     File.KIRBY_MTWO_NSPG_CHARGE,    Kirby.MTWO_NSPG_CHARGE,     0x10000000)
    Character.add_new_action_params(JKIRBY, MTWO_NSP_Ground_Shoot,      -1,     File.KIRBY_MTWO_NSPG_SHOOT,     Kirby.MTWO_NSPG_SHOOT,      0x10000000)
    Character.add_new_action_params(JKIRBY, MTWO_NSP_Air_Begin,         -1,     File.KIRBY_MTWO_NSPA_BEGIN,     Kirby.MTWO_NSPA_BEGIN,      0x10000000)
    Character.add_new_action_params(JKIRBY, MTWO_NSP_Air_Charge,        -1,     File.KIRBY_MTWO_NSPA_CHARGE,    Kirby.MTWO_NSPA_CHARGE,     0x10000000)
    Character.add_new_action_params(JKIRBY, MTWO_NSP_Air_Shoot,         -1,     File.KIRBY_MTWO_NSPA_SHOOT,     Kirby.MTWO_NSPA_SHOOT,      0x10000000)
    Character.add_new_action_params(JKIRBY, MARTH_NSPG_1,               -1,     File.KIRBY_MARTH_NSPG_1,        Kirby.MARTH_NSP_1,          0)
    Character.add_new_action_params(JKIRBY, MARTH_NSPG_2_High,          -1,     File.KIRBY_MARTH_NSPG_2_HI,     Kirby.MARTH_NSP_2_HIGH,     0)
    Character.add_new_action_params(JKIRBY, MARTH_NSPG_2_Mid,           -1,     File.KIRBY_MARTH_NSPG_2,        Kirby.MARTH_NSP_2,          0)
    Character.add_new_action_params(JKIRBY, MARTH_NSPG_2_Low,           -1,     File.KIRBY_MARTH_NSPG_2_LO,     Kirby.MARTH_NSP_2_LOW,      0)
    Character.add_new_action_params(JKIRBY, MARTH_NSPG_3_High,          -1,     File.KIRBY_MARTH_NSPG_3_HI,     Kirby.MARTH_NSP_3_HIGH,     0x40000000)
    Character.add_new_action_params(JKIRBY, MARTH_NSPG_3_Mid,           -1,     File.KIRBY_MARTH_NSPG_3,        Kirby.MARTH_NSP_3,          0x40000000)
    Character.add_new_action_params(JKIRBY, MARTH_NSPG_3_Low,           -1,     File.KIRBY_MARTH_NSPG_3_LO,     Kirby.MARTH_NSP_3_LOW,      0x40000000)
    Character.add_new_action_params(JKIRBY, MARTH_NSPA_1,               -1,     File.KIRBY_MARTH_NSPA_1,        Kirby.MARTH_NSP_1,          0)
    Character.add_new_action_params(JKIRBY, MARTH_NSPA_2_High,          -1,     File.KIRBY_MARTH_NSPA_2_HI,     Kirby.MARTH_NSP_2_HIGH,     0)
    Character.add_new_action_params(JKIRBY, MARTH_NSPA_2_Mid,           -1,     File.KIRBY_MARTH_NSPA_2,        Kirby.MARTH_NSP_2,          0)
    Character.add_new_action_params(JKIRBY, MARTH_NSPA_2_Low,           -1,     File.KIRBY_MARTH_NSPA_2_LO,     Kirby.MARTH_NSP_2_LOW,      0)
    Character.add_new_action_params(JKIRBY, MARTH_NSPA_3_High,          -1,     File.KIRBY_MARTH_NSPA_3_HI,     Kirby.MARTH_NSP_3_HIGH,     0)
    Character.add_new_action_params(JKIRBY, MARTH_NSPA_3_Mid,           -1,     File.KIRBY_MARTH_NSPA_3,        Kirby.MARTH_NSP_3,          0)
    Character.add_new_action_params(JKIRBY, MARTH_NSPA_3_Low,           -1,     File.KIRBY_MARTH_NSPA_3_LO,     Kirby.MARTH_NSP_3_LOW,      0)
    Character.add_new_action_params(JKIRBY, SONIC_NSP_Begin,            -1,     File.KIRBY_SONIC_NSP_LOOP,      Kirby.SONIC_NSP_CHARGE,     0x10000000)
    Character.add_new_action_params(JKIRBY, SONIC_NSP_Move,             -1,     File.KIRBY_SONIC_NSP_LOOP,      Kirby.SONIC_NSP_MOVE,       0x10000000)
    Character.add_new_action_params(JKIRBY, SONIC_NSP_Locked_Move,      -1,     File.KIRBY_SONIC_NSP_LOOP,      Kirby.SONIC_NSP_MOVE,       0x10000000)
    Character.add_new_action_params(JKIRBY, SONIC_NSP_Ground_End,       -1,     File.KIRBY_SONIC_NSPG_END_F,    0x80000000,                 0)
    Character.add_new_action_params(JKIRBY, SONIC_NSP_Air_End,          -1,     File.KIRBY_SONIC_NSPA_END_F,    0x80000000,                 0)
    Character.add_new_action_params(JKIRBY, SONIC_NSP_Ground_Recoil,    -1,     File.KIRBY_SONIC_NSPG_END_B,    0x80000000,                 0)
    Character.add_new_action_params(JKIRBY, SONIC_NSP_Air_Recoil,       -1,     File.KIRBY_SONIC_NSPA_END_B,    0x80000000,                 0)
    Character.add_new_action_params(JKIRBY, SONIC_NSP_Bounce,           -1,     File.KIRBY_SONIC_NSPA_END_F,    Kirby.SONIC_NSP_BOUNCE,     0)
    Character.add_new_action_params(JKIRBY, SHEIK_NSP_Ground_Begin,     -1,     File.KIRBY_SHEIK_NSPG_START,    Kirby.SHEIK_NSP_BEGIN,      0)
    Character.add_new_action_params(JKIRBY, SHEIK_NSP_Ground_Charge,    -1,     File.KIRBY_SHEIK_NSPG_CHARGE,   Kirby.SHEIK_NSP_CHARGE,     0)
    Character.add_new_action_params(JKIRBY, SHEIK_NSP_Ground_Shoot,     -1,     File.KIRBY_SHEIK_NSPG_SHOOT,    Kirby.SHEIK_NSP_SHOOT,      0)
    Character.add_new_action_params(JKIRBY, SHEIK_NSP_Air_Begin,        -1,     File.KIRBY_SHEIK_NSPA_START,    Kirby.SHEIK_NSP_BEGIN,      0)
    Character.add_new_action_params(JKIRBY, SHEIK_NSP_Air_Charge,       -1,     File.KIRBY_SHEIK_NSPA_CHARGE,   Kirby.SHEIK_NSP_CHARGE,     0)
    Character.add_new_action_params(JKIRBY, SHEIK_NSP_Air_Shoot,        -1,     File.KIRBY_SHEIK_NSPA_SHOOT,    Kirby.SHEIK_NSP_SHOOT,      0)
    Character.add_new_action_params(JKIRBY, DEDEDE_NSP_BEGIN_GROUND,   	-1,		File.KIRBY_NSP_BEGIN,           Kirby.DEDEDE_NSP_BEGIN,       0x1C000000)
    Character.add_new_action_params(JKIRBY, DEDEDE_NSP_LOOP_GROUND,    	-1,		File.KIRBY_NSP_LOOP,            Kirby.DEDEDE_NSP_INHALE,    	0x1C000000)
    Character.add_new_action_params(JKIRBY, DEDEDE_NSP_PULL_GROUND,    	-1,		File.KIRBY_NSP_LOOP,            Kirby.DEDEDE_NSP_PULL,    	0x1C000000)
    Character.add_new_action_params(JKIRBY, DEDEDE_NSP_SWALLOW_GROUND, 	-1,		File.KIRBY_NSP_SWALLOW,         Kirby.DEDEDE_NSP_SWALLOW,   	0x1C000000)
    Character.add_new_action_params(JKIRBY, DEDEDE_NSP_IDLE_GROUND,    	-1,		File.KIRBY_NSP_IDLE,   	        Kirby.DEDEDE_NSP_SWALLOW,   	0x0C000000)
    Character.add_new_action_params(JKIRBY, DEDEDE_NSP_SPIT_GROUND,    	-1,		File.KIRBY_NSP_SPIT,            Kirby.DEDEDE_NSP_SPIT,      	0x4C000000)
    Character.add_new_action_params(JKIRBY, DEDEDE_NSP_TURN_GROUND,    	-1,		File.KIRBY_NSP_TURN,            0x80000000,             0x00000000)
    Character.add_new_action_params(JKIRBY, DEDEDE_NSP_END_GROUND,      -1,		File.KIRBY_NSP_END,             0x80000000,             0x1C000000)
    Character.add_new_action_params(JKIRBY, DEDEDE_NSP_BEGIN_AIR,       -1,		File.KIRBY_NSP_BEGIN,           Kirby.DEDEDE_NSP_BEGIN,       0x1C000000)
    Character.add_new_action_params(JKIRBY, DEDEDE_NSP_LOOP_AIR,        -1,		File.KIRBY_NSP_LOOP,            Kirby.DEDEDE_NSP_INHALE,      0x1C000000)
    Character.add_new_action_params(JKIRBY, DEDEDE_NSP_PULL_AIR,        -1,		File.KIRBY_NSP_LOOP,            Kirby.DEDEDE_NSP_PULL,        0x1C000000)
    Character.add_new_action_params(JKIRBY, DEDEDE_NSP_SWALLOW_AIR,     -1,		File.KIRBY_NSP_SWALLOW,         Kirby.DEDEDE_NSP_SWALLOW,     0x1C000000)
    Character.add_new_action_params(JKIRBY, DEDEDE_NSP_FALL,            -1,		File.KIRBY_NSP_IDLE, 	        Kirby.DEDEDE_NSP_SWALLOW,     0x0C000000)
    Character.add_new_action_params(JKIRBY, DEDEDE_NSP_SPIT_AIR,        -1,		File.KIRBY_NSP_SPIT,            Kirby.DEDEDE_NSP_SPIT,        0x4C000000)
    Character.add_new_action_params(JKIRBY, DEDEDE_NSP_TURN_AIR,        -1,		File.KIRBY_NSP_IDLE, 	        0x80000000,             0x00000000)
    Character.add_new_action_params(JKIRBY, DEDEDE_NSP_END_AIR,         -1,		File.KIRBY_NSP_END,             0x80000000,             0x1C000000)
    Character.add_new_action_params(JKIRBY, DEDEDE_NSP_WALK_1,          -1,		File.KIRBY_DEDEDE_NSP_INHALED_WALK,	0x80000000,         0)
    Character.add_new_action_params(JKIRBY, DEDEDE_NSP_WALK_2,          -1,		File.KIRBY_DEDEDE_NSP_INHALED_WALK,	0x80000000,         0)
    Character.add_new_action_params(JKIRBY, DEDEDE_NSP_WALK_3,          -1,		File.KIRBY_DEDEDE_NSP_INHALED_WALK,	0x80000000,         0)
    Character.add_new_action_params(JKIRBY, MARINA_NSPG,                -1,     File.KIRBY_MARINA_NSPG,         Kirby.MARINA_NSP,           0x10000000)
    Character.add_new_action_params(JKIRBY, MARINA_NSPGPull,            -1,     File.KIRBY_MARINA_NSPG_PULL,    Kirby.MARINA_NSP_PULL,      0x10000000)
    Character.add_new_action_params(JKIRBY, MARINA_NSPGThrow,           -1,     File.KIRBY_MARINA_NSPG_THROW,   Kirby.MARINA_NSPG_THROW,    0x10000000)
    Character.add_new_action_params(JKIRBY, MARINA_NSPGThrowU,          -1,     File.KIRBY_MARINA_NSPG_THROW_U, Kirby.MARINA_NSPG_THROWU,   0x10000000)
    Character.add_new_action_params(JKIRBY, MARINA_NSPGThrowD,          -1,     File.KIRBY_MARINA_NSPG_THROW_D, Kirby.MARINA_NSPG_THROWD,   0x10000000)
    Character.add_new_action_params(JKIRBY, MARINA_NSPA,                -1,     File.KIRBY_MARINA_NSPA,         Kirby.MARINA_NSP,           0x10000000)
    Character.add_new_action_params(JKIRBY, MARINA_NSPAPull,            -1,     File.KIRBY_MARINA_NSPA_PULL,    Kirby.MARINA_NSP_PULL,      0x10000000)
    Character.add_new_action_params(JKIRBY, MARINA_NSPAThrow,           -1,     File.KIRBY_MARINA_NSPA_THROW,   Kirby.MARINA_NSPA_THROW,    0x10000000)
    Character.add_new_action_params(JKIRBY, MARINA_NSPAThrowU,          -1,     File.KIRBY_MARINA_NSPA_THROW_U, Kirby.MARINA_NSPA_THROWU,   0x10000000)
    Character.add_new_action_params(JKIRBY, MARINA_NSPAThrowD,          -1,     File.KIRBY_MARINA_NSPA_THROW_D, Kirby.MARINA_NSPA_THROWD,   0x10000000)


    // Add Actions                   // Action Name      // Base Action //Parameters                       // Staling ID    // Main ASM                 // Interrupt/Other ASM              // Movement/Physics ASM     // Collision ASM
    Character.add_new_action(JKIRBY, GND_NSP_Ground,            0x127,  ActionParams.GND_NSP_Ground,            -1,         -1,                         -1,                                 -1,                         -1)
    Character.add_new_action(JKIRBY, GND_NSP_Air,               0x128,  ActionParams.GND_NSP_Air,               -1,         -1,                         -1,                                 -1,                         -1)
    Character.add_new_action(JKIRBY, DRM_NSP_Ground,            0xE7,   ActionParams.DRM_NSP_Ground,            -1,         -1,                         -1,                                 -1,                         -1)
    Character.add_new_action(JKIRBY, DRM_NSP_Air,               0xE8,   ActionParams.DRM_NSP_Air,               -1,         -1,                         -1,                                 -1,                         -1)
    Character.add_new_action(JKIRBY, DSAMUS_Charge,             0xEE,   ActionParams.DSAMUS_Charge,             -1,         -1,                         -1,                                 -1,                         -1)
    Character.add_new_action(JKIRBY, YLINK_NSP_Ground,          0x11F,  ActionParams.YLINK_NSP_Ground,          -1,         -1,                         -1,                                 -1,                         -1)
    Character.add_new_action(JKIRBY, YLINK_NSP_Air,             0x122,  ActionParams.YLINK_NSP_Air,             -1,         -1,                         -1,                                 -1,                         -1)
    Character.add_new_action(JKIRBY, LUCAS_NSP_Ground,          0xFE,   ActionParams.LUCAS_NSP_Ground,          -1,         -1,                         -1,                                 0x800D8CCC,                 -1)
    Character.add_new_action(JKIRBY, LUCAS_NSP_Air,             0xFF,   ActionParams.LUCAS_NSP_Air,             -1,         -1,                         LucasNSP.air_move_,                 -1,                         -1)
    Character.add_new_action(JKIRBY, WARIO_NSP_Ground,          -1,     ActionParams.WARIO_NSP_Ground,          0x12,       0x800D94C4,                 WarioNSP.ground_move_,              WarioNSP.ground_physics_,   WarioNSP.ground_collision_)
    Character.add_new_action(JKIRBY, WARIO_NSP_Air,             -1,     ActionParams.WARIO_NSP_Air,             0x12,       0x800D94E8,                 WarioNSP.air_move_,                 WarioNSP.air_physics_,      WarioNSP.air_collision_)
    Character.add_new_action(JKIRBY, WARIO_NSP_Recoil_Ground,   -1,     ActionParams.WARIO_NSP_Recoil_Ground,   0x12,       0x800D94C4,                 0,                                  0x800D8BB4,                 WarioNSP.recoil_ground_collision_)
    Character.add_new_action(JKIRBY, WARIO_NSP_Recoil_Air,      -1,     ActionParams.WARIO_NSP_Recoil_Air,      0x12,       0x800D94E8,                 WarioNSP.recoil_move_,              WarioNSP.recoil_physics_,   WarioNSP.recoil_air_collision_)
    Character.add_new_action(JKIRBY, FALCO_NSP_Ground,          0xEB,   ActionParams.FALCO_NSP_Ground,          -1,         0x800D94C4,                 Phantasm.ground_subroutine_,        -1,                         -1)
    Character.add_new_action(JKIRBY, FALCO_NSP_Air,             0xEC,   ActionParams.FALCO_NSP_Air,             -1,         0x8015C750,                 Phantasm.air_subroutine_,           Phantasm.air_physics_,      Phantasm.air_collision_)
    Character.add_new_action(JKIRBY, BOWSER_NSP_Ground,         0x129,  ActionParams.BOWSER_NSP_Ground,         -1,         BowserNSP.main_,            -1,                                 0x800D8BB4,                 0x800DDF44)
    Character.add_new_action(JKIRBY, BOWSER_NSP_Air,            0x12C,  ActionParams.BOWSER_NSP_Air,            -1,         BowserNSP.main_,            -1,                                 0x800D91EC,                 BowserNSP.air_collision_)
    Character.add_new_action(JKIRBY, PIANO_NSP_Ground,          0xE7,   ActionParams.PIANO_NSP_Ground,          -1,         -1,                         -1,                                 -1,                         -1)
    Character.add_new_action(JKIRBY, PIANO_NSP_Air,             0xE8,   ActionParams.PIANO_NSP_Air,             -1,         -1,                         -1,                                 0x800D91EC,                 -1)
    Character.add_new_action(JKIRBY, WOLF_NSP_Ground,           0xEB,   ActionParams.WOLF_NSP_Ground,           -1,         WolfNSP.main,               -1,                                 -1,                         -1)
    Character.add_new_action(JKIRBY, WOLF_NSP_Air,              0xEC,   ActionParams.WOLF_NSP_Air,              -1,         WolfNSP.main,               -1,                                 -1,                         WolfNSP.air_collision_)
    Character.add_new_action(JKIRBY, CONKER_NSP_Ground_Begin,   -1,     ActionParams.CONKER_NSP_Ground_Begin,   0x12,       ConkerNSP.ground_begin_main_, 0,                                0x800D8BB4,                 ConkerNSP.ground_collision_)
    Character.add_new_action(JKIRBY, CONKER_NSP_Ground_Wait,    -1,     ActionParams.CONKER_NSP_Ground_Wait,    0x12,       ConkerNSP.ground_wait_main_,  0,                                0x800D8BB4,                 ConkerNSP.ground_collision_)
    Character.add_new_action(JKIRBY, CONKER_NSP_Ground_End,     -1,     ActionParams.CONKER_NSP_Ground_End,     0x12,       ConkerNSP.end_main_,          0,                                0x800D8BB4,                 ConkerNSP.ground_collision_)
    Character.add_new_action(JKIRBY, CONKER_NSP_Air_Begin,      -1,     ActionParams.CONKER_NSP_Air_Begin,      0x12,       ConkerNSP.air_begin_main_,    0,                                0x800D90E0,                 ConkerNSP.air_collision_)
    Character.add_new_action(JKIRBY, CONKER_NSP_Air_Wait,       -1,     ActionParams.CONKER_NSP_Air_Wait,       0x12,       ConkerNSP.air_wait_main_,     0,                                0x800D90E0,                 ConkerNSP.air_collision_)
    Character.add_new_action(JKIRBY, CONKER_NSP_Air_End,        -1,     ActionParams.CONKER_NSP_Air_End,        0x12,       ConkerNSP.end_main_,          0,                                0x800D90E0,                 ConkerNSP.air_collision_end_)
    Character.add_new_action(JKIRBY, MTWO_NSP_Ground_Begin,     -1,     ActionParams.MTWO_NSP_Ground_Begin,     0x12,       MewtwoNSP.begin_main_,        0x8015D464,                         0x800D8BB4,               MewtwoNSP.kirby_ground_begin_collision_)
    Character.add_new_action(JKIRBY, MTWO_NSP_Ground_Charge,    -1,     ActionParams.MTWO_NSP_Ground_Charge,    0x12,       MewtwoNSP.kirby_charge_main_, MewtwoNSP.ground_charge_interrupt_, 0x800D8BB4,               MewtwoNSP.kirby_ground_charge_collision_)
    Character.add_new_action(JKIRBY, MTWO_NSP_Ground_Shoot,     -1,     ActionParams.MTWO_NSP_Ground_Shoot,     0x12,       MewtwoNSP.kirby_shoot_main_,  0,                                  0x800D8BB4,               MewtwoNSP.kirby_ground_shoot_collision_)
    Character.add_new_action(JKIRBY, MTWO_NSP_Air_Begin,        -1,     ActionParams.MTWO_NSP_Air_Begin,        0x12,       MewtwoNSP.begin_main_,        0x8015D464,                         0x800D90E0,               MewtwoNSP.air_begin_collision_)
    Character.add_new_action(JKIRBY, MTWO_NSP_Air_Charge,       -1,     ActionParams.MTWO_NSP_Air_Charge,       0x12,       MewtwoNSP.kirby_charge_main_, MewtwoNSP.air_charge_interrupt_,    0x800D91EC,               MewtwoNSP.air_charge_collision_)
    Character.add_new_action(JKIRBY, MTWO_NSP_Air_Shoot,        -1,     ActionParams.MTWO_NSP_Air_Shoot,        0x12,       MewtwoNSP.kirby_shoot_main_,  0,                                  0x800D91EC,               MewtwoNSP.air_shoot_collision_)
    Character.add_new_action(JKIRBY, MARTH_NSPG_1,              -1,     ActionParams.MARTH_NSPG_1,              0x12,       MarthNSP.ground_main_,      0,                                  0x800D8CCC,                 MarthNSP.kirby_ground_collision_)
    Character.add_new_action(JKIRBY, MARTH_NSPG_2_High,         -1,     ActionParams.MARTH_NSPG_2_High,         0x12,       MarthNSP.ground_main_,      0,                                  0x800D8CCC,                 MarthNSP.kirby_ground_collision_)
    Character.add_new_action(JKIRBY, MARTH_NSPG_2_Mid,          -1,     ActionParams.MARTH_NSPG_2_Mid,          0x12,       MarthNSP.ground_main_,      0,                                  0x800D8CCC,                 MarthNSP.kirby_ground_collision_)
    Character.add_new_action(JKIRBY, MARTH_NSPG_2_Low,          -1,     ActionParams.MARTH_NSPG_2_Low,          0x12,       MarthNSP.ground_main_,      0,                                  0x800D8CCC,                 MarthNSP.kirby_ground_collision_)
    Character.add_new_action(JKIRBY, MARTH_NSPG_3_High,         -1,     ActionParams.MARTH_NSPG_3_High,         0x12,       MarthNSP.ground_main_,      0,                                  0x800D8CCC,                 MarthNSP.kirby_ground_collision_)
    Character.add_new_action(JKIRBY, MARTH_NSPG_3_Mid,          -1,     ActionParams.MARTH_NSPG_3_Mid,          0x12,       MarthNSP.ground_main_,      0,                                  0x800D8CCC,                 MarthNSP.kirby_ground_collision_)
    Character.add_new_action(JKIRBY, MARTH_NSPG_3_Low,          -1,     ActionParams.MARTH_NSPG_3_Low,          0x12,       MarthNSP.ground_main_,      0,                                  0x800D8CCC,                 MarthNSP.kirby_ground_collision_)
    Character.add_new_action(JKIRBY, MARTH_NSPA_1,              -1,     ActionParams.MARTH_NSPA_1,              0x12,       MarthNSP.air_main_,         0,                                  0x800D91EC,                 MarthNSP.air_collision_)
    Character.add_new_action(JKIRBY, MARTH_NSPA_2_High,         -1,     ActionParams.MARTH_NSPA_2_High,         0x12,       MarthNSP.air_main_,         0,                                  0x800D91EC,                 MarthNSP.air_collision_)
    Character.add_new_action(JKIRBY, MARTH_NSPA_2_Mid,          -1,     ActionParams.MARTH_NSPA_2_Mid,          0x12,       MarthNSP.air_main_,         0,                                  0x800D91EC,                 MarthNSP.air_collision_)
    Character.add_new_action(JKIRBY, MARTH_NSPA_2_Low,          -1,     ActionParams.MARTH_NSPA_2_Low,          0x12,       MarthNSP.air_main_,         0,                                  0x800D91EC,                 MarthNSP.air_collision_)
    Character.add_new_action(JKIRBY, MARTH_NSPA_3_High,         -1,     ActionParams.MARTH_NSPA_3_High,         0x12,       MarthNSP.air_main_,         0,                                  0x800D91EC,                 MarthNSP.air_collision_)
    Character.add_new_action(JKIRBY, MARTH_NSPA_3_Mid,          -1,     ActionParams.MARTH_NSPA_3_Mid,          0x12,       MarthNSP.air_main_,         0,                                  0x800D91EC,                 MarthNSP.air_collision_)
    Character.add_new_action(JKIRBY, MARTH_NSPA_3_Low,          -1,     ActionParams.MARTH_NSPA_3_Low,          0x12,       MarthNSP.air_main_,         0,                                  0x800D91EC,                 MarthNSP.air_collision_)
    Character.add_new_action(JKIRBY, SONIC_NSP_Begin,           -1,     ActionParams.SONIC_NSP_Begin,           0x12,       SonicNSP.begin_main_,       0,                                  0,                          0x800DE6B0)
    Character.add_new_action(JKIRBY, SONIC_NSP_Move,            -1,     ActionParams.SONIC_NSP_Move,            0x12,       SonicNSP.move_main_,        0,                                  SonicNSP.move_physics_,     SonicNSP.move_collision_)
    Character.add_new_action(JKIRBY, SONIC_NSP_Locked_Move,     -1,     ActionParams.SONIC_NSP_Locked_Move,     0x12,       SonicNSP.move_main_,        0,                                  SonicNSP.move_physics_,     SonicNSP.move_collision_)
    Character.add_new_action(JKIRBY, SONIC_NSP_Ground_End,      -1,     ActionParams.SONIC_NSP_Ground_End,      0x12,       0x800D94C4,                 0,                                  0x800D8BB4,                 SonicNSP.ground_end_collision_)
    Character.add_new_action(JKIRBY, SONIC_NSP_Air_End,         -1,     ActionParams.SONIC_NSP_Air_End,         0x12,       0x800D94E8,                 0,                                  0x800D91EC,                 SonicNSP.air_end_collision_)
    Character.add_new_action(JKIRBY, SONIC_NSP_Ground_Recoil,   -1,     ActionParams.SONIC_NSP_Ground_Recoil,   0x12,       0x800D94C4,                 0,                                  0x800D8BB4,                 SonicNSP.ground_recoil_collision_)
    Character.add_new_action(JKIRBY, SONIC_NSP_Air_Recoil,      -1,     ActionParams.SONIC_NSP_Air_Recoil,      0x12,       0x800D94E8,                 0,                                  0x800D91EC,                 SonicNSP.air_recoil_collision_)
    Character.add_new_action(JKIRBY, SONIC_NSP_Bounce,          -1,     ActionParams.SONIC_NSP_Bounce,          0x12,       0x800D94E8,                 0,                                  0x800D91EC,                 0x800DE99C)
    Character.add_new_action(JKIRBY, SHEIK_NSP_Ground_Begin,    -1,     ActionParams.SHEIK_NSP_Ground_Begin,    0x12,       SheikNSP.begin_main_,       0x8015D464,                         0x800D8BB4,                 SheikNSP.kirby_ground_begin_collision_) 
    Character.add_new_action(JKIRBY, SHEIK_NSP_Ground_Charge,   -1,     ActionParams.SHEIK_NSP_Ground_Charge,   0x12,       SheikNSP.charge_main_,      SheikNSP.ground_charge_interrupt_,  0x800D8BB4,                 SheikNSP.kirby_ground_charge_collision_)
    Character.add_new_action(JKIRBY, SHEIK_NSP_Ground_Shoot,    -1,     ActionParams.SHEIK_NSP_Ground_Shoot,    0x12,       SheikNSP.shoot_main_,       0,                                  0x800D8BB4,                 SheikNSP.kirby_ground_shoot_collision_) 
    Character.add_new_action(JKIRBY, SHEIK_NSP_Air_Begin,       -1,     ActionParams.SHEIK_NSP_Air_Begin,       0x12,       SheikNSP.begin_main_,       0x8015D464,                         0x800D90E0,                 SheikNSP.air_begin_collision_)    
    Character.add_new_action(JKIRBY, SHEIK_NSP_Air_Charge,      -1,     ActionParams.SHEIK_NSP_Air_Charge,      0x12,       SheikNSP.charge_main_,      SheikNSP.air_charge_interrupt_,     0x800D91EC,                 SheikNSP.air_charge_collision_)   
    Character.add_new_action(JKIRBY, SHEIK_NSP_Air_Shoot,       -1,     ActionParams.SHEIK_NSP_Air_Shoot,       0x12,       SheikNSP.shoot_main_,       0,                                  0x800D91EC,                 SheikNSP.air_shoot_collision_) 
    Character.add_new_action(JKIRBY, DEDEDE_NSP_BEGIN_GROUND,   -1,     ActionParams.DEDEDE_NSP_BEGIN_GROUND,	0x12,		DededeNSP.ground_begin_main_,	0,                               	0x800D8BB4, 			0x80162750)
    Character.add_new_action(JKIRBY, DEDEDE_NSP_LOOP_GROUND,    -1,     ActionParams.DEDEDE_NSP_LOOP_GROUND,	0x12,		0x8016201C,                 	0x80162468,                      	0x800D8BB4, 			DededeNSP.inhale_loop_ground_to_air_check_)
    Character.add_new_action(JKIRBY, DEDEDE_NSP_PULL_GROUND,    -1,     ActionParams.DEDEDE_NSP_PULL_GROUND,	0x12,		0x80162078,                 	0,                               	0x800D8BB4, 			0x801627BC)
    Character.add_new_action(JKIRBY, DEDEDE_NSP_SWALLOW_GROUND, -1,     ActionParams.DEDEDE_NSP_SWALLOW_GROUND, 0x12,		0x80162214,                 	0,                               	0x800D8BB4, 			0x801627E0)
    Character.add_new_action(JKIRBY, DEDEDE_NSP_IDLE_GROUND,    -1,     ActionParams.DEDEDE_NSP_IDLE_GROUND,    0x12,		0,                   			DededeNSP.ground_idle_interrupt_,	0x800D8BB4, 			0x80162828)
    Character.add_new_action(JKIRBY, DEDEDE_NSP_SPIT_GROUND,    -1,     ActionParams.DEDEDE_NSP_SPIT_GROUND,	0x12,		DededeNSP.ground_spit_main_,	0,                               	0x800D8C14, 			0x80162804)
    Character.add_new_action(JKIRBY, DEDEDE_NSP_TURN_GROUND,    -1,     ActionParams.DEDEDE_NSP_TURN_GROUND,	0x12,		0x801621CC,                 	0,                               	0x800D8BB4, 			0x8016284C)
    Character.add_new_action(JKIRBY, DEDEDE_NSP_END_GROUND,     -1,     ActionParams.DEDEDE_NSP_END_GROUND,  	0x12,		0x800D94C4,            			0,                               	0x800D8BB4, 			0x80162798)
    Character.add_new_action(JKIRBY, DEDEDE_NSP_BEGIN_AIR,      -1,     ActionParams.DEDEDE_NSP_BEGIN_AIR,   	0x12,		DededeNSP.air_begin_main_,  	0,                       			0x800D91EC, 			0x80162894)
    Character.add_new_action(JKIRBY, DEDEDE_NSP_LOOP_AIR,       -1,     ActionParams.DEDEDE_NSP_LOOP_AIR,    	0x12,		0x8016201C,            			0x80162498,                      	0x800D91EC, 			DededeNSP.inhale_loop_air_to_ground_check_)
    Character.add_new_action(JKIRBY, DEDEDE_NSP_PULL_AIR,       -1,     ActionParams.DEDEDE_NSP_PULL_AIR,    	0x12,		0x80162078,            			0,                               	0x800D91EC, 			0x80162900)
    Character.add_new_action(JKIRBY, DEDEDE_NSP_SWALLOW_AIR,    -1,     ActionParams.DEDEDE_NSP_SWALLOW_AIR, 	0x12,		0x80162214,            			0,                               	0x800D91EC, 			0x80162924)
    Character.add_new_action(JKIRBY, DEDEDE_NSP_FALL,           -1,     ActionParams.DEDEDE_NSP_FALL,        	0x12,		0,            					DededeNSP.air_fall_interrupt_,   	0x800D91EC, 			0x8016296C)
    Character.add_new_action(JKIRBY, DEDEDE_NSP_SPIT_AIR,       -1,     ActionParams.DEDEDE_NSP_SPIT_AIR,    	0x12,		DededeNSP.air_spit_main_, 		0,	                              	0x800D93E4, 			0x80162948)
    Character.add_new_action(JKIRBY, DEDEDE_NSP_TURN_AIR,       -1,     ActionParams.DEDEDE_NSP_TURN_AIR,    	0x12,		0x801621F0,            			0,                               	0x800D91EC, 			0x80162990)
    Character.add_new_action(JKIRBY, DEDEDE_NSP_END_AIR,        -1,     ActionParams.DEDEDE_NSP_END_AIR,     	0x12,		0x800D94E8,            			0,                               	0x800D91EC, 			0x801628DC)
    Character.add_new_action(JKIRBY, DEDEDE_NSP_WALK_1,         -1,     ActionParams.DEDEDE_NSP_WALK_1,      	0x12,		0,            			 		DededeNSP.ground_walk_interrupt_, 	0x8013E548, 			DededeNSP.ground_walk_collision_)
    Character.add_new_action(JKIRBY, DEDEDE_NSP_WALK_2,         -1,     ActionParams.DEDEDE_NSP_WALK_2,      	0x12,		0,            			 		DededeNSP.ground_walk_interrupt_, 	0x8013E548, 			DededeNSP.ground_walk_collision_)
    Character.add_new_action(JKIRBY, DEDEDE_NSP_WALK_3,         -1,     ActionParams.DEDEDE_NSP_WALK_3,      	0x12,		0,            			 		DededeNSP.ground_walk_interrupt_, 	0x8013E548, 			DededeNSP.ground_walk_collision_)
    Character.add_new_action(JKIRBY, MARINA_NSPG,               -1,     ActionParams.MARINA_NSPG,              0x12,       0x800D94C4,                     0,                              MarinaNSP.ground_physics_,    MarinaNSP.ground_collision_)
    Character.add_new_action(JKIRBY, MARINA_NSPGPull,           -1,     ActionParams.MARINA_NSPGPull,          0x12,       MarinaNSP.ground_pull_main_,    0,                              0x800D8BB4,                   MarinaNSP.grab_ground_collision_)
    Character.add_new_action(JKIRBY, MARINA_NSPGThrow,          -1,     ActionParams.MARINA_NSPGThrow,         0x12,       0x8014A0C0,                     MarinaNSP.throw_turn_,          0x800D8BB4,                   0x80149B78)
    Character.add_new_action(JKIRBY, MARINA_NSPGThrowU,         -1,     ActionParams.MARINA_NSPGThrowU,        0x12,       0x8014A0C0,                     0,                              0x800D8BB4,                   0x80149B78)
    Character.add_new_action(JKIRBY, MARINA_NSPGThrowD,         -1,     ActionParams.MARINA_NSPGThrowD,        0x12,       0x8014A0C0,                     0,                              0x800D8BB4,                   0x80149B78)
    Character.add_new_action(JKIRBY, MARINA_NSPA,               -1,     ActionParams.MARINA_NSPA,              0x12,       0x800D94E8,                     0,                              MarinaNSP.air_physics_,       MarinaNSP.air_collision_)
    Character.add_new_action(JKIRBY, MARINA_NSPAPull,           -1,     ActionParams.MARINA_NSPAPull,          0x12,       MarinaNSP.air_pull_main_,       0,                              0x800D91EC,                   MarinaNSP.grab_air_collision_)
    Character.add_new_action(JKIRBY, MARINA_NSPAThrow,          -1,     ActionParams.MARINA_NSPAThrow,         0x12,       0x8014A0C0,                     MarinaNSP.throw_turn_,          MarinaNSP.throw_air_physics_, MarinaNSP.throw_air_collision_)
    Character.add_new_action(JKIRBY, MARINA_NSPAThrowU,         -1,     ActionParams.MARINA_NSPAThrowU,        0x12,       0x8014A0C0,                     0,                              MarinaNSP.throw_air_physics_, MarinaNSP.throw_air_collision_)
    Character.add_new_action(JKIRBY, MARINA_NSPAThrowD,         -1,     ActionParams.MARINA_NSPAThrowD,        0x12,       0x8014A0C0,                     0,                              MarinaNSP.throw_air_physics_, MarinaNSP.throw_air_collision_)

    // Set action strings
    Character.table_patch_start(action_string, Character.id.JKIRBY, 0x4)
    dw  Action.KIRBY.action_string_table
    OS.patch_end()

    // Modify grounded routine for JKirby
    Character.table_patch_start(grounded_script, Character.id.JKIRBY, 0x4)
    dw Kirby.clear_marth_flag_
    OS.patch_end()
}
