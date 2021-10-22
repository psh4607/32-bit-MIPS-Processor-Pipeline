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
static const char *ng0 = "C:/Users/HO_win7/Documents/FPGA/Advanced_withj/Advancedwithj/instructionMemory.v";
static unsigned int ng1[] = {1U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {48, 0};
static unsigned int ng4[] = {0U, 0U};
static int ng5[] = {1, 0};
static unsigned int ng6[] = {201326596U, 0U};
static unsigned int ng7[] = {2353070084U, 0U};
static unsigned int ng8[] = {8732706U, 0U};
static int ng9[] = {4, 0};
static unsigned int ng10[] = {13060130U, 0U};
static int ng11[] = {5, 0};
static unsigned int ng12[] = {17387552U, 0U};
static int ng13[] = {6, 0};
static unsigned int ng14[] = {870318112U, 0U};
static int ng15[] = {7, 0};
static int ng16[] = {8, 0};
static int ng17[] = {9, 0};
static int ng18[] = {10, 0};
static int ng19[] = {11, 0};
static int ng20[] = {12, 0};
static int ng21[] = {13, 0};
static int ng22[] = {14, 0};
static int ng23[] = {15, 0};



static void Always_15_0(char *t0)
{
    char t9[8];
    char t17[8];
    char t18[8];
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

LAB0:    t1 = (t0 + 3488U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(15, ng0);
    t2 = (t0 + 4056);
    *((int *)t2) = 1;
    t3 = (t0 + 3520);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(15, ng0);

LAB5:    xsi_set_current_line(16, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 1, t4, 1);
    if (t6 == 1)
        goto LAB7;

LAB8:
LAB9:    goto LAB2;

LAB7:    xsi_set_current_line(17, ng0);

LAB10:    xsi_set_current_line(18, ng0);
    xsi_set_current_line(18, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 2408);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 32);

LAB11:    t2 = (t0 + 2408);
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
        goto LAB12;

LAB13:    xsi_set_current_line(22, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2568);
    t4 = (t0 + 2568);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t15 = (t0 + 2568);
    t16 = (t15 + 64U);
    t19 = *((char **)t16);
    t20 = ((char*)((ng2)));
    xsi_vlog_generic_convert_array_indices(t9, t17, t8, t19, 2, 1, t20, 32, 1);
    t21 = (t9 + 4);
    t10 = *((unsigned int *)t21);
    t6 = (!(t10));
    t22 = (t17 + 4);
    t11 = *((unsigned int *)t22);
    t32 = (!(t11));
    t33 = (t6 && t32);
    if (t33 == 1)
        goto LAB17;

LAB18:    xsi_set_current_line(23, ng0);
    t2 = ((char*)((ng7)));
    t3 = (t0 + 2568);
    t4 = (t0 + 2568);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t15 = (t0 + 2568);
    t16 = (t15 + 64U);
    t19 = *((char **)t16);
    t20 = ((char*)((ng5)));
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

LAB20:    xsi_set_current_line(24, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 2568);
    t4 = (t0 + 2568);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t15 = (t0 + 2568);
    t16 = (t15 + 64U);
    t19 = *((char **)t16);
    t20 = ((char*)((ng9)));
    xsi_vlog_generic_convert_array_indices(t9, t17, t8, t19, 2, 1, t20, 32, 1);
    t21 = (t9 + 4);
    t10 = *((unsigned int *)t21);
    t6 = (!(t10));
    t22 = (t17 + 4);
    t11 = *((unsigned int *)t22);
    t32 = (!(t11));
    t33 = (t6 && t32);
    if (t33 == 1)
        goto LAB21;

LAB22:    xsi_set_current_line(25, ng0);
    t2 = ((char*)((ng10)));
    t3 = (t0 + 2568);
    t4 = (t0 + 2568);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t15 = (t0 + 2568);
    t16 = (t15 + 64U);
    t19 = *((char **)t16);
    t20 = ((char*)((ng11)));
    xsi_vlog_generic_convert_array_indices(t9, t17, t8, t19, 2, 1, t20, 32, 1);
    t21 = (t9 + 4);
    t10 = *((unsigned int *)t21);
    t6 = (!(t10));
    t22 = (t17 + 4);
    t11 = *((unsigned int *)t22);
    t32 = (!(t11));
    t33 = (t6 && t32);
    if (t33 == 1)
        goto LAB23;

LAB24:    xsi_set_current_line(26, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 2568);
    t4 = (t0 + 2568);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t15 = (t0 + 2568);
    t16 = (t15 + 64U);
    t19 = *((char **)t16);
    t20 = ((char*)((ng13)));
    xsi_vlog_generic_convert_array_indices(t9, t17, t8, t19, 2, 1, t20, 32, 1);
    t21 = (t9 + 4);
    t10 = *((unsigned int *)t21);
    t6 = (!(t10));
    t22 = (t17 + 4);
    t11 = *((unsigned int *)t22);
    t32 = (!(t11));
    t33 = (t6 && t32);
    if (t33 == 1)
        goto LAB25;

LAB26:    xsi_set_current_line(27, ng0);
    t2 = ((char*)((ng14)));
    t3 = (t0 + 2568);
    t4 = (t0 + 2568);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t15 = (t0 + 2568);
    t16 = (t15 + 64U);
    t19 = *((char **)t16);
    t20 = ((char*)((ng15)));
    xsi_vlog_generic_convert_array_indices(t9, t17, t8, t19, 2, 1, t20, 32, 1);
    t21 = (t9 + 4);
    t10 = *((unsigned int *)t21);
    t6 = (!(t10));
    t22 = (t17 + 4);
    t11 = *((unsigned int *)t22);
    t32 = (!(t11));
    t33 = (t6 && t32);
    if (t33 == 1)
        goto LAB27;

LAB28:    xsi_set_current_line(28, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2568);
    t4 = (t0 + 2568);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t15 = (t0 + 2568);
    t16 = (t15 + 64U);
    t19 = *((char **)t16);
    t20 = ((char*)((ng16)));
    xsi_vlog_generic_convert_array_indices(t9, t17, t8, t19, 2, 1, t20, 32, 1);
    t21 = (t9 + 4);
    t10 = *((unsigned int *)t21);
    t6 = (!(t10));
    t22 = (t17 + 4);
    t11 = *((unsigned int *)t22);
    t32 = (!(t11));
    t33 = (t6 && t32);
    if (t33 == 1)
        goto LAB29;

LAB30:    xsi_set_current_line(29, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2568);
    t4 = (t0 + 2568);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t15 = (t0 + 2568);
    t16 = (t15 + 64U);
    t19 = *((char **)t16);
    t20 = ((char*)((ng17)));
    xsi_vlog_generic_convert_array_indices(t9, t17, t8, t19, 2, 1, t20, 32, 1);
    t21 = (t9 + 4);
    t10 = *((unsigned int *)t21);
    t6 = (!(t10));
    t22 = (t17 + 4);
    t11 = *((unsigned int *)t22);
    t32 = (!(t11));
    t33 = (t6 && t32);
    if (t33 == 1)
        goto LAB31;

LAB32:    xsi_set_current_line(30, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2568);
    t4 = (t0 + 2568);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t15 = (t0 + 2568);
    t16 = (t15 + 64U);
    t19 = *((char **)t16);
    t20 = ((char*)((ng18)));
    xsi_vlog_generic_convert_array_indices(t9, t17, t8, t19, 2, 1, t20, 32, 1);
    t21 = (t9 + 4);
    t10 = *((unsigned int *)t21);
    t6 = (!(t10));
    t22 = (t17 + 4);
    t11 = *((unsigned int *)t22);
    t32 = (!(t11));
    t33 = (t6 && t32);
    if (t33 == 1)
        goto LAB33;

LAB34:    xsi_set_current_line(31, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2568);
    t4 = (t0 + 2568);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t15 = (t0 + 2568);
    t16 = (t15 + 64U);
    t19 = *((char **)t16);
    t20 = ((char*)((ng19)));
    xsi_vlog_generic_convert_array_indices(t9, t17, t8, t19, 2, 1, t20, 32, 1);
    t21 = (t9 + 4);
    t10 = *((unsigned int *)t21);
    t6 = (!(t10));
    t22 = (t17 + 4);
    t11 = *((unsigned int *)t22);
    t32 = (!(t11));
    t33 = (t6 && t32);
    if (t33 == 1)
        goto LAB35;

LAB36:    xsi_set_current_line(32, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2568);
    t4 = (t0 + 2568);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t15 = (t0 + 2568);
    t16 = (t15 + 64U);
    t19 = *((char **)t16);
    t20 = ((char*)((ng20)));
    xsi_vlog_generic_convert_array_indices(t9, t17, t8, t19, 2, 1, t20, 32, 1);
    t21 = (t9 + 4);
    t10 = *((unsigned int *)t21);
    t6 = (!(t10));
    t22 = (t17 + 4);
    t11 = *((unsigned int *)t22);
    t32 = (!(t11));
    t33 = (t6 && t32);
    if (t33 == 1)
        goto LAB37;

LAB38:    xsi_set_current_line(33, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2568);
    t4 = (t0 + 2568);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t15 = (t0 + 2568);
    t16 = (t15 + 64U);
    t19 = *((char **)t16);
    t20 = ((char*)((ng21)));
    xsi_vlog_generic_convert_array_indices(t9, t17, t8, t19, 2, 1, t20, 32, 1);
    t21 = (t9 + 4);
    t10 = *((unsigned int *)t21);
    t6 = (!(t10));
    t22 = (t17 + 4);
    t11 = *((unsigned int *)t22);
    t32 = (!(t11));
    t33 = (t6 && t32);
    if (t33 == 1)
        goto LAB39;

LAB40:    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2568);
    t4 = (t0 + 2568);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t15 = (t0 + 2568);
    t16 = (t15 + 64U);
    t19 = *((char **)t16);
    t20 = ((char*)((ng22)));
    xsi_vlog_generic_convert_array_indices(t9, t17, t8, t19, 2, 1, t20, 32, 1);
    t21 = (t9 + 4);
    t10 = *((unsigned int *)t21);
    t6 = (!(t10));
    t22 = (t17 + 4);
    t11 = *((unsigned int *)t22);
    t32 = (!(t11));
    t33 = (t6 && t32);
    if (t33 == 1)
        goto LAB41;

LAB42:    xsi_set_current_line(35, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2568);
    t4 = (t0 + 2568);
    t7 = (t4 + 72U);
    t8 = *((char **)t7);
    t15 = (t0 + 2568);
    t16 = (t15 + 64U);
    t19 = *((char **)t16);
    t20 = ((char*)((ng23)));
    xsi_vlog_generic_convert_array_indices(t9, t17, t8, t19, 2, 1, t20, 32, 1);
    t21 = (t9 + 4);
    t10 = *((unsigned int *)t21);
    t6 = (!(t10));
    t22 = (t17 + 4);
    t11 = *((unsigned int *)t22);
    t32 = (!(t11));
    t33 = (t6 && t32);
    if (t33 == 1)
        goto LAB43;

LAB44:    goto LAB9;

LAB12:    xsi_set_current_line(18, ng0);

LAB14:    xsi_set_current_line(19, ng0);
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
        goto LAB15;

LAB16:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 2408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng5)));
    memset(t9, 0, 8);
    xsi_vlog_signed_add(t9, 32, t4, 32, t7, 32);
    t8 = (t0 + 2408);
    xsi_vlogvar_assign_value(t8, t9, 0, 0, 32);
    goto LAB11;

