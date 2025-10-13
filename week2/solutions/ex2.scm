(define (sum-interval-primitive a b) (if (= a b) 
                                            a
                                            (+ a (sum-interval-primitive (+ 1 a) b))))

(define (sum-interval-tail a b sum) (if (= a b) 
                                    (+ sum a)
                                    (sum-interval-tail (+ 1 a) b (+ sum a))))

; (define (sum-interval-const a b) (+ (/ (* (- b a) (+ (- b a) 1)) 2) (* (b-a) (b-a))))
