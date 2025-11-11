(define (function-graph f)
  (map stream (lambda (x) (cons x (f x))))
)
