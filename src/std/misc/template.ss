;;; -*- Gerbil -*-
;;; © vyzo
;;; string templates
(export write-template
        apply-template)
(import :std/error
        :std/io
        (only-in :std/srfi/1 reverse!))

(def (write-template template output . args)
  (let (str (apply apply-template template args))
    (cond
     ((output-port? output)
      (display str output))
     ((is-StringWriter? output)
      (StringWriter-write-string output str))
     ((is-BufferedWriter? output)
      (BufferedWriter-write-string output str))
     (else
      (raise-bad-argument 'write-template "port, StringWriter or BufferedWriter" output)))))

(def (apply-template template . args)
  (def vars (make-hash-table))

  (let lp ((rest args))
    (match rest
      ([(? keyword? key) val . rest]
       (hash-put! vars (keyword->string key) val)
       (lp rest))
      ([] (void))))

  (call-with-output-string ""
    (lambda (output)
      (let lp ((rest (string->list template)))
        (match rest
          ([char . rest]
           (cond
            ((eqv? char #\\)
             (match rest
               ([escape . rest]
                (display escape output)
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
                     (display #\$ output)
                     (display escape output)
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
                                  (display val output)))
                            (else
                             (BUG 'apply-template "undefined template variable" template var))))
                         (lp rest))
                        (else
                         (lp-inner rest (cons char var)))))
                      (else
                       (BUG 'apply-template "incomplete variable substitution" template)))))
                 (else
                   (display #\$ output)
                   (display char output)
                   (lp rest))))
               (else
                (display #\$ output)
                (lp rest))))
             (else
               (display char output)
               (lp rest))))
          (else (void)))))))
