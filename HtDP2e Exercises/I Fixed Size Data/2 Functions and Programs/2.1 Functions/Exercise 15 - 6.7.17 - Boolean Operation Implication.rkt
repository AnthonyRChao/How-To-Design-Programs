;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 15 - 6.7.17 - Boolean Operation Implication|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; Exercise 15. Define ==>. The function consumes two Boolean values, call them sunny and friday. Its answer is #true if sunny is false or friday is true. Note Logicians call this Boolean operation implication, and they use the notation sunny => friday for this purpose.

(define (==> sunny friday)
  (if (or (false? sunny) (false? (false? friday))) true false))

(==> true true)
(==> false false)
(==> true false)
(==> false true)