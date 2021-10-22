/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/HO_win7/Documents/FPGA/Advanced_withj/Advancedwithj/Mux.v";
static unsigned int ng1[] = {2U, 0U};
static unsigned int ng2[] = {3U, 0U};
static unsigned int ng3[] = {1U, 0U};



static void Cont_65_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t6[8];
    char t24[8];
    char t40[8];
    char t85[8];
    char t86[8];
    char t88[8];
    char *t1;
    char *t2;
    char *t5;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    char *t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    char *t54;
    char *t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    char *t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    char *t79;
    char *t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    char *t87;
    char *t89;
    char *t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    char *t103;
    char *t104;
    unsigned int t105;
    unsigned int t106;
    unsigned int t107;
    unsigned int t108;
    unsigned int t109;
    char *t110;
    char *t111;
    unsigned int t112;
    unsigned int t113;
    unsigned int t114;
    char *t115;
    char *t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    char *t121;
    char *t122;
    char *t123;
    char *t124;
    char *t125;
    unsigned int t126;
    unsigned int t127;
    char *t128;
    unsigned int t129;
    unsigned int t130;
    char *t131;
    unsigned int t132;
    unsigned int t133;
    char *t134;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 1528U);
    t5 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t2 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t2);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB7;

LAB4:    if (t18 != 0)
        goto LAB6;

LAB5:    *((unsigned int *)t6) = 1;

LAB7:    t22 = (t0 + 1528U);
    t23 = *((char **)t22);
    t22 = ((char*)((ng2)));
    memset(t24, 0, 8);
    t25 = (t23 + 4);
    t26 = (t22 + 4);
    t27 = *((unsigned int *)t23);
    t28 = *((unsigned int *)t22);
    t29 = (t27 ^ t28);
    t30 = *((unsigned int *)t25);
    t31 = *((unsigned int *)t26);
    t32 = (t30 ^ t31);
    t33 = (t29 | t32);
    t34 = *((unsigned int *)t25);
    t35 = *((unsigned int *)t26);
    t36 = (t34 | t35);
    t37 = (~(t36));
    t38 = (t33 & t37);
    if (t38 != 0)
        goto LAB11;

LAB8:    if (t36 != 0)
        goto LAB10;

LAB9:    *((unsigned int *)t24) = 1;

LAB11:    t41 = *((unsigned int *)t6);
    t42 = *((unsigned int *)t24);
    t43 = (t41 | t42);
    *((unsigned int *)t40) = t43;
    t44 = (t6 + 4);
    t45 = (t24 + 4);
    t46 = (t40 + 4);
    t47 = *((unsigned int *)t44);
    t48 = *((unsigned int *)t45);
    t49 = (t47 | t48);
    *((unsigned int *)t46) = t49;
    t50 = *((unsigned int *)t46);
    t51 = (t50 != 0);
    if (t51 == 1)
        goto LAB12;

LAB13:
LAB14:    memset(t4, 0, 8);
    t68 = (t40 + 4);
    t69 = *((unsigned int *)t68);
    t70 = (~(t69));
    t71 = *((unsigned int *)t40);
    t72 = (t71 & t70);
    t73 = (t72 & 1U);
    if (t73 != 0)
        goto LAB15;

LAB16:    if (*((unsigned int *)t68) != 0)
        goto LAB17;

LAB18:    t75 = (t4 + 4);
    t76 = *((unsigned int *)t4);
    t77 = *((unsigned int *)t75);
    t78 = (t76 || t77);
    if (t78 > 0)
        goto LAB19;

LAB20:    t81 = *((unsigned int *)t4);
    t82 = (~(t81));
    t83 = *((unsigned int *)t75);
    t84 = (t82 || t83);
    if (t84 > 0)
        goto LAB21;

LAB22:    if (*((unsigned int *)t75) > 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t4) > 0)
        goto LAB25;

LAB26:    memcpy(t3, t85, 8);

LAB27:    t115 = (t0 + 3248);
    t122 = (t115 + 56U);
    t123 = *((char **)t122);
    t124 = (t123 + 56U);
    t125 = *((char **)t124);
    memset(t125, 0, 8);
    t126 = 1U;
    t127 = t126;
    t128 = (t3 + 4);
    t129 = *((unsigned int *)t3);
    t126 = (t126 & t129);
    t130 = *((unsigned int *)t128);
    t127 = (t127 & t130);
    t131 = (t125 + 4);
    t132 = *((unsigned int *)t125);
    *((unsigned int *)t125) = (t132 | t126);
    t133 = *((unsigned int *)t131);
    *((unsigned int *)t131) = (t133 | t127);
    xsi_driver_vfirst_trans(t115, 0, 0);
    t134 = (t0 + 3168);
    *((int *)t134) = 1;

