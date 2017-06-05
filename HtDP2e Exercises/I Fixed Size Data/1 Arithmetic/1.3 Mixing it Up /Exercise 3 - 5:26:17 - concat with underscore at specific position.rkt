;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 3 - 5:26:17 - concat with underscore at specific position|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; Exercise 3 - 5/26/17

; constants
(define str "helloworld")
(define ind "0123456789")
(define i 5)

; this function splits str into two substrings and appends "_" in between
(define (insert_underscore str i)
  (string-append (substring str 0 i) "_" (substring str i (string-length str))))

; of note, substring is inclusive of the first position and exclusive of the last