(define (member? l v) (not (null? (filter (lambda (x) (= x v)) l))))

(define (assoc-merge l1 l2 f)
  (define l1-l2 (filter (lambda (x) (not (member? x (keys l2)))) l1))
  (define l2-l1 (filter (lambda (x) (not (member? x (keys l1)))) l2))
  (define l2capl1 (map (lambda (x) (cons (car x) (f (get-assoc l1 (car x)) (get-assoc l2 (car x))))) (filter (lambda (x) (member? x (keys l1))) l2)))
  (cons l1-l2 (cons l2-l1 (cons l2capl1 '())))
)
