                             **************************************************************
                             *                          FUNCTION                          *
                             **************************************************************
                             undefined4 __fastcall arbCheck(void * param_1)
             undefined4        EAX:4          <RETURN>
             void *            ECX:4          param_1
             undefined4        Stack[-0x8]:4  local_8                                 XREF[2]:     1006c30d(W), 
                                                                                                   1006c31d(W)  
             undefined4        Stack[-0x10]:4 local_10                                XREF[4]:     1006c2bc(*), 
                                                                                                   1006c34d(R), 
                                                                                                   1006c374(R), 
                                                                                                   1006c40e(R)  
             undefined4        Stack[-0x14]:4 local_14                                XREF[1]:     1006c2ed(W)  
             undefined4        Stack[-0x28]:4 local_28                                XREF[1]:     1006c2f2(W)  
             undefined4        Stack[-0x2c]:4 local_2c                                XREF[1]:     1006c2f9(W)  
             undefined1        Stack[-0x3c]:1 local_3c                                XREF[1]:     1006c305(*)  
                             arbCheck                                        XREF[1]:     FUN_1006ed30:1006f243(c)  
        1006c2a0 55              PUSH       EBP                                              We set some variables
        1006c2a1 8b ec           MOV        EBP,ESP
        1006c2a3 6a ff           PUSH       -0x1
        1006c2a5 68 18 70        PUSH       LAB_10317018
                 31 10
        1006c2aa 64 a1 00        MOV        EAX,FS:[0x0]
                 00 00 00
        1006c2b0 50              PUSH       EAX
        1006c2b1 51              PUSH       param_1
        1006c2b2 56              PUSH       ESI
        1006c2b3 57              PUSH       EDI
        1006c2b4 a1 cc a8        MOV        EAX,[DAT_103ea8cc]                               = BB40E64Eh
                 3e 10
        1006c2b9 33 c5           XOR        EAX,EBP
        1006c2bb 50              PUSH       EAX
        1006c2bc 8d 45 f4        LEA        EAX=>local_10,[EBP + -0xc]
        1006c2bf 64 a3 00        MOV        FS:[0x0],EAX
                 00 00 00
        1006c2c5 8b f1           MOV        ESI,param_1
        1006c2c7 8b 86 30        MOV        EAX,dword ptr [ESI + 0x1e4630]
                 46 1e 00
        1006c2cd 80 b8 44        CMP        byte ptr [EAX + 0x744],0x45
                 07 00 00 45
        1006c2d4 0f 85 ab        JNZ        LAB_1006c385
                 00 00 00
                             arbFail
        1006c2da 8b 4e 14        MOV        param_1,dword ptr [ESI + 0x14]
        1006c2dd 68 60 ea        PUSH       s_Anti_Rollback_Status_=_E._1033ea60             = "Anti Rollback Status = E.\n"
                 33 10
        1006c2e2 51              PUSH       param_1
        1006c2e3 e8 58 16        CALL       FUN_1002d940                                     undefined FUN_1002d940(int param
                 fc ff
        1006c2e8 83 ec 14        SUB        ESP,0x14
        1006c2eb 8b cc           MOV        param_1,ESP
        1006c2ed 89 65 f0        MOV        dword ptr [EBP + local_14],ESP
        1006c2f0 6a 00           PUSH       0x0
        1006c2f2 c7 41 14        MOV        dword ptr [ECX + local_28],0xf
                 0f 00 00 00
        1006c2f9 c7 41 10        MOV        dword ptr [ECX + local_2c],0x0
                 00 00 00 00
        1006c300 68 d3 d7        PUSH       lpDefault_1032d7d3                               = 00732500
                 32 10
        1006c305 c6 01 00        MOV        byte ptr [param_1]=>local_3c,0x0
        1006c308 e8 b3 75        CALL       FUN_100038c0                                     int * * FUN_100038c0(void * this
                 f9 ff
        1006c30d c7 45 fc        MOV        dword ptr [EBP + local_8],0x0
                 00 00 00 00
        1006c314 8b 96 30        MOV        EDX,dword ptr [ESI + 0x1e4630]
                 46 1e 00
        1006c31a 6a 00           PUSH       0x0
        1006c31c 52              PUSH       EDX
        1006c31d c7 45 fc        MOV        dword ptr [EBP + local_8],0xffffffff
                 ff ff ff ff
        1006c324 8b ce           MOV        param_1,ESI
        1006c326 e8 d5 d0        CALL       FUN_10069400                                     undefined FUN_10069400(void * th
                 ff ff
        1006c32b 85 c0           TEST       EAX,EAX
        1006c32d 75 2f           JNZ        LAB_1006c35e
        1006c32f 8b 46 10        MOV        EAX,dword ptr [ESI + 0x10]
        1006c332 83 b8 a4        CMP        dword ptr [EAX + 0x19a4],0x2
                 19 00 00 02
        1006c339 75 10           JNZ        LAB_1006c34b
        1006c33b 8b 4e 54        MOV        param_1,dword ptr [ESI + 0x54]
        1006c33e e8 ad 60        CALL       FUN_100023f0                                     undefined4 FUN_100023f0(void * *
                 f9 ff
        1006c343 8b 4e 08        MOV        param_1,dword ptr [ESI + 0x8]
        1006c346 e8 e5 03        CALL       FUN_1001c730                                     undefined FUN_1001c730(int param
                 fb ff
                             LAB_1006c34b                                    XREF[1]:     1006c339(j)  
        1006c34b 33 c0           XOR        EAX,EAX
        1006c34d 8b 4d f4        MOV        param_1,dword ptr [EBP + local_10]
        1006c350 64 89 0d        MOV        dword ptr FS:[0x0],param_1
                 00 00 00 00
        1006c357 59              POP        param_1
        1006c358 5f              POP        EDI
        1006c359 5e              POP        ESI
        1006c35a 8b e5           MOV        ESP,EBP
        1006c35c 5d              POP        EBP
        1006c35d c3              RET
                             LAB_1006c35e                                    XREF[1]:     1006c32d(j)  
        1006c35e 8b 4e 14        MOV        param_1,dword ptr [ESI + 0x14]
        1006c361 68 44 ea        PUSH       s_Anti_Rollback_Check_PASS._1033ea44             = "Anti Rollback Check PASS.\n"
                 33 10
        1006c366 51              PUSH       param_1
        1006c367 e8 d4 15        CALL       FUN_1002d940                                     undefined FUN_1002d940(int param
                 fc ff
        1006c36c 83 c4 08        ADD        ESP,0x8
                             LAB_1006c36f                                    XREF[3]:     1006c389(j), 1006c3c7(j), 
                                                                                          1006c3d9(j)  
        1006c36f b8 01 00        MOV        EAX,0x1
                 00 00
        1006c374 8b 4d f4        MOV        param_1,dword ptr [EBP + local_10]
        1006c377 64 89 0d        MOV        dword ptr FS:[0x0],param_1
                 00 00 00 00
        1006c37e 59              POP        param_1
        1006c37f 5f              POP        EDI
        1006c380 5e              POP        ESI
        1006c381 8b e5           MOV        ESP,EBP
        1006c383 5d              POP        EBP
        1006c384 c3              RET
                             LAB_1006c385                                    XREF[1]:     1006c2d4(j)  
        1006c385 83 7e 20 00     CMP        dword ptr [ESI + 0x20],0x0
        1006c389 74 e4           JZ         LAB_1006c36f
        1006c38b 8b 56 10        MOV        EDX,dword ptr [ESI + 0x10]
        1006c38e 8b 4e 20        MOV        param_1,dword ptr [ESI + 0x20]
        1006c391 8b 01           MOV        EAX,dword ptr [param_1]
        1006c393 8b ba 14        MOV        EDI,dword ptr [EDX + 0x814]
                 08 00 00
        1006c399 8b 50 3c        MOV        EDX,dword ptr [EAX + 0x3c]
        1006c39c ff d2           CALL       EDX
        1006c39e 8b 4e 14        MOV        param_1,dword ptr [ESI + 0x14]
        1006c3a1 50              PUSH       EAX
        1006c3a2 8b 87 45        MOV        EAX,dword ptr [EDI + 0x745]
                 07 00 00
        1006c3a8 50              PUSH       EAX
        1006c3a9 68 0c ea        PUSH       DAT_1033ea0c                                     = 41h    A
                 33 10
        1006c3ae 51              PUSH       param_1
        1006c3af e8 8c 15        CALL       FUN_1002d940                                     undefined FUN_1002d940(int param
                 fc ff
        1006c3b4 8b 56 10        MOV        EDX,dword ptr [ESI + 0x10]
        1006c3b7 8b ba 14        MOV        EDI,dword ptr [EDX + 0x814]
                 08 00 00
        1006c3bd 83 c4 10        ADD        ESP,0x10
        1006c3c0 83 bf 45        CMP        dword ptr [EDI + 0x745],0x0
                 07 00 00 00
        1006c3c7 7e a6           JLE        LAB_1006c36f
        1006c3c9 8b 4e 20        MOV        param_1,dword ptr [ESI + 0x20]
        1006c3cc 8b 01           MOV        EAX,dword ptr [param_1]
        1006c3ce 8b 50 3c        MOV        EDX,dword ptr [EAX + 0x3c]
        1006c3d1 ff d2           CALL       EDX
        1006c3d3 39 87 45        CMP        dword ptr [EDI + 0x745],EAX
                 07 00 00
        1006c3d9 7e 94           JLE        LAB_1006c36f
        1006c3db 8b 46 10        MOV        EAX,dword ptr [ESI + 0x10]
        1006c3de 8b 80 14        MOV        EAX,dword ptr [EAX + 0x814]
                 08 00 00
        1006c3e4 8b 90 45        MOV        EDX,dword ptr [EAX + 0x745]
                 07 00 00
        1006c3ea 8b 4e 20        MOV        param_1,dword ptr [ESI + 0x20]
        1006c3ed 8b 01           MOV        EAX,dword ptr [param_1]
        1006c3ef 52              PUSH       EDX
        1006c3f0 8b 50 3c        MOV        EDX,dword ptr [EAX + 0x3c]
        1006c3f3 ff d2           CALL       EDX
        1006c3f5 50              PUSH       EAX
        1006c3f6 8b 46 0c        MOV        EAX,dword ptr [ESI + 0xc]
        1006c3f9 68 d4 e9        PUSH       s_Image_ARB_[%d]_is_lower_than_dev_1033e9d4      = "Image ARB [%d] is lower than 
                 33 10
        1006c3fe 68 01 80        PUSH       0x8001
                 00 00
        1006c403 50              PUSH       EAX
        1006c404 e8 17 e9        CALL       FUN_1002ad20                                     undefined FUN_1002ad20(void * pa
                 fb ff
        1006c409 83 c4 14        ADD        ESP,0x14
        1006c40c 33 c0           XOR        EAX,EAX
        1006c40e 8b 4d f4        MOV        param_1,dword ptr [EBP + local_10]
        1006c411 64 89 0d        MOV        dword ptr FS:[0x0],param_1
                 00 00 00 00
        1006c418 59              POP        param_1
        1006c419 5f              POP        EDI
        1006c41a 5e              POP        ESI
        1006c41b 8b e5           MOV        ESP,EBP
        1006c41d 5d              POP        EBP
        1006c41e c3              RET
        1006c41f cc              ??         CCh
