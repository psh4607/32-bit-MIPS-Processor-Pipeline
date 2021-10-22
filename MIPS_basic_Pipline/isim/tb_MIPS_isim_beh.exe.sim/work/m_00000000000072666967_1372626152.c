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
static const char *ng0 = "C:/Users/HO_win7/Documents/FPGA/MIPS_basic_pipline/EXE_stage.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {31U, 31U};
static unsigned int ng4[] = {4294967295U, 4294967295U};
static int ng5[] = {2, 0};



static void Cont_26_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 5088U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t0 + 6016);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t3, 8);
    xsi_driver_vfirst_trans(t2, 0, 31);
    t8 = (t0 + 5904);
    *((int *)t8) = 1;

LAB1:    return;
}

static void Always_28_1(char *t0)
{
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t10;

LAB0:    t1 = (t0 + 5336U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 5920);
    *((int *)t2) = 1;
    t3 = (t0 + 5368);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);

LAB5:    xsi_set_current_line(31, ng0);
    t4 = (t0 + 2008U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 1, t4, 1);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 1, t2, 1);
    if (t6 == 1)
        goto LAB9;

LAB10:
LAB12:
LAB11:    xsi_set_current_line(34, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 5, 0LL);

LAB13:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);

LAB14:    t2 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 1, t2, 1);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 1, t2, 1);
    if (t6 == 1)
        goto LAB17;

LAB18:
LAB20:
LAB19:    xsi_set_current_line(41, ng0);
    t2 = ((char*)((ng4)));
    t4 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 32, 0LL);

LAB21:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1688U);
    t4 = *((char **)t2);
    t2 = ((char*)((ng5)));
    memset(t9, 0, 8);
    xsi_vlog_unsigned_lshift(t9, 32, t4, 32, t2, 32);
    t7 = (t0 + 4008);
    xsi_vlogvar_assign_value(t7, t9, 0, 0, 32);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1048U);
    t4 = *((char **)t2);
    t2 = (t0 + 4008);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    memset(t9, 0, 8);
    xsi_vlog_unsigned_add(t9, 32, t4, 32, t8, 32);
    t10 = (t0 + 3848);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 32);
    goto LAB2;

LAB7:    xsi_set_current_line(32, ng0);
    t7 = (t0 + 2328U);
    t8 = *((char **)t7);
    t7 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t7, t8, 0, 0, 5, 0LL);
    goto LAB13;

LAB9:    xsi_set_current_line(33, ng0);
    t3 = (t0 + 2488U);
    t4 = *((char **)t3);
    t3 = (t0 + 3688);
    xsi_vlogvar_wait_assign_value(t3, t4, 0, 0, 5, 0LL);
    goto LAB13;

LAB15:    xsi_set_current_line(39, ng0);
    t4 = (t0 + 1528U);
    t7 = *((char **)t4);
    t4 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t4, t7, 0, 0, 32, 0LL);
    goto LAB21;

LAB17:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 1688U);
    t7 = *((char **)t4);
    t4 = (t0 + 4168);
    xsi_vlogvar_wait_assign_value(t4, t7, 0, 0, 32, 0LL);
    goto LAB21;

}

static void Cont_51_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 5584U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 4168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 6080);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t4, 8);
    xsi_driver_vfirst_trans(t5, 0, 31);
    t10 = (t0 + 5936);
    *((int *)t10) = 1;

LAB1:    return;
}


extern void work_m_00000000000072666967_1372626152_init()
{
	static char *pe[] = {(void *)Cont_26_0,(void *)Always_28_1,(void *)Cont_51_2};
	xsi_register_didat("work_m_00000000000072666967_1372626152", "isim/tb_MIPS_isim_beh.exe.sim/work/m_00000000000072666967_1372626152.didat");
	xsi_register_executes(pe);
}
