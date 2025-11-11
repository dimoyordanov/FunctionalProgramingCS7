(define (remainder F B ) (filter (lambda (x) (member (car x) B)) F))
