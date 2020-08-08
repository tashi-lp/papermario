.set noat # allow manual use of $at
.set noreorder # don't insert nops after branches

.include "include/macro.inc"

glabel func_80243D9C
/* 1370DC 80243D9C 8FAE012C */  lw    $t6, 0x12c($sp)
/* 1370E0 80243DA0 00A32825 */  or    $a1, $a1, $v1
/* 1370E4 80243DA4 01EE1821 */  addu  $v1, $t7, $t6
/* 1370E8 80243DA8 2463FFFF */  addiu $v1, $v1, -1
/* 1370EC 80243DAC 44831000 */  mtc1  $v1, $f2
/* 1370F0 80243DB0 00000000 */  nop   
/* 1370F4 80243DB4 468010A0 */  cvt.s.w $f2, $f2
/* 1370F8 80243DB8 46041082 */  mul.s $f2, $f2, $f4
/* 1370FC 80243DBC 00000000 */  nop   
/* 137100 80243DC0 8FAF0128 */  lw    $t7, 0x128($sp)
/* 137104 80243DC4 8FAE0130 */  lw    $t6, 0x130($sp)
/* 137108 80243DC8 00852025 */  or    $a0, $a0, $a1
/* 13710C 80243DCC 01EE1821 */  addu  $v1, $t7, $t6
/* 137110 80243DD0 2463FFFF */  addiu $v1, $v1, -1
/* 137114 80243DD4 44830000 */  mtc1  $v1, $f0
/* 137118 80243DD8 00000000 */  nop   
/* 13711C 80243DDC 46800020 */  cvt.s.w $f0, $f0
/* 137120 80243DE0 46040002 */  mul.s $f0, $f0, $f4
/* 137124 80243DE4 00000000 */  nop   
/* 137128 80243DE8 ACE40000 */  sw    $a0, ($a3)
/* 13712C 80243DEC 4600118D */  trunc.w.s $f6, $f2
/* 137130 80243DF0 44033000 */  mfc1  $v1, $f6
/* 137134 80243DF4 00000000 */  nop   
/* 137138 80243DF8 30630FFF */  andi  $v1, $v1, 0xfff
/* 13713C 80243DFC 00031B00 */  sll   $v1, $v1, 0xc
/* 137140 80243E00 4600018D */  trunc.w.s $f6, $f0
/* 137144 80243E04 44043000 */  mfc1  $a0, $f6
/* 137148 80243E08 00000000 */  nop   
/* 13714C 80243E0C 30840FFF */  andi  $a0, $a0, 0xfff
/* 137150 80243E10 00641825 */  or    $v1, $v1, $a0
/* 137154 80243E14 ACE30004 */  sw    $v1, 4($a3)
/* 137158 80243E18 8EB20000 */  lw    $s2, ($s5)
/* 13715C 80243E1C 3C038025 */  lui   $v1, 0x8025
/* 137160 80243E20 2463F03C */  addiu $v1, $v1, -0xfc4
/* 137164 80243E24 00128880 */  sll   $s1, $s2, 2
/* 137168 80243E28 02238821 */  addu  $s1, $s1, $v1
/* 13716C 80243E2C 8E630000 */  lw    $v1, ($s3)
/* 137170 80243E30 8E240000 */  lw    $a0, ($s1)
/* 137174 80243E34 00621821 */  addu  $v1, $v1, $v0
/* 137178 80243E38 AE630000 */  sw    $v1, ($s3)
/* 13717C 80243E3C 0C093BA0 */  jal   func_8024EE80
/* 137180 80243E40 AD060000 */   sw    $a2, ($t0)
/* 137184 80243E44 0040202D */  daddu $a0, $v0, $zero
/* 137188 80243E48 27A500BC */  addiu $a1, $sp, 0xbc
/* 13718C 80243E4C 27A600C0 */  addiu $a2, $sp, 0xc0
/* 137190 80243E50 27A700C4 */  addiu $a3, $sp, 0xc4
/* 137194 80243E54 27A200C8 */  addiu $v0, $sp, 0xc8
/* 137198 80243E58 AFA20010 */  sw    $v0, 0x10($sp)
/* 13719C 80243E5C 27A200CC */  addiu $v0, $sp, 0xcc