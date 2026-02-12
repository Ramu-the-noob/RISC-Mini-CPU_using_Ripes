
Project Title: RISC-V Multi-Function Mini CPU 
Description

This project implements a multi-functional program in RISC-V Assembly designed to run on the Ripes simulator. It features a "Jumper" dispatch system that allows the user to switch between three modes:

    Calculator: Performs addition, subtraction, multiplication, and division.

    Fibonacci: Calculates the nth Fibonacci number.

    Factorial: Computes the factorial of a given integer.

    *values have to be manually inputed into the correct registers, i have commented on where to insert values and on what in the main.s file

Features

    Modular Architecture: Uses a dispatch table logic to jump to specific code blocks based on a control variable.
    *use functions to seperate parts

    System Calls: Implements ecall for string labels, integer output, and character-based formatting (newlines).
    *used function calls
    
    Register Management: Demonstrates safe register usage to prevent data overwriting during I/O operations.
    *learnt system calls and register uses and basic assembly
    
How to Run

    Open the Ripes Simulator.

    Copy the contents of main.s into the Editor tab.

    In the .text section, change the value of li s0, 1 to either 1, 2, or 3 to select your mode.

    Press Run and view the results in the Console tab.

    Edit values in the specific sections to change parameters to need
