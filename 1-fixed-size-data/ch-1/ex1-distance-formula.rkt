#lang htdp/bsl

; Number -> Number
; compute the distance from the origin
(check-expect (dist 12 5) 13)
(check-within (dist 2 2) (sqrt (+ (sqr 2) (sqr 2))) 0.1)


; Stub
; (define (dist x y) 0)

; template
;(define (dist x y)
;(... x y))

(define (dist x y)
  (sqrt (+ (sqr x) (sqr y))))


