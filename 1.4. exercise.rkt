#lang sicp
;Exercise 1.4.  
;Observe that our model of evaluation allows for combinations whose operators are compound expressions. 
;Use this observation to describe the behavior of the following procedure:

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b)) 
  ;if b is bigger than 0, the operation is a sum, otherwise, a subtraction
  ;Defining operators through the arguments of the procedures is a insteresting way do change de behaviour of the procedure

(a-plus-abs-b -21 -7)
