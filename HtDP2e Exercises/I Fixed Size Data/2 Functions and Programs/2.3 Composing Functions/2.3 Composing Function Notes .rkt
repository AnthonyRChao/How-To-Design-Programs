;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |2.3 Composing Function Notes |) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; 2.2 Composing Function Notes

; Programs consist of a "main" definition and several other functions and turns the result of one function application into the input for another. This is called function composition. The additional functions are called auxillary functions or helper functions.

; In general, when a task requires distinct tasks of computation, a program should consist of one function per task and a main function that puts it all together.

; DEFINE ONE FUNCTION PER TASK

; This way, you have reasonably smaller functions, each of which is easy to comprehend, and whose composition is easy to understand.

; It is much easier to get small functions to work correctly versus large unwiedly functions. If you need to change something in the future, update a small block, versus updating a large monolithic block of code.

(require 2htdp/batch-io)

(define (letter fst lst signature-name)
  (string-append
    (opening fst)
    "\n\n"
    (body fst lst)
    "\n\n"
    (closing signature-name)))

(define (opening fst)
  (string-append "Dear " fst ","))

(define (body fst lst)
  (string-append
    "We have discovered that all people with the" "\n"
    "last name " lst " have won our lottery. So, " "\n"
    fst ", " "hurry and pick up your prize."))

(define (closing signature-name)
  (string-append
   "Sincerely,"
   "\n\n"
   signature-name
   "\n"))
