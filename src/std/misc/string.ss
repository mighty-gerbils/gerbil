;; -*- Gerbil -*-
package: std/misc
;;;; String utilities

(export
  string-split-prefix
  string-trim-prefix
  string-split-suffix
  string-trim-suffix
  string-split-eol
  string-trim-eol
  +cr+ +lf+ +crlf+)

(import
  :std/srfi/13)


;; If the string starts with given prefix, return the end of the string after the prefix.
;; Otherwise, return the entire string. NB: Only remove the prefix once.
(def (string-trim-prefix prefix string)
  (if (string-prefix? prefix string)
    (string-drop string (string-length prefix))
    string))

;; Split a string based on the given prefix, if present.
;; Return two values:
;; - the trimmed string,
;; - the prefix (eq? to the argument) if found, or an empty string if not found
(def (string-split-suffix suffix string)
  (let ((trimmed (string-trim-suffix suffix string)))
    (if (eq? trimmed string) (values string "") (values trimmed suffix))))


;; If the string ends with given suffix, return the beginning of the string up to the suffix.
;; Otherwise, return the entire string. NB: Only remove the suffix once.
(def (string-trim-suffix suffix string)
  (if (string-suffix? suffix string)
    (string-drop-right string (string-length suffix))
    string))

;; Split a string based on the given suffix, if present.
;; Return two values:
;; - the trimmed string,
;; - the suffix (eq? to the argument) if found, or an empty string if not found
(def (string-split-suffix suffix string)
  (let ((trimmed (string-trim-suffix suffix string)))
    (if (eq? trimmed string) (values string "") (values trimmed suffix))))


;; Line endings
(define +cr+ "\r")
(define +lf+ "\n")
(define +crlf+ "\r\n")

;; TODO: do we want a parameter to list the allowed line endings in the current context?
;; a function to add the default line-ending, which would be the first in that list,
;; or maybe a separate parameter? Indeed, we can't just iterate through such a list
;; to find the longest suffix if +lf+ is in front of +crlf+ -- longer must be tested first.

;; Trim any single end-of-line marker CR, LF or CRLF at the end of the string.
;; NB: This function will only remove one end-of-line marker,
;; like the shell when processing $(subprocess output) or perl's chomp.
;; Use (string-trim-right string (char-set #\return #\newline)) to remove all of them.
(def (string-trim-eol string)
  (defrules try ()
    ((_ eol fallback) (let ((trimmed (string-trim-suffix eol string)))
                        (if (eq? trimmed string) fallback trimmed))))
  (try +crlf+ (try +lf+ (try +cr+ string)))) ;; NB: note how we try the longer +crlf+ *before* +lf+.


;; Split a string based on any end-of-line marker CR, LF or CRLF at the end of the string.
;; Return two values:
;; - the trimmed string
;; - the eol marker found, or the empty string if not found
(def (string-split-eol string)
  (defrules try ()
    ((_ eol fallback) (let ((trimmed (string-trim-suffix eol string)))
                        (if (eq? trimmed string) fallback (values trimmed eol)))))
  (try +crlf+ (try +lf+ (try +cr+ (values string "")))))
