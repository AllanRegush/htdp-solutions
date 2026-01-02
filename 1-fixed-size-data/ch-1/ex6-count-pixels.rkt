#lang htdp/bsl
(require 2htdp/image)

(define rect (rectangle 10 20 "solid" "blue"))
(define cat (bitmap/url "https://htdp.org/2024-11-6/Book/cat1.png"))

; Image -> Natural
; Purpose to count the number of pixels in a image
(check-expect (count-pixels rect) (* (image-width rect) (image-height rect)))
(check-expect (count-pixels rect) 200)
(check-expect (count-pixels cat) (* (image-width cat) (image-height cat)))
(check-expect (count-pixels rect) 200)

; Stub
; (define (count-pixels img) ...)

; Template
; (define (count-pixels img) ...img)

(define (count-pixels img)
  (* (image-width img) (image-height img)))