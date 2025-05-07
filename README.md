# RISC-V ALU – 32-bit Verilog Implementation

This project implements a simple **32-bit Arithmetic Logic Unit (ALU)** using Verilog, simulating operations typically found in a RISC-V processor. It includes a testbench and waveform verification using **ModelSim** and **Quartus II**.

---

## ✅ Features

- 32-bit ALU with support for:
  - `ADD`, `SUB`
  - Bitwise `AND`, `OR`, `XOR`
  - `SLL` (Shift Left Logical)
- Modular design in Verilog
- Testbench verifying all operations
- Waveform generation via ModelSim
- Clean GitHub-ready structure with `.do` automation

---

## 🗂️ Project Structure

```bash
riscv_cpu_project/
├── src/              # ALU module (alu.v)
├── testbench/        # Testbench (alu_tb.v)
├── sim/              # ModelSim waveform (.do), output wave (.wlf)
├── docs/             # (Optional) block diagrams or notes
├── .gitignore        # Ignoring Quartus artifacts
└── README.md         # This file
