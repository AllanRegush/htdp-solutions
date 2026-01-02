#lang racket/base
(require racket/math)

;; Stub
;; (define (distance-to-origin x y) 0)


;; Template
;; (define (distance-to-origin x y)
;; (... x y)
;; )


;; Number Number -> Number
;; Purpose compute the distance to point from the origin
(define (distance-to-origin x y)
  (sqrt (+ (sqr x ) (sqr y)))
  )


(module+ test
  (require rackunit)
  (check-equal? (distance-to-origin 3 4)   5   "3-4-5 triangle")
  (check-equal? (distance-to-origin -6 8)  10  "negative x")
  (check-equal? (distance-to-origin 0 0)   0   "at origin")
  (check-within (distance-to-origin 1 1)   (sqrt 2)  1e-10)
  )