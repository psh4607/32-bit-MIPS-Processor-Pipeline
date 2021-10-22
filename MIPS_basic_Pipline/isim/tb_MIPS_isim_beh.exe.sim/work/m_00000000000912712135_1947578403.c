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
static const char *ng0 = "C:/Users/HO_win7/Documents/FPGA/MIPS_basic_pipline/ALUwC.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {2U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {6U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {10U, 0U};
static unsigned int ng8[] = {7U, 0U};
static unsigned int ng9[] = {7U, 7U};



static void Always_66_0(char *t0)
{
    char t9[8];
    char t16[8];
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
    unsigned int t15;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2848);
    *((int *)t2) = 1;
    t3 = (t0 + 2560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(66, ng0);

LAB5:    xsi_set_current_line(68, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB11;

LAB12:
LAB14:
LAB13:    xsi_set_current_line(93, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 3, 0LL);

LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(69, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 3, 0LL);
    goto LAB15;

LAB9:    xsi_set_current_line(70, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 3, 0LL);
    goto LAB15;

LAB11:    xsi_set_current_line(71, ng0);

LAB16:    xsi_set_current_line(73, ng0);
    t3 = (t0 + 1208U);
    t4 = *((char **)t3);
    memset(t9, 0, 8);
    t3 = (t9 + 4);
    t7 = (t4 + 4);
    t10 = *((unsigned int *)t4);
    t11 = (t10 >> 0);
    *((unsigned int *)t9) = t11;
    t12 = *((unsigned int *)t7);
    t13 = (t12 >> 0);
    *((unsigned int *)t3) = t13;
    t14 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t14 & 15U);
    t15 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t15 & 15U);
    t8 = ((char*)((ng1)));
    memset(t16, 0, 8);
    t17 = (t9 + 4);
    t18 = (t8 + 4);
    t19 = *((unsigned int *)t9);
    t20 = *((unsigned int *)t8);
    t21 = (t19 ^ t20);
    t22 = *((unsigned int *)t17);
    t23 = *((unsigned int *)t18);
    t24 = (t22 ^ t23);
    t25 = (t21 | t24);
    t26 = *((unsigned int *)t17);
    t27 = *((unsigned int *)t18);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t30 = (t25 & t29);
    if (t30 != 0)
        goto LAB20;

LAB17:    if (t28 != 0)
        goto LAB19;

LAB18:    *((unsigned int *)t16) = 1;

LAB20:    t32 = (t16 + 4);
    t33 = *((unsigned int *)t32);
    t34 = (~(t33));
    t35 = *((unsigned int *)t16);
    t36 = (t35 & t34);
    t37 = (t36 != 0);
    if (t37 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t9, 0, 8);
    t2 = (t9 + 4);
    t4 = (t3 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (t10 >> 0);
    *((unsigned int *)t9) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 0);
    *((unsigned int *)t2) = t13;
    t14 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t14 & 15U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 15U);
    t7 = ((char*)((ng2)));
    memset(t16, 0, 8);
    t8 = (t9 + 4);
    t17 = (t7 + 4);
    t19 = *((unsigned int *)t9);
    t20 = *((unsigned int *)t7);
    t21 = (t19 ^ t20);
    t22 = *((unsigned int *)t8);
    t23 = *((unsigned int *)t17);
    t24 = (t22 ^ t23);
    t25 = (t21 | t24);
    t26 = *((unsigned int *)t8);
    t27 = *((unsigned int *)t17);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t30 = (t25 & t29);
    if (t30 != 0)
        goto LAB28;

LAB25:    if (t28 != 0)
        goto LAB27;

LAB26:    *((unsigned int *)t16) = 1;

LAB28:    t31 = (t16 + 4);
    t33 = *((unsigned int *)t31);
    t34 = (~(t33));
    t35 = *((unsigned int *)t16);
    t36 = (t35 & t34);
    t37 = (t36 != 0);
    if (t37 > 0)
        goto LAB29;

LAB30:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t9, 0, 8);
    t2 = (t9 + 4);
    t4 = (t3 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (t10 >> 0);
    *((unsigned int *)t9) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 0);
    *((unsigned int *)t2) = t13;
    t14 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t14 & 15U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 15U);
    t7 = ((char*)((ng5)));
    memset(t16, 0, 8);
    t8 = (t9 + 4);
    t17 = (t7 + 4);
    t19 = *((unsigned int *)t9);
    t20 = *((unsigned int *)t7);
    t21 = (t19 ^ t20);
    t22 = *((unsigned int *)t8);
    t23 = *((unsigned int *)t17);
    t24 = (t22 ^ t23);
    t25 = (t21 | t24);
    t26 = *((unsigned int *)t8);
    t27 = *((unsigned int *)t17);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t30 = (t25 & t29);
    if (t30 != 0)
        goto LAB36;

LAB33:    if (t28 != 0)
        goto LAB35;

LAB34:    *((unsigned int *)t16) = 1;

