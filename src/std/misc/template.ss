;;; -*- Gerbil -*-
;;; © vyzo
;;; string templates
(export write-template
        apply-template)
(import :std/io
        (only-in :std/srfi/1 reverse!))

(def (write-template template output . args)
  (let (str (apply apply-template template args))
    (cond
     ((input-port? output)
      (display str output))
     ((is-StringWriter? output)
      (StringWriter-write-string output str))
     ((is-BufferedWriter? output)
      (BufferedWriter-write-string output str))
     (else
      (error "Bad argument; expected port, StringWriter or BufferedWriter" output)))))

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
           (if (eqv? char #\$)
             (match rest
               ([char . rest]
                (if (eqv? char #\{)
                  (let lp-inner ((rest rest) (var []))
                    (match rest
                      ([char . rest]
                       (if (eqv? char #\})
                         (begin
                           (display (hash-ref vars (list->string (reverse! var)))
                                    output)
                           (lp rest))
                         (lp-inner rest (cons char var))))
                      (else
                       (error "incomplete variable substitution"))))
                  (begin
                   (display #\$ output)
                   (display char output)
                   (lp rest))))
               (else
                (display #\$ output)
                (lp rest)))
             (begin
               (display char output)
               (lp rest))))
          (else (void)))))))
