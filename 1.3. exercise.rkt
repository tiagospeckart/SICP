#lang sicp
;Exercise 1.3.  Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.

;arguments x y z
;define square
;define two biggest numbers
;if x > y or x > z -> x
;if y > x or y > z -> y
;else z
(define (square x) (* x x))

(define (biggest-two-of-three x y z) 
  ((and (>= x y) (>= x z)) ; x is one of the two biggest
))