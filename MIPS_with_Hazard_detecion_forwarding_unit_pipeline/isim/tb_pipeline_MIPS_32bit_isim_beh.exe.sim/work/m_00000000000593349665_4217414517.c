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
static const char *ng0 = "C:/Users/HO_win7/Documents/FPGA/advanced_with/advanced/advanced_pipeline/clock_div.v";
static int ng1[] = {0, 0};
static unsigned int ng2[] = {0U, 0U};
static int ng3[] = {24, 0};
static int ng4[] = {1, 0};



static void Always_29_0(char *t0)
{
    char t13[8];
    char t16[8];
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
    char *t15;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    char *t34;

LAB0:    t1 = (t0 + 2688U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 3008);
    *((int *)t2) = 1;
    t3 = (t0 + 2720);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(29, ng0);

LAB5:    xsi_set_current_line(30, ng0);
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

LAB7:    xsi_set_current_line(34, ng0);

LAB10:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1768);
    t11 = (t5 + 72U);
    t12 = *((char **)t11);
    t14 = ((char*)((ng3)));
    xsi_vlog_generic_get_index_select_value(t13, 32, t4, t12, 2, t14, 32, 1);
    t15 = ((char*)((ng4)));
    memset(t16, 0, 8);
    t17 = (t13 + 4);
    t18 = (t15 + 4);
    t6 = *((unsigned int *)t13);
    t7 = *((unsigned int *)t15);
    t8 = (t6 ^ t7);
    t9 = *((unsigned int *)t17);
    t10 = *((unsigned int *)t18);
    t19 = (t9 ^ t10);
    t20 = (t8 | t19);
    t21 = *((unsigned int *)t17);
    t22 = *((unsigned int *)t18);
    t23 = (t21 | t22);
    t24 = (~(t23));
    t25 = (t20 & t24);
    if (t25 != 0)
        goto LAB14;

LAB11:    if (t23 != 0)
        goto LAB13;

LAB12:    *((unsigned int *)t16) = 1;

LAB14:    t27 = (t16 + 4);
    t28 = *((unsigned int *)t27);
    t29 = (~(t28));
    t30 = *((unsigned int *)t16);
    t31 = (t30 & t29);
    t32 = (t31 != 0);
    if (t32 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = ((char*)((ng4)));
    memset(t13, 0, 8);
    xsi_vlog_unsigned_add(t13, 32, t4, 25, t5, 32);
    t11 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t11, t13, 0, 0, 25, 0LL);

LAB17:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(30, ng0);

LAB9:    xsi_set_current_line(31, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 25, 0LL);
    xsi_set_current_line(32, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 1, 0LL);
    goto LAB8;

LAB13:    t26 = (t16 + 4);
    *((unsigned int *)t16) = 1;
    *((unsigned int *)t26) = 1;
    goto LAB14;

LAB15:    xsi_set_current_line(35, ng0);

LAB18:    xsi_set_current_line(36, ng0);
    t33 = ((char*)((ng1)));
    t34 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t34, t33, 0, 0, 25, 0LL);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1608);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t13, 0, 8);
    t5 = (t4 + 4);
    t6 = *((unsigned int *)t5);
    t7 = (~(t6));
    t8 = *((unsigned int *)t4);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB22;

LAB20:    if (*((unsigned int *)t5) == 0)
        goto LAB19;

LAB21:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;

LAB22:    t12 = (t13 + 4);
    t14 = (t4 + 4);
    t19 = *((unsigned int *)t4);
    t20 = (~(t19));
    *((unsigned int *)t13) = t20;
    *((unsigned int *)t12) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB24;

LAB23:    t25 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t25 & 1U);
    t28 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t28 & 1U);
    t15 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t15, t13, 0, 0, 1, 0LL);
    goto LAB17;

LAB19:    *((unsigned int *)t13) = 1;
    goto LAB22;

LAB24:    t21 = *((unsigned int *)t13);
    t22 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t21 | t22);
    t23 = *((unsigned int *)t12);
    t24 = *((unsigned int *)t14);
    *((unsigned int *)t12) = (t23 | t24);
    goto LAB23;

}


extern void work_m_00000000000593349665_4217414517_init()
{
	static char *pe[] = {(void *)Always_29_0};
	xsi_register_didat("work_m_00000000000593349665_4217414517", "isim/tb_pipeline_MIPS_32bit_isim_beh.exe.sim/work/m_00000000000593349665_4217414517.didat");
	xsi_register_executes(pe);
}
