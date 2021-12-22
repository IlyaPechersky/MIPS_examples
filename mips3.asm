.data
pi: .float 3.1415
exp: .float 2.71828
.text
main:
l.s $f0, exp
l.s $f1, pi
mul.s $f0, $f0, $f0
div.s $f0, $f0, $f1
add.s $f12, $f0, $f12
li $v0, 2
syscall