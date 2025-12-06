#lang htdp/bsl

; String, Number -> String
; Given the string and a number produce a string with a underscore at the index provided
(check-expect (insert-underscore "helloworld" 5) "hello_world")
(check-expect (insert-underscore "magic" 1) "m_agic")
(check-expect (insert-underscore "one" 4) "")
(check-expect (insert-underscore "two" 2) "tw_o")
(check-expect (string-length (insert-underscore "two" 2)) (string-length "tw_o"))
(check-expect (insert-underscore "hello" 0) "_hello")
(check-expect (insert-underscore "hi" 2)    "hi_")
(check-expect (insert-underscore "" 0)      "_")
(check-expect (insert-underscore "" 5)      "")           ;
(check-expect (insert-underscore "a" 1)     "a_")

; Stub
; (define (insert-underscore str i) "")

; Template
;(define (insert-underscore str i)
;... str i)

(define (insert-underscore str i)
  (cond
    [(> i (string-length str)) ""]
    [else
     (string-append (substring str 0 i)
                    "_"
                    (substring str i))]))