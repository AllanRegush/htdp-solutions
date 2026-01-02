#lang htdp/bsl
(require 2htdp/image)


; Natural -> Image
; Produce a tree image from the size number given
(check-expect (image-width  (draw-tree 60)) 60)
(check-expect (image-height (draw-tree 60)) 112)
(check-within (image-height (draw-tree 80)) 149 5)

; Stub
; (define (draw-tree x ) ...)

; Template
; (define (draw-tree x) ... x y)

(define (draw-tree x)
  (overlay/xy (triangle x "solid" "green")
              0 (/ x 2)
              (overlay/xy (triangle x "solid" "green")
                          0 (/ x 2)
                          (triangle x "solid" "green"))))

; (draw-tree 40)