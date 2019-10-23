;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-19: time data types and procedures

(import :std/srfi/srfi-support
        :std/srfi/8
        :gerbil/gambit/exact)
(export
  time-duration time-monotonic time-process time-tai time-thread time-utc
  current-date current-julian-day current-modified-julian-day
  current-time
  time-resolution
  (except-out (struct-out time) make-time)
  (rename: make-time% make-time)
  time<=? time<? time=? time>=? time>?
  time-difference time-difference!
  add-duration add-duration!
  subtract-duration subtract-duration!
  date make-date date?
  date-nanosecond date-second date-minute date-hour
  date-day date-month date-year date-zone-offset
  date-year-day date-week-day date-week-number
  date->julian-day date->modified-julian-day
  date->time-monotonic date->time-tai date->time-utc
  julian-day->date julian-day->time-monotonic
  julian-day->time-tai julian-day->time-utc
  modified-julian-day->date modified-julian-day->time-monotonic
  modified-julian-day->time-tai modified-julian-day->time-utc
  time-monotonic->date
  time-monotonic->julian-day time-monotonic->modified-julian-day
  time-monotonic->time-tai time-monotonic->time-tai!
  time-monotonic->time-utc time-monotonic->time-utc!
  time-tai->date
  time-tai->julian-day time-tai->modified-julian-day
  time-tai->time-monotonic time-tai->time-monotonic!
  time-tai->time-utc time-tai->time-utc!
  time-utc->date time-utc->julian-day time-utc->modified-julian-day
  time-utc->time-monotonic time-utc->time-tai time-utc->time-tai!
  date->string string->date)
(include "srfi-19.scm")
(defalias set-time-type! time-type-set!)
(defalias set-time-second! time-second-set!)
(defalias set-time-nanosecond! time-nanosecond-set!)
