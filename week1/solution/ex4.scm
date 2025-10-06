(define (repeat n f x) (
    if (= n 0)
        x
        (repeat (- n 1) f (f x))
))
