.globl factorial

.data
n: .word 8

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:
	addi t1, x0, 1  # Initializing Count
	addi t2, x0, 1  # Initializing loop increment variable
loop:
	mul t2, t2, t1  # Factorial Logic
    beq t1, a0, finish # Condition to compare count and n variable
    addi t1, t1, 1 # Increment in count
	j loop  # jump to loop lable
finish:
    add a0, x0, t2 # Will save t2 value in a0 argument register
	jr ra          # jump to return address
    