;;; -*- Gerbil -*-
;;; (C) vyzo
;;; textual template related utilities

(import :std/format
        (for-syntax :std/misc/ports
                    :std/format
                    :std/stxutil))
(export include-text
        template include-template include-template-alist
        quasistring include-quasistring)

;; compile-time include a file as text (a string)
(defsyntax (include-text stx)
  (syntax-case stx ()
    ((_ path)
     (stx-string? #'path)
     (let (path (gx#core-resolve-path #'path (stx-source stx)))
       (with-syntax ((txt (call-with-input-file path read-all-as-string)))
         #'(quote txt))))))

;; quasistring utility functions
(begin-syntax
  (def qs-err-missing-close "Malformed quasistring: closing } required after s-exp")

  (def (stx-format stx)
    (if (stx-string? stx) ;; don't format strings
      stx
      (with-syntax ((stx stx))
        #'(format "~a" stx))))

  (def (map-format stx)
    (stx-map stx-format stx))

  ;; custom eval to capture the proper variables
  (def (eval** stx ctx)
    (parameterize ((current-expander-phi (1+ (current-expander-phi))))
      (let (stx (datum->syntax ctx stx))
        (eval-syntax stx #t))))

  (def (parse-quasistring stx ctx rt-symbol-proc output-proc (expansion-time-eval #f))
    ;; rt-symbol-proc wraps sexp if sexp is a run time symbol
    ;; output-proc is what we return from the macro
    ;; if expansion-time-eval is #t, allow for ##{} template variables
    (def (lp (port (open-input-string (stx-e stx)))
             (c    (read-char port))
             (ops  [])  ;; arguments of string-append
             (str  "")) ;; container to concatenate strings
      (cond
       ((eq? c #\#)
        (let (c+1 (read-char port))
          (cond
           ((eq? c+1 #\{) ;; run time template variables
            (let ((sexp (read port))
                  (c+2  (read-char port)))
              (if (eq? c+2 #\})
                (if (symbol? sexp)
                  (lp port (read-char port) (append ops [str (rt-symbol-proc sexp)]) "")
                  (lp port (read-char port) (append ops [str sexp]) ""))
                (error qs-err-missing-close c+2))))
           ((eq? c+1 #\#) ;; expansion time template variables
            (if expansion-time-eval
              (let (c+2 (read-char port))
                (if (eq? c+2 #\{)
                  (let* ((sexp     (read port))
                         (sexp-str (format "~a" (eval** sexp ctx)))
                         (c+3      (read-char port)))
                    (if (eq? c+3 #\})
                      ;; allow for nested templates
                      (let* ((rest (read-all-as-string port))
                             (tmp  (string-append sexp-str rest))
                             (new-port (open-input-string tmp)))
                        (close-input-port port)
                        (lp new-port (read-char new-port) ops str))
                      (error qs-err-missing-close c+3)))
                  (lp port (read-char port) ops (string-append str (list->string [c c+1 c+2])))))
              (lp port (read-char port) ops (string-append str (list->string [c c+1]))))))))
       ((eq? c #!eof)
        (close-input-port port)
        (with-syntax (((ops ...) (datum->syntax ctx (map-format (append ops [str])))))
          (output-proc #'(ops ...))))
       (else
        (lp port (read-char port) ops (string-append str (list->string [c]))))))
    (lp)))

;; a template is a lambda with a hash-table as argument
;; the hash table's keys must be the symbols used in run-time
;; template variables, e.g. #{name} -> (table-ref hash-table 'name)
(defsyntax (template stx)
  (def ht (datum->syntax #f 'ht))

  (def (stx-ref ht stx)
    (with-syntax ((stx (syntax->datum stx)))
      #'(table-ref ht (quote stx))))

  (def (rt-symbol-proc sexp)
    (stx-ref ht sexp))

  (def (output-proc ops)
    (with-syntax (((ops ...) ops))
      #'(lambda (ht) (string-append ops ...))))

  (syntax-case stx ()
    ((macro s)
     (stx-string? #'s)
     (with-syntax ((ps (parse-quasistring #'s #'macro rt-symbol-proc output-proc #t)))
       #'ps))
    ((macro s ctx)
     (stx-string? #'s)
     (with-syntax ((ps (parse-quasistring #'s #'ctx rt-symbol-proc output-proc #t)))
       #'ps))))

(defsyntax (template-alist stx)
  (def al (datum->syntax #f 'al))

  (def (stx-assoc al stx)
    (with-syntax ((stx (syntax->datum stx)))
      #'(cdr (assoc (quote stx) al))))

  (def (rt-symbol-proc sexp)
    (stx-assoc al sexp))

  (def (output-proc ops)
    (with-syntax (((ops ...) ops))
      #'(lambda (al) (string-append ops ...))))

  (syntax-case stx ()
    ((macro s)
     (stx-string? #'s)
     (with-syntax ((ps (parse-quasistring #'s #'macro rt-symbol-proc output-proc #t)))
       #'ps))
    ((macro s ctx)
     (stx-string? #'s)
     (with-syntax ((ps (parse-quasistring #'s #'ctx rt-symbol-proc output-proc #t)))
       #'ps))))

(defsyntax (quasistring stx)
  (def (rt-symbol-proc sexp)
    sexp)

  (def (output-proc ops)
    (with-syntax (((ops ...) ops))
      #'(string-append ops ...)))

  (syntax-case stx ()
    ((macro s)
     (stx-string? #'s)
     (with-syntax ((ps (parse-quasistring #'s #'macro rt-symbol-proc output-proc)))
       #'ps))
    ((macro s ctx)
     (stx-string? #'s)
     (with-syntax ((ps (parse-quasistring #'s #'ctx rt-symbol-proc output-proc)))
       #'ps))))

(defsyntax (defincludes stx)
  (def (include-proc id) (with-syntax ((id* (datum->syntax #f id)) (proc (format-id id "include-~a" id)))
      #'(defsyntax (proc stx)
          (syntax-case stx ()
            ((macro path)
             (stx-string? (syntax path))
             (let (path (gx#core-resolve-path (syntax path) (stx-source stx)))
               (with-syntax ((tmp (call-with-input-file path read-all-as-string)))
                 (syntax (id* tmp macro)))))))))
  
  (syntax-case stx ()
    ((_ id ...)
     (stx-andmap identifier? #'(id ...))
     (with-syntax (((procs ...) (map include-proc #'(id ...))))
       #'(begin procs ...)))))

(defincludes
  quasistring
  template template-alist)