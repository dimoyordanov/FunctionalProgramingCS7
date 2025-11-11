(define (subset A B) (foldr (lambda (x acc) (and x acc)) #t (map (lambda (x) (member x B)) A)))

(define (otdelqneto A phi) (filter (lambda (x) (phi x)) A))