LAB1:    return;
LAB6:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB7;

LAB10:    t39 = (t24 + 4);
    *((unsigned int *)t24) = 1;
    *((unsigned int *)t39) = 1;
    goto LAB11;

LAB12:    t52 = *((unsigned int *)t40);
    t53 = *((unsigned int *)t46);
    *((unsigned int *)t40) = (t52 | t53);
    t54 = (t6 + 4);
    t55 = (t24 + 4);
    t56 = *((unsigned int *)t54);
    t57 = (~(t56));
    t58 = *((unsigned int *)t6);
    t59 = (t58 & t57);
    t60 = *((unsigned int *)t55);
    t61 = (~(t60));
    t62 = *((unsigned int *)t24);
    t63 = (t62 & t61);
    t64 = (~(t59));
    t65 = (~(t63));
    t66 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t66 & t64);
    t67 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t67 & t65);
    goto LAB14;

LAB15:    *((unsigned int *)t4) = 1;
    goto LAB18;

LAB17:    t74 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t74) = 1;
    goto LAB18;

LAB19:    t79 = (t0 + 1368U);
    t80 = *((char **)t79);
    goto LAB20;

LAB21:    t79 = (t0 + 1528U);
    t87 = *((char **)t79);
    t79 = ((char*)((ng3)));
    memset(t88, 0, 8);
    t89 = (t87 + 4);
    t90 = (t79 + 4);
    t91 = *((unsigned int *)t87);
    t92 = *((unsigned int *)t79);
    t93 = (t91 ^ t92);
    t94 = *((unsigned int *)t89);
    t95 = *((unsigned int *)t90);
    t96 = (t94 ^ t95);
    t97 = (t93 | t96);
    t98 = *((unsigned int *)t89);
    t99 = *((unsigned int *)t90);
    t100 = (t98 | t99);
    t101 = (~(t100));
    t102 = (t97 & t101);
    if (t102 != 0)
        goto LAB31;

LAB28:    if (t100 != 0)
        goto LAB30;

LAB29:    *((unsigned int *)t88) = 1;

LAB31:    memset(t86, 0, 8);
    t104 = (t88 + 4);
    t105 = *((unsigned int *)t104);
    t106 = (~(t105));
    t107 = *((unsigned int *)t88);
    t108 = (t107 & t106);
    t109 = (t108 & 1U);
    if (t109 != 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t104) != 0)
        goto LAB34;

LAB35:    t111 = (t86 + 4);
    t112 = *((unsigned int *)t86);
    t113 = *((unsigned int *)t111);
    t114 = (t112 || t113);
    if (t114 > 0)
        goto LAB36;

LAB37:    t117 = *((unsigned int *)t86);
    t118 = (~(t117));
    t119 = *((unsigned int *)t111);
    t120 = (t118 || t119);
    if (t120 > 0)
        goto LAB38;

LAB39:    if (*((unsigned int *)t111) > 0)
        goto LAB40;

LAB41:    if (*((unsigned int *)t86) > 0)
        goto LAB42;

LAB43:    memcpy(t85, t121, 8);

LAB44:    goto LAB22;

LAB23:    xsi_vlog_unsigned_bit_combine(t3, 1, t80, 1, t85, 1);
    goto LAB27;

LAB25:    memcpy(t3, t80, 8);
    goto LAB27;

LAB30:    t103 = (t88 + 4);
    *((unsigned int *)t88) = 1;
    *((unsigned int *)t103) = 1;
    goto LAB31;

LAB32:    *((unsigned int *)t86) = 1;
    goto LAB35;

LAB34:    t110 = (t86 + 4);
    *((unsigned int *)t86) = 1;
    *((unsigned int *)t110) = 1;
    goto LAB35;

LAB36:    t115 = (t0 + 1208U);
    t116 = *((char **)t115);
    goto LAB37;

LAB38:    t115 = (t0 + 1048U);
    t121 = *((char **)t115);
    goto LAB39;

LAB40:    xsi_vlog_unsigned_bit_combine(t85, 1, t116, 1, t121, 1);
    goto LAB44;

LAB42:    memcpy(t85, t116, 8);
    goto LAB44;

}


extern void work_m_00000000003192444441_3079598322_init()
{
	static char *pe[] = {(void *)Cont_65_0};
	xsi_register_didat("work_m_00000000003192444441_3079598322", "isim/MIPS_isim_beh.exe.sim/work/m_00000000003192444441_3079598322.didat");
	xsi_register_executes(pe);
}
