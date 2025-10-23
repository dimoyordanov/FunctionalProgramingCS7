(define numbers `(1 2 3 4 5 6 7 8 9 10 11 12 13))
(define numbers2 `(1 9 2 8 3 7 4 7 5 6))

(define empty `())

(define (map f l)
 (if (null? l)
     empty
     (cons
      (f (car l))
      (map f (cdr l))
     )
  )
)

(define (filter p l)
 (if (null? l)
     empty
     (if (p (car l))
         (cons
          (car l)
          (filter p (cdr l))
          )
         (filter p (cdr l))
      ))
  )



(define (foldl f init l)
  (if (null? l)
      init
      (foldl f (f (car l) init) (cdr l))
  )
)

(define (foldr f init l)
  (if (null? l)
      init
      (f (car l) (foldr f init (cdr l)))
  )
)

(define (filter2 p l) (foldr (lambda ( a acc) (if (p a) (cons a acc) acc)) '() l))
(define (map2 f l) (foldr (lambda ( a acc) (cons (f a) acc)) '() l))
