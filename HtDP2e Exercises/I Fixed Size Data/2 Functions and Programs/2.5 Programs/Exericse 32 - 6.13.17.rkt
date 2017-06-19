;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exericse 32 - 6.13.17|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
; 10 different forms of events that software applications on such computers will have to deal with
; for built-in bio computers: increase in white blood cell count, drop in blood pressure, vitamin levels / deficiences, abnormal / cancerous growth, calcium levels in relation to bone density, blood pH, Glomerular Filtrate Rate, flow rate and potential blood clots, heart rate

; what is the difference between hardware and software?
; hardware is physical equipment, you can touch it. software are installed suites of prgrams that make hardware useful. Usually, the first piece of software to be installed on a computer is the operating system.

; at a high level, what does an operating system do?
; an operating system "manages" the computer for you. it managed connected devices like mouse, keyboard, monitor, key strokes, clicks, clocks. The operating system has many event handlers.

; what is a big-bang expression?
; it comes from the 2htdp/universe library, it is a mechanism for telling the OS which function deals with which event. big-bang expressions keep track of the "state of the program".

; what is the one required sub-expression for a big-bang expression?
; the "initial state of the program"

; what is the "state of the program"?
; i think of it as the current "stage" the program is in

; taking care of an event in BSl means the function consumes the state of the program and a description of the event, and it produces the next state of the program.

; at a high level, a big-bang expression describes how a program connects with a small segment of the world

(define (number->square s)
  (square s "solid" "red"))

(number->square 5)
(number->square 10)
(number->square 20)

(define (reset s ke)
  100) ; what is the purpose of this function? it takes two parameters, throw them away and outputs 100

(big-bang 100
          [to-draw number->square]
          [on-tick sub1]
          [stop-when zero?]
          [on-key reset])

(big-bang cw0
  [on-tick tock]
  [on-key ke-h]
  [on-mouse me-h]
  [to-draw render]
  [stop-when end?]
  ...)






