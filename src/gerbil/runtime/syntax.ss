;;; -*- Gerbil -*-
;;; © vyzo
;;; syntax and ASTs
prelude: :gerbil/core
package: gerbil/runtime
namespace: #f

(export #t)
(import "gambit" "util" "mop" "error")

(declare (not safe))

(defrules core-ast-case ()
  ((_ expr . body)
   (let ($e expr)
     (core-ast-case% $e . body))))

(defsyntax (core-ast-case% stx)
  (def (generate1 hd tgt K E kws)
    (with-syntax ((tgt tgt))
      (syntax-case hd ()
        ((hd . rest)
         (with-syntax* (($tgt (genident '$tgt))
                        ($hd  (genident '$hd))
                        ($tl  (genident '$tl))
                        (body (generate1 #'hd #'$hd (generate1 #'rest #'$tl K E kws) E kws)))
           #'(if (__AST-pair? tgt)
               (let* (($tgt (__AST-e tgt))
                      ($hd  (##car $tgt))
                      ($tl  (##cdr $tgt)))
                 body))))
        (id
         (identifier? #'id)
         (cond
          ((underscore? #'id) K)
          ((find (cut bound-identifier=? <> #'id) kws)
           (with-syntax ((K K) (E E))
             #'(if (and (__AST-id? tgt)
                        (eq? (__AST-e tgt) 'id))
                 K E)))
          (else
           (with-syntax ((K K))
             #'(let ((id tgt)) K)))))
        (hd
         (with-syntax ((K K) (E E))
           #'(if (equal? (__AST-e tgt) hd) K E))))))

  (syntax-case stx ()
    ((_ tgt kws clause ...)
     (let recur ((rest #'(clause ...)))
       (syntax-case rest ()
         ((hd . rest)
          (with-syntax* (($E (genident '$E))
                         (E #'($E))
                         (continue (recur #'rest))
                         (body
                          (syntax-case #'hd (else)
                            ((else expr ...) #'(begin expr ...))
                            ((pat expr)
                             (generate1 #'pat #'tgt #'expr #'E #'kws))
                            ((pat fender expr)
                             (generate1 #'pat #'tgt #'(if fender expr E) #'E #'kws)))))
            #'(let ($E (lambda () continue))
                body)))
         (() #'(__raise-syntax-error #f "Bad syntax" tgt)))))))

(defstruct AST (e source)
  id:   gerbil#AST::t
  name: syntax
  unchecked: #t)

(define (__AST-e stx)
  (if (AST? stx)
    (&AST-e stx)
    stx))

(define (__AST-source stx)
  (let lp ((src stx))
    (cond
     ((AST? src)
      (lp (&AST-source src)))
     ((##locat? src) src)
     (else #f))))

(def (__AST e src-stx)
  (let (src (__AST-source src-stx))
    (if (or (AST? e) (not src)) e
        (AST e src))))

(def (__AST-eq? stx obj)
  (eq? (__AST-e stx) obj))

(def (__AST-pair? stx)
  (pair? (__AST-e stx)))

(def (__AST-null? stx)
  (null? (__AST-e stx)))

(def (__AST-datum? stx)
  (let (e (__AST-e stx))
    (or (number? e)
        (string? e)
        (char? e)
        (keyword? e)
        (boolean? e)
        (eq? e #!void))))

(def (__AST-id? stx)
  (symbol? (__AST-e stx)))

(def (__AST-id-list? stx (tail? &AST-null?))
  (let lp ((rest stx))
    (core-ast-case rest ()
      ((hd . rest)
       (and (__AST-id? hd)
            (lp rest)))
      (rest (tail? rest)))))

(def (__AST-bind-list? stx)
  (__AST-id-list? stx (lambda (e) (or (__AST-null? e) (__AST-id? e)))))

(def (__AST-list? stx (tail? &AST-null?))
  (let lp ((rest stx))
    (core-ast-case rest ()
      ((_ . rest)
       (lp rest))
      (rest (tail? rest)))))

(def (__AST->list stx)
  (core-ast-case stx ()
    ((hd . rest)
     (cons hd (__AST->list rest)))
    (rest (__AST-e rest))))

(def (__AST->datum stx)
  (cond
   ((AST? stx)
    (__AST->datum (__AST-e stx)))
   ((pair? stx)
    (cons (__AST->datum (car stx))
          (__AST->datum (cdr stx))))
   ((vector? stx)
    (vector-map &AST->datum stx))
   ((box? stx)
    (box (__AST->datum (unbox stx))))
   (else stx)))

(def (get-readenv port)
  (##make-readenv port
                  (current-readtable)
                  __wrap-syntax
                  __unwrap-syntax
                  #f '() #f))

(def (read-syntax (in (current-input-port)))
  (let (e (##read-datum-or-eof (get-readenv in)))
    (if (eof-object? (__AST-e e))
      (__AST-e e)
      e)))

(def (read-syntax-from-file path)
  (let (r (##read-all-as-a-begin-expr-from-path
            (path-normalize path)
            (current-readtable)
            __wrap-syntax
            __unwrap-syntax))
    (if (vector? r)
      (cdr (__AST-e (vector-ref r 1)))
      (error (err-code->string r) path))))

(def (__wrap-syntax re e)
  (if (eof-object? e) e
      (make-AST e (##readenv->locat re))))

(def (__unwrap-syntax re e)
  (__AST-e e))

(def (__pp-syntax stx)
  (pp (__AST->datum stx)))

(def (__make-readtable)
  (let (rt (##make-standard-readtable))
    (macro-readtable-write-extended-read-macros?-set! rt #t)
    (__readtable-bracket-keyword-set! rt '@list)
    (__readtable-brace-keyword-set! rt '@method)
    (eval-if (>= (##vector-length (current-readtable)) 42)
      (##readtable-char-sharp-handler-set! rt #\! __read-sharp-bang)
      (void))
    rt))

(def (__readtable-bracket-keyword-set! rt kw)
  (macro-readtable-bracket-handler-set! rt kw))
(def (__readtable-brace-keyword-set! rt kw)
  (macro-readtable-brace-handler-set! rt kw))
(def (__read-sharp-bang re next start-pos)
  (if (eq? start-pos 0)
    (let* ((line (##read-line (macro-readenv-port re) #\newline #f ##max-fixnum))
           (script-line (substring line 1 (string-length line))))
      (macro-readenv-script-line-set! re script-line)
      (##script-marker))
    (##read-sharp-bang re next start-pos)))
    (set! ##readtable-setup-for-language! void)

(def __*readtable*
  (__make-readtable))

(def source-location?
  ##locat?)

(def (source-location-path? obj)
  (and (source-location? obj)
       (string? (##locat-container obj))))

(def (source-location-path obj)
  (and (##locat? obj)
       (##container->path (##locat-container obj))))
