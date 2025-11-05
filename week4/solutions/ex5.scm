#lang racket

(define (assoc-map map2 f) (map (lambda (x) (cons (car x) (f (cdr x)))) map2 ))
(define (assoc-filter map2 p) (filter (lambda (x) (p (car x) (cdr x))) map2 ))
