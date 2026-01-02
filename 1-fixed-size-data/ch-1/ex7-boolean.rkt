#lang racket/base


(define sunny #t)
(define friday #f)

;; Stub
;; (define (not-sunny-or-friday? sunny friday))

;; Template
;; (define (not-sunny-or-friday? sunny friday)
;;    (...)
;; )

;; bool bool -> bool
;; Purpose If its not sunny or it's friday return true
(define (not-sunny-or-friday? sunny friday)
  (or (not sunny) friday)
  )

(module+ test
  (require rackunit)

  (check-true (not-sunny-or-friday? #f #t) "not sunny but friday")
  (check-false (not-sunny-or-friday? sunny friday) "It is sunny")
  )