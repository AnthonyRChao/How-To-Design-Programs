;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 27 - 6.12.17|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
(define base_attendance 120)
(define base_ticker-price 5.0)
(define base_attendance-delta 15)
(define base_price-delta 0.1)
(define fixed_cost 180)
(define variable_cost_per_attendee 0.04)

(define (attendees ticket-price)
  (- base_attendance (* (- ticket-price base_ticker-price) (/ base_attendance-delta base_price-delta))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ fixed_cost (* variable_cost_per_attendee (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price) (cost ticket-price)))
