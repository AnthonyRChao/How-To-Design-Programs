;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 24 - 6.7.17|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; Exercise 24. Here is the definition of ==>:

(define (==> x y)
  (or (not x) y))

; the not operator! and the or operator! use these two for boolean operation implication

(==> true true)
(==> false false)
(==> true false)
(==> false true)

; Use the stepper to determine the value of (==> #true #false).
