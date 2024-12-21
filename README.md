# Segmentation Fault in Assembly due to Incorrect Pointer Arithmetic

This repository demonstrates a common error in assembly programming: accessing memory outside of allocated bounds due to incorrect pointer arithmetic.  The example uses x86 assembly. The bug is a classic segmentation fault.

## Bug Description

The `bug.asm` file contains assembly code that leads to a segmentation fault. The root cause is an error in calculating a memory address using pointer arithmetic. This can lead to a segmentation fault, a common issue in low-level programming.  The solution involves careful checking of the values used in address calculations and potentially adding bounds checking.

## How to Reproduce

1. Assemble and link `bug.asm`.
2. Run the resulting executable.
3. Observe the segmentation fault.

## Solution

The `bugSolution.asm` demonstrates how to address the issue by using techniques to prevent out-of-bounds memory access.