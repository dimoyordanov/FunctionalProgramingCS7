(define (accumulate op init a b f next)
  (if (> a b)
      init
      (accumulate  op (op init (f a)) (next a) b f next)))

(define (accumulate-prim op init a b f next)
  (if (> a b)
      init
      (op (f a) (accumulate-prim  op init (next a) b f next)))
  )
