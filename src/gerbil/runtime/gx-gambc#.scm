;;; -*- Scheme -*-
;;; (C) vyzo at hackzen.org
;;; Gerbil stage0 -- Gambit-C macros
(##namespace (""))
(include "~~lib/_gambit#.scm")

(define-macro (when condition . body)
  `(if ,condition (begin ,@body) #!void))
(define-macro (unless condition . body)
  `(if ,condition #!void (begin ,@body)))

;; core-match; quite older code
(define-macro (core-match expr . cases)
  (let (($e (gensym '$e)))
    `(let ((,$e ,expr))
       (core-match~ ,$e ,@cases))))

(define-macro (core-match~ tgt . cases)
  (define recur
    (lambda (tgt hd K E)
      (cond
       ((null? hd)
        `(if (null? ,tgt) ,K ,E))
       ((symbol? hd)
        (if (or (eq? hd '_) 
                (eq? hd 'else))
          K
          `(let ((,hd ,tgt)) ,K)))
       ((or (number? hd)
            (string? hd)
            (char? hd)
            (keyword? hd)
            (boolean? hd)
            (eq? hd #!void))
        `(if (equal? ,tgt ,hd) ,K ,E))
       ((quote? hd)
        `(if (eq? ,tgt (quote ,(cadr hd)))
           ,K ,E))
       ((predicate? hd)
        `(if (,(cadr hd) ,tgt) ,K ,E))
       ((predicate-rec? hd)
        `(if (,(cadr hd) ,tgt)
           ,(recur tgt (caddr hd) K E)
           ,E))
       ((pair? hd)
        (let* (($hd (gensym '$hd))
               ($tl (gensym '$tl))
               (K* (recur $tl (cdr hd) K E)))
          `(if (pair? ,tgt)
             (let* ((,$hd (##car ,tgt))
                    (,$tl (##cdr ,tgt)))
               ,(recur $hd (car hd) K* E))
             ,E)))
       (else
        (error "core-match: bad pattern" hd)))))
  
  (define quote?
    (lambda (hd) 
      (and (pair? hd)
           (eq? (car hd) 'quote)
           (pair? (cdr hd)))))
  
  (define predicate?
    (lambda (hd)
      (and (list? hd)
           (or (and (= (length hd) 2)
                    (eq? (car hd) '?))
               (and (= (length hd) 3)
                    (eq? (car hd) '?)
                    (eq? (caddr hd) '_))))))
  
  (define predicate-rec?
    (lambda (hd)
      (and (list? hd)
           (= (length hd) 3)
           (eq? (car hd) '?))))
  
  (if (null? cases)
    `(error "core-match: no clause matching" ,tgt)
    (let* ((e    (car cases))
           (hd   (car e))
           (body (cdr e))
           (rest (cdr cases))
           (K    `(begin ,@body))
           (E    `(core-match~ ,tgt ,@rest))
           ($E   (gensym '$E)))
      `(let ((,$E (lambda () ,E)))
         ,(recur tgt hd K (list $E))))))

(define-macro (define-struct hd fields . opts)
  (define (generate id super)
    (let* ((pre  (symbol->string id))
           (type (string->symbol (string-append pre "::t")))
           (is?  (string->symbol (string-append pre "?")))
           (make (string->symbol (string-append "make-" pre)))
           (pref (map (lambda (field) 
                        (string-append pre "-" (symbol->string field)))
                      fields))
           (getf (map string->symbol pref))
           (setf (map (lambda (pref)
                        (string->symbol (string-append pref "-set!")))
                      pref))
           (off  (let lp ((rest fields) (n 0) (r '()))
                   (core-match rest
                     ((_ . rest)
                      (lp rest (+ n 1) (cons n r)))
                     (else
                      (reverse r)))))
           (tmp  (gensym))
           (type-id
            `(quote ,(or (getopt id:) (gensym id))))
           (type-name
            `(quote ,(or (getopt name:) id)))
           (type-ctor
            `(quote ,(or (getopt constructor:) #f)))
           (type-len  
            (length fields)))
      `(begin
         (define ,type 
           (make-struct-type ,type-id ,super ,type-len 
                             ,type-name '() ,type-ctor))
         (define ,is?
           (make-struct-predicate ,type))
         (define ,make
           (lambda ,tmp
             (apply make-struct-instance ,type ,tmp)))
         ,@(map (lambda (getf off)
                  `(define ,getf
                     (make-struct-field-accessor ,type ,off)))
                getf off)
         ,@(map (lambda (setf off)
                  `(define ,setf
                     (make-struct-field-mutator ,type ,off)))
                setf off))))
  
  (define (getopt key)
    (let lp ((rest opts))
      (core-match rest
        ((hd val . rest)
         (if (eq? key hd) val
             (lp rest)))
        (else #f))))
  
  (core-match hd
    (((? symbol? id) super)
     (generate id super))
    ((? symbol? id)
     (generate id #f))))

(define-macro (let-values hd . body)
  (let recur ((rest hd))
    (core-match rest
      (((hd expr) . rest)
       `(call-with-values (lambda () ,expr)
          (lambda ,hd ,(recur rest))))
      (else
       `(let () ,@body)))))

;; :<core> macros
(define-macro (define-core id impl bind!)
  (let ((core-id (string->symbol (string-append "_gx#" (symbol->string id)))))
    `(begin
       (define ,core-id ,impl)
       (,bind! ,core-id))))

(define-macro (define-core-macro hd . body)
  (define (generate id args body bind!)
    (let ((impl (gensym)) 
          (stx (gensym)))
       `(define-core ,id
          (lambda ,args ,@body)
          (lambda (,impl)
            (,bind! (quote ,id) 
                    (lambda (,stx) (&AST (,impl ,stx) ,stx)))))))
  (core-match hd
    (special:
     (core-match body
       (((id . args) . body)
        (generate id args body '&core-bind-special-form!))))
    ((id . args)
     (generate id args body '&core-bind-macro!))))

(define-macro (define-core-special-form hd . body)
  `(define-core-macro special: ,hd ,@body))

(define-macro (define-core-syntax id expr)
  `(&core-bind-syntax! (quote ,id) ,expr))

(define-macro (define-core-forms . body)
  (define (generate id compile make)
    (let ((eid (string->symbol 
                (string-append "_gx#" (symbol->string compile)))))
      `(&core-bind-syntax! (quote ,id) ,eid ,make)))
  
  (let lp ((rest body) (rbody '()))
    (core-match rest
      (((id expr: compile) . rest)
       (lp rest (cons (generate id compile 'make-&core-expression) rbody)))
      (((id special: compile) . rest)
       (lp rest (cons (generate id compile 'make-&core-special-form) rbody)))
      (((id #f) . rest)
       (lp rest (cons (generate id 'compile-error 'make-&core-form) rbody)))
      (() (cons 'begin rbody)))))

(define-macro (core-ast-case expr . body)
  (let (($e (gensym '$e)))
    `(let ((,$e ,expr))
       (core-ast-case~ ,$e ,@body))))

(define-macro (core-ast-case~ tgt kws . cases)
  (define (generate1 hd tgt K E)
    (core-match hd
      ((hd . rest)
       (let (($tgt (gensym '$tgt))
             ($hd  (gensym '$hd))
             ($tl  (gensym '$tl)))
         `(if (&AST-pair? ,tgt)
            (let* ((,$tgt (&AST-e ,tgt))
                   (,$hd  (##car  ,$tgt))
                   (,$tl  (##cdr  ,$tgt)))
              ,(generate1 hd $hd (generate1 rest $tl K E) E))
            ,E)))
      ((? symbol? id)
       (cond
        ((eq? id '_) K)
        ((memq id kws)
         `(if (and (&AST-id? ,tgt)
                   (eq? (&AST-e ,tgt) (quote ,id)))
            ,K ,E))
        (else
         `(let ((,id ,tgt)) ,K))))
      (else 
       (let ((is? (cond 
                   ((atom? hd)   'eq?)
                   ((number? hd) 'eqv?)
                   (else         'equal?))))
         `(if (,is? (&AST-e ,tgt) (quote ,hd))
            ,K ,E)))))

  (define (atom? e)
    (or (null? e)
        (char? e)
        (boolean? e)
        (keyword? e)
        (eq? e #!void)))
  
  (let recur ((rest cases))
    (core-match rest      
      ((hd . rest)
       (let* (($E (gensym '$E))
              (E `(,$E)))
         `(let ((,$E (lambda () ,(recur rest))))
            ,(core-match hd
               (('else . body)
                `(begin ,@body))
               ((pat expr)
                (generate1 pat tgt expr E))
               ((pat fender expr)
                (generate1 pat tgt `(if ,fender ,expr ,E) E))))))
      (() `(_gx#raise-syntax-error #f "Bad syntax" ,tgt)))))
