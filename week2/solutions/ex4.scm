
(define (binary->decimal-prim a) (if (zero? a)
                                0
                                (if (= (modulo a 10) 1)
                                                (+ 1 (* (binary->decimal-prim (/ (- a 1) 10)) 2))
                                                (* (binary->decimal-prim (/ a 10)) 2)
                                          )
                                )
  )

(define (binary->decimal-tail a b c) (if (zero? a)
                                b
                                (if (= (modulo a 10) 1)
                                                (binary->decimal-tail (/ (- a 1) 10) (+ (expt 2 c) b) (+ c 1))
                                                (binary->decimal-tail (/ a 10) b (+ c 1))
                                          )
                                )
  )
