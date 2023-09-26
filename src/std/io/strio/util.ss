;;; -*- Gerbil -*-
;;; © vyzo
;;; string buffered io extension methods
(import :std/sugar
        :std/error
        :std/interface
        (only-in :std/srfi/1 reverse!)
        ../interface
        ./inline)
(declare (not safe))

(export defstring-reader-ext defstring-reader-ext*  defstring-writer-ext defstring-writer-ext*)

(defsyntax (defstring-reader-ext stx)
  (syntax-case stx ()
    ((_ (method . args) body ...)
     (with-syntax ((reader-method (stx-identifier #'method "BufferedStringReader-" #'method))
                   (unchecked-method (stx-identifier #'method "&BufferedStringReader-" #'method)))
       #'(begin
           (defstring-reader-ext* (method . args) body ...)
           (export reader-method unchecked-method))))))

(defsyntax (defstring-reader-ext* stx)
  (syntax-case stx ()
    ((_ (method reader . args) body ...)
     (with-syntax ((reader-method (stx-identifier #'method "BufferedStringReader-" #'method))
                   (unchecked-method (stx-identifier #'method "&BufferedStringReader-" #'method)))
       #'(begin
           (def (reader-method reader . args)
             (with-interface (reader : BufferedStringReader)
               body ...))
           (def (unchecked-method reader . args)
             (with-interface (reader :- BufferedStringReader)
               body ...)))))))

(defsyntax (defstring-writer-ext stx)
  (syntax-case stx ()
    ((_ (method . args) body ...)
     (with-syntax ((writer-method (stx-identifier #'method "BufferedStringWriter-" #'method))
                   (unchecked-method (stx-identifier #'method "&BufferedStringWriter-" #'method)))
       #'(begin
           (defstring-writer-ext* (method . args) body ...)
           (export writer-method unchecked-method))))))

(defsyntax (defstring-writer-ext* stx)
  (syntax-case stx ()
    ((_ (method writer . args) body ...)
     (with-syntax ((writer-method (stx-identifier #'method "BufferedStringWriter-" #'method))
                   (unchecked-method (stx-identifier #'method "&BufferedStringWriter-" #'method)))
       #'(begin
           (def (writer-method writer . args)
             (with-interface (writer : BufferedStringWriter)
               body ...))
           (def (unchecked-method writer . args)
             (with-interface (writer :- BufferedStringWriter)
               body ...)))))))


(defstring-reader-ext (read-line reader (sep #\newline) (include-sep? #f) (max-chars #f))
  (let* ((separators
          (cond
           ((pair? sep) sep)
           ((not sep) [])
           (else [sep])))
         (read-more?
          (if max-chars
            (lambda (x) (fx< x max-chars))
            (lambda (x) #t)))
         (finish
          (if include-sep?
            (lambda (chars drop) (list->string (reverse! chars)))
            (lambda (chars drop) (list->string (reverse! (list-tail chars drop)))))))
    (let lp ((x 0) (separating separators) (drop 0) (chars []))
      (cond
       ((and sep (null? separating))
        (finish chars drop))
       ((read-more? x)
        (let (next (.read-char-inline reader))
          (cond
           ((eof-object? next)
            (finish chars drop))
           ((and sep (eq? (car separating) next))
            (lp (fx+ x 1) (cdr separating) (fx+ drop 1) (cons next chars)))
           (else
            (lp (fx+ x 1) separators 0 (cons next chars))))))
       (else
        (raise-io-error strbuf-read-line "too many characters" x))))))


(defstring-writer-ext (write-line writer input (separator #\newline))
  (let (result (.write-string writer input 0 (string-length input)))
    (if (pair? separator)
      (let lp ((rest separator) (result result))
        (match rest
          ([char . rest]
           (.write-char-inline writer char)
           (lp rest (fx+ result 1)))
          (else result)))
      (begin
        (.write-char-inline writer separator)
        (fx+ result 1)))))