LAB15:    t34 = *((unsigned int *)t17);
    t35 = *((unsigned int *)t18);
    t36 = (t34 - t35);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t16, t15, 0, *((unsigned int *)t18), t37, 0LL);
    goto LAB16;

LAB17:    t12 = *((unsigned int *)t9);
    t13 = *((unsigned int *)t17);
    t36 = (t12 - t13);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t17), t37, 0LL);
    goto LAB18;

LAB19:    t12 = *((unsigned int *)t9);
    t13 = *((unsigned int *)t17);
    t36 = (t12 - t13);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t17), t37, 0LL);
    goto LAB20;

LAB21:    t12 = *((unsigned int *)t9);
    t13 = *((unsigned int *)t17);
    t36 = (t12 - t13);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t17), t37, 0LL);
    goto LAB22;

LAB23:    t12 = *((unsigned int *)t9);
    t13 = *((unsigned int *)t17);
    t36 = (t12 - t13);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t17), t37, 0LL);
    goto LAB24;

LAB25:    t12 = *((unsigned int *)t9);
    t13 = *((unsigned int *)t17);
    t36 = (t12 - t13);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t17), t37, 0LL);
    goto LAB26;

LAB27:    t12 = *((unsigned int *)t9);
    t13 = *((unsigned int *)t17);
    t36 = (t12 - t13);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t17), t37, 0LL);
    goto LAB28;

