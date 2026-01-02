#lang racket/base


(module+ test
  (require rackunit)
  (define (relax?) #t)

  (check-true (relax?))
  )