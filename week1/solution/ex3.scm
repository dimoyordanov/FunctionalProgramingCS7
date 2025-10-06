(define (not a) (if a #f #t))

(define (and a b) (if a b #f))

(define (or a b) (if a #t b))

(define (xor a b) (if a (not b) b))
