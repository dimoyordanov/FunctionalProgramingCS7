#lang racket

(define (edge? graph  a b) (member? (get-vertex graph a) b))
