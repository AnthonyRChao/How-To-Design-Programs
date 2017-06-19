;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |2.5 Programs notes|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
; a batch program consumes all of its inputs at once and computes its result. Its main function is the composition of auxiliary functions, which may refer to additional auxiliary functions, and so on. When we launch a batch program, the operating system calls the main function on its inputs and waits for the program’s output.

; an interactive program consumes some of its inputs, computes, produces some output, consumes more input, and so on. When an input shows up, we speak of an event, and we create interactive programs as event-driven programs. The main function of such an event-driven program uses an expression to describe which functions to call for which kinds of events. These functions are called event handlers.

; "batch" programs take all the input required, then produce an output. they take a "batch" of inputs and run functions / auxillary functions

; the history of "batch programs" originates from the early days of computing. a batch program would read an entire file (or a batch of several files) then place the results in another file without any intervention after launch. Conceptually, a batch program reads an entire file at once and produces the result file all at once.

(write-file "sample.dat" "212")
(read-file "sample.dat")

(write-file 'stdout "212\n")
(write-file 'stdout "test")
(write-file 'stdout "what does 'stdout do")
(write-file 'stdout "'stdout is a special kind of token, a placeholder. You can see the contents of the file you want to create, but the file itself isn't created")

(define (C f)
  (* 5/9 (- f 32)))

(define (convert in out)
  (write-file out
              (string-append
               (number->string
                (C
                 (string->number
                  (read-file in))))
               "\n")))

; what does this program, convert, do?
; take two parameters, in and out. read in as a string, string to number, Fahrenheit to Celsius, number to string, append to file named out and write
; string-append is included because ... we want to start on a new line, otherwise we would append without any indentation or space, unreadable

(write-file "sample.dat" "212")
(convert "sample.dat" 'stdout)
(convert "sample.dat" "out.dat")
(read-file "out.dat")

; create a file named sample.dat with a string 212 inside of it
; convert "sample.dat", but use 'stdout to view what convert outputs before actually converting
; looks good, convert sample.dat into out.dat
; read the file to confirm the new string inside is F -> C. nice, checks out

              
              
