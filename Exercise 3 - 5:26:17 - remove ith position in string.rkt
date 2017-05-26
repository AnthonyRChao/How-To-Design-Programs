;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 3 - 5:26:17 - remove ith position in string|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; Exercise 4 - 5/26/17

; constants
(define str "helloworld")
(define ind "0123456789")
(define i 5)

; this function splits str into two substrings at position i
; and removes the ith position of str
(define (remove_ith str i)
  (string-append (substring str 0 i) (substring str (+ i 1) (string-length str))))

; of note, substring is inclusive of the first position and exclusive of the last