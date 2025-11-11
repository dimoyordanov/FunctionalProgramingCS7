(define (domain R) (map car R))
(define (range R) (map cdr R))
(define (field R) (union (domain R) (range R)))
