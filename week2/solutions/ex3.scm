(define (prime?-tail a b) (if (= b 1) #t (if (= 0 (modulo a b)) #f (prime?-tail a (- b 1)))))
(define (prime?-prim a b) (if (= b 1) #t (not (or (= 0 (modulo a b)) (prime?-prim a (- b 1))))))
