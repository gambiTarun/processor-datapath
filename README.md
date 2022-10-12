# processor-datapath
Implementing datapath of a processor in verilog

## Block level design of datapath

<img width="738" alt="Screen Shot 2022-10-12 at 12 01 43 AM" src="https://user-images.githubusercontent.com/22619455/195272606-5af749f2-6ac6-44d6-b1f2-d2e2f5b80616.png">

This processor supports Shift left logical (sll) and load immediate instructions only. The processor has Reset, CLK as inputs and no outputs. The processor has instruction fetch unit, register file and write back unit. When reset is activated the PC is initialized to 0 and the instruction memory gets loaded with instruction codes. Assume the instruction code is 8-bit wide. Also when Reset is made logic 0 the register file gets initialized with predefined values. Register Write happens on positive edge of clock and register read is not dependent on the clock.

### Testing

Verified simulated waveforms. Showing CLK, RESET, Instruction code, Register file outputs, output of sign-extend block, shift left block and Registers (R0, R1, R2... )

<img width="906" alt="Screen Shot 2022-10-12 at 12 06 43 AM" src="https://user-images.githubusercontent.com/22619455/195273484-9cd75275-88ac-4d7c-9c7e-59d522d4d271.png">
