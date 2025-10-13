(define (harmonic n) (accumulate + 0 1 n (lambda (x) (/ 1 x)) 1+))
(define (power-two-sequence n) (accumulate + 0 1 n (lambda (x) (/ 1 (* x x))) 1+))
