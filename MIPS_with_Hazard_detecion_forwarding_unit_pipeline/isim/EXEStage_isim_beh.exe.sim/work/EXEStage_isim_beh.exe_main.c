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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000003192444441_0381749017_init();
    work_m_00000000004097444558_1083941023_init();
    work_m_00000000003076199898_1059438215_init();
    work_m_00000000000154792931_2725559894_init();
    work_m_00000000001340812226_1081490573_init();
    work_m_00000000003390512332_0950575171_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003390512332_0950575171");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
