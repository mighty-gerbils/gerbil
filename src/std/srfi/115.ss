;;; -*- Gerbil -*-
;;; (c) vyzo at hackzen.org
;;; SRFI-115: Regular Expressions; this is Alex Shinn's implementation from chibi

(import :std/error
        :std/srfi/1
        :std/srfi/9
        :std/srfi/14
        :std/srfi/151)

(export regexp regexp? valid-sre? rx regexp->sre char-set->sre
        regexp-matches regexp-matches? regexp-search
        regexp-replace regexp-replace-all regexp-match->list
        regexp-fold regexp-extract regexp-split regexp-partition
        regexp-match? regexp-match-count
        regexp-match-submatch
        regexp-match-submatch-start regexp-match-submatch-end)

(def (string-start-arg s o)
  (if (pair? o) (string-index->cursor s (car o)) 0))
(def (string-end-arg s o)
  (if (pair? o) (string-index->cursor s (car o)) (string-length s)))
(def string-cursor? integer?)
(def string-cursor=? fx=)
(def string-cursor<? fx<)
(def string-cursor<=? fx<=)
(def string-cursor>? fx>)
(def string-cursor>=? fx>=)
(def string-cursor-ref string-ref)
(def (string-cursor-next s i) (fx+ i 1))
(def (string-cursor-prev s i) (fx- i 1))
(def substring-cursor substring)
(def (string-cursor->index str off) off)
(def (string-index->cursor str i) i)
(def (string-concatenate ls) (apply string-append ls))
(def (string-concatenate-reverse ls)
  (string-concatenate (reverse ls)))

(def (immutable-char-set char-set)
  char-set)

(include "srfi-115/charsets.scm")
(include "srfi-115/regexp.scm")