LAB29:    t12 = *((unsigned int *)t9);
    t13 = *((unsigned int *)t17);
    t36 = (t12 - t13);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t17), t37, 0LL);
    goto LAB30;

LAB31:    t12 = *((unsigned int *)t9);
    t13 = *((unsigned int *)t17);
    t36 = (t12 - t13);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t17), t37, 0LL);
    goto LAB32;

LAB33:    t12 = *((unsigned int *)t9);
    t13 = *((unsigned int *)t17);
    t36 = (t12 - t13);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t17), t37, 0LL);
    goto LAB34;

LAB35:    t12 = *((unsigned int *)t9);
    t13 = *((unsigned int *)t17);
    t36 = (t12 - t13);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t17), t37, 0LL);
    goto LAB36;

LAB37:    t12 = *((unsigned int *)t9);
    t13 = *((unsigned int *)t17);
    t36 = (t12 - t13);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t17), t37, 0LL);
    goto LAB38;

LAB39:    t12 = *((unsigned int *)t9);
    t13 = *((unsigned int *)t17);
    t36 = (t12 - t13);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t17), t37, 0LL);
    goto LAB40;

LAB41:    t12 = *((unsigned int *)t9);
    t13 = *((unsigned int *)t17);
    t36 = (t12 - t13);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t17), t37, 0LL);
    goto LAB42;

