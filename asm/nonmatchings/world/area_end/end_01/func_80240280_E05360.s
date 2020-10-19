.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240280_E055E0
/* E055E0 80240280 27BDFF40 */  addiu     $sp, $sp, -0xc0
/* E055E4 80240284 AFB1008C */  sw        $s1, 0x8c($sp)
/* E055E8 80240288 0080882D */  daddu     $s1, $a0, $zero
/* E055EC 8024028C AFB00088 */  sw        $s0, 0x88($sp)
/* E055F0 80240290 00A0802D */  daddu     $s0, $a1, $zero
/* E055F4 80240294 0000202D */  daddu     $a0, $zero, $zero
/* E055F8 80240298 AFBF00A0 */  sw        $ra, 0xa0($sp)
/* E055FC 8024029C AFB5009C */  sw        $s5, 0x9c($sp)
/* E05600 802402A0 AFB40098 */  sw        $s4, 0x98($sp)
/* E05604 802402A4 AFB30094 */  sw        $s3, 0x94($sp)
/* E05608 802402A8 AFB20090 */  sw        $s2, 0x90($sp)
/* E0560C 802402AC F7B800B8 */  sdc1      $f24, 0xb8($sp)
/* E05610 802402B0 F7B600B0 */  sdc1      $f22, 0xb0($sp)
/* E05614 802402B4 F7B400A8 */  sdc1      $f20, 0xa8($sp)
/* E05618 802402B8 C6160010 */  lwc1      $f22, 0x10($s0)
/* E0561C 802402BC 4680B5A0 */  cvt.s.w   $f22, $f22
/* E05620 802402C0 3C01437F */  lui       $at, 0x437f
/* E05624 802402C4 4481A000 */  mtc1      $at, $f20
/* E05628 802402C8 8E22001C */  lw        $v0, 0x1c($s1)
/* E0562C 802402CC 4406A000 */  mfc1      $a2, $f20
/* E05630 802402D0 C6180014 */  lwc1      $f24, 0x14($s0)
/* E05634 802402D4 4680C620 */  cvt.s.w   $f24, $f24
/* E05638 802402D8 AFA20010 */  sw        $v0, 0x10($sp)
/* E0563C 802402DC 8E070018 */  lw        $a3, 0x18($s0)
/* E05640 802402E0 0C00A8ED */  jal       update_lerp
/* E05644 802402E4 0000282D */   daddu    $a1, $zero, $zero
/* E05648 802402E8 4600A03C */  c.lt.s    $f20, $f0
/* E0564C 802402EC 00000000 */  nop       
/* E05650 802402F0 45000002 */  bc1f      .L802402FC
/* E05654 802402F4 27B50038 */   addiu    $s5, $sp, 0x38
/* E05658 802402F8 4600A006 */  mov.s     $f0, $f20
.L802402FC:
/* E0565C 802402FC 8E24001C */  lw        $a0, 0x1c($s1)
/* E05660 80240300 8E030018 */  lw        $v1, 0x18($s0)
/* E05664 80240304 2482FFFC */  addiu     $v0, $a0, -4
/* E05668 80240308 14620007 */  bne       $v1, $v0, .L80240328
/* E0566C 8024030C 2482FFFD */   addiu    $v0, $a0, -3
/* E05670 80240310 4600010D */  trunc.w.s $f4, $f0
/* E05674 80240314 E7A40014 */  swc1      $f4, 0x14($sp)
/* E05678 80240318 0000202D */  daddu     $a0, $zero, $zero
/* E0567C 8024031C 2405000A */  addiu     $a1, $zero, 0xa
/* E05680 80240320 080900E5 */  j         .L80240394
/* E05684 80240324 24060040 */   addiu    $a2, $zero, 0x40
.L80240328:
/* E05688 80240328 14620007 */  bne       $v1, $v0, .L80240348
/* E0568C 8024032C 2482FFFE */   addiu    $v0, $a0, -2
/* E05690 80240330 4600010D */  trunc.w.s $f4, $f0
/* E05694 80240334 E7A40014 */  swc1      $f4, 0x14($sp)
/* E05698 80240338 0000202D */  daddu     $a0, $zero, $zero
/* E0569C 8024033C 2405000A */  addiu     $a1, $zero, 0xa
/* E056A0 80240340 080900E5 */  j         .L80240394
/* E056A4 80240344 24060060 */   addiu    $a2, $zero, 0x60
.L80240348:
/* E056A8 80240348 14620007 */  bne       $v1, $v0, .L80240368
/* E056AC 8024034C 2482FFFF */   addiu    $v0, $a0, -1
/* E056B0 80240350 4600010D */  trunc.w.s $f4, $f0
/* E056B4 80240354 E7A40014 */  swc1      $f4, 0x14($sp)
/* E056B8 80240358 0000202D */  daddu     $a0, $zero, $zero
/* E056BC 8024035C 2405000A */  addiu     $a1, $zero, 0xa
/* E056C0 80240360 080900E5 */  j         .L80240394
/* E056C4 80240364 2406007F */   addiu    $a2, $zero, 0x7f
.L80240368:
/* E056C8 80240368 14620006 */  bne       $v1, $v0, .L80240384
/* E056CC 8024036C 0000202D */   daddu    $a0, $zero, $zero
/* E056D0 80240370 4600010D */  trunc.w.s $f4, $f0
/* E056D4 80240374 E7A40014 */  swc1      $f4, 0x14($sp)
/* E056D8 80240378 2405000A */  addiu     $a1, $zero, 0xa
/* E056DC 8024037C 080900E5 */  j         .L80240394
/* E056E0 80240380 24060050 */   addiu    $a2, $zero, 0x50
.L80240384:
/* E056E4 80240384 4600010D */  trunc.w.s $f4, $f0
/* E056E8 80240388 E7A40014 */  swc1      $f4, 0x14($sp)
/* E056EC 8024038C 24050007 */  addiu     $a1, $zero, 7
/* E056F0 80240390 240600FF */  addiu     $a2, $zero, 0xff
.L80240394:
/* E056F4 80240394 00C0382D */  daddu     $a3, $a2, $zero
/* E056F8 80240398 00C0102D */  daddu     $v0, $a2, $zero
/* E056FC 8024039C AFA20010 */  sw        $v0, 0x10($sp)
/* E05700 802403A0 0C04EAA7 */  jal       func_8013AA9C
/* E05704 802403A4 AFA00018 */   sw       $zero, 0x18($sp)
/* E05708 802403A8 AFB50010 */  sw        $s5, 0x10($sp)
/* E0570C 802403AC 8E040004 */  lw        $a0, 4($s0)
/* E05710 802403B0 8E050008 */  lw        $a1, 8($s0)
/* E05714 802403B4 8E060000 */  lw        $a2, ($s0)
/* E05718 802403B8 8E07000C */  lw        $a3, 0xc($s0)
/* E0571C 802403BC 0C04BA38 */  jal       func_8012E8E0
/* E05720 802403C0 3C140001 */   lui      $s4, 1
/* E05724 802403C4 92A2000A */  lbu       $v0, 0xa($s5)
/* E05728 802403C8 3C013FE0 */  lui       $at, 0x3fe0
/* E0572C 802403CC 4481A800 */  mtc1      $at, $f21
/* E05730 802403D0 4480A000 */  mtc1      $zero, $f20
/* E05734 802403D4 44820000 */  mtc1      $v0, $f0
/* E05738 802403D8 00000000 */  nop       
/* E0573C 802403DC 46800021 */  cvt.d.w   $f0, $f0
/* E05740 802403E0 46340002 */  mul.d     $f0, $f0, $f20
/* E05744 802403E4 00000000 */  nop       
/* E05748 802403E8 36941630 */  ori       $s4, $s4, 0x1630
/* E0574C 802403EC 4600B0A1 */  cvt.d.s   $f2, $f22
/* E05750 802403F0 46201080 */  add.d     $f2, $f2, $f0
/* E05754 802403F4 27B30048 */  addiu     $s3, $sp, 0x48
/* E05758 802403F8 0260202D */  daddu     $a0, $s3, $zero
/* E0575C 802403FC 4600C607 */  neg.s     $f24, $f24
/* E05760 80240400 4406C000 */  mfc1      $a2, $f24
/* E05764 80240404 462010A0 */  cvt.s.d   $f2, $f2
/* E05768 80240408 44051000 */  mfc1      $a1, $f2
/* E0576C 8024040C 0C019E40 */  jal       guTranslateF
/* E05770 80240410 0000382D */   daddu    $a3, $zero, $zero
/* E05774 80240414 0260202D */  daddu     $a0, $s3, $zero
/* E05778 80240418 3C108007 */  lui       $s0, 0x8007
/* E0577C 8024041C 261041F0 */  addiu     $s0, $s0, 0x41f0
/* E05780 80240420 3C12800A */  lui       $s2, 0x800a
/* E05784 80240424 2652A674 */  addiu     $s2, $s2, -0x598c
/* E05788 80240428 96050000 */  lhu       $a1, ($s0)
/* E0578C 8024042C 8E420000 */  lw        $v0, ($s2)
/* E05790 80240430 00052980 */  sll       $a1, $a1, 6
/* E05794 80240434 00B42821 */  addu      $a1, $a1, $s4
/* E05798 80240438 0C019D40 */  jal       guMtxF2L
/* E0579C 8024043C 00452821 */   addu     $a1, $v0, $a1
/* E057A0 80240440 3C02DA38 */  lui       $v0, 0xda38
/* E057A4 80240444 34420002 */  ori       $v0, $v0, 2
/* E057A8 80240448 3C11800A */  lui       $s1, 0x800a
/* E057AC 8024044C 2631A66C */  addiu     $s1, $s1, -0x5994
/* E057B0 80240450 8E240000 */  lw        $a0, ($s1)
/* E057B4 80240454 96050000 */  lhu       $a1, ($s0)
/* E057B8 80240458 0080302D */  daddu     $a2, $a0, $zero
/* E057BC 8024045C ACC20000 */  sw        $v0, ($a2)
/* E057C0 80240460 30A2FFFF */  andi      $v0, $a1, 0xffff
/* E057C4 80240464 00021180 */  sll       $v0, $v0, 6
/* E057C8 80240468 8E430000 */  lw        $v1, ($s2)
/* E057CC 8024046C 00541021 */  addu      $v0, $v0, $s4
/* E057D0 80240470 00621821 */  addu      $v1, $v1, $v0
/* E057D4 80240474 3C028000 */  lui       $v0, 0x8000
/* E057D8 80240478 00621821 */  addu      $v1, $v1, $v0
/* E057DC 8024047C ACC30004 */  sw        $v1, 4($a2)
/* E057E0 80240480 8EA20000 */  lw        $v0, ($s5)
/* E057E4 80240484 24840008 */  addiu     $a0, $a0, 8
/* E057E8 80240488 AE240000 */  sw        $a0, ($s1)
/* E057EC 8024048C AFA20020 */  sw        $v0, 0x20($sp)
/* E057F0 80240490 8EA20004 */  lw        $v0, 4($s5)
/* E057F4 80240494 24A50001 */  addiu     $a1, $a1, 1
/* E057F8 80240498 A6050000 */  sh        $a1, ($s0)
/* E057FC 8024049C AFA20024 */  sw        $v0, 0x24($sp)
/* E05800 802404A0 92A20008 */  lbu       $v0, 8($s5)
/* E05804 802404A4 A7A20028 */  sh        $v0, 0x28($sp)
/* E05808 802404A8 92A20009 */  lbu       $v0, 9($s5)
/* E0580C 802404AC A7A2002A */  sh        $v0, 0x2a($sp)
/* E05810 802404B0 92A2000A */  lbu       $v0, 0xa($s5)
/* E05814 802404B4 0260382D */  daddu     $a3, $s3, $zero
/* E05818 802404B8 44820000 */  mtc1      $v0, $f0
/* E0581C 802404BC 00000000 */  nop       
/* E05820 802404C0 46800021 */  cvt.d.w   $f0, $f0
/* E05824 802404C4 46340002 */  mul.d     $f0, $f0, $f20
/* E05828 802404C8 00000000 */  nop       
/* E0582C 802404CC 0000202D */  daddu     $a0, $zero, $zero
/* E05830 802404D0 3C060005 */  lui       $a2, 5
/* E05834 802404D4 34C60040 */  ori       $a2, $a2, 0x40
/* E05838 802404D8 27A50020 */  addiu     $a1, $sp, 0x20
/* E0583C 802404DC A7A0002E */  sh        $zero, 0x2e($sp)
/* E05840 802404E0 240200FF */  addiu     $v0, $zero, 0xff
/* E05844 802404E4 A3A20030 */  sb        $v0, 0x30($sp)
/* E05848 802404E8 46200007 */  neg.d     $f0, $f0
/* E0584C 802404EC 4620010D */  trunc.w.d $f4, $f0
/* E05850 802404F0 44022000 */  mfc1      $v0, $f4
/* E05854 802404F4 0C04EBDC */  jal       func_8013AF70
/* E05858 802404F8 A7A2002C */   sh       $v0, 0x2c($sp)
/* E0585C 802404FC 3C04D838 */  lui       $a0, 0xd838
/* E05860 80240500 8E220000 */  lw        $v0, ($s1)
/* E05864 80240504 34840002 */  ori       $a0, $a0, 2
/* E05868 80240508 0040182D */  daddu     $v1, $v0, $zero
/* E0586C 8024050C 24420008 */  addiu     $v0, $v0, 8
/* E05870 80240510 AE220000 */  sw        $v0, ($s1)
/* E05874 80240514 24020040 */  addiu     $v0, $zero, 0x40
/* E05878 80240518 AC640000 */  sw        $a0, ($v1)
/* E0587C 8024051C AC620004 */  sw        $v0, 4($v1)
/* E05880 80240520 8FBF00A0 */  lw        $ra, 0xa0($sp)
/* E05884 80240524 8FB5009C */  lw        $s5, 0x9c($sp)
/* E05888 80240528 8FB40098 */  lw        $s4, 0x98($sp)
/* E0588C 8024052C 8FB30094 */  lw        $s3, 0x94($sp)
/* E05890 80240530 8FB20090 */  lw        $s2, 0x90($sp)
/* E05894 80240534 8FB1008C */  lw        $s1, 0x8c($sp)
/* E05898 80240538 8FB00088 */  lw        $s0, 0x88($sp)
/* E0589C 8024053C D7B800B8 */  ldc1      $f24, 0xb8($sp)
/* E058A0 80240540 D7B600B0 */  ldc1      $f22, 0xb0($sp)
/* E058A4 80240544 D7B400A8 */  ldc1      $f20, 0xa8($sp)
/* E058A8 80240548 03E00008 */  jr        $ra
/* E058AC 8024054C 27BD00C0 */   addiu    $sp, $sp, 0xc0