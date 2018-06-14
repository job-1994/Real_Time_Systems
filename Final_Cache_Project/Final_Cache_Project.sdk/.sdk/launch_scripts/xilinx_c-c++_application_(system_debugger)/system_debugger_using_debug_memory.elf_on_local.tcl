connect -url tcp:127.0.0.1:3121
source /home/job/Documents/Real_Time_Systems/Final_Cache_Project/Final_Cache_Project.sdk/design_1_wrapper_hw_platform_1/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279771777A"} -index 0
loadhw -hw /home/job/Documents/Real_Time_Systems/Final_Cache_Project/Final_Cache_Project.sdk/design_1_wrapper_hw_platform_1/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zybo 210279771777A"} -index 0
stop
ps7_init
ps7_post_config
configparams force-mem-access 0
