(define (succ x) (+ 1 x))

(define (pred x) (+ -1 x))

(define (pred_ x y) (if (= x (succ y)) y (pred_ x (succ y))))
(define (pred2 x) (if (< x 0) x (pred_ x 0)))
