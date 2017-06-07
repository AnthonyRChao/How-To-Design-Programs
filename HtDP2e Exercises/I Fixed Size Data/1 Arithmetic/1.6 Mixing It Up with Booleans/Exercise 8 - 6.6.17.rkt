;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 8 - 6.6.17|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define object0 (circle 10 "solid" "red"))
(define object1 (rectangle 20 10 "solid" "black"))
(define object2 (rectangle 10 10 "solid" "black"))

; create a conditional expression that computes whether
; the image is square, tall or wide

(if (= (image-height object2) (image-width object2)) "square"
    (if (> (image-height object2) (image-width object2)) "tall" "wide"))
