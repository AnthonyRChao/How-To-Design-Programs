;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 9 - 6.6.17|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; 1.7 Know thy Data
; a predicate is a function that consumes a value and outputs a boolean whether
; or not the input belongs to some class of data                              
; some examples include number? image? boolean?
; integer? real? complex?
; rational?

; create an expression that converts whatever in represents to a number. For a string,
; it determines how long the string is; for an image, it uses the area; for a number,
; it decrements the number, unless it is already 0 or negative; for #ture it uses 10,
; and for #false 20

(define in 5)

(if (string? in) (string-length in)
    (if (image? in) (* (image-width in) (image-height in))
        (if (number? in) (if (or (zero? in) (negative? in)) in (- in 1))
            (if (boolean? in) (if (false? in) 20 10) in))))