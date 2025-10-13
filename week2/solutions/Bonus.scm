(define (count-digits-prim a) (if (< a 10) 1 (+ 1 (count-digits-prim (quotient a 10)))))

(define (reverse-number-tail a res) 
    (if (< a 10) 
        (+ (* 10 res) a) 
        (reverse-number-tail 
            (quotient a 10) 
            (+ (* 10 res) (remainder a 10)))
    )
)


(define (ends-with a b) 
        (= 
            (remainder a (expt 10 (count-digits-prim b))) 
            b 
        )
)
(define (extract-digit a mu) 
    (quotient   (remainder a (expt 10 (+ mu   1)))    (expt 10 mu)) )

(define (num-equals a mu b beta) 
    (= 
        (extract-digit a   mu)
        (extract-digit b beta)
    )
)
(define (count-digits-prim a) (if (< a 10) 1 (+ 1 (count-digits-prim (quotient a 10)))))

(define (_levenstein-distance-prim a la b lb)
  (cond
    ((= la 0) lb)
    ((= lb 0) la)
    (else (if (= (remainder a 10) (remainder b 10))
              (_levenstein-distance-prim (quotient a 10) (- la 1) (quotient b 10) (- lb 1))
              (+ 1 (min 
                        (_levenstein-distance-prim (quotient a 10) (- la 1) (quotient b 10) (- lb 1))
                        (_levenstein-distance-prim a la (quotient b 10) (- lb 1))
                        (_levenstein-distance-prim (quotient a 10) (- la 1) b lb)))
              )
          )
    )
  )

(define (levenstein-distance-prim a b) (_levenstein-distance-prim a (count-digits-prim a) b (count-digits-prim b)))
