;; -*- Gerbil -*-
package: utils
;;;; String utilities

(export
  string-split-suffix
  string-trim-suffix
  string-split-eol
  string-trim-eol
  +cr+ +lf+ +crlf+)

(import
  :std/srfi/13)


;; TODO: find a welcoming home for this macro.
(defrules first-value ()
  ((_ form) (with ((values x . _) form) x)))

;; Split a string based on the given suffix, if present.
;; Return three values:
;; - the trimmed string,
;; - the suffix (eq? to the argument) if found, or an empty string if not found, and
;; - a boolean indicating whether the suffix was found or not.
(def (string-split-suffix suffix string)
  (if (string-suffix? suffix string)
    (values (string-drop-right string (string-length suffix)) suffix #t)
    (values string "" #f)))

;; If the string ends with given suffix, return the beginning of the string up to the suffix.
;; Otherwise, return the entire string. NB: Only remove the suffix once.
(def (string-trim-suffix suffix string)
  (first-value (string-split-suffix suffix string)))


;; Line endings
(define +cr+ "\r")
(define +lf+ "\n")
(define +crlf+ "\r\n")

;; TODO: do we want a parameter to list the allowed line endings in the current context?
;; a function to add the default line-ending, which would be the first in that list,
;; or maybe a separate parameter? Indeed, we can't just iterate through such a list
;; to find the longest suffix if +lf+ is in front of +crlf+ -- longer must be tested first.

;; Split a string based on any end-of-line marker CR, LF or CRLF at the end of the string.
;; Return three values:
;; - the trimmed string
;; - the eol marker found, or the empty string if not found, and
;; - a boolean indicating whether an eol marker was found.
(def (string-split-eol string)
  (let/cc return
    (for-each
      (lambda (eol) (let-values (((prefix suffix found?) (string-split-suffix eol string)))
                      (when found? (return (values prefix suffix found?)))))
      [+crlf+ +lf+ +cr+]) ;; NB: note how the longer +crlf+ is *before* +lf+.
    (values string "" #f)))

;; Trim any single end-of-line marker CR, LF or CRLF at the end of the string.
;; NB: This function will only remove one end-of-line marker,
;; like the shell when processing $(subprocess output) or perl's chomp.
;; Use (string-trim-right string (char-set #\return #\newline)) to remove all of them.
(def (string-trim-eol string)
  (first-value (string-split-eol string)))
