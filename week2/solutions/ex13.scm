(define (repeat f n) (accumulate compose id 0 n (const f) 1+))