LAB36:    t31 = (t16 + 4);
    t33 = *((unsigned int *)t31);
    t34 = (~(t33));
    t35 = *((unsigned int *)t16);
    t36 = (t35 & t34);
    t37 = (t36 != 0);
    if (t37 > 0)
        goto LAB37;

LAB38:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t9, 0, 8);
    t2 = (t9 + 4);
    t4 = (t3 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (t10 >> 0);
    *((unsigned int *)t9) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 0);
    *((unsigned int *)t2) = t13;
    t14 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t14 & 15U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 15U);
    t7 = ((char*)((ng6)));
    memset(t16, 0, 8);
    t8 = (t9 + 4);
    t17 = (t7 + 4);
    t19 = *((unsigned int *)t9);
    t20 = *((unsigned int *)t7);
    t21 = (t19 ^ t20);
    t22 = *((unsigned int *)t8);
    t23 = *((unsigned int *)t17);
    t24 = (t22 ^ t23);
    t25 = (t21 | t24);
    t26 = *((unsigned int *)t8);
    t27 = *((unsigned int *)t17);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t30 = (t25 & t29);
    if (t30 != 0)
        goto LAB44;

LAB41:    if (t28 != 0)
        goto LAB43;

LAB42:    *((unsigned int *)t16) = 1;

LAB44:    t31 = (t16 + 4);
    t33 = *((unsigned int *)t31);
    t34 = (~(t33));
    t35 = *((unsigned int *)t16);
    t36 = (t35 & t34);
    t37 = (t36 != 0);
    if (t37 > 0)
        goto LAB45;

LAB46:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t9, 0, 8);
    t2 = (t9 + 4);
    t4 = (t3 + 4);
    t10 = *((unsigned int *)t3);
    t11 = (t10 >> 0);
    *((unsigned int *)t9) = t11;
    t12 = *((unsigned int *)t4);
    t13 = (t12 >> 0);
    *((unsigned int *)t2) = t13;
    t14 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t14 & 15U);
    t15 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t15 & 15U);
    t7 = ((char*)((ng7)));
    memset(t16, 0, 8);
    t8 = (t9 + 4);
    t17 = (t7 + 4);
    t19 = *((unsigned int *)t9);
    t20 = *((unsigned int *)t7);
    t21 = (t19 ^ t20);
    t22 = *((unsigned int *)t8);
    t23 = *((unsigned int *)t17);
    t24 = (t22 ^ t23);
    t25 = (t21 | t24);
    t26 = *((unsigned int *)t8);
    t27 = *((unsigned int *)t17);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t30 = (t25 & t29);
    if (t30 != 0)
        goto LAB52;

LAB49:    if (t28 != 0)
        goto LAB51;

LAB50:    *((unsigned int *)t16) = 1;

LAB52:    t31 = (t16 + 4);
    t33 = *((unsigned int *)t31);
    t34 = (~(t33));
    t35 = *((unsigned int *)t16);
    t36 = (t35 & t34);
    t37 = (t36 != 0);
    if (t37 > 0)
        goto LAB53;

LAB54:
LAB55:
LAB47:
LAB39:
LAB31:
LAB23:    goto LAB15;

LAB19:    t31 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t31) = 1;
    goto LAB20;

LAB21:    xsi_set_current_line(73, ng0);

LAB24:    xsi_set_current_line(74, ng0);
    t38 = ((char*)((ng2)));
    t39 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t39, t38, 0, 0, 3, 0LL);
    goto LAB23;

LAB27:    t18 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB28;

LAB29:    xsi_set_current_line(77, ng0);

LAB32:    xsi_set_current_line(78, ng0);
    t32 = ((char*)((ng4)));
    t38 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t38, t32, 0, 0, 3, 0LL);
    goto LAB31;

LAB35:    t18 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB36;

LAB37:    xsi_set_current_line(81, ng0);

LAB40:    xsi_set_current_line(82, ng0);
    t32 = ((char*)((ng1)));
    t38 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t38, t32, 0, 0, 3, 0LL);
    goto LAB39;

LAB43:    t18 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB44;

LAB45:    xsi_set_current_line(85, ng0);

LAB48:    xsi_set_current_line(86, ng0);
    t32 = ((char*)((ng3)));
    t38 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t38, t32, 0, 0, 3, 0LL);
    goto LAB47;

LAB51:    t18 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t18) = 1;
    goto LAB52;

LAB53:    xsi_set_current_line(89, ng0);

LAB56:    xsi_set_current_line(90, ng0);
    t32 = ((char*)((ng8)));
    t38 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t38, t32, 0, 0, 3, 0LL);
    goto LAB55;

}


extern void work_m_00000000000912712135_1947578403_init()
{
	static char *pe[] = {(void *)Always_66_0};
	xsi_register_didat("work_m_00000000000912712135_1947578403", "isim/tb_MIPS_isim_beh.exe.sim/work/m_00000000000912712135_1947578403.didat");
	xsi_register_executes(pe);
}
