(define (count-predicate p a b) (accumulate (lambda (a b) (if b (1+ a) a)) 0 a b p 1+))
