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
static const char *ng0 = "C:/Users/HO_win7/Documents/FPGA/ALU/tb_ALU.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static unsigned int ng3[] = {7U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static int ng7[] = {49, 0};
static int ng8[] = {2000000000, 0};
static int ng9[] = {1000000000, 0};
static int ng10[] = {1, 0};
static unsigned int ng11[] = {1U, 0U};



static void Initial_50_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(50, ng0);

LAB2:    xsi_set_current_line(52, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1928);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(53, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2088);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 32);
    xsi_set_current_line(54, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1768);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 3);

LAB1:    return;
}

static void Initial_56_1(char *t0)
{
    char t6[8];
    char t20[8];
    char t27[8];
    char t30[8];
    char t66[8];
    char t69[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t28;
    char *t29;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t44;
    char *t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    int t54;
    int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t67;
    char *t68;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    char *t73;
    char *t74;
    char *t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    char *t83;
    char *t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    int t93;
    int t94;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;
    char *t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    char *t107;
    char *t108;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);

LAB4:    xsi_set_current_line(57, ng0);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB5:    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t7 = (t4 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB7;

LAB6:    t8 = (t5 + 4);
    if (*((unsigned int *)t8) != 0)
        goto LAB7;

LAB10:    if (*((unsigned int *)t4) > *((unsigned int *)t5))
        goto LAB9;

LAB8:    *((unsigned int *)t6) = 1;

LAB9:    t10 = (t6 + 4);
    t11 = *((unsigned int *)t10);
    t12 = (~(t11));
    t13 = *((unsigned int *)t6);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB11;

LAB12:    xsi_set_current_line(67, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1768);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(68, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(69, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 3384);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB38;

LAB1:    return;
LAB7:    t9 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t9) = 1;
    goto LAB9;

LAB11:    xsi_set_current_line(57, ng0);

LAB13:    xsi_set_current_line(58, ng0);
    t16 = (t0 + 2408);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng4)));
    memset(t20, 0, 8);
    if (*((unsigned int *)t18) != *((unsigned int *)t19))
        goto LAB15;

LAB14:    t21 = (t18 + 4);
    t22 = (t19 + 4);
    if (*((unsigned int *)t21) != *((unsigned int *)t22))
        goto LAB15;

LAB16:    t23 = (t0 + 2408);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    t26 = ((char*)((ng5)));
    memset(t27, 0, 8);
    if (*((unsigned int *)t25) != *((unsigned int *)t26))
        goto LAB18;

LAB17:    t28 = (t25 + 4);
    t29 = (t26 + 4);
    if (*((unsigned int *)t28) != *((unsigned int *)t29))
        goto LAB18;

LAB19:    t31 = *((unsigned int *)t20);
    t32 = *((unsigned int *)t27);
    t33 = (t31 & t32);
    *((unsigned int *)t30) = t33;
    t34 = (t20 + 4);
    t35 = (t27 + 4);
    t36 = (t30 + 4);
    t37 = *((unsigned int *)t34);
    t38 = *((unsigned int *)t35);
    t39 = (t37 | t38);
    *((unsigned int *)t36) = t39;
    t40 = *((unsigned int *)t36);
    t41 = (t40 != 0);
    if (t41 == 1)
        goto LAB20;

LAB21:
LAB22:    t62 = (t0 + 2408);
    t63 = (t62 + 56U);
    t64 = *((char **)t63);
    t65 = ((char*)((ng6)));
    memset(t66, 0, 8);
    if (*((unsigned int *)t64) != *((unsigned int *)t65))
        goto LAB24;

LAB23:    t67 = (t64 + 4);
    t68 = (t65 + 4);
    if (*((unsigned int *)t67) != *((unsigned int *)t68))
        goto LAB24;

LAB25:    t70 = *((unsigned int *)t30);
    t71 = *((unsigned int *)t66);
    t72 = (t70 & t71);
    *((unsigned int *)t69) = t72;
    t73 = (t30 + 4);
    t74 = (t66 + 4);
    t75 = (t69 + 4);
    t76 = *((unsigned int *)t73);
    t77 = *((unsigned int *)t74);
    t78 = (t76 | t77);
    *((unsigned int *)t75) = t78;
    t79 = *((unsigned int *)t75);
    t80 = (t79 != 0);
    if (t80 == 1)
        goto LAB26;

LAB27:
LAB28:    t101 = (t69 + 4);
    t102 = *((unsigned int *)t101);
    t103 = (~(t102));
    t104 = *((unsigned int *)t69);
    t105 = (t104 & t103);
    t106 = (t105 != 0);
    if (t106 > 0)
        goto LAB29;

LAB30:
LAB31:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng11)));
    memset(t6, 0, 8);
    xsi_vlog_unsigned_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2408);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB5;

LAB15:    *((unsigned int *)t20) = 1;
    goto LAB16;

