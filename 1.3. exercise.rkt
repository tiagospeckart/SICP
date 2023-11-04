#lang sicp
;Exercise 1.3.  Define a procedure that takes three numbers as arguments and returns the sum of the squares of the two larger numbers.

;arguments x y z
;define square
;define two biggest numbers
;if y > x or y > z -> y
;else z
(define (square x) (* x x))

(define (>= x y)
  (or (> x y) (= x y)))

(define (biggest-two-of-three x y z) ; x is one of the two biggest
(cond ((and (>= x y) (>= x z)) 
          (+ (square x) (square (if (>= y z) y z))))
      ((and (>= y x) (>= y z)) 
          (+ (square y) (square (if (>= z x) z x))))
      (else (+ (square z) (square (if (>= x y) x y))))
      ))

(biggest-two-of-three 11 5 10)