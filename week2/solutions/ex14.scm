(define (twist f g n) (accumulate compose id 1 (* 2 n) (lambda (x) (if (odd? x) f g)) 1+))
