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
    work_m_00000000001754048474_0337384836_init();
    work_m_00000000001176744304_1733832700_init();
    work_m_00000000003352394705_4155633426_init();
    work_m_00000000000487831698_0791564622_init();
    work_m_00000000000546264844_0996826214_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000546264844_0996826214");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
