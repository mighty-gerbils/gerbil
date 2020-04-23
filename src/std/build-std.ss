;;; -*- Gerbil -*-
;;; (C) fare
;;; Inner build file for std, as specially imported and called by ./build.ss for bootstrap reasons

(import ./build-config ./make)

(include "build-spec.ss")

;;; Busy loop for 1000 seconds, to see how it affects build timeout.
(import ./srfi/19 ./iter)
(def billion 1000000000)
(def (timestamp<-time time)
  (+ (* billion (time-second time)) (time-nanosecond time)))
(def (time<-timestamp timestamp)
  (make-time time-tai (quotient timestamp billion) (remainder timestamp billion)))
(def (current-timestamp)
  (timestamp<-time (current-time time-tai)))
(def (string<-timestamp timestamp)
  (date->string (time-utc->date (time<-timestamp timestamp)) "~Y-~m-~dT~H:~M:~SZ"))
(def target-duration-in-nanoseconds (* 1000 1000000000))
(def (busy-tick)
  (for (_ (in-range 10000)) (void)))
(def (busy-ticks ticks)
  (for (i (in-range ticks)) (busy-tick)))
(def (chronometer thunk)
  (def start-timestamp (current-timestamp))
  (def result (thunk))
  (def end-timestamp (current-timestamp))
  (- end-timestamp start-timestamp))
(def calibration-ticks 100)
(def tick-duration (/ (chronometer (cut busy-ticks calibration-ticks)) calibration-ticks))
(def (seconds->ticks seconds) (floor (/ (* seconds billion) tick-duration)))
(def (busy-sleep seconds) (busy-ticks (seconds->ticks seconds)))
(busy-sleep 1000)

(def (build . args) (apply make build-spec args))
