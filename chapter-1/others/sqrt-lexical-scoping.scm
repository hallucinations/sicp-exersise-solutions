;; Square root function with lexical scoping.

(define (sqrt x)
  (define (good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  ;;(define (square x) (x * x))
  (define (improve guess)
    (average guess (/ guess x)))
  (define (average x y) (/ (+ x y) 2))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))


(sqrt 4)
