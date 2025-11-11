(define (union A B) (append (setminus A B) (setminus B A) (cap A B)))
