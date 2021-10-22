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
static const char *ng0 = "C:/Users/HO_win7/Documents/FPGA/Advanced_withj/Advancedwithj/Memory.v";
static unsigned int ng1[] = {1U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {32, 0};
static unsigned int ng4[] = {0U, 0U};
static int ng5[] = {1, 0};
static unsigned int ng6[] = {30U, 0U};
static int ng7[] = {12, 0};



static void Always_36_0(char *t0)
{
    char t9[8];
    char t17[8];
    char t18[8];
    char t47[8];
    char t77[8];
    char t78[8];
    char t84[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    char *t30;
    unsigned int t31;
    int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    int t36;
    int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
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
    unsigned int t76;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    char *t83;
    char *t85;
    char *t86;
    char *t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    char *t94;
    unsigned int t95;
    char *t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    int t100;
    int t101;

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(36, ng0);
    t2 = (t0 + 4056);
    *((int *)t2) = 1;
    t3 = (t0 + 3520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(36, ng0);

LAB5:    xsi_set_current_line(37, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 1, t4, 1);
    if (t6 == 1)
        goto LAB7;

LAB8:
LAB10:
LAB9:    xsi_set_current_line(44, ng0);

LAB21:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    memset(t9, 0, 8);
    t2 = (t3 + 4);
    t10 = *((unsigned int *)t2);
    t11 = (~(t10));
    t12 = *((unsigned int *)t3);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB25;

LAB23:    if (*((unsigned int *)t2) == 0)
        goto LAB22;

LAB24:    t4 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t4) = 1;

LAB25:    memset(t17, 0, 8);
    t7 = (t9 + 4);
    t29 = *((unsigned int *)t7);
    t31 = (~(t29));
    t34 = *((unsigned int *)t9);
    t35 = (t34 & t31);
    t38 = (t35 & 1U);
    if (t38 != 0)
        goto LAB26;

LAB27:    if (*((unsigned int *)t7) != 0)
        goto LAB28;

LAB29:    t15 = (t17 + 4);
    t39 = *((unsigned int *)t17);
    t40 = *((unsigned int *)t15);
    t41 = (t39 || t40);
    if (t41 > 0)
        goto LAB30;

LAB31:    memcpy(t47, t17, 8);

LAB32:    t26 = (t47 + 4);
    t72 = *((unsigned int *)t26);
    t73 = (~(t72));
    t74 = *((unsigned int *)t47);
    t75 = (t74 & t73);
    t76 = (t75 != 0);
    if (t76 > 0)
        goto LAB40;

LAB41:
LAB42:
LAB11:    goto LAB2;

LAB7:    xsi_set_current_line(38, ng0);

LAB12:    xsi_set_current_line(39, ng0);
    xsi_set_current_line(39, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 2408);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);

LAB13:    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng3)));
    memset(t9, 0, 8);
    xsi_vlog_signed_less(t9, 32, t4, 32, t7, 32);
    t8 = (t9 + 4);
    t10 = *((unsigned int *)t8);
    t11 = (~(t10));
    t12 = *((unsigned int *)t9);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB14;

LAB15:    xsi_set_current_line(42, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2568);
    t4 = (t0 + 2568);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t15 = (t0 + 2568);
    t16 = (t15 + 64U);
    t19 = *((char **)t16);
    t20 = ((char*)((ng7)));
    xsi_vlog_generic_convert_array_indices(t9, t17, t8, t19, 2, 1, t20, 32, 1);
    t21 = (t9 + 4);
    t10 = *((unsigned int *)t21);
    t6 = (!(t10));
    t22 = (t17 + 4);
    t11 = *((unsigned int *)t22);
    t32 = (!(t11));
    t33 = (t6 && t32);
    if (t33 == 1)
        goto LAB19;

LAB20:    goto LAB11;

LAB14:    xsi_set_current_line(39, ng0);

LAB16:    xsi_set_current_line(40, ng0);
    t15 = ((char*)((ng4)));
    t16 = (t0 + 2568);
    t19 = (t0 + 2568);
    t20 = (t19 + 72U);
    t21 = *((char **)t20);
    t22 = (t0 + 2568);
    t23 = (t22 + 64U);
    t24 = *((char **)t23);
    t25 = (t0 + 2408);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    xsi_vlog_generic_convert_array_indices(t17, t18, t21, t24, 2, 1, t27, 32, 1);
    t28 = (t17 + 4);
    t29 = *((unsigned int *)t28);
    t6 = (!(t29));
    t30 = (t18 + 4);
    t31 = *((unsigned int *)t30);
    t32 = (!(t31));
    t33 = (t6 && t32);
    if (t33 == 1)
        goto LAB17;

LAB18:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng5)));
    memset(t9, 0, 8);
    xsi_vlog_signed_add(t9, 32, t4, 32, t7, 32);
    t8 = (t0 + 2408);
    xsi_vlogvar_assign_value(t8, t9, 0, 0, 32);
    goto LAB13;

LAB17:    t34 = *((unsigned int *)t17);
    t35 = *((unsigned int *)t18);
    t36 = (t34 - t35);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t16, t15, 0, *((unsigned int *)t18), t37, 0LL);
    goto LAB18;

LAB19:    t12 = *((unsigned int *)t9);
    t13 = *((unsigned int *)t17);
    t36 = (t12 - t13);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t17), t37, 0LL);
    goto LAB20;

LAB22:    *((unsigned int *)t9) = 1;
    goto LAB25;

