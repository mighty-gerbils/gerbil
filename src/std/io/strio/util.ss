;;; -*- Gerbil -*-
;;; © vyzo
;;; string buffered io extension methods
(import :std/sugar
        :std/error
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

;; TODO implement with interface method infrastructure
(defsyntax (defstring-reader-ext* stx)
  (syntax-case stx ()
    ((_ (method reader . args) body ...)
     (with-syntax ((reader-method (stx-identifier #'method "BufferedStringReader-" #'method))
                   (unchecked-method (stx-identifier #'method "&BufferedStringReader-" #'method)))
       #'(begin
           (def (reader-method reader . args)
             (using (reader : BufferedStringReader)
               body ...))
           (def (unchecked-method reader . args)
             (using (reader :- BufferedStringReader)
               body ...)))))))

(defsyntax (defstring-writer-ext stx)
  (syntax-case stx ()
    ((_ (method . args) body ...)
     (with-syntax ((writer-method (stx-identifier #'method "BufferedStringWriter-" #'method))
                   (unchecked-method (stx-identifier #'method "&BufferedStringWriter-" #'method)))
       #'(begin
           (defstring-writer-ext* (method . args) body ...)
           (export writer-method unchecked-method))))))

;; TODO implement with interface method infrastructure
(defsyntax (defstring-writer-ext* stx)
  (syntax-case stx ()
    ((_ (method writer . args) body ...)
     (with-syntax ((writer-method (stx-identifier #'method "BufferedStringWriter-" #'method))
                   (unchecked-method (stx-identifier #'method "&BufferedStringWriter-" #'method)))
       #'(begin
           (def (writer-method writer . args)
             (using (writer : BufferedStringWriter)
               body ...))
           (def (unchecked-method writer . args)
             (using (writer :- BufferedStringWriter)
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
        (let (next (reader.read-char-inline))
          (cond
           ((eof-object? next)
            (finish chars drop))
           ((and sep (eq? (car separating) next))
            (lp (fx+ x 1) (cdr separating) (fx+ drop 1) (cons next chars)))
           (else
            (lp (fx+ x 1) separators 0 (cons next chars))))))
       (else
        (raise-io-error strbuf-read-line "too many characters" x))))))

(defstring-reader-ext (read-available reader (start 0) (end #f))
  (let* ((available (reader.available))
         (available-end (+ start available))
         (actual-end (if end (min end available-end) available-end))
         (buffer (make-string actual-end #\space)))
    (reader.read-string buffer start actual-end 0)
    buffer))

(defstring-reader-ext (read-available-into reader buffer (start 0) (end #f))
  (let* ((available (reader.available))
         (len (string-length buffer))
         (count (min available (- (if end (min len end) len) start))))
    (reader.read-string buffer start (+ start count) 0)
    count))


(defstring-writer-ext (write-line writer input (separator #\newline))
  (let (result (writer.write-string input 0 (string-length input)))
    (if (pair? separator)
      (let lp ((rest separator) (result result))
        (match rest
          ([char . rest]
           (writer.write-char-inline char)
           (lp rest (fx+ result 1)))
          (else result)))
      (begin
        (writer.write-char-inline separator)
        (fx+ result 1)))))
