;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-13: string library
;;;
;;; This is (gerbilized) Olin's implementation, without the expensive argument checking
;;; and optionals goop -- it uses gerbil opt-lambdas and ellides the checks altogether.
;;;

(import :gerbil/gambit/bits
        :std/srfi/14)
(export
  string-map string-map!
  string-fold       string-unfold
  string-fold-right string-unfold-right
  string-tabulate string-for-each string-for-each-index
  string-every string-any
  string-hash string-hash-ci
  string-compare string-compare-ci
  string=    string<    string>    string<=    string>=    string<>
  string-ci= string-ci< string-ci> string-ci<= string-ci>= string-ci<>
  string-downcase  string-upcase  string-titlecase
  string-downcase! string-upcase! string-titlecase!
  string-take string-take-right
  string-drop string-drop-right
  string-pad string-pad-right
  string-trim string-trim-right string-trim-both
  string-filter string-delete
  string-index string-index-right
  string-skip  string-skip-right
  string-count
  string-prefix-length string-prefix-length-ci
  string-suffix-length string-suffix-length-ci
  string-prefix? string-prefix-ci?
  string-suffix? string-suffix-ci?
  string-contains string-contains-ci
  string-copy! substring/shared
  string-reverse string-reverse! reverse-list->string
  string-concatenate string-concatenate/shared
  string-concatenate-reverse string-concatenate-reverse/shared
  string-append/shared
  xsubstring string-xcopy!
  string-null?
  string-join
  string-tokenize
  string-replace)

(declare
  (fixnum))

;;; baseline definitions
;;; this is ASCII only; help yourself if you have the unicode expertise
;;; to correctly implement it, patches welcome)
(def a:int (char->integer #\a))
(def z:int (char->integer #\z))
(def A:int (char->integer #\A))
(def Z:int (char->integer #\Z))

(def (char-cased? char)
  (let (int (char->integer char))
    (or (and (>= int a:int) (<= int z:int))
        (and (>= int A:int) (<= int Z:int)))))
(def char-titlecase char-upcase)

;;; Implementation
(include "srfi-13.scm")
