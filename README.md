# FSM-based-Traffic-Light-Controller
An FSM (Finite State Machine)-based Traffic Light Controller designed in **Verilog HDL** and simulated using **Xilinx Vivado**. The controller follows a cyclic sequence of **Red → Green → Yellow → Red** and demonstrates the implementation of sequential logic using a Moore FSM.

## Features

- Moore Finite State Machine (FSM) implementation
- Three traffic light states:
  - 🔴 Red
  - 🟢 Green
  - 🟡 Yellow
- Positive edge-triggered state transitions
- Asynchronous active-high reset
- Synthesizable RTL design
- Functional verification using a Verilog testbench in Xilinx Vivado

## State Diagram

```
        +--------+
        |  RED   |
        +--------+
             |
             v
        +--------+
        | GREEN  |
        +--------+
             |
             v
        +--------+
        | YELLOW |
        +--------+
             |
             +--------> RED
```

## Project Structure

```
Traffic-Light-Controller/
│── traffic_light.v      # FSM design
│── traffic_light_tb.v   # Testbench
│── README.md
```

## Simulation

The design was simulated in **Xilinx Vivado Simulator (xsim)** to verify correct state transitions and output functionality.

## Tools Used

- Verilog HDL
- Xilinx Vivado

## Learning Outcomes

- Finite State Machine (FSM) Design
- Sequential Circuit Design
- Moore Machine Implementation
- Verilog HDL Coding
- RTL Simulation and Verification
- Clocked Digital System Design

## Author

Ayush Mohanty
