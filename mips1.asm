.data
str1: .asciiz "Print three integers \n"

.text
main:
      la   $a0, str1      
      li   $v0, 4          
      syscall          
      li   $v0, 5
      syscall
      move $a0, $v0  
      li   $v0, 5
      syscall
      move $a1, $v0 
      li   $v0, 5
      syscall
      move $a2, $v0   
      add  $a0, $a0, $a1
      add  $a0, $a0, $a2
      li   $v0, 1
      syscall
        
