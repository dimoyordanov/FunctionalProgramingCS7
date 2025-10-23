(define (accumulate-prim op init a b f next)
  (if (> a b)
      init
      (op (f a) (accumulate-prim  op init (next a) b f next)))
  )

(define (vector-zeros2 n) (accumulate-prim cons  '() 1 n (lambda (x) 0) (lambda (x) (+ 1 x)) ))

(define (vector-ones2 n) (accumulate-prim cons  '() 1 n (lambda (x) 0) (lambda (x) (+ 1 x)) ))

(define (vector-fill2 n v) (accumulate-prim cons  '() 1 n (lambda (x) v) (lambda (x) (+ 1 x)) ))

(define (mat-zero a b) (vector-fill2 a (vector-zeros2 b )))
(define (mat-ones a b) (vector-fill2 a (vector-ones2 b )))
(define (mat-fill a b v) (vector-fill2 a (vector-fill2 b v)))

(define (vector-zeros a) (mat-zero a 1))
(define (vector-ones a) (mat-ones a 1))
(define (vector-fill a v) (mat-fill a 1 v))
