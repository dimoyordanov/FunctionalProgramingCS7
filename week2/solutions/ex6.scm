
(define (compose f g) (lambda (x) (f (g x))))
(define (const c) (lambda (x) c))
(define (1+ a) (+ 1 a))
