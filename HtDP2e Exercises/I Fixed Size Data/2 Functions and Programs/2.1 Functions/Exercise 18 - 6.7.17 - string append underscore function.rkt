;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 18 - 6.7.17 - string append underscore function|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; Exercise 18. Define the function string-join, which consumes two strings and appends them with "_" in between. See exercise 2 for ideas.

(define (string-join str1 str2)
  (string-append str1 "_" str2))

(define str1 "hello")
(define str2 "world")

(string-join str1 str2)

