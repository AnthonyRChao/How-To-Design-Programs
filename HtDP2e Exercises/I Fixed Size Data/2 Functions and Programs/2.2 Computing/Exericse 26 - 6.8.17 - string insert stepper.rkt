;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exericse 26 - 6.8.17 - string insert stepper|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; Exercise 26. What do you expect as value of the following program:

(define (string-insert s i)
  (string-append (substring s 0 i)
                 "_"
                 (substring s i)))
 
(string-insert "helloworld" 5)

; Confirm your expectation with DrRacket and its stepper.

; I did not know that leaving the third argument of substring blank meant continuing to the end of string input, good to know