LAB18:    *((unsigned int *)t27) = 1;
    goto LAB19;

LAB20:    t42 = *((unsigned int *)t30);
    t43 = *((unsigned int *)t36);
    *((unsigned int *)t30) = (t42 | t43);
    t44 = (t20 + 4);
    t45 = (t27 + 4);
    t46 = *((unsigned int *)t20);
    t47 = (~(t46));
    t48 = *((unsigned int *)t44);
    t49 = (~(t48));
    t50 = *((unsigned int *)t27);
    t51 = (~(t50));
    t52 = *((unsigned int *)t45);
    t53 = (~(t52));
    t54 = (t47 & t49);
    t55 = (t51 & t53);
    t56 = (~(t54));
    t57 = (~(t55));
    t58 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t58 & t56);
    t59 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t59 & t57);
    t60 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t60 & t56);
    t61 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t61 & t57);
    goto LAB22;

LAB24:    *((unsigned int *)t66) = 1;
    goto LAB25;

LAB26:    t81 = *((unsigned int *)t69);
    t82 = *((unsigned int *)t75);
    *((unsigned int *)t69) = (t81 | t82);
    t83 = (t30 + 4);
    t84 = (t66 + 4);
    t85 = *((unsigned int *)t30);
    t86 = (~(t85));
    t87 = *((unsigned int *)t83);
    t88 = (~(t87));
    t89 = *((unsigned int *)t66);
    t90 = (~(t89));
    t91 = *((unsigned int *)t84);
    t92 = (~(t91));
    t93 = (t86 & t88);
    t94 = (t90 & t92);
    t95 = (~(t93));
    t96 = (~(t94));
    t97 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t97 & t95);
    t98 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t98 & t96);
    t99 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t99 & t95);
    t100 = *((unsigned int *)t69);
    *((unsigned int *)t69) = (t100 & t96);
    goto LAB28;

LAB29:    xsi_set_current_line(58, ng0);

LAB32:    xsi_set_current_line(59, ng0);
    xsi_set_current_line(59, ng0);
    t107 = ((char*)((ng1)));
    t108 = (t0 + 2248);
    xsi_vlogvar_assign_value(t108, t107, 0, 0, 32);

LAB33:    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng7)));
    memset(t6, 0, 8);
    xsi_vlog_signed_less(t6, 32, t4, 32, t5, 32);
    t7 = (t6 + 4);
    t11 = *((unsigned int *)t7);
    t12 = (~(t11));
    t13 = *((unsigned int *)t6);
    t14 = (t13 & t12);
    t15 = (t14 != 0);
    if (t15 > 0)
        goto LAB34;

LAB35:    goto LAB31;

LAB34:    xsi_set_current_line(59, ng0);

LAB36:    xsi_set_current_line(60, ng0);
    t8 = (t0 + 2408);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t16 = (t0 + 1768);
    xsi_vlogvar_assign_value(t16, t10, 0, 0, 3);
    xsi_set_current_line(61, ng0);
    *((int *)t6) = xsi_vlog_rtl_dist_uniform(0, 0, -2147483648, 2147483647);
    t2 = (t6 + 4);
    *((int *)t2) = 0;
    t3 = ((char*)((ng8)));
    memset(t20, 0, 8);
    xsi_vlog_signed_mod(t20, 32, t6, 32, t3, 32);
    t4 = (t0 + 1928);
    xsi_vlogvar_assign_value(t4, t20, 0, 0, 32);
    xsi_set_current_line(62, ng0);
    *((int *)t6) = xsi_vlog_rtl_dist_uniform(0, 0, -2147483648, 2147483647);
    t2 = (t6 + 4);
    *((int *)t2) = 0;
    t3 = ((char*)((ng9)));
    memset(t20, 0, 8);
    xsi_vlog_signed_mod(t20, 32, t6, 32, t3, 32);
    t4 = (t0 + 2088);
    xsi_vlogvar_assign_value(t4, t20, 0, 0, 32);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 3384);
    xsi_process_wait(t2, 50000LL);
    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB37:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng10)));
    memset(t6, 0, 8);
    xsi_vlog_signed_add(t6, 32, t4, 32, t5, 32);
    t7 = (t0 + 2248);
    xsi_vlogvar_assign_value(t7, t6, 0, 0, 32);
    goto LAB33;

LAB38:    xsi_set_current_line(71, ng0);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 1768);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    xsi_set_current_line(72, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB1;

}


extern void work_m_00000000002164465145_0014931350_init()
{
	static char *pe[] = {(void *)Initial_50_0,(void *)Initial_56_1};
	xsi_register_didat("work_m_00000000002164465145_0014931350", "isim/tb_ALU_isim_beh.exe.sim/work/m_00000000002164465145_0014931350.didat");
	xsi_register_executes(pe);
}
