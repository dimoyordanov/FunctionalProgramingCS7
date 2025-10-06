(define (repeat n f x) (
    if (= n 0)
        x
        (repeat (- n 1) f (f x))
))

(define (succ n) (+ n 1))

(define (plus a b) (repeat a succ b))
