(define (prime? a) (accumulate-prim
                      (lambda (res init) ( if (= res 0) #f init))
                      #t
                      2
                      (sqrt a)
                      (lambda (num) (remainder a num))
                      1+))
