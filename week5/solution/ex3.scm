(define (cap A B) (otdelqneto A (lambda (x) (member x B))))
(define (setminus A B) (otdelqneto A (lambda (x) (not (member x B)))))
