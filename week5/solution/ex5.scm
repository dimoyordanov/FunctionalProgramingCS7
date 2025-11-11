(define (pair a b) (cons a b))
(define (relationTwo A B p) (foldr (lambda (x acc) (append (map (lambda (y) (cons x y)) (filter (lambda (y) (p x y)) B)) acc)) '() A))
