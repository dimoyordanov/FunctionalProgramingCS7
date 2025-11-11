(define (map stream f)
  (cons (f (head stream)) (lambda () (map (tail stream) f)))
)
