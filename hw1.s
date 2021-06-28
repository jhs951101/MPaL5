        NAME    main
        
        PUBLIC  __iar_program_start
        
        SECTION .intvec : CODE (2)
        THUMB
        
__iar_program_start
        B       main

        
        SECTION .text : CODE (2)
        THUMB

main
        NOP
        
        MOV r0, #0xFFFF
        MOV r1, #0xF
        MOV r2, #0x1000
        MOV r3, #0x10
        MOV r4, #0xF
        
        MUL r4, r1, r2
        MULS r4, r4, r3
        
        SUBS r5, r2, r1
        
        MULS r6, r4
        
        MUL r7, r0, r4
        
        NOP
        END