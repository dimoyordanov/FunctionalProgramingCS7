(define (reduce f stream)
  (f (head stream) (tail stream))
)
