#lang racket

(define empty '())

(define (_get-value map key) (filter (lambda (x) (equal? (car x) key)) map))
(define (_nget-value map key) (filter (lambda (x) (not (equal? (car x) key))) map))

(define (remove-assoc map key)
  (_nget-value map key)
)
;; Бонуса се прави с forall? и list? и pair?
