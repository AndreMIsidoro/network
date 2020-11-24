from pwn import *
context.log_level = 'error'

sh = remote('challenges.ctfd.io' , 30267)

sh.recvuntil('Enter 1, 2, 3, 4, or 5.\n')


