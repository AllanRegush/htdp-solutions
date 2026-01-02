#lang htdp/bsl

; String, Number -> String
; Produces a String where the character at the nth position is removed
(check-expect (delete-nth "i" 0 ) "")
(check-expect (delete-nth  "" 3) "")
(check-expect (delete-nth "two" 1) "to")
(check-expect (delete-nth "fancy" 4) "fanc")
(check-expect (delete-nth "hello" 0) "ello")
(check-expect (delete-nth "hi" 1)    "h")
(check-expect (delete-nth "a" 0)     "")
(check-expect (delete-nth "a" -1)     "")



; Stub
; (define (delete-nth str i) "")

; Template
; (define (delete-nth str i ) ... str i)

(define (delete-nth str i)
  (cond
    [(or (< i 0) (> i (string-length str))) ""]
    [else (string-append (substring str 0 i ) (substring str (+ i 1)))]))