
(define (sum-range a b) (accumulate + 0 a b id 1+))
