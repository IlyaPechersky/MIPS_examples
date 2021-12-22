.data
pi: .float 3.14159
fourPtZero: .float 4.0
threePtZero: .float 3.0
radius: .float 17.25
surfaceArea: .float 0.0
volume: .float 0.0

.text
.globl main
main:
l.s $f2, fourPtZero
l.s $f4, pi
mul.s $f4, $f2, $f4, 
l.s $f6, radius

mul.s $f8, $f6, $f6
mul.s $f8, $f4, $f8
s.s $f8, surfaceArea

l.s $f8, threePtZero
div.s $f2, $f4, $f8
mul.s $f10, $f6, $f6
mul.s $f10, $f10, $f6
mul.s $f12, $f2, $f10
s.s $f12, volume

li $v0, 10
syscall
.end main