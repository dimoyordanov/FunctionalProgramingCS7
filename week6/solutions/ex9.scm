
(define (get-assoc assoc key) (reduce (lambda (x acc) (if (cdr x) (car x) acc)) (function-graph (lambda (x) (equal? x key)))))
