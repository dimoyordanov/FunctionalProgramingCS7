#lang racket

(define empty '())

(define (_get-value map key) (filter (lambda (x) (equal? (car x) key)) map))
(define (_nget-value map key) (filter (lambda (x) (not (equal? (car x) key))) map))

(define (add-assoc map key value)
  (cons (cons key value) (_nget-value map key))
)

(define (get-assoc map key)
  (define item (_get-value map key))
  (if (null? item) '() (car item))
)
