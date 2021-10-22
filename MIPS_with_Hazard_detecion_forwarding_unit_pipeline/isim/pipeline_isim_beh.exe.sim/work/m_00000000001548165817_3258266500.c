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
static const char *ng0 = "C:/Users/HO_win7/Desktop/advanced/memory_advanced.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {32, 0};
static int ng4[] = {1, 0};
static unsigned int ng5[] = {30U, 0U};
static unsigned int ng6[] = {3U, 0U};



static void Cont_64_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t24[8];
    char t31[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1208U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t17 = *((unsigned int *)t4);
    t18 = (~(t17));
    t19 = *((unsigned int *)t12);
    t20 = (t18 || t19);
    if (t20 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t24, 8);

LAB16:    t41 = (t0 + 4152);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memcpy(t45, t3, 8);
    xsi_driver_vfirst_trans(t41, 0, 31);
    t46 = (t0 + 4056);
    *((int *)t46) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = ((char*)((ng1)));
    goto LAB9;

LAB10:    t21 = (t0 + 2568);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t25 = (t0 + 2568);
    t26 = (t25 + 72U);
    t27 = *((char **)t26);
    t28 = (t0 + 2568);
    t29 = (t28 + 64U);
    t30 = *((char **)t29);
    t32 = (t0 + 1368U);
    t33 = *((char **)t32);
    memset(t31, 0, 8);
    t32 = (t31 + 4);
    t34 = (t33 + 4);
    t35 = *((unsigned int *)t33);
    t36 = (t35 >> 2);
    *((unsigned int *)t31) = t36;
    t37 = *((unsigned int *)t34);
    t38 = (t37 >> 2);
    *((unsigned int *)t32) = t38;
    t39 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t39 & 7U);
    t40 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t40 & 7U);
    xsi_vlog_generic_get_array_select_value(t24, 32, t23, t27, t30, 2, 1, t31, 3, 2);
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t16, 32, t24, 32);
    goto LAB16;

LAB14:    memcpy(t3, t16, 8);
    goto LAB16;

}

static void Always_65_1(char *t0)
{
    char t13[8];
    char t15[8];
    char t16[8];
    char t46[8];
    char t76[8];
    char t77[8];
    char t83[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t14;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    int t28;
    char *t29;
    unsigned int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    int t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    char *t84;
    char *t85;
    char *t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    char *t93;
    unsigned int t94;
    char *t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    int t99;
    int t100;

LAB0:    t1 = (t0 + 3736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 4072);
    *((int *)t2) = 1;
    t3 = (t0 + 3768);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(65, ng0);

LAB5:    xsi_set_current_line(66, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(72, ng0);

LAB18:    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t13, 0, 8);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB22;

LAB20:    if (*((unsigned int *)t2) == 0)
        goto LAB19;

LAB21:    t4 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t4) = 1;

LAB22:    memset(t15, 0, 8);
    t5 = (t13 + 4);
    t27 = *((unsigned int *)t5);
    t30 = (~(t27));
    t33 = *((unsigned int *)t13);
    t34 = (t33 & t30);
    t37 = (t34 & 1U);
    if (t37 != 0)
        goto LAB23;

LAB24:    if (*((unsigned int *)t5) != 0)
        goto LAB25;

LAB26:    t12 = (t15 + 4);
    t38 = *((unsigned int *)t15);
    t39 = *((unsigned int *)t12);
    t40 = (t38 || t39);
    if (t40 > 0)
        goto LAB27;

LAB28:    memcpy(t46, t15, 8);

LAB29:    t24 = (t46 + 4);
    t71 = *((unsigned int *)t24);
    t72 = (~(t71));
    t73 = *((unsigned int *)t46);
    t74 = (t73 & t72);
    t75 = (t74 != 0);
    if (t75 > 0)
        goto LAB37;

LAB38:
LAB39:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(66, ng0);

LAB9:    xsi_set_current_line(67, ng0);
    xsi_set_current_line(67, ng0);
    t11 = ((char*)((ng2)));
    t12 = (t0 + 2408);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 32);

LAB10:    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t13, 0, 8);
    xsi_vlog_signed_less(t13, 32, t4, 32, t5, 32);
    t11 = (t13 + 4);
    t6 = *((unsigned int *)t11);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB11;

LAB12:    xsi_set_current_line(70, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 2568);
    t4 = (t0 + 2568);
    t5 = (t4 + 72U);
    t11 = *((char **)t5);
    t12 = (t0 + 2568);
    t14 = (t12 + 64U);
    t17 = *((char **)t14);
    t18 = ((char*)((ng6)));
    xsi_vlog_generic_convert_array_indices(t13, t15, t11, t17, 2, 1, t18, 7, 2);
    t19 = (t13 + 4);
    t6 = *((unsigned int *)t19);
    t28 = (!(t6));
    t20 = (t15 + 4);
    t7 = *((unsigned int *)t20);
    t31 = (!(t7));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB16;

LAB17:    goto LAB8;

LAB11:    xsi_set_current_line(67, ng0);

LAB13:    xsi_set_current_line(68, ng0);
    t12 = ((char*)((ng1)));
    t14 = (t0 + 2568);
    t17 = (t0 + 2568);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = (t0 + 2568);
    t21 = (t20 + 64U);
    t22 = *((char **)t21);
    t23 = (t0 + 2408);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    xsi_vlog_generic_convert_array_indices(t15, t16, t19, t22, 2, 1, t25, 32, 1);
    t26 = (t15 + 4);
    t27 = *((unsigned int *)t26);
    t28 = (!(t27));
    t29 = (t16 + 4);
    t30 = *((unsigned int *)t29);
    t31 = (!(t30));
    t32 = (t28 && t31);
    if (t32 == 1)
        goto LAB14;