LAB43:    t12 = *((unsigned int *)t9);
    t13 = *((unsigned int *)t17);
    t36 = (t12 - t13);
    t37 = (t36 + 1);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, *((unsigned int *)t17), t37, 0LL);
    goto LAB44;

}

static void Cont_40_1(char *t0)
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

LAB2:    xsi_set_current_line(40, ng0);
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
    t36 = (t35 >> 2);
    *((unsigned int *)t31) = t36;
    t37 = *((unsigned int *)t34);
    t38 = (t37 >> 2);
    *((unsigned int *)t32) = t38;
    t39 = *((unsigned int *)t31);
    *((unsigned int *)t31) = (t39 & 1073741823U);
    t40 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t40 & 1073741823U);
    xsi_vlog_generic_get_array_select_value(t24, 32, t23, t27, t30, 2, 1, t31, 30, 2);
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t16, 32, t24, 32);
    goto LAB16;

LAB14:    memcpy(t3, t16, 8);
    goto LAB16;

}


extern void work_m_00000000003329010838_0610666722_init()
{
	static char *pe[] = {(void *)Always_15_0,(void *)Cont_40_1};
	xsi_register_didat("work_m_00000000003329010838_0610666722", "isim/tb_MIPS_isim_beh.exe.sim/work/m_00000000003329010838_0610666722.didat");
	xsi_register_executes(pe);
}
