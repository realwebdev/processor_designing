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
    work_m_00000000003510234042_0444208969_init();
    xilinxcorelib_ver_m_00000000001067635404_2773840136_init();
    work_m_00000000004259014342_2213649570_init();
    xilinxcorelib_ver_m_00000000001067635404_3833780266_init();
    work_m_00000000004259014342_3794206050_init();
    work_m_00000000004113410938_1351276808_init();
    work_m_00000000000404870175_0450620326_init();
    work_m_00000000000351342810_3364876035_init();
    work_m_00000000003868670269_1448432973_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003868670269_1448432973");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
