#lang sicp
;Exercise 1.5.  
;Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using applicative-order evaluation or 
;normal-order evaluation. 
;He defines the following two procedures:

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;Then he evaluates the expression

(test 0 (p))

; What behavior will Ben observe with an interpreter that uses applicative-order evaluation? 
; Explain your answer. 
; (Assume that the evaluation rule for the special form if is the same whether the interpreter is using normal or applicative order: 
; The predicate expression is evaluated first, and the result determines whether to evaluate the consequent or the alternative expression.) 

; Answer: In applicative order, when evaluating (test 0 (p)), the interpreter would first evaluate the arguments and then apply the procedure. Evaluating 0 results in the number 0. However, evaluating (p) leads to an infinite loop due to the self-referential nature of the (define (p) (p)) function definition, resulting in non-termination.

; What behavior will he observe with an interpreter that uses normal-order evaluation? 

; Answer: In normal order, when evaluating (test 0 (p)), the interpreter fully expands the expression before reducing it. The predicate expression (= 0 0) evaluates to #t in the if statement, therefore, the subsequent expression (p) is not evaluated due to short-circuiting. This avoids the infinite loop, resulting in the final value of 0.