#lang racket

(define (remove-vertex graph vertex) (remove-assoc graph vertex))
(define (vertexes graph) (keys graph))
