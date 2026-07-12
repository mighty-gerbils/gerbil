;;; -*- Gerbil -*-
;;; © vyzo
;;; string templates
(export write-template)
(import :std/error
        :std/io/api
        (only-in :std/string/misc reverse!))

;; NB: order of first two argument swapped since v0.18.
;; v0.18 (apply-template template args ...) is now just (write-template #t template args ...)
(def (write-template writer template . args)
  (with-buffered-writer (writer)
    (def vars (make-hash-table))

    (let lp ((rest args))
      (match rest
        ([(? keyword? key) val . rest]
         (hash-put! vars (keyword->string key) val)
         (lp rest))
        ([] (void))))

    (let lp ((rest (string->list template)))
      (match rest
        ([char . rest]
         (cond
          ((eqv? char #\\)
           (match rest
             ([escape . rest]
              (writer.write-char-utf8 escape)
              (lp rest))
             (else
              (BUG 'apply-template "incomplete character escape" template))))
          ((eqv? char #\$)
           (match rest
             ([char . rest]
              (cond
               ((eqv? char #\\)
                (match rest
                  ([escape . rest]
                   (writer.write-char-utf8 #\$)
                   (writer.write-char-utf8 escape)
                   (lp rest))))
               ((eqv? char #\{)
                (let lp-inner ((rest rest) (var []))
                  (match rest
                    ([char . rest]
                     (cond
                      ((eqv? char #\})
                       (let (var (list->string (reverse! var)))
                         (cond
                          ((hash-get vars var)
                           => (lambda (val)
                                (writer.write-string-utf8 val)))
                          (else
                             (BUG 'apply-template "undefined template variable" template var))))
                       (lp rest))
                      (else
                       (lp-inner rest (cons char var)))))
                    (else
                     (BUG 'apply-template "incomplete variable substitution" template)))))
               (else
                (writer.write-char-utf8 #\$)
                (writer.write-char-utf8 char)
                (lp rest))))
             (else
              (writer.write-char-utf8 #\$)
              (lp rest))))
          (else
           (writer.write-char-utf8 char)
           (lp rest))))
        (else (void))))))
