;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 16 - 6.7.17 - image area function|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; Exercise 16. Define the function image-area, which counts the number of pixels in a given image. See exercise 6 for ideas. image

(define (image-area image)
  (* (image-height image) (image-width image)))

(define image (rectangle 10 20 "solid" "black"))

(image-area image)