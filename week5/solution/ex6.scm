(define (function A B f) (relationTwo A B (lambda (x y) (= (f x) y))))

(define (execute F a) (define res (filter (lambda (x) (= x a)) F) (if (null? res) #f (cdar res)) ))
