;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 11 - 6.6.17|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; 2.1 Functions

; “arithmetic” is half the game; the other half is “algebra.”
; algebra notions needed are: variable, function definition,
; function application, and function composition

; like a primitive function, a defined function consumes inputs
; number of variables determines how many inputs—
; also called arguments or parameters—a function consumes

; one argument function = unary function
; two argument function = binary function
; three argument function = ternary function

; Exercise 11. Define a function that consumes two
; numbers, x and y, and that computes the distance of point (x,y) to the origin.

(define (distance x y) (sqrt (+ (* x x) (* y y))))
