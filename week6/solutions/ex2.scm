(define (_stream f i) (cons (f i) (lambda () (_stream f (+ 1 i)) )))

(define (_stream2 f i ai-1)
  (define (_stream2_ f i ai-1) (cons (f i ai-1) (lambda () (_stream2_ f (+ 1 i) (f i ai-1)) )))
  (cons ai-1 (lambda () (_stream2_ f i ai-1)))
)

(define  (_stream3 f i ai-1 ai-2)
  (define (_stream3_ f i ai-1 ai-2) (cons (f i ai-1 ai-2) (lambda () (_stream3_ f (+ 1 i) (f i ai-1 ai-2) ai-1) )))
  (cons ai-1 (lambda () (cons ai-2 (lambda () (_stream3_ f i ai-1 ai-2)))))
)

(define stream (_stream (lambda (x) x) 0))



(define fibs (_stream3 (lambda (ind a b) (+ a b)) 0 0 1))
