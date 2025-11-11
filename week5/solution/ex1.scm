#lang racket

(define (gen a) (if (= a 0) (cons a emptyset) (cons a (gen (- a 1)))))

(define emptyset '())
(define (addElem a set) (cons a (filter (lambda (x) (not (= x a)))set)))

(define (= a b) (equal? a b))

(define (member a set) (pair?(filter (lambda (x) (= x a)) set)))
