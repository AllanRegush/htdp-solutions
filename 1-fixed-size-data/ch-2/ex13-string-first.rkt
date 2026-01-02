#lang racket/base
(require racket/string)


;; Stub
;; (define (string-first str) "")

;; Template
;; (define (string-first str) (... str))


;; String -> String
;; To extract the first character from a string as a string
(define (string-first str)
  (if (non-empty-string? str) (substring str 0 1) "")
  )

(module+ test
  (require rackunit)
  (check-equal? (string-first "") "" "empty string")
  (check-equal? (string-first "a") "a" "single character")
  (check-equal? (string-first "ted") "t" "multi-character string")
  (check-equal? (string-first "hello world") "h" "string with space")
  )