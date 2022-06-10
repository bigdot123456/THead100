mkdir workdir
cd workdir
rem export TOOL_PATH=/eda/riscv/toolchain
rem ../tools/run_case --sim_tool iverilog ../case/timer/timer_test.c
rem D:\riscv64-elf-mingw\bin\riscv64-unknown-elf-gcc -Tlinker.lcf -nostartfiles -march=rv32emc -mabi=ilp32e -lc -lgcc  crt0.o __dtostr.o __isinf.o __isnan.o __lltostr.o __ltostr.o __v_printf.o fprintf.o fputc.o getc.o getchar.o printf.o putc.o putchar.o puts.o snprintf.o sprintf.o vfprintf.o vprintf.o vsnprintf.o vsprintf.o -o ..casetimertimer_test.elf -lm

set TOOL_PATH=D:/riscv64-elf-mingw
perl ../tools/run_case --sim_tool iverilog ../case/timer/timer_test.c
cd ..
