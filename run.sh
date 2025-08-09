#!/bin/bash
iverilog -o alu_tb alu_4bit.v tb_alu_4bit.v
vvp alu_tb
gtkwave output.vcd &
