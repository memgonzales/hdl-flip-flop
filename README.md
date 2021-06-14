# Behavioral Modeling of Flip-Flops
This project is a compilation of Verilog **behavioral models** and test benches for the four types of flip-flops:
- SR flip-flops
- JK flip-flops
- D flip-flops
- T flip-flops

Each of these is implemented as **positive edge-triggered, with inverted and non-inverted outputs, and asynchronous reset (active-high)**. *Positive edge-triggered* describes a flip-flop where changes in its state happen only at the rising edge (low-to-high transition) of the clock. Meanwhile, *asynchronous reset* indicates that the activation of the reset results in the state immediately changing to 0, regardless of the synchronous input/s or the clock. 

## Overview of Flip-Flops
Mano (1992) defines a *flip-flop* &mdash; the data storage element of synchronous sequential circuits &mdash; as "a binary cell capable of storing one bit of information" (p. 22).

### SR Flip-Flops
<img src = "https://github.com/memgonzales/hdl-flip-flop/blob/master/logic_diagrams/sr.jpg?raw=True" alt="Logic diagram (SR Flip-flop)" width = 500> 

*Characteristic Table*

*Waveform*

<img src = "https://github.com/memgonzales/hdl-flip-flop/blob/master/waveforms/sr.PNG?raw=True" alt="Waveform (SR Flip-flop)" width = 800> 

### JK Flip-Flops
<img src = "https://github.com/memgonzales/hdl-flip-flop/blob/master/logic_diagrams/jk.jpg?raw=True" alt="Logic diagram (JK Flip-flop)" width = 500> 

*Characteristic Table*

*Waveform*

<img src = "https://github.com/memgonzales/hdl-flip-flop/blob/master/waveforms/jk.PNG?raw=True" alt="Waveform (JK Flip-flop)" width = 800> 


### D Flip-Flops
<img src = "https://github.com/memgonzales/hdl-flip-flop/blob/master/logic_diagrams/d.jpg?raw=True" alt="Logic diagram (D Flip-flop)" width = 500> 

*Characteristic Table*

*Waveform*

<img src = "https://github.com/memgonzales/hdl-flip-flop/blob/master/waveforms/d.PNG?raw=True" alt="Waveform (D Flip-flop)" width = 800> 


### T Flip-Flops
<img src = "https://github.com/memgonzales/hdl-flip-flop/blob/master/logic_diagrams/t.jpg?raw=True" alt="Logic diagram (T Flip-flop)" width = 500> 

*Characteristic Table*

*Waveform*

<img src = "https://github.com/memgonzales/hdl-flip-flop/blob/master/waveforms/t.PNG?raw=True" alt="Waveform (T Flip-flop)" width = 800> 

*Note that the behavioral modeling of flip-flops is derived from their respective characteristic tables.*

## Built Using
This project consists of source codes and test benches written in the hardware description language **Verilog**. 

If Icarus Verilog is installed, run the following command on the terminal to compile the Verilog program:

```
iverilog -o <name of vvp file>.vvp <name of source code>.v <name of test bench>.v
```

To "execute" the program and generate the value change dumpfile (<code>.vcd</code>), run the following command:

```
vvp <name of vvp file>.vvp
```

To generate and view the waveform using GTKWave, run the following command:

```
gtkwave <name of vcd file>.vcd
```

In this project, the filenames (with extensions) are as follows:

Flip-Flop | Source Code | Test Bench | VCD File
--- | --- | --- | ---
**SR** | <a href = "https://github.com/memgonzales/hdl-flip-flop/blob/master/sr.v"><code>sr.v</code></a> | <a href = "https://github.com/memgonzales/hdl-flip-flop/blob/master/sr_tb.v"><code>sr_tb.v</code></a> | <code>sr.vcd</code>
**JK** | <a href = "https://github.com/memgonzales/hdl-flip-flop/blob/master/jk.v"><code>jk.v</code></a> | <a href = "https://github.com/memgonzales/hdl-flip-flop/blob/master/jk_tb.v"><code>jk_tb.v</code></a> | <code>jk.vcd</code>
**D** | <a href = "https://github.com/memgonzales/hdl-flip-flop/blob/master/d.v"><code>d.v</code></a> | <a href = "https://github.com/memgonzales/hdl-flip-flop/blob/master/d_tb.v"><code>d_tb.v</code></a> | <code>d.vcd</code>
**T** | <a href = "https://github.com/memgonzales/hdl-flip-flop/blob/master/t.v"><code>t.v</code></a> | <a href = "https://github.com/memgonzales/hdl-flip-flop/blob/master/t_tb.v"><code>t_tb.v</code></a> | <code>t.vcd</code>
