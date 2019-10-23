;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; R7RS (scheme char) library
(import ./char-impl
        (only-in :std/srfi/13 string-downcase string-upcase))

(export
  char-alphabetic?
  char-ci<=?
  char-ci<?
  char-ci=?
  char-ci>=?
  char-ci>?
  char-downcase
  char-foldcase
  char-lower-case?
  char-numeric?
  char-upcase
  char-upper-case?
  char-whitespace?
  digit-value
  string-ci<=?
  string-ci<?
  string-ci=?
  string-ci>=?
  string-ci>?
  string-downcase
  string-foldcase
  string-upcase
  )
