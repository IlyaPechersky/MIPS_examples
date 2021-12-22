.data
thirtyTwo: .float 32.0
five: .float 5.0
nine: .float 9.0

.text
main: 
li $v0, 6
syscall 
l.s $f1, thirtyTwo
sub.s $f0, $f0, $f1 
l.s $f2, five
mul.s $f0, $f2, $f0
l.s $f3, nine
div.s $f0, $f0, $f3


li $v0, 2
mov.s $f12, $f0
syscall