#lang racket/base
(require 2htdp/image)


;; Stub
;; (define (img-tall-wide-square? img))

;; Template
;;(define (img-tall-wide-square? img)
;;    (img ...)
;;)


;; Image -> String
;; Perpose to check if the image is tall, wide or square
(define (img-tall-wide-square? img)
  (cond
    [(< (image-width img) (image-height img)) "tall"]
    [(> (image-width img) (image-height img)) "wide"]
    [else "square"]
    )
  )


(module+ test
  (require rackunit)
  (define-check (check-tall? result)
    (check-equal? result "tall")
    )

  (define-check (check-wide? result)
    (check-equal? result "wide")
    )

  (define-check (check-square result)
    (check-equal? result "square")
    )

  (define tall-rectangle (rectangle 1 30 "solid" "red"))
  (define wide-rectangle (rectangle 30 1 "solid" "red"))
  (define square (rectangle 10 10 "solid" "red"))

  (check-tall? (img-tall-wide-square? tall-rectangle))
  (check-wide? (img-tall-wide-square? wide-rectangle))
  (check-square (img-tall-wide-square? square))
  )