LAB15:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t13, 0, 8);
    xsi_vlog_signed_add(t13, 32, t4, 32, t5, 32);
    t11 = (t0 + 2408);
    xsi_vlogvar_assign_value(t11, t13, 0, 0, 32);
    goto LAB10;

LAB14:    t33 = *((unsigned int *)t15);
    t34 = *((unsigned int *)t16);
    t35 = (t33 - t34);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t14, t12, 0, *((unsigned int *)t16), t36, 0LL);
    goto LAB15;

LAB16:    t8 = *((unsigned int *)t13);
    t9 = *((unsigned int *)t15);
    t35 = (t8 - t9);
    t36 = (t35 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t15), t36, 0LL);
    goto LAB17;

LAB19:    *((unsigned int *)t13) = 1;
    goto LAB22;

LAB23:    *((unsigned int *)t15) = 1;
    goto LAB26;

LAB25:    t11 = (t15 + 4);
    *((unsigned int *)t15) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB26;

LAB27:    t14 = (t0 + 1688U);
    t17 = *((char **)t14);
    memset(t16, 0, 8);
    t14 = (t17 + 4);
    t41 = *((unsigned int *)t14);
    t42 = (~(t41));
    t43 = *((unsigned int *)t17);
    t44 = (t43 & t42);
    t45 = (t44 & 1U);
    if (t45 != 0)
        goto LAB30;

LAB31:    if (*((unsigned int *)t14) != 0)
        goto LAB32;

LAB33:    t47 = *((unsigned int *)t15);
    t48 = *((unsigned int *)t16);
    t49 = (t47 & t48);
    *((unsigned int *)t46) = t49;
    t19 = (t15 + 4);
    t20 = (t16 + 4);
    t21 = (t46 + 4);
    t50 = *((unsigned int *)t19);
    t51 = *((unsigned int *)t20);
    t52 = (t50 | t51);
    *((unsigned int *)t21) = t52;
    t53 = *((unsigned int *)t21);
    t54 = (t53 != 0);
    if (t54 == 1)
        goto LAB34;

LAB35:
LAB36:    goto LAB29;

LAB30:    *((unsigned int *)t16) = 1;
    goto LAB33;

LAB32:    t18 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB33;

LAB34:    t55 = *((unsigned int *)t46);
    t56 = *((unsigned int *)t21);
    *((unsigned int *)t46) = (t55 | t56);
    t22 = (t15 + 4);
    t23 = (t16 + 4);
    t57 = *((unsigned int *)t15);
    t58 = (~(t57));
    t59 = *((unsigned int *)t22);
    t60 = (~(t59));
    t61 = *((unsigned int *)t16);
    t62 = (~(t61));
    t63 = *((unsigned int *)t23);
    t64 = (~(t63));
    t28 = (t58 & t60);
    t31 = (t62 & t64);
    t65 = (~(t28));
    t66 = (~(t31));
    t67 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t67 & t65);
    t68 = *((unsigned int *)t21);
    *((unsigned int *)t21) = (t68 & t66);
    t69 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t69 & t65);
    t70 = *((unsigned int *)t46);
    *((unsigned int *)t46) = (t70 & t66);
    goto LAB36;

LAB37:    xsi_set_current_line(73, ng0);

LAB40:    xsi_set_current_line(74, ng0);
    t25 = (t0 + 1848U);
    t26 = *((char **)t25);
    t25 = (t0 + 2568);
    t29 = (t0 + 2568);
    t78 = (t29 + 72U);
    t79 = *((char **)t78);
    t80 = (t0 + 2568);
    t81 = (t80 + 64U);
    t82 = *((char **)t81);
    t84 = (t0 + 1368U);
    t85 = *((char **)t84);
    memset(t83, 0, 8);
    t84 = (t83 + 4);
    t86 = (t85 + 4);
    t87 = *((unsigned int *)t85);
    t88 = (t87 >> 2);
    *((unsigned int *)t83) = t88;
    t89 = *((unsigned int *)t86);
    t90 = (t89 >> 2);
    *((unsigned int *)t84) = t90;
    t91 = *((unsigned int *)t83);
    *((unsigned int *)t83) = (t91 & 7U);
    t92 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t92 & 7U);
    xsi_vlog_generic_convert_array_indices(t76, t77, t79, t82, 2, 1, t83, 3, 2);
    t93 = (t76 + 4);
    t94 = *((unsigned int *)t93);
    t32 = (!(t94));
    t95 = (t77 + 4);
    t96 = *((unsigned int *)t95);
    t35 = (!(t96));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB41;

LAB42:    goto LAB39;

LAB41:    t97 = *((unsigned int *)t76);
    t98 = *((unsigned int *)t77);
    t99 = (t97 - t98);
    t100 = (t99 + 1);
    xsi_vlogvar_wait_assign_value(t25, t26, 0, *((unsigned int *)t77), t100, 0LL);
    goto LAB42;

}


extern void work_m_00000000001548165817_3258266500_init()
{
	static char *pe[] = {(void *)Cont_64_0,(void *)Always_65_1};
	xsi_register_didat("work_m_00000000001548165817_3258266500", "isim/pipeline_isim_beh.exe.sim/work/m_00000000001548165817_3258266500.didat");
	xsi_register_executes(pe);
}
