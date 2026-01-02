#lang racket/base
(require 2htdp/image)

;; Stub
;; (define (value->non-neg in))

;; Template
;; (define (value->non-neg in)
;;  (cond
;;    [... in])
;;  )


;; Any -> NaturalNumber
;; Converts the given value to a non-negative number:
;; - String  -> length
;; - Image   -> area (width * height)
;; - Number  -> absolute value
;; - Boolean -> 10 if #true, 20 if #false
(define (value->non-neg in)
  (cond
    [(string? in)  (string-length in)]
    [(image?  in)  (* (image-width in) (image-height in))]
    [(number? in)  (abs in)]
    [(boolean? in) (if in 10 20)]
    [else          (error "value->non-neg: unknown input type")]
    )
  )

(module+ test
  (require rackunit)

  ;; Define a type that value->non-neg cannot handle
  (define-struct foo (number))

  (check-equal? (value->non-neg "hello") 5)
  (check-equal? (value->non-neg "") 0)
  (check-equal? (value->non-neg (rectangle 10 20 "solid" "blue")) 200)
  (check-equal? (value->non-neg (circle 10 "solid" "red")) (* 20 20))
  (check-equal? (value->non-neg -7) 7)
  (check-equal? (value->non-neg 3.14) 3.14)
  (check-equal? (value->non-neg #t) 10)
  (check-equal? (value->non-neg #f) 20)
  (check-exn exn:fail?
             (lambda () (value->non-neg foo)
               "should error on a type not handled"))
  )