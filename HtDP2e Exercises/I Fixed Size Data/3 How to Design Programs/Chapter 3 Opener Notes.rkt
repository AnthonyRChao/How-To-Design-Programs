;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Chapter 3 Opener Notes|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
; Ch 3 How to Design Programs

; it is critical to learn how to move from problem statement to program
; find out what is relevant & what can be ignored
; find out what the program consumes, what it produces, and how it relates inputs to outputs
; can the chosen language & its libraries provide basic operations for the data that our program is to process. If not, what auxillary functions do we need to build
; once built, does the program perform the intended computation?

; garage programming - hack things together quickly and try things until they work (sometimes a launching pad for a start-up company)

; good program - 
;     short write up that explains what it does
;     what inputs does it expect
;     what does it produce
;     assurnace that it actually works

; programmers don't create programs for themselves. They are for other programmers to read

; and programmer's clients tend to change their mind about what problem they really want solved. you know this from experience...

; complex logical constructions such as programs almost always suffer from human errors, programmers make mistakes

