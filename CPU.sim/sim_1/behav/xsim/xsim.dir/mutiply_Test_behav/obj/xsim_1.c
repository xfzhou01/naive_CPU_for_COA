/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_180(char*, char *);
extern void execute_181(char*, char *);
extern void execute_190(char*, char *);
extern void execute_191(char*, char *);
extern void execute_192(char*, char *);
extern void execute_186(char*, char *);
extern void execute_187(char*, char *);
extern void execute_188(char*, char *);
extern void execute_189(char*, char *);
extern void execute_98(char*, char *);
extern void execute_101(char*, char *);
extern void execute_178(char*, char *);
extern void execute_179(char*, char *);
extern void execute_177(char*, char *);
extern void execute_171(char*, char *);
extern void execute_164(char*, char *);
extern void execute_165(char*, char *);
extern void execute_139(char*, char *);
extern void execute_140(char*, char *);
extern void execute_142(char*, char *);
extern void execute_146(char*, char *);
extern void execute_162(char*, char *);
extern void execute_169(char*, char *);
extern void execute_160(char*, char *);
extern void execute_151(char*, char *);
extern void execute_154(char*, char *);
extern void execute_156(char*, char *);
extern void execute_134(char*, char *);
extern void execute_135(char*, char *);
extern void execute_129(char*, char *);
extern void execute_132(char*, char *);
extern void execute_183(char*, char *);
extern void execute_184(char*, char *);
extern void execute_185(char*, char *);
extern void execute_193(char*, char *);
extern void execute_194(char*, char *);
extern void execute_195(char*, char *);
extern void execute_196(char*, char *);
extern void execute_197(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_7(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_8(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_9(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_10(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_13(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[46] = {(funcp)execute_180, (funcp)execute_181, (funcp)execute_190, (funcp)execute_191, (funcp)execute_192, (funcp)execute_186, (funcp)execute_187, (funcp)execute_188, (funcp)execute_189, (funcp)execute_98, (funcp)execute_101, (funcp)execute_178, (funcp)execute_179, (funcp)execute_177, (funcp)execute_171, (funcp)execute_164, (funcp)execute_165, (funcp)execute_139, (funcp)execute_140, (funcp)execute_142, (funcp)execute_146, (funcp)execute_162, (funcp)execute_169, (funcp)execute_160, (funcp)execute_151, (funcp)execute_154, (funcp)execute_156, (funcp)execute_134, (funcp)execute_135, (funcp)execute_129, (funcp)execute_132, (funcp)execute_183, (funcp)execute_184, (funcp)execute_185, (funcp)execute_193, (funcp)execute_194, (funcp)execute_195, (funcp)execute_196, (funcp)execute_197, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_7, (funcp)transaction_8, (funcp)transaction_9, (funcp)transaction_10, (funcp)transaction_13, (funcp)vhdl_transfunc_eventcallback};
const int NumRelocateId= 46;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/mutiply_Test_behav/xsim.reloc",  (void **)funcTab, 46);
	iki_vhdl_file_variable_register(dp + 25088);
	iki_vhdl_file_variable_register(dp + 25144);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/mutiply_Test_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/mutiply_Test_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 32736, dp + 31832, 0, 15, 0, 15, 16, 1);
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/mutiply_Test_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/mutiply_Test_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/mutiply_Test_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
