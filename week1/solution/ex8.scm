#lang racket
(define (succ x) (+ 1 x))

(define (pred x) (+ -1 x))

(define (repeat n f x) (
    if (= n 0)
        x
        (repeat (- n 1) f (f x))
))

(define (_+_ a b) (if (zero? b) a (_+_ (succ a) (pred b))))
(define (_+_2 a b) (repeat a succ b))
(define (_-_ a b) (if (zero? b) a (_-_ (pred a) (pred b))))
(define (_-_2 a b) (repeat a pred b))
(define (_*__ a b c) (if (zero? b) 0 (if (zero? (pred b)) a (_*__ (_+_ a c) (pred b) c))))
(define (_*_ a b) (_*__ a b a))

(define (mod a b) (if (< a b) a (mod (_-_ a b) b)))
(define (fact n) (if (zero? n) 1 (_*_ n (fact (pred n)))))
