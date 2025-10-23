(define (zip a b) (if (or (null? a) (null? b)) '() (cons (cons (car a) (car b)) (zip (cdr a) (cdr b)))))

(define (plus-v a b) (map (lambda (x) (+ (car x) (cdr x))) (zip a b)))
(define (plus a b) (map (lambda (x) (plus-v (car x) (cdr x))) (zip a b)))
