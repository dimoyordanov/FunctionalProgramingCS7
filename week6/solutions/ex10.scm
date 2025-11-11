#lang racket

(define alphabet (list "a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "t" "u" "v" "w" "x" "y" "z"))

(define (_treeBase r) (cons r (foldr (lambda (x acc) (cons (lambda () (_treeBase (string-append r x))) acc)) '() alphabet)))

(define tree (_treeBase ""))

(define (get tree n) (if (null? tree) '() (if (= n 0) ((car tree)) (get (cdr tree) (- n 1)))))

(get (get (get (get (get (get (get tree 2) 1) 25) 9) 14)7) 1)
