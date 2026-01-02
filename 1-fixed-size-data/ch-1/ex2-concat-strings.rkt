#lang htdp/bsl
;; String -> String
;; Concat two strings
(check-expect (concat-underscore "hello" "world") "hello_world")
(check-expect (concat-underscore "cat" "dog") "cat_dog")
(check-expect (concat-underscore "24k" "magic") (string-append "24k" "_" "magic"))

; Stub
; (define (concat-underscore a b) "")

; Template
;(define (concat-underscore a b (... a b)))

(define (concat-underscore a b)
  (string-append a "_" b))