#lang racket/base
(require racket/math)
;; Stub
;(define (csurface side-length)
; 0
;  )

;; Template
;(define (csurface side-length)
; (... side-length)
;  )


;; Number -> Number
;; To compute the surface area of a cube with the given side length
(define (csurface side-length)
  (* 6 (sqr side-length))
  )

(module+ test
  (require rackunit)
  (check-equal? (csurface 10) 600 "positive integer")
  (check-equal? (csurface 0) 0 "zero edge case")
  (check-equal? (csurface -1) 6 "negative number")
  (check-equal? (csurface 1) 6 "unit cube")
  )