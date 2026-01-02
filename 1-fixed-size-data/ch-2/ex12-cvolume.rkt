#lang racket/base

;; Stub
;;(define (cvolume side-length)
;;  0
;;  )

;; Template
;(define (cvolume side-length)
;(... side-length)
;)

;; Number -> Number
;; To compute the volume of a cube with the given side length
(define (cvolume side-length)
  (expt side-length 3)
  )


(module+ test
  (require rackunit)
  (check-eq? (cvolume 10) 1000 "positive integer")
  (check-eq? (cvolume 0) 0 "zero edge case")
  (check-eq? (cvolume -5) -125 "negative number")
  (check-eq? (cvolume 1) 1 "unit cube")
  (check-eq? (cvolume 10) (expt 10 3))
  )