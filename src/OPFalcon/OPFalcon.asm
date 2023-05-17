
// This file contains file inclusions, action edits, and assembly for making this character OP

scope OPFalcon {

    // Insert Moveset files

    // Modify Action Parameters                             // Action           // Animation    // Moveset Data                 // Flags

    // Modify Menu Action Parameters             // Action          // Animation                // Moveset Data             // Flags

    // Modify Actions            // Action          // Staling ID   // Main ASM                 // Interrupt/Other ASM          // Movement/Physics ASM         // Collision ASM


    // increased Falcons aerial drift after up b
    // original value = 0.719084501266
    OS.patch_start(0xDAD00, 0x801602C0)
    li      a1, 0x3FC00000
    // og line 1 = LUI A1, 0x3F38
    // og line 2 = ORI A1, A1, 0x51EC
    OS.patch_end()

    // double aerial nsp horizontal distance
    // ... grounded is baked into the animation so it is more difficult to make go further
    OS.patch_start(0xDA3B8, 0x8015F978)
    lui     at, 0x4302
    // og line 1 LUI AT, 0x4282
    OS.patch_end()
   
    
    // increases ganondorfs up special speed
    scope increase_usp_speed: {
        OS.patch_start(0xDAEDC, 0x8016049C)
        j       increase_usp_speed
        lw      at, 0x0008(s0)          // at = character id
        _return:
        OS.patch_end()
        
        addiu   t6, r0, Character.id.GND
        beq     t6, at, _OP             // reduce gravity for Ganon
        nop

        _normal:
        jal     0x800D93E4
        lw      a0, 0x0020(sp)
        j       _return
        nop
        
        _OP:
        addiu   at, r0, 0xEE            // at = ganons up special action id
        lw      t6, 0x0024(s0)          // t6 = current action
        bne     at, t6, _normal         // branch if not doing a up special
        nop
        jal     up_special_speed
        lw      a0, 0x0020(sp)
        j       _return
        nop
    
    }
    
    // based on routine 800D93E4
    scope up_special_speed: {
        addiu   sp, sp, -0x18
        sw      ra, 0x0014(sp)
        sw      a0, 0x0018 (sp)
        lw      a0, 0x0084 (a0)
        addiu   a1, a0, 0x0048
        addiu   a2, a0, 0x004c
        jal     0x800d9260
        addiu   a3, a0, 0x0050
        
        lwc1    f4, 0x0000(a2)      // load y velocity?
        lui     at, 0x3fc0          // ~
        mtc1    at, f6              // f6 = 1.5
        
        mul.s   f4, f6, f4          // f6 = y velocity * 1.5
        nop
        swc1    f4, 0x0000(a2)      // overwrite y velocity
        
        lw      ra, 0x0014(sp)
        jr      ra
        addiu   sp, sp, 0x18
    }


    // hook is located in a common routine (may not be the best place but this works!)
    scope falcon_punch_gravity: {
        OS.patch_start(0x54A28, 0x800D9228)
        j       falcon_punch_gravity
        lw      at, 0x0008(s0)          // at = character id
        _return:
        OS.patch_end()
        
        addiu   t6, r0, Character.id.FALCON
        beq     t6, at, _OP             // reduce gravity for Falcon
        addiu   t6, r0, Character.id.NCAPTAIN
        beq     t6, at, _OP             // reduce gravity for EFalcon
        addiu   t6, r0, Character.id.JFALCON
        beq     t6, at, _OP             // reduce gravity for JFalcon
        addiu   t6, r0, Character.id.GND
        beq     t6, at, _OP_ganon       // reduce gravity for Ganon
        nop

        _normal:
        jal     0x800D8E50              // og routine
        or      a1, s1, r0              // og line 2
        j       _return
        nop

        _OP:
        addiu   at, r0, 0xE5            // at = falcon punch action id
        lw      t6, 0x0024(s0)          // t6 = current action
        bne     at, t6, _normal         // branch if not doing a falcon punch
        nop
        jal     small_max_fall_speed
        or      a1, s1, r0              // og line 2
        j       _return
        nop
        
        _OP_ganon:
        addiu   at, r0, 0xE5            // at = falcon punch action id
        lw      t6, 0x0024(s0)          // t6 = current action
        bne     at, t6, _normal         // branch if not doing a falcon punch
        nop
        jal     half_max_fall_speed
        or      a1, s1, r0              // og line 2
        j       _return
        nop
        
    }

    // based on apply gravity routine 800D8E50
    scope half_max_fall_speed: {
        addiu   sp, sp, -0x18
        sw      ra, 0x0014(sp)
        or      a3, a1, r0
        lwc1    f4, 0x005C(a3)          // default loads his max falling speed
        lui     at, 0x3F00              // ~
        mtc1    at, f6                  // f6 = 0.5
        mul.s   f4, f4, f6              // f4 = max fall speed / 2
        nop
        mfc1    a2, f4                  // a2 = modified gravity
        jal     0x800d8d68              // apply gravity?
        lw      a1, 0x0058(a1)
        lw      ra, 0x0014(sp)
        jr      ra
        addiu   sp, sp, 0x18
    }
    
    // based on apply gravity routine 800D8E50
    scope small_max_fall_speed: {
        addiu   sp, sp, -0x18
        sw      ra, 0x0014(sp)
        or      a3, a1, r0
        lwc1    f4, 0x005C(a3)          // default loads his max falling speed
        lui     at, 0x3c23              // ~
        mtc1    at, f6                  // f6 = 0.01
        mul.s   f4, f4, f6              // f4 = max fall speed / 100
        nop
        mfc1    a2, f4                  // a2 = modified gravity
        jal     0x800d8d68              // apply gravity?
        lw      a1, 0x0058(a1)
        lw      ra, 0x0014(sp)
        jr      ra
        addiu   sp, sp, 0x18
    }
    
    // give back jump after using down special in air
    scope dsp_add_jump: {
        OS.patch_start(0xDA8C4, 0x8015FE84)
        j       dsp_add_jump
        addiu   at, r0, 0x0001          // at = 1
        _return:
        OS.patch_end()
        
        lw      ra, 0x0014(sp)          // og line 1
        addiu   sp, sp, 0x18            // og line 2
        j       _return
        sb      at, 0x0148(a0)          // set number of jumps to 1 (so he can double jump again)

    }
    
    // give falcon back his jump after connecting and releasing his up b
    scope falcon_dive_regain_jump: {
        OS.patch_start(0xDB18C, 0x8016074C)
        j       falcon_dive_regain_jump
        addiu   at, r0, Character.id.GND
        _return:
        OS.patch_end()

        lw      t9, 0x0008(s0)    // t9 = character id
        beq     at, t9, _ganon_skip
        nop

        addiu   at, r0, 1         // at = 1 jump
        sb      at, 0x0148(s0)    // give back aerial jump

        addiu   a1, r0, 0x00ED    // og line 1
        addiu   a2, r0, 0x0000    // og line 2
        
        _ganon_skip:
        j       _return
        nop

    }
    
}
