(define (number-any? p a b) (accumulate-prim or #f a b p 1+))
(define (number-all? p a b) (accumulate-prim and #t a b p 1+))
