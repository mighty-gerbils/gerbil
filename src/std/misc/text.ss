;;; -*- Gerbil -*-
;;; (C) vyzo
;;; textual template related utilities

(import :std/format
        (for-syntax :std/misc/ports
                    :std/format))
(export include-text
        include-template template
        include-quasistring quasistring)

;; compile-time include a file as text (a string)
(defsyntax (include-text stx)
  (syntax-case stx ()
    ((_ path)
     (stx-string? #'path)
     (let (path (gx#core-resolve-path #'path (stx-source stx)))
       (with-syntax ((txt (call-with-input-file path read-all-as-string)))
         #'(quote txt))))))

(begin-syntax
  (def err-missing-close "Malformed quasistring: closing } required after s-exp")

  (def (stx-format stx)
    (if (stx-string? stx) ;; don't format strings
      stx
      (with-syntax ((stx stx))
        #'(format "~a" stx))))

  (def (map-format stx)
    (stx-map stx-format stx)))

(defsyntax (template stx)
  (def (parse stx ctx)
    (def ht (datum->syntax #f 'ht))
    ;; custom eval to capture the proper variables
    (def (eval** stx)
      (parameterize ((current-expander-phi (1+ (current-expander-phi))))
        (let (stx (datum->syntax ctx stx))
          (eval-syntax stx #t))))

    ;; table-ref only for symbols
    (def (ref stx)
      (with-syntax ((stx (syntax->datum stx)))
        #'(table-ref ht (quote stx))))

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
                  (lp port (read-char port) (append ops [str (ref sexp)]) "")
                  (lp port (read-char port) (append ops [str sexp]) ""))
                (error err-missing-close c+2))))
           ((eq? c+1 #\#) ;; expansion time template variables
            (let (c+2 (read-char port))
              (if (eq? c+2 #\{)
                (let* ((sexp     (read port))
                       (sexp-str (format "~a" (eval** sexp)))
                       (c+3      (read-char port)))
                  (if (eq? c+3 #\})
                    ;; allow for nested templates
                    (let* ((rest (read-all-as-string port))
                           (tmp  (string-append sexp-str rest))
                           (new-port (open-input-string tmp)))
                      (close-input-port port)
                      (lp new-port (read-char new-port) ops str))
                    (error err-missing-close c+3)))
                (lp port (read-char port) ops (string-append str (list->string [c c+1 c+2])))))))))
       ((eq? c #!eof)
        (close-input-port port)
        (with-syntax (((ops ...) (datum->syntax ctx (map-format (append ops [str])))))
          ;; we return an n-ary procedure in *args*
          #'(lambda (ht) (string-append ops ...))))
       (else
        (lp port (read-char port) ops (string-append str (list->string [c]))))))
    (lp))

  (syntax-case stx ()
    ((macro s)
     (stx-string? #'s)
     (with-syntax ((ps (parse #'s #'macro)))
       #'ps))
    ((macro s ctx)
     (stx-string? #'s)
     (with-syntax ((ps (parse #'s #'ctx)))
       #'ps))))

(defsyntax (include-template stx)
  (syntax-case stx ()
    ((macro path)
     (stx-string? #'path)
     (let (path (gx#core-resolve-path #'path (stx-source stx)))
       (with-syntax ((tmp (call-with-input-file path read-all-as-string)))
         #'(template tmp macro))))))

;;; Examples

;; (def t
;;   (template
;;    "runtime: #{(time->seconds (current-time))}\nexpansion time: ##{(time->seconds (current-time))}"))

;; wait a few seconds...
;; > (displayln (t))
;; runtime: 1572015605.7969728
;; expansion time: 1572015599.3977036

(defsyntax (quasistring stx)
  (def (parse stx ctx)
    (def (lp (port (open-input-string (stx-e stx)))
             (c    (read-char port))
             (ops  [])  ;; arguments of string-append
             (str  "")) ;; container to concatenate strings
      (cond
       ((eq? c #\#)
        (let (c+1 (read-char port))
          (cond
           ((eq? c+1 #\{) ;; run time template variables only!
            (let ((sexp (read port))
                  (c+2  (read-char port)))
              (if (eq? c+2 #\})
                (lp port (read-char port) (append ops [str sexp]) "")
                (error err-missing-close c+2)))))))
       ((eq? c #!eof)
        (close-input-port port)
        (with-syntax (((ops ...)  (datum->syntax ctx (map-format (append ops [str])))))
          #'(string-append ops ...)))
       (else
        (lp port (read-char port) ops (string-append str (list->string [c]))))))
    (lp))

  (syntax-case stx ()
    ((macro s)
     (stx-string? #'s)
     (with-syntax ((ps (parse #'s #'macro)))
       #'ps))
    ((macro s ctx)
     (stx-string? #'s)
     (with-syntax ((ps (parse #'s #'ctx)))
       #'ps))))

(defsyntax (include-quasistring stx)
  (syntax-case stx ()
    ((macro path)
     (stx-string? #'path)
     (let (path (gx#core-resolve-path #'path (stx-source stx)))
       (with-syntax ((tmp (call-with-input-file path read-all-as-string)))
         #'(quasistring tmp macro))))))

;;; Example

;; (def (t name)
;;   (quasistring "Hello, #{name}!"))

;; > (pp t)
;; (lambda (#0=#:name55)
;;   (string-append "Hello, " (std/format#format "~a" #0#) "!"))
