.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240528
/* 907F58 80240528 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 907F5C 8024052C AFB1001C */  sw        $s1, 0x1c($sp)
/* 907F60 80240530 0080882D */  daddu     $s1, $a0, $zero
/* 907F64 80240534 AFB00018 */  sw        $s0, 0x18($sp)
/* 907F68 80240538 00A0802D */  daddu     $s0, $a1, $zero
/* 907F6C 8024053C AFBF0028 */  sw        $ra, 0x28($sp)
/* 907F70 80240540 AFB30024 */  sw        $s3, 0x24($sp)
/* 907F74 80240544 AFB20020 */  sw        $s2, 0x20($sp)
/* 907F78 80240548 8E32000C */  lw        $s2, 0xc($s1)
/* 907F7C 8024054C 0C00EAD2 */  jal       get_npc_safe
/* 907F80 80240550 0000202D */   daddu    $a0, $zero, $zero
/* 907F84 80240554 0220202D */  daddu     $a0, $s1, $zero
/* 907F88 80240558 3C05FD05 */  lui       $a1, 0xfd05
/* 907F8C 8024055C 34A50F80 */  ori       $a1, $a1, 0xf80
/* 907F90 80240560 0C0B1EAF */  jal       get_variable
/* 907F94 80240564 0040982D */   daddu    $s3, $v0, $zero
/* 907F98 80240568 12000006 */  beqz      $s0, .L80240584
/* 907F9C 8024056C 00000000 */   nop      
/* 907FA0 80240570 AE200070 */  sw        $zero, 0x70($s1)
/* 907FA4 80240574 8E450000 */  lw        $a1, ($s2)
/* 907FA8 80240578 0C0B1EAF */  jal       get_variable
/* 907FAC 8024057C 0220202D */   daddu    $a0, $s1, $zero
/* 907FB0 80240580 AE220074 */  sw        $v0, 0x74($s1)
.L80240584:
/* 907FB4 80240584 8E220074 */  lw        $v0, 0x74($s1)
/* 907FB8 80240588 3C06437F */  lui       $a2, 0x437f
/* 907FBC 8024058C 0000202D */  daddu     $a0, $zero, $zero
/* 907FC0 80240590 AFA20010 */  sw        $v0, 0x10($sp)
/* 907FC4 80240594 8E270070 */  lw        $a3, 0x70($s1)
/* 907FC8 80240598 0C00A8ED */  jal       update_lerp
/* 907FCC 8024059C 0000282D */   daddu    $a1, $zero, $zero
/* 907FD0 802405A0 3C014F00 */  lui       $at, 0x4f00
/* 907FD4 802405A4 44811000 */  mtc1      $at, $f2
/* 907FD8 802405A8 00000000 */  nop       
/* 907FDC 802405AC 4600103E */  c.le.s    $f2, $f0
/* 907FE0 802405B0 00000000 */  nop       
/* 907FE4 802405B4 45010005 */  bc1t      .L802405CC
/* 907FE8 802405B8 266400AC */   addiu    $a0, $s3, 0xac
/* 907FEC 802405BC 4600010D */  trunc.w.s $f4, $f0
/* 907FF0 802405C0 44032000 */  mfc1      $v1, $f4
/* 907FF4 802405C4 0809017A */  j         .L802405E8
/* 907FF8 802405C8 A0830000 */   sb       $v1, ($a0)
.L802405CC:
/* 907FFC 802405CC 46020001 */  sub.s     $f0, $f0, $f2
/* 908000 802405D0 3C028000 */  lui       $v0, 0x8000
/* 908004 802405D4 4600010D */  trunc.w.s $f4, $f0
/* 908008 802405D8 44032000 */  mfc1      $v1, $f4
/* 90800C 802405DC 00000000 */  nop       
/* 908010 802405E0 00621825 */  or        $v1, $v1, $v0
/* 908014 802405E4 A0830000 */  sb        $v1, ($a0)
.L802405E8:
/* 908018 802405E8 8E230070 */  lw        $v1, 0x70($s1)
/* 90801C 802405EC 8E220074 */  lw        $v0, 0x74($s1)
/* 908020 802405F0 24630001 */  addiu     $v1, $v1, 1
/* 908024 802405F4 0062102A */  slt       $v0, $v1, $v0
/* 908028 802405F8 AE230070 */  sw        $v1, 0x70($s1)
/* 90802C 802405FC 8FBF0028 */  lw        $ra, 0x28($sp)
/* 908030 80240600 8FB30024 */  lw        $s3, 0x24($sp)
/* 908034 80240604 8FB20020 */  lw        $s2, 0x20($sp)
/* 908038 80240608 8FB1001C */  lw        $s1, 0x1c($sp)
/* 90803C 8024060C 8FB00018 */  lw        $s0, 0x18($sp)
/* 908040 80240610 38420001 */  xori      $v0, $v0, 1
/* 908044 80240614 03E00008 */  jr        $ra
/* 908048 80240618 27BD0030 */   addiu    $sp, $sp, 0x30