;;; Exercise 1.3: Define a procedure that takes three numbers as arguments
;;; and returns the sum of the squares of the two larger numbers.

(define (min-of-three a b c)
  (cond ((and (< a b) (< a c)) a)
        ((< b c) b)
        (else c)))

(define (square x) (* x x))

(define (sum-of-square-of-largest-two x y z)
  (- (+ (square x) (square y) (square z))
     (square (min-of-three x y z))))