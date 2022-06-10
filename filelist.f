// use cmd.exe
// set LM_LICENSE_FILE=c:\flexlm\cds.dat

// export VERDI_HOME=/usr/synopsys/vc_static-O-2018.09-SP2-2/verdi
// export VERDI_HOME=/eda/snps/VERDI

// export wujian100_open_PATH=/mnt/e/gitcpuCore/cpuCore/arm/cortex-M0/AT510-BU-50000-r0p0-02rel0
// export wujian100_open_PATH=/home/bigdot/git/cpuCore/cpuCore/arm/cortex-M0/AT510-BU-50000-r0p0-02rel0
// export wujian100_open_PATH=E:/git/cpuCore/cpuCore/arm/cortex-M0/AT510-BU-50000-r0p0-02rel0
// export TESTFILE=$wujian100_open_PATH/filelist.f

// set wujian100_open_PATH=E:\git\cpuCore\cpuCore\arm\cortex-M0\AT510-BU-50000-r0p0-02rel0
// set TESTFILE=wujian100_open_PATH/filelist.f

// +dvt_init
// +dvt_setenv+wujian100_open_PATH=E:\git\cpuCore\cpuCore\arm\cortex-M0\AT510-BU-50000-r0p0-02rel0
// +dvt_setenv+TESTFILE=$wujian100_open_PATH/filelist.f
// -f $TESTFILE

// ncverilog -f $TESTFILE +access+wr
// qverilog -f $TESTFILE +access+

// export PLATFORM=linux64
// qverilog -f $TESTFILE +access+wr +notimingchecks +nospecify -R -pli $(VERDI_HOME)/share/PLI/MODELSIM/$(PLATFORM)/novas_fli.so
// qverilog -f $TESTFILE +access+wr +notimingchecks +nospecify -R -pli /eda/snps/verdi/Verdi_O-2018.09-SP2/share/PLI/MODELSIM/linux64/novas_fli.so +fsdb 
// ncverilog -f $TESTFILE +loadpli1=debpli:novas_pli_boot +access+wrc
// iverilog -f $TESTFILE
// nlint -gui -2001 -f $TESTFILE
// debussy -2001 -f $TESTFILE


// vcs +notimingchecks +nospecify -kdb -lca -sverilog -debug_acc+all -debug_region+cell+encrypt -LDFLAGS -rdynamic -full64  +lint=TFIPC-L +lint=PCWM -P $VERDI_HOME/share/PLI/VCS/linux64/novas.tab  $VERDI_HOME/share/PLI/VCS/linux64/pli.a -l sim.log -y ./lib -y ./tb/lib -y ./lib/gtech -y ./lib/dw_foundation -y ./lib/mem -y ./lib/amba +incdir+./rtl+./tb+./lib+./lib/common+./lib/dw_foundation+./lib/amba+./lib/fpga+./lib/common+./tb/inc +libext+.v+.h+.inc+ -f $TESTFILE +define+DEBUG_FIFO +define+fifotype6 

// $value$plusargs("read_rate=%f", read_rate)
// ./simv +fsdb  +read_rate=0.4 +write_rate=0.5 -l fifo.log +DEBUG

// verdi -ssf 1.fsdb
// verdi -2012 -y ./lib -y ./tb/lib -y ./lib/gtech -y ./lib/dw_foundation -y ./lib/mem -y ./lib/amba +incdir+./rtl+./tb+./lib+./lib/common+./lib/dw_foundation+./lib/amba+./lib/fpga+./lib/common+./tb/inc +libext+.v+.h+.inc+ -f $TESTFILE +define+fifotype1

+incdir+$wujian100_open_PATH/soc/params
$wujian100_open_PATH/soc/ahb_matrix_top.v
$wujian100_open_PATH/soc/wujian100_open_top.v
$wujian100_open_PATH/soc/smu_top.v
$wujian100_open_PATH/soc/sms.v
$wujian100_open_PATH/soc/ls_sub_top.v
$wujian100_open_PATH/soc/retu_top.v
$wujian100_open_PATH/soc/tim5.v
$wujian100_open_PATH/soc/tim.v
$wujian100_open_PATH/soc/dmac.v
$wujian100_open_PATH/soc/pdu_top.v
$wujian100_open_PATH/soc/tim2.v
$wujian100_open_PATH/soc/usi1.v
$wujian100_open_PATH/soc/aou_top.v
$wujian100_open_PATH/soc/matrix.v
$wujian100_open_PATH/soc/dummy.v
$wujian100_open_PATH/soc/pwm.v
$wujian100_open_PATH/soc/usi0.v
$wujian100_open_PATH/soc/apb0_sub_top.v
$wujian100_open_PATH/soc/common.v
$wujian100_open_PATH/soc/wdt.v
$wujian100_open_PATH/soc/tim1.v
$wujian100_open_PATH/soc/rtc.v
$wujian100_open_PATH/soc/E902_20191018.v
$wujian100_open_PATH/soc/tim7.v
$wujian100_open_PATH/soc/apb0.v
$wujian100_open_PATH/soc/apb1_sub_top.v
$wujian100_open_PATH/soc/gpio0.v
$wujian100_open_PATH/soc/tim4.v
$wujian100_open_PATH/soc/tim3.v
$wujian100_open_PATH/soc/clkgen.v
$wujian100_open_PATH/soc/core_top.v
$wujian100_open_PATH/soc/tim6.v
$wujian100_open_PATH/soc/apb1.v
$wujian100_open_PATH/soc/sim_lib/PAD_DIG_IO.v
$wujian100_open_PATH/soc/sim_lib/PAD_OSC_IO.v
$wujian100_open_PATH/soc/sim_lib/STD_CELL.v
$wujian100_open_PATH/soc/sim_lib/fpga_byte_spram.v
$wujian100_open_PATH/soc/sim_lib/fpga_spram.v
$wujian100_open_PATH/tb/tb.v
$wujian100_open_PATH/tb/vlog_tb_utils.v
$wujian100_open_PATH/tb/busmnt.v
$wujian100_open_PATH/tb/virtual_counter.v