LAB26:    *((unsigned int *)t17) = 1;
    goto LAB29;

LAB28:    t8 = (t17 + 4);
    *((unsigned int *)t17) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB29;

LAB30:    t16 = (t0 + 1688U);
    t19 = *((char **)t16);
    memset(t18, 0, 8);
    t16 = (t19 + 4);
    t42 = *((unsigned int *)t16);
    t43 = (~(t42));
    t44 = *((unsigned int *)t19);
    t45 = (t44 & t43);
    t46 = (t45 & 1U);
    if (t46 != 0)
        goto LAB33;

LAB34:    if (*((unsigned int *)t16) != 0)
        goto LAB35;

LAB36:    t48 = *((unsigned int *)t17);
    t49 = *((unsigned int *)t18);
    t50 = (t48 & t49);
    *((unsigned int *)t47) = t50;
    t21 = (t17 + 4);
    t22 = (t18 + 4);
    t23 = (t47 + 4);
    t51 = *((unsigned int *)t21);
    t52 = *((unsigned int *)t22);
    t53 = (t51 | t52);
    *((unsigned int *)t23) = t53;
    t54 = *((unsigned int *)t23);
    t55 = (t54 != 0);
    if (t55 == 1)
        goto LAB37;

LAB38:
LAB39:    goto LAB32;

LAB33:    *((unsigned int *)t18) = 1;
    goto LAB36;

LAB35:    t20 = (t18 + 4);
    *((unsigned int *)t18) = 1;
    *((unsigned int *)t20) = 1;
    goto LAB36;

LAB37:    t56 = *((unsigned int *)t47);
    t57 = *((unsigned int *)t23);
    *((unsigned int *)t47) = (t56 | t57);
    t24 = (t17 + 4);
    t25 = (t18 + 4);
    t58 = *((unsigned int *)t17);
    t59 = (~(t58));
    t60 = *((unsigned int *)t24);
    t61 = (~(t60));
    t62 = *((unsigned int *)t18);
    t63 = (~(t62));
    t64 = *((unsigned int *)t25);
    t65 = (~(t64));
    t6 = (t59 & t61);
    t32 = (t63 & t65);
    t66 = (~(t6));
    t67 = (~(t32));
    t68 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t68 & t66);
    t69 = *((unsigned int *)t23);
    *((unsigned int *)t23) = (t69 & t67);
    t70 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t70 & t66);
    t71 = *((unsigned int *)t47);
    *((unsigned int *)t47) = (t71 & t67);
    goto LAB39;

LAB40:    xsi_set_current_line(45, ng0);

LAB43:    xsi_set_current_line(46, ng0);
    t27 = (t0 + 1848U);
    t28 = *((char **)t27);
    t27 = (t0 + 2568);
    t30 = (t0 + 2568);
    t79 = (t30 + 72U);
    t80 = *((char **)t79);
    t81 = (t0 + 2568);
    t82 = (t81 + 64U);
    t83 = *((char **)t82);
    t85 = (t0 + 1368U);
    t86 = *((char **)t85);
    memset(t84, 0, 8);
    t85 = (t84 + 4);
    t87 = (t86 + 4);
    t88 = *((unsigned int *)t86);
    t89 = (t88 >> 0);
    *((unsigned int *)t84) = t89;
    t90 = *((unsigned int *)t87);
    t91 = (t90 >> 0);
    *((unsigned int *)t85) = t91;
    t92 = *((unsigned int *)t84);
    *((unsigned int *)t84) = (t92 & 31U);
    t93 = *((unsigned int *)t85);
    *((unsigned int *)t85) = (t93 & 31U);
    xsi_vlog_generic_convert_array_indices(t77, t78, t80, t83, 2, 1, t84, 5, 2);
    t94 = (t77 + 4);
    t95 = *((unsigned int *)t94);
    t33 = (!(t95));
    t96 = (t78 + 4);
    t97 = *((unsigned int *)t96);
    t36 = (!(t97));
    t37 = (t33 && t36);
    if (t37 == 1)
        goto LAB44;

LAB45:    goto LAB42;

LAB44:    t98 = *((unsigned int *)t77);
    t99 = *((unsigned int *)t78);
    t100 = (t98 - t99);
    t101 = (t100 + 1);
    xsi_vlogvar_wait_assign_value(t27, t28, 0, *((unsigned int *)t78), t101, 0LL);
    goto LAB45;

}

static void Cont_52_1(char *t0)
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

LAB0:    t1 = (t0 + 3736U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
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
    t46 = (t0 + 4072);
    *((int *)t46) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = ((char*)((ng4)));
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
    t36 = (t35 >> 0);
    *((unsigned int *)t31) = t36;
    t37 = *((unsigned int *)t34);
    t38 = (t37 >> 0);
    *((unsigned int *)t32) = t38;
    t39 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t39 & 31U);
    t40 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t40 & 31U);
    xsi_vlog_generic_get_array_select_value(t24, 32, t23, t27, t30, 2, 1, t31, 5, 2);
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t16, 32, t24, 32);
    goto LAB16;

LAB14:    memcpy(t3, t16, 8);
    goto LAB16;

}


extern void work_m_00000000001560921722_3258266500_init()
{
	static char *pe[] = {(void *)Always_36_0,(void *)Cont_52_1};
	xsi_register_didat("work_m_00000000001560921722_3258266500", "isim/tb_MIPS_isim_beh.exe.sim/work/m_00000000001560921722_3258266500.didat");
	xsi_register_executes(pe);
}
