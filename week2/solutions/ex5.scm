(define (count-digits-prim a) (if (< a 10) 1 (+ 1 (count-digits-prim (quotient a 10)))))
(define (count-digits-tail a b) (if (< a 10) b (count-digits-tail (quotient a 10) (+ 1 b))))
