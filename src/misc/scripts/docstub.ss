#!/usr/bin/env gxi
;;; -*- Gerbil -*-
;;; Given a list of symbols in stdin, create a documentation stub

(import :std/format
        :std/srfi/13)

(def (main . args)
  (match args
    ([] (make-stub 2))
    (["--level" level]
     (make-stub (string->number level)))))

(def (make-stub level)
  (def head
    (list->string (make-list level #\#)))

  (let lp ()
    (let (next (read-line))
      (unless (eof-object? next)
        (let (next (string-trim next))
          (unless (string-empty? next)
            (printf "~a ~a~n" head (heading next))
            (printf "::: tip usage~n")
            (printf "```~n")
            (printf "(~a ...)~n" next)
            (printf "```~n")
            (printf ":::~n")
            (printf "~n")
            (printf "Please document me!~n")
            (printf "~n"))
          (lp))))))

(def (heading str)
  (list->string
   (foldr (lambda (c cs)
            (case c
              ((#\<)
               (cons* #\& #\l #\t #\; cs))
              ((#\>)
               (cons* #\& #\g #\t #\; cs))
              (else
               (cons c cs))))
          []
          (string->list str))))
