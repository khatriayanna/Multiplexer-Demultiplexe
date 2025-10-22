# 🔀 Multiplexer & Demultiplexer in Verilog

## 📘 Overview
This project demonstrates the design and simulation of **4:1** and **8:1 Multiplexers** using **Behavioral** and **Structural (Hierarchical)** modeling in Verilog HDL.  
A **1:8 Demultiplexer** is also implemented to complement the study of data routing in digital systems.

---

## ⚙️ Features
- **4:1 MUX (Behavioral Modeling)**
- **8:1 MUX (Structural Modeling using 2:1 MUX hierarchy)**
- **1:8 DEMUX**
- Simulated using **Vivado / ModelSim**
- Verified using testbenches and waveform analysis

---

## 🧠 Theory

### ▶ Multiplexer (MUX)
A multiplexer selects one of several input signals and forwards it to a single output line based on select inputs.

**Example – 4:1 MUX**
\[
Y = S_1'S_0'I_0 + S_1'S_0I_1 + S_1S_0'I_2 + S_1S_0I_3
\]

### ▶ Demultiplexer (DEMUX)
A demultiplexer takes a single input and routes it to one of several outputs based on select lines.

---

## 🧩 Design Methodology

| Circuit | Modeling Style | Description |
|----------|----------------|--------------|
| 4:1 MUX | Behavioral | Implemented using `case` statement |
| 8:1 MUX | Structural | Built hierarchically from 2:1 MUX modules |
| 1:8 DEMUX | Behavioral | Uses `case` logic for output selection |

---

## 🧪 Simulation Results

### ✅ Waveforms
**4:1 Multiplexer Simulation**

![MUX4 Waveform](../sim/waveform_mux4.png)

**8:1 Multiplexer Simulation**

![MUX8 Waveform](../sim/waveform_mux8.png)

**1:8 Demultiplexer Simulation**

![DEMUX Waveform](../sim/waveform_demux.png)

---

## 🔩 Synthesis & Analysis

### Example Vivado Report
| Module | LUTs | I/O Ports | Delay (ns) |
|:--------|:------|:----------|:------------|
| 4:1 MUX | 6 | 7 | 2.3 |
| 8:1 MUX | 14 | 11 | 3.1 |
| 1:8 DEMUX | 10 | 10 | 2.7 |

**RTL Schematic Example:**
![MUX Schematic](../docs/schematic_mux8.png)

---

## 🧰 Tools Used
- **HDL:** Verilog  
- **Simulator:** ModelSim / Vivado  
- **Waveform Viewer:** GTKWave  
- **Synthesis Tool:** Vivado  

---

## 📜 Files
| Folder | Description |
|---------|-------------|
| `/src` | Verilog source codes (`mux4to1.v`, `mux8to1.v`, `demux1to8.v`) |
| `/tb` | Testbench files for each circuit |
| `/sim` | Simulation screenshots and `.vcd` files |
| `/docs` | RTL schematic and synthesis report |

---

## 📚 Learning Outcome
- Understanding of **data selection & routing** in digital logic  
- Implementation of **hierarchical design** in Verilog  
- Practice in **simulation and synthesis workflows**

---

**🧩 Designed by:** *Ayanna Khatri*  
**Field:** *VLSI / Digital System Design*
