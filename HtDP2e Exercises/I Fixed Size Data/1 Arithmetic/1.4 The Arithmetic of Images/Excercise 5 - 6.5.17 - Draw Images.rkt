;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Excercise 5 - 6.5.17 - Draw Images|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define x 5)
(define b (* x 8)) ; body
(define h (* x 2)) ; height
(define t (* x 1)) ; tire


(define (draw_automobile x)
  
  (overlay/xy (overlay/xy (overlay/xy (rectangle b h "solid" "black") 0 h (circle t "solid" "black"))
  (* b 0.75) h (circle t "solid" "black")) h (* h -1) (rectangle (/ b 2) h "solid" "black")))

(define (draw_boat x)
  (overlay/xy (isosceles-triangle 60 250 "solid" "lightseagreen") 30 (* 40 -1) (triangle 40 "solid" "black")))
  
; Skipped using image primitives to make a tree


