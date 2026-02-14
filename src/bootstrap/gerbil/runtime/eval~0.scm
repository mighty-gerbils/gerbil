(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1771037608)
  (begin
    (define __syntax::t
      (let ((__tmp177784 (list)) (__tmp177783 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp177784
         '(e id)
         __tmp177783
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args177588%_
        (apply make-instance __syntax::t _%$args177588%_)))
    (define __syntax-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __syntax::t 'e)))
    (define __syntax-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __syntax::t 'id)))
    (define __syntax-e-set!
      (let () (declare (not safe)) (__make-class-slot-mutator __syntax::t 'e)))
    (define __syntax-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __syntax::t 'id)))
    (define &__syntax-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __syntax::t 'e)))
    (define &__syntax-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __syntax::t 'id)))
    (define &__syntax-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __syntax::t 'e)))
    (define &__syntax-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __syntax::t 'id)))
    (define __core-form::t
      (let ((__tmp177786 (list __syntax::t))
            (__tmp177785 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp177786
         '()
         __tmp177785
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args177585%_
        (apply make-instance __core-form::t _%$args177585%_)))
    (define __core-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-form::t 'e)))
    (define __core-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-form::t 'id)))
    (define __core-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-form::t 'e)))
    (define __core-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-form::t 'id)))
    (define &__core-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-form::t 'e)))
    (define &__core-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-form::t 'id)))
    (define &__core-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-form::t 'e)))
    (define &__core-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-form::t 'id)))
    (define __core-expression::t
      (let ((__tmp177788 (list __core-form::t))
            (__tmp177787 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp177788
         '()
         __tmp177787
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args177582%_
        (apply make-instance __core-expression::t _%$args177582%_)))
    (define __core-expression-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-expression::t 'e)))
    (define __core-expression-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-expression::t 'id)))
    (define __core-expression-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-expression::t 'e)))
    (define __core-expression-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-expression::t 'id)))
    (define &__core-expression-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-expression::t 'e)))
    (define &__core-expression-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-expression::t 'id)))
    (define &__core-expression-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-expression::t 'e)))
    (define &__core-expression-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-expression::t 'id)))
    (define __core-special-form::t
      (let ((__tmp177790 (list __core-form::t))
            (__tmp177789 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp177790
         '()
         __tmp177789
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args177579%_
        (apply make-instance __core-special-form::t _%$args177579%_)))
    (define __core-special-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-special-form::t 'e)))
    (define __core-special-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-special-form::t 'id)))
    (define __core-special-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-special-form::t 'e)))
    (define __core-special-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-special-form::t 'id)))
    (define &__core-special-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-special-form::t 'e)))
    (define &__core-special-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-special-form::t 'id)))
    (define &__core-special-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-special-form::t 'e)))
    (define &__core-special-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-special-form::t 'id)))
    (define __core (let () (declare (not safe)) (make-hash-table-eq)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve
      (lambda (_%id177553%_)
        (let* ((_%h177555%_ __core)
               (_%key177558%_
                (let () (declare (not safe)) (__AST-e _%id177553%_)))
               (_%h177565%_
                (let ((_%$obj177562%_ _%h177555%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj177562%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj177562%_)))
                           '#t)
                      _%$obj177562%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj177562%_)))))
               (_%h177567%_ _%h177565%_))
          (declare (not safe))
          (__hash-get _%h177567%_ _%key177558%_))))
    (define __core-bound-id?__%
      (lambda (_%id177536%_ _%is?177537%_)
        (let ((_%$e177539%_ (__core-resolve _%id177536%_)))
          (if _%$e177539%_ (_%is?177537%_ _%$e177539%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id177546%_)
        (let ((_%is?177548%_ true))
          (__core-bound-id?__% _%id177546%_ _%is?177548%_))))
    (define __core-bound-id?
      (lambda _g177791_
        (let ((_g177792_ (let () (declare (not safe)) (##length _g177791_))))
          (cond ((let () (declare (not safe)) (##fx= _g177792_ 1))
                 (apply __core-bound-id?__0 _g177791_))
                ((let () (declare (not safe)) (##fx= _g177792_ 2))
                 (apply __core-bound-id?__% _g177791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g177791_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id177491%_ _%e177492%_ _%make177493%_)
        (let* ((_%h177495%_ __core)
               (_%key177498%_ _%id177491%_)
               (_%value177501%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%e177492%_
                       'gerbil/runtime/eval#__syntax::t))
                    _%e177492%_
                    (_%make177493%_ _%e177492%_ _%id177491%_)))
               (_%h177508%_
                (let ((_%$obj177505%_ _%h177495%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj177505%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj177505%_)))
                           '#t)
                      _%$obj177505%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj177505%_)))))
               (_%h177510%_ _%h177508%_))
          (declare (not safe))
          (__hash-put! _%h177510%_ _%key177498%_ _%value177501%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id177526%_ _%e177527%_)
        (let ((_%make177529%_ make-__syntax))
          (__core-bind-syntax!__% _%id177526%_ _%e177527%_ _%make177529%_))))
    (define __core-bind-syntax!
      (lambda _g177793_
        (let ((_g177794_ (let () (declare (not safe)) (##length _g177793_))))
          (cond ((let () (declare (not safe)) (##fx= _g177794_ 2))
                 (apply __core-bind-syntax!__0 _g177793_))
                ((let () (declare (not safe)) (##fx= _g177794_ 3))
                 (apply __core-bind-syntax!__% _g177793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g177793_))))))
    (define __SRC__%
      (lambda (_%e177471%_ _%src-stx177472%_)
        (if (or (pair? _%e177471%_) (symbol? _%e177471%_))
            (let ((__tmp177795
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx177472%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx177472%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e177471%_ __tmp177795))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e177471%_ 'gerbil#AST::t))
                (let ((__tmp177797
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e177471%_ '1 '#f '#f)))
                      (__tmp177796
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e177471%_)))))
                  (declare (not safe))
                  (##make-source __tmp177797 __tmp177796))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e177471%_))))))
    (define __SRC__0
      (lambda (_%e177483%_)
        (let ((_%src-stx177485%_ '#f))
          (__SRC__% _%e177483%_ _%src-stx177485%_))))
    (define __SRC
      (lambda _g177798_
        (let ((_g177799_ (let () (declare (not safe)) (##length _g177798_))))
          (cond ((let () (declare (not safe)) (##fx= _g177799_ 1))
                 (apply __SRC__0 _g177798_))
                ((let () (declare (not safe)) (##fx= _g177799_ 2))
                 (apply __SRC__% _g177798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g177798_))))))
    (define __locat
      (lambda (_%loc177468%_)
        (if (let () (declare (not safe)) (##locat? _%loc177468%_))
            _%loc177468%_
            '#f)))
    (define __check-values
      (lambda (_%obj177463%_ _%k177464%_)
        (let ((_%count177466%_
               (if (let () (declare (not safe)) (##values? _%obj177463%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj177463%_))
                   '1)))
          (if (fx= _%count177466%_ _%k177464%_)
              '#!void
              (let ((__tmp177801
                     (if (fx< _%count177466%_ _%k177464%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp177800
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj177463%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj177463%_))
                         _%obj177463%_)))
                (declare (not safe))
                (error __tmp177801 __tmp177800 _%k177464%_))))))
    (define __compile
      (lambda (_%stx177432%_)
        (let* ((_%$e177434%_ _%stx177432%_)
               (_%$E177436177442%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177434%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177434%_))
              (let* ((_%$tgt177437177445%_
                      (let () (declare (not safe)) (__AST-e _%$e177434%_)))
                     (_%$hd177438177448%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt177437177445%_)))
                     (_%$tl177439177451%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt177437177445%_)))
                     (_%form177455%_ _%$hd177438177448%_)
                     (_%$e177457%_ (__core-resolve _%form177455%_)))
                (if _%$e177457%_
                    ((lambda (_%bind177460%_)
                       ((##structure-ref _%bind177460%_ '1 __syntax::t '#f)
                        _%stx177432%_))
                     _%$e177457%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx177432%_
                       _%form177455%_))))
              (_%$E177436177442%_)))))
    (define __compile-error__%
      (lambda (_%stx177419%_ _%detail177420%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx177419%_
           _%detail177420%_))))
    (define __compile-error__0
      (lambda (_%stx177425%_)
        (let ((_%detail177427%_ '#f))
          (__compile-error__% _%stx177425%_ _%detail177427%_))))
    (define __compile-error
      (lambda _g177802_
        (let ((_g177803_ (let () (declare (not safe)) (##length _g177802_))))
          (cond ((let () (declare (not safe)) (##fx= _g177803_ 1))
                 (apply __compile-error__0 _g177802_))
                ((let () (declare (not safe)) (##fx= _g177803_ 2))
                 (apply __compile-error__% _g177802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g177802_))))))
    (define __compile-ignore%
      (lambda (_%stx177416%_) (__SRC__% ''#!void _%stx177416%_)))
    (define __compile-begin%
      (lambda (_%stx177391%_)
        (let* ((_%$e177393%_ _%stx177391%_)
               (_%$E177395177401%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177393%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177393%_))
              (let* ((_%$tgt177396177404%_
                      (let () (declare (not safe)) (__AST-e _%$e177393%_)))
                     (_%$hd177397177407%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt177396177404%_)))
                     (_%$tl177398177410%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt177396177404%_)))
                     (_%body177414%_ _%$tl177398177410%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body177414%_))
                 _%stx177391%_))
              (_%$E177395177401%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx177366%_)
        (let* ((_%$e177368%_ _%stx177366%_)
               (_%$E177370177376%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177368%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177368%_))
              (let* ((_%$tgt177371177379%_
                      (let () (declare (not safe)) (__AST-e _%$e177368%_)))
                     (_%$hd177372177382%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt177371177379%_)))
                     (_%$tl177373177385%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt177371177379%_)))
                     (_%body177389%_ _%$tl177373177385%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body177389%_)))
                 _%stx177366%_))
              (_%$E177370177376%_)))))
    (define __compile-import%
      (lambda (_%stx177341%_)
        (let* ((_%$e177343%_ _%stx177341%_)
               (_%$E177345177351%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177343%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177343%_))
              (let* ((_%$tgt177346177354%_
                      (let () (declare (not safe)) (__AST-e _%$e177343%_)))
                     (_%$hd177347177357%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt177346177354%_)))
                     (_%$tl177348177360%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt177346177354%_)))
                     (_%body177364%_ _%$tl177348177360%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body177364%_ '())) '()))
                 _%stx177341%_))
              (_%$E177345177351%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx177288%_)
        (let* ((_%$e177290%_ _%stx177288%_)
               (_%$E177292177304%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177290%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177290%_))
              (let* ((_%$tgt177293177307%_
                      (let () (declare (not safe)) (__AST-e _%$e177290%_)))
                     (_%$hd177294177310%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt177293177307%_)))
                     (_%$tl177295177313%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt177293177307%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl177295177313%_))
                    (let* ((_%$tgt177296177317%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl177295177313%_)))
                           (_%$hd177297177320%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt177296177317%_)))
                           (_%$tl177298177323%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt177296177317%_)))
                           (_%ann177327%_ _%$hd177297177320%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl177298177323%_))
                          (let* ((_%$tgt177299177329%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl177298177323%_)))
                                 (_%$hd177300177332%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt177299177329%_)))
                                 (_%$tl177301177335%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt177299177329%_)))
                                 (_%expr177339%_ _%$hd177300177332%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl177301177335%_))
                                        '())
                                (__compile _%expr177339%_)
                                (_%$E177292177304%_)))
                          (_%$E177292177304%_)))
                    (_%$E177292177304%_)))
              (_%$E177292177304%_)))))
    (define __compile-define-values%
      (lambda (_%stx177179%_)
        (let* ((_%$e177181%_ _%stx177179%_)
               (_%$E177183177195%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177181%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177181%_))
              (let* ((_%$tgt177184177198%_
                      (let () (declare (not safe)) (__AST-e _%$e177181%_)))
                     (_%$hd177185177201%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt177184177198%_)))
                     (_%$tl177186177204%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt177184177198%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl177186177204%_))
                    (let* ((_%$tgt177187177208%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl177186177204%_)))
                           (_%$hd177188177211%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt177187177208%_)))
                           (_%$tl177189177214%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt177187177208%_)))
                           (_%hd177218%_ _%$hd177188177211%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl177189177214%_))
                          (let* ((_%$tgt177190177220%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl177189177214%_)))
                                 (_%$hd177191177223%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt177190177220%_)))
                                 (_%$tl177192177226%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt177190177220%_)))
                                 (_%expr177230%_ _%$hd177191177223%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl177192177226%_))
                                        '())
                                (let* ((_%$e177232%_ _%hd177218%_)
                                       (_%$E177234177275%_
                                        (lambda ()
                                          (let ((_%$E177235177260%_
                                                 (lambda ()
                                                   (let* ((_%$E177236177247%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e177232%_))))
                  (_%ids177250%_ _%hd177218%_)
                  (_%len177252%_ (length _%ids177250%_))
                  (_%tmp177254%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp177254%_
                                       (cons (__compile _%expr177230%_) '())))
                           _%stx177179%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp177254%_
                                             (cons _%len177252%_ '())))
                                 _%stx177179%_)
                                (let ((__tmp177804
                                       (let ((__tmp177806
                                              (lambda (_%id177257%_
                                                       _%k177258%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id177257%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id177257%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp177254%_
                                           (cons _%k177258%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx177179%_)
                                                    '#f)))
                                             (__tmp177805
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len177252%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp177806
                                          _%ids177250%_
                                          __tmp177805))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp177804)))))
              _%stx177179%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e177232%_))
                                                (let* ((_%$tgt177237177263%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e177232%_)))
                                                       (_%$hd177238177266%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt177237177263%_)))
                                                       (_%$tl177239177269%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt177237177263%_)))
                                                       (_%id177273%_
                                                        _%$hd177238177266%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl177239177269%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id177273%_)
                           (cons (__compile _%expr177230%_) '())))
               _%stx177179%_)
              (_%$E177235177260%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E177235177260%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e177232%_))
                                      (let* ((_%$tgt177240177278%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e177232%_)))
                                             (_%$hd177241177281%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt177240177278%_)))
                                             (_%$tl177242177284%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt177240177278%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd177241177281%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl177242177284%_))
                                                        '())
                                                (__compile _%expr177230%_)
                                                (_%$E177234177275%_))
                                            (_%$E177234177275%_)))
                                      (_%$E177234177275%_)))
                                (_%$E177183177195%_)))
                          (_%$E177183177195%_)))
                    (_%$E177183177195%_)))
              (_%$E177183177195%_)))))
    (define __compile-head-id
      (lambda (_%e177177%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e177177%_))
             _%e177177%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd177134%_)
        (let _%recur177136%_ ((_%rest177138%_ _%hd177134%_))
          (let* ((_%$e177140%_ _%rest177138%_)
                 (_%$E177142177160%_
                  (lambda ()
                    (let ((_%$E177143177157%_
                           (lambda ()
                             (let* ((_%$E177144177152%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e177140%_))))
                                    (_%tail177155%_ _%$e177140%_))
                               (__compile-head-id _%tail177155%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e177140%_))
                                  '())
                          '()
                          (_%$E177143177157%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e177140%_))
                (let* ((_%$tgt177145177163%_
                        (let () (declare (not safe)) (__AST-e _%$e177140%_)))
                       (_%$hd177146177166%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt177145177163%_)))
                       (_%$tl177147177169%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt177145177163%_)))
                       (_%hd177173%_ _%$hd177146177166%_)
                       (_%rest177175%_ _%$tl177147177169%_))
                  (cons (__compile-head-id _%hd177173%_)
                        (_%recur177136%_ _%rest177175%_)))
                (_%$E177142177160%_))))))
    (define __compile-lambda%
      (lambda (_%stx177081%_)
        (let* ((_%$e177083%_ _%stx177081%_)
               (_%$E177085177097%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177083%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177083%_))
              (let* ((_%$tgt177086177100%_
                      (let () (declare (not safe)) (__AST-e _%$e177083%_)))
                     (_%$hd177087177103%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt177086177100%_)))
                     (_%$tl177088177106%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt177086177100%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl177088177106%_))
                    (let* ((_%$tgt177089177110%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl177088177106%_)))
                           (_%$hd177090177113%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt177089177110%_)))
                           (_%$tl177091177116%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt177089177110%_)))
                           (_%hd177120%_ _%$hd177090177113%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl177091177116%_))
                          (let* ((_%$tgt177092177122%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl177091177116%_)))
                                 (_%$hd177093177125%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt177092177122%_)))
                                 (_%$tl177094177128%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt177092177122%_)))
                                 (_%body177132%_ _%$hd177093177125%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl177094177128%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd177120%_)
                                             (cons (__compile _%body177132%_)
                                                   '())))
                                 _%stx177081%_)
                                (_%$E177085177097%_)))
                          (_%$E177085177097%_)))
                    (_%$E177085177097%_)))
              (_%$E177085177097%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx176846%_)
        (letrec ((_%variadic?176848%_
                  (lambda (_%hd177046%_)
                    (let* ((_%$e177048%_ _%hd177046%_)
                           (_%$E177050177066%_
                            (lambda ()
                              (let ((_%$E177051177063%_
                                     (lambda ()
                                       (let ((_%$E177052177060%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e177048%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e177048%_))
                                            '())
                                    '#f
                                    (_%$E177051177063%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e177048%_))
                          (let* ((_%$tgt177053177069%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e177048%_)))
                                 (_%$hd177054177072%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt177053177069%_)))
                                 (_%$tl177055177075%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt177053177069%_)))
                                 (_%rest177079%_ _%$tl177055177075%_))
                            (_%variadic?176848%_ _%rest177079%_))
                          (_%$E177050177066%_)))))
                 (_%arity176849%_
                  (lambda (_%hd176984%_)
                    (let _%lp176986%_ ((_%rest176988%_ _%hd176984%_)
                                       (_%k176989%_ '0))
                      (let* ((_%$e176991%_ _%rest176988%_)
                             (_%$E176993177004%_
                              (lambda ()
                                (let ((_%$E176994177001%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e176991%_)))))
                                  _%k176989%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e176991%_))
                            (let* ((_%$tgt176995177007%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e176991%_)))
                                   (_%$hd176996177010%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt176995177007%_)))
                                   (_%$tl176997177013%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt176995177007%_)))
                                   (_%rest177017%_ _%$tl176997177013%_))
                              (_%lp176986%_
                               _%rest177017%_
                               (let ((_%x177019%_ _%k176989%_))
                                 (if (fixnum? _%x177019%_)
                                     (let ((_%x177024%_ _%x177019%_))
                                       (declare (not safe))
                                       (__fx1+ _%x177024%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x177019%_)
                                       '#!void)))))
                            (_%$E176993177004%_))))))
                 (_%generate176850%_
                  (lambda (_%rest176911%_ _%args176912%_ _%len176913%_)
                    (let* ((_%$e176915%_ _%rest176911%_)
                           (_%$E176917176928%_
                            (lambda ()
                              (let ((_%$E176918176925%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e176915%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args176912%_ '())))
                                 _%stx176846%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e176915%_))
                          (let* ((_%$tgt176919176931%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e176915%_)))
                                 (_%$hd176920176934%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt176919176931%_)))
                                 (_%$tl176921176937%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt176919176931%_)))
                                 (_%clause176941%_ _%$hd176920176934%_)
                                 (_%rest176943%_ _%$tl176921176937%_)
                                 (_%$e176945%_ _%clause176941%_)
                                 (_%$E176947176956%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e176945%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e176945%_))
                                (let* ((_%$tgt176948176959%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e176945%_)))
                                       (_%$hd176949176962%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt176948176959%_)))
                                       (_%$tl176950176965%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt176948176959%_)))
                                       (_%hd176969%_ _%$hd176949176962%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl176950176965%_))
                                      (let* ((_%$tgt176951176971%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl176950176965%_)))
                                             (_%$hd176952176974%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt176951176971%_)))
                                             (_%$tl176953176977%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt176951176971%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl176953176977%_))
                                                    '())
                                            (let ((_%clen176981%_
                                                   (_%arity176849%_
                                                    _%hd176969%_))
                                                  (_%cmp176982%_
                                                   (if (_%variadic?176848%_
                                                        _%hd176969%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp176982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len176913%_ (cons _%clen176981%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause176941%_))
                                      (cons _%args176912%_ '())))
                          _%stx176846%_)
                         (cons (_%generate176850%_
                                _%rest176943%_
                                _%args176912%_
                                _%len176913%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx176846%_))
                                            (_%$E176947176956%_)))
                                      (_%$E176947176956%_)))
                                (_%$E176947176956%_)))
                          (_%$E176917176928%_))))))
          (let* ((_%$e176852%_ _%stx176846%_)
                 (_%$E176854176886%_
                  (lambda ()
                    (let ((_%$E176855176868%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e176852%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e176852%_))
                          (let* ((_%$tgt176856176871%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e176852%_)))
                                 (_%$hd176857176874%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt176856176871%_)))
                                 (_%$tl176858176877%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt176856176871%_)))
                                 (_%clauses176881%_ _%$tl176858176877%_))
                            (let ((_%args176883%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx176846%_))
                                  (_%len176884%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx176846%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args176883%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len176884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args176883%_ '()))
                                         _%stx176846%_)
                                        '()))
                            '())
                      (cons (_%generate176850%_
                             _%clauses176881%_
                             _%args176883%_
                             _%len176884%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx176846%_)
                                                 '())))
                               _%stx176846%_)))
                          (_%$E176855176868%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e176852%_))
                (let* ((_%$tgt176859176889%_
                        (let () (declare (not safe)) (__AST-e _%$e176852%_)))
                       (_%$hd176860176892%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt176859176889%_)))
                       (_%$tl176861176895%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt176859176889%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl176861176895%_))
                      (let* ((_%$tgt176862176899%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl176861176895%_)))
                             (_%$hd176863176902%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt176862176899%_)))
                             (_%$tl176864176905%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt176862176899%_)))
                             (_%clause176909%_ _%$hd176863176902%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl176864176905%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause176909%_))
                            (_%$E176854176886%_)))
                      (_%$E176854176886%_)))
                (_%$E176854176886%_))))))
    (define __compile-let-form
      (lambda (_%stx176615%_ _%compile-simple176616%_ _%compile-values176617%_)
        (letrec ((_%simple-bind?176619%_
                  (lambda (_%hd176804%_)
                    (let* ((_%hd176805176815%_ _%hd176804%_)
                           (_%else176808176823%_ (lambda () '#f)))
                      (let ((_%K176811176836%_ (lambda (_%id176834%_) '#t))
                            (_%K176810176828%_ (lambda () '#t)))
                        (let ((_%try-match176807176831%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd176805176815%_ '#f))
                                     (_%K176810176828%_)
                                     (_%else176808176823%_)))))
                          (if (pair? _%hd176805176815%_)
                              (let ((_%tl176813176841%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd176805176815%_)))
                                    (_%hd176812176839%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd176805176815%_))))
                                (if (null? _%tl176813176841%_)
                                    (let ((_%id176844%_ _%hd176812176839%_))
                                      (_%K176811176836%_ _%id176844%_))
                                    (_%try-match176807176831%_)))
                              (_%try-match176807176831%_)))))))
                 (_%car-e176620%_
                  (lambda (_%hd176802%_)
                    (if (pair? _%hd176802%_)
                        (let () (declare (not safe)) (##car _%hd176802%_))
                        _%hd176802%_))))
          (let* ((_%$e176622%_ _%stx176615%_)
                 (_%$E176624176767%_
                  (lambda ()
                    (let ((_%$E176625176647%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e176622%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e176622%_))
                          (let* ((_%$tgt176626176650%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e176622%_)))
                                 (_%$hd176627176653%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt176626176650%_)))
                                 (_%$tl176628176656%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt176626176650%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl176628176656%_))
                                (let* ((_%$tgt176629176660%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl176628176656%_)))
                                       (_%$hd176630176663%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt176629176660%_)))
                                       (_%$tl176631176666%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt176629176660%_)))
                                       (_%hd176670%_ _%$hd176630176663%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl176631176666%_))
                                      (let* ((_%$tgt176632176672%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl176631176666%_)))
                                             (_%$hd176633176675%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt176632176672%_)))
                                             (_%$tl176634176678%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt176632176672%_)))
                                             (_%body176682%_
                                              _%$hd176633176675%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl176634176678%_))
                                                    '())
                                            (let* ((_%hd-ids176722%_
                                                    (map (lambda (_%bind176684%_)
                                                           (let* ((_%$e176686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind176684%_)
                          (_%$E176688176697%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e176686%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e176686%_))
                         (let* ((_%$tgt176689176700%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e176686%_)))
                                (_%$hd176690176703%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt176689176700%_)))
                                (_%$tl176691176706%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt176689176700%_)))
                                (_%ids176710%_ _%$hd176690176703%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl176691176706%_))
                               (let* ((_%$tgt176692176712%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl176691176706%_)))
                                      (_%$hd176693176715%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt176692176712%_)))
                                      (_%$tl176694176718%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt176692176712%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl176694176718%_))
                                             '())
                                     _%ids176710%_
                                     (_%$E176688176697%_)))
                               (_%$E176688176697%_)))
                         (_%$E176688176697%_))))
                 _%hd176670%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs176762%_
                                                    (map (lambda (_%bind176724%_)
                                                           (let* ((_%$e176726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind176724%_)
                          (_%$E176728176737%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e176726%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e176726%_))
                         (let* ((_%$tgt176729176740%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e176726%_)))
                                (_%$hd176730176743%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt176729176740%_)))
                                (_%$tl176731176746%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt176729176740%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl176731176746%_))
                               (let* ((_%$tgt176732176750%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl176731176746%_)))
                                      (_%$hd176733176753%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt176732176750%_)))
                                      (_%$tl176734176756%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt176732176750%_)))
                                      (_%expr176760%_ _%$hd176733176753%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl176734176756%_))
                                             '())
                                     (__compile _%expr176760%_)
                                     (_%$E176728176737%_)))
                               (_%$E176728176737%_)))
                         (_%$E176728176737%_))))
                 _%hd176670%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body176764%_
                                                    (__compile
                                                     _%body176682%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?176619%_
                                                     _%hd-ids176722%_))
                                                  (_%compile-simple176616%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e176620%_
                                                            _%hd-ids176722%_))
                                                   _%exprs176762%_
                                                   _%body176764%_)
                                                  (_%compile-values176617%_
                                                   _%hd-ids176722%_
                                                   _%exprs176762%_
                                                   _%body176764%_)))
                                            (_%$E176625176647%_)))
                                      (_%$E176625176647%_)))
                                (_%$E176625176647%_)))
                          (_%$E176625176647%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e176622%_))
                (let* ((_%$tgt176635176770%_
                        (let () (declare (not safe)) (__AST-e _%$e176622%_)))
                       (_%$hd176636176773%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt176635176770%_)))
                       (_%$tl176637176776%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt176635176770%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl176637176776%_))
                      (let* ((_%$tgt176638176780%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl176637176776%_)))
                             (_%$hd176639176783%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt176638176780%_)))
                             (_%$tl176640176786%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt176638176780%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd176639176783%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl176640176786%_))
                                (let* ((_%$tgt176641176790%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl176640176786%_)))
                                       (_%$hd176642176793%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt176641176790%_)))
                                       (_%$tl176643176796%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt176641176790%_)))
                                       (_%body176800%_ _%$hd176642176793%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl176643176796%_))
                                              '())
                                      (__compile _%body176800%_)
                                      (_%$E176624176767%_)))
                                (_%$E176624176767%_))
                            (_%$E176624176767%_)))
                      (_%$E176624176767%_)))
                (_%$E176624176767%_))))))
    (define __compile-let-values%
      (lambda (_%stx176427%_)
        (letrec ((_%compile-simple176429%_
                  (lambda (_%hd-ids176611%_ _%exprs176612%_ _%body176613%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp177807
                                        (map __compile-head-id
                                             _%hd-ids176611%_)))
                                   (declare (not safe))
                                   (##map list __tmp177807 _%exprs176612%_))
                                 (cons _%body176613%_ '())))
                     _%stx176427%_)))
                 (_%compile-values176430%_
                  (lambda (_%hd-ids176526%_ _%exprs176527%_ _%body176528%_)
                    (let _%lp176530%_ ((_%rest176532%_ _%hd-ids176526%_)
                                       (_%exprs176533%_ _%exprs176527%_)
                                       (_%bind176534%_ '())
                                       (_%post176535%_ '()))
                      (let* ((_%rest176536176550%_ _%rest176532%_)
                             (_%else176539176558%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind176534%_)
                                             (cons (_%compile-post176431%_
                                                    _%post176535%_
                                                    _%body176528%_)
                                                   '())))
                                 _%stx176427%_))))
                        (let ((_%K176544176594%_
                               (lambda (_%rest176591%_ _%id176592%_)
                                 (_%lp176530%_
                                  _%rest176591%_
                                  (cdr _%exprs176533%_)
                                  (cons (cons (__compile-head-id _%id176592%_)
                                              (cons (car _%exprs176533%_) '()))
                                        _%bind176534%_)
                                  _%post176535%_)))
                              (_%K176541176576%_
                               (lambda (_%rest176562%_ _%hd176563%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd176563%_))
                                     (_%lp176530%_
                                      _%rest176562%_
                                      (cdr _%exprs176533%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd176563%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs176533%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind176534%_)
                                      _%post176535%_)
                                     (if (list? _%hd176563%_)
                                         (let* ((_%len176567%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd176563%_)))
                                                (_%tmp176569%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp176530%_
                                            _%rest176562%_
                                            (cdr _%exprs176533%_)
                                            (cons (cons _%tmp176569%_
                                                        (cons (car _%exprs176533%_)
                                                              '()))
                                                  _%bind176534%_)
                                            (cons (cons _%tmp176569%_
                                                        (cons _%len176567%_
                                                              (let ((__tmp177809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id176572%_ _%k176573%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id176572%_))
                                   (cons (__SRC__0 _%id176572%_) _%k176573%_)
                                   '#f)))
                            (__tmp177808
                             (let ()
                               (declare (not safe))
                               (##iota _%len176567%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp177809 _%hd176563%_ __tmp177808))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post176535%_)))
                                         (__compile-error__%
                                          _%stx176427%_
                                          _%hd176563%_))))))
                          (if (pair? _%rest176536176550%_)
                              (let ((_%tl176546176599%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest176536176550%_)))
                                    (_%hd176545176597%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest176536176550%_))))
                                (if (pair? _%hd176545176597%_)
                                    (let ((_%tl176548176604%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd176545176597%_)))
                                          (_%hd176547176602%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd176545176597%_))))
                                      (if (null? _%tl176548176604%_)
                                          (let ((_%id176607%_
                                                 _%hd176547176602%_)
                                                (_%rest176609%_
                                                 _%tl176546176599%_))
                                            (_%K176544176594%_
                                             _%rest176609%_
                                             _%id176607%_))
                                          (let ((_%hd176584%_
                                                 _%hd176545176597%_)
                                                (_%rest176586%_
                                                 _%tl176546176599%_))
                                            (_%K176541176576%_
                                             _%rest176586%_
                                             _%hd176584%_))))
                                    (let ((_%hd176584%_ _%hd176545176597%_)
                                          (_%rest176586%_ _%tl176546176599%_))
                                      (_%K176541176576%_
                                       _%rest176586%_
                                       _%hd176584%_))))
                              (_%else176539176558%_)))))))
                 (_%compile-post176431%_
                  (lambda (_%post176433%_ _%body176434%_)
                    (let _%lp176436%_ ((_%rest176438%_ _%post176433%_)
                                       (_%check176439%_ '())
                                       (_%bind176440%_ '()))
                      (let* ((_%rest176441176453%_ _%rest176438%_)
                             (_%else176443176461%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp177810
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind176440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body176434%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx176427%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp177810
                                          _%check176439%_)))
                                 _%stx176427%_)))
                             (_%K176445176500%_
                              (lambda (_%rest176464%_
                                       _%init176465%_
                                       _%len176466%_
                                       _%tmp176467%_)
                                (_%lp176436%_
                                 _%rest176464%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp176467%_
                                                    (cons _%len176466%_ '())))
                                        _%stx176427%_)
                                       _%check176439%_)
                                 (let ((__tmp177811
                                        (lambda (_%hd176469%_ _%r176470%_)
                                          (let* ((_%hd176471176478%_
                                                  _%hd176469%_)
                                                 (_%E176473176482%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd176471176478%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K176474176488%_
                                                  (lambda (_%k176485%_
                                                           _%id176486%_)
                                                    (cons (cons _%id176486%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp176467%_
                                          (cons _%k176485%_ '())))
                              '()))
                  _%r176470%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd176471176478%_)
                                                (let ((_%hd176475176491%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd176471176478%_)))
                                                      (_%tl176476176493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd176471176478%_))))
                                                  (let* ((_%id176496%_
                                                          _%hd176475176491%_)
                                                         (_%k176498%_
                                                          _%tl176476176493%_))
                                                    (_%K176474176488%_
                                                     _%k176498%_
                                                     _%id176496%_)))
                                                (_%E176473176482%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp177811
                                    _%bind176440%_
                                    _%init176465%_))))))
                        (if (pair? _%rest176441176453%_)
                            (let ((_%hd176446176503%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest176441176453%_)))
                                  (_%tl176447176505%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest176441176453%_))))
                              (if (pair? _%hd176446176503%_)
                                  (let ((_%hd176448176508%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd176446176503%_)))
                                        (_%tl176449176510%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd176446176503%_))))
                                    (let ((_%tmp176513%_ _%hd176448176508%_))
                                      (if (pair? _%tl176449176510%_)
                                          (let ((_%hd176450176515%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl176449176510%_)))
                                                (_%tl176451176517%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl176449176510%_))))
                                            (let* ((_%len176520%_
                                                    _%hd176450176515%_)
                                                   (_%init176522%_
                                                    _%tl176451176517%_)
                                                   (_%rest176524%_
                                                    _%tl176447176505%_))
                                              (_%K176445176500%_
                                               _%rest176524%_
                                               _%init176522%_
                                               _%len176520%_
                                               _%tmp176513%_)))
                                          (_%else176443176461%_))))
                                  (_%else176443176461%_)))
                            (_%else176443176461%_)))))))
          (__compile-let-form
           _%stx176427%_
           _%compile-simple176429%_
           _%compile-values176430%_))))
    (define __compile-letrec-values%
      (lambda (_%stx176224%_)
        (letrec ((_%compile-simple176226%_
                  (lambda (_%hd-ids176423%_ _%exprs176424%_ _%body176425%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp177812
                                        (map __compile-head-id
                                             _%hd-ids176423%_)))
                                   (declare (not safe))
                                   (##map list __tmp177812 _%exprs176424%_))
                                 (cons _%body176425%_ '())))
                     _%stx176224%_)))
                 (_%compile-values176227%_
                  (lambda (_%hd-ids176334%_ _%exprs176335%_ _%body176336%_)
                    (let _%lp176338%_ ((_%rest176340%_ _%hd-ids176334%_)
                                       (_%exprs176341%_ _%exprs176335%_)
                                       (_%pre176342%_ '())
                                       (_%bind176343%_ '())
                                       (_%post176344%_ '()))
                      (let* ((_%rest176345176359%_ _%rest176340%_)
                             (_%else176348176367%_
                              (lambda ()
                                (_%compile-inner176228%_
                                 _%pre176342%_
                                 _%bind176343%_
                                 _%post176344%_
                                 _%body176336%_))))
                        (let ((_%K176353176406%_
                               (lambda (_%rest176403%_ _%id176404%_)
                                 (_%lp176338%_
                                  _%rest176403%_
                                  (cdr _%exprs176341%_)
                                  _%pre176342%_
                                  (cons (cons (__compile-head-id _%id176404%_)
                                              (cons (car _%exprs176341%_) '()))
                                        _%bind176343%_)
                                  _%post176344%_)))
                              (_%K176350176388%_
                               (lambda (_%rest176371%_ _%hd176372%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd176372%_))
                                     (_%lp176338%_
                                      _%rest176371%_
                                      (cdr _%exprs176341%_)
                                      _%pre176342%_
                                      (cons (cons (__compile-head-id
                                                   _%hd176372%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs176341%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind176343%_)
                                      _%post176344%_)
                                     (if (list? _%hd176372%_)
                                         (let* ((_%len176376%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd176372%_)))
                                                (_%tmp176378%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp176338%_
                                            _%rest176371%_
                                            (cdr _%exprs176341%_)
                                            (let ((__tmp177813
                                                   (lambda (_%id176381%_
                                                            _%r176382%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id176381%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id176381%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r176382%_)
                 _%r176382%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp177813
                                               _%pre176342%_
                                               _%hd176372%_))
                                            (cons (cons _%tmp176378%_
                                                        (cons (car _%exprs176341%_)
                                                              '()))
                                                  _%bind176343%_)
                                            (cons (cons _%tmp176378%_
                                                        (cons _%len176376%_
                                                              (let ((__tmp177815
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id176384%_ _%k176385%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id176384%_))
                                   (cons (__SRC__0 _%id176384%_) _%k176385%_)
                                   '#f)))
                            (__tmp177814
                             (let ()
                               (declare (not safe))
                               (##iota _%len176376%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp177815 _%hd176372%_ __tmp177814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post176344%_)))
                                         (__compile-error__%
                                          _%stx176224%_
                                          _%hd176372%_))))))
                          (if (pair? _%rest176345176359%_)
                              (let ((_%tl176355176411%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest176345176359%_)))
                                    (_%hd176354176409%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest176345176359%_))))
                                (if (pair? _%hd176354176409%_)
                                    (let ((_%tl176357176416%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd176354176409%_)))
                                          (_%hd176356176414%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd176354176409%_))))
                                      (if (null? _%tl176357176416%_)
                                          (let ((_%id176419%_
                                                 _%hd176356176414%_)
                                                (_%rest176421%_
                                                 _%tl176355176411%_))
                                            (_%K176353176406%_
                                             _%rest176421%_
                                             _%id176419%_))
                                          (let ((_%hd176396%_
                                                 _%hd176354176409%_)
                                                (_%rest176398%_
                                                 _%tl176355176411%_))
                                            (_%K176350176388%_
                                             _%rest176398%_
                                             _%hd176396%_))))
                                    (let ((_%hd176396%_ _%hd176354176409%_)
                                          (_%rest176398%_ _%tl176355176411%_))
                                      (_%K176350176388%_
                                       _%rest176398%_
                                       _%hd176396%_))))
                              (_%else176348176367%_)))))))
                 (_%compile-inner176228%_
                  (lambda (_%pre176329%_
                           _%bind176330%_
                           _%post176331%_
                           _%body176332%_)
                    (if (null? _%pre176329%_)
                        (_%compile-bind176229%_
                         _%bind176330%_
                         _%post176331%_
                         _%body176332%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre176329%_)
                                     (cons (_%compile-bind176229%_
                                            _%bind176330%_
                                            _%post176331%_
                                            _%body176332%_)
                                           '())))
                         _%stx176224%_))))
                 (_%compile-bind176229%_
                  (lambda (_%bind176325%_ _%post176326%_ _%body176327%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind176325%_)
                                 (cons (_%compile-post176230%_
                                        _%post176326%_
                                        _%body176327%_)
                                       '())))
                     _%stx176224%_)))
                 (_%compile-post176230%_
                  (lambda (_%post176232%_ _%body176233%_)
                    (let _%lp176235%_ ((_%rest176237%_ _%post176232%_)
                                       (_%check176238%_ '())
                                       (_%bind176239%_ '()))
                      (let* ((_%rest176240176252%_ _%rest176237%_)
                             (_%else176242176260%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp177816
                                              (let ((__tmp177817
                                                     (cons _%body176233%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp177817
                                                 _%bind176239%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp177816
                                          _%check176238%_)))
                                 _%stx176224%_)))
                             (_%K176244176299%_
                              (lambda (_%rest176263%_
                                       _%init176264%_
                                       _%len176265%_
                                       _%tmp176266%_)
                                (_%lp176235%_
                                 _%rest176263%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp176266%_
                                                    (cons _%len176265%_ '())))
                                        _%stx176224%_)
                                       _%check176238%_)
                                 (let ((__tmp177818
                                        (lambda (_%hd176268%_ _%r176269%_)
                                          (let* ((_%hd176270176277%_
                                                  _%hd176268%_)
                                                 (_%E176272176281%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd176270176277%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K176273176287%_
                                                  (lambda (_%k176284%_
                                                           _%id176285%_)
                                                    (cons (cons 'set!
                                                                (cons _%id176285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp176266%_
                                                (cons _%k176284%_ '())))
                                    '())))
                  _%r176269%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd176270176277%_)
                                                (let ((_%hd176274176290%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd176270176277%_)))
                                                      (_%tl176275176292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd176270176277%_))))
                                                  (let* ((_%id176295%_
                                                          _%hd176274176290%_)
                                                         (_%k176297%_
                                                          _%tl176275176292%_))
                                                    (_%K176273176287%_
                                                     _%k176297%_
                                                     _%id176295%_)))
                                                (_%E176272176281%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp177818
                                    _%bind176239%_
                                    _%init176264%_))))))
                        (if (pair? _%rest176240176252%_)
                            (let ((_%hd176245176302%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest176240176252%_)))
                                  (_%tl176246176304%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest176240176252%_))))
                              (if (pair? _%hd176245176302%_)
                                  (let ((_%hd176247176307%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd176245176302%_)))
                                        (_%tl176248176309%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd176245176302%_))))
                                    (let ((_%tmp176312%_ _%hd176247176307%_))
                                      (if (pair? _%tl176248176309%_)
                                          (let ((_%hd176249176314%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl176248176309%_)))
                                                (_%tl176250176316%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl176248176309%_))))
                                            (let* ((_%len176319%_
                                                    _%hd176249176314%_)
                                                   (_%init176321%_
                                                    _%tl176250176316%_)
                                                   (_%rest176323%_
                                                    _%tl176246176304%_))
                                              (_%K176244176299%_
                                               _%rest176323%_
                                               _%init176321%_
                                               _%len176319%_
                                               _%tmp176312%_)))
                                          (_%else176242176260%_))))
                                  (_%else176242176260%_)))
                            (_%else176242176260%_)))))))
          (__compile-let-form
           _%stx176224%_
           _%compile-simple176226%_
           _%compile-values176227%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx175975%_)
        (letrec ((_%compile-simple175977%_
                  (lambda (_%hd-ids176220%_ _%exprs176221%_ _%body176222%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp177819
                                        (map __compile-head-id
                                             _%hd-ids176220%_)))
                                   (declare (not safe))
                                   (##map list __tmp177819 _%exprs176221%_))
                                 (cons _%body176222%_ '())))
                     _%stx175975%_)))
                 (_%compile-values175978%_
                  (lambda (_%hd-ids176127%_ _%exprs176128%_ _%body176129%_)
                    (let _%lp176131%_ ((_%rest176133%_ _%hd-ids176127%_)
                                       (_%exprs176134%_ _%exprs176128%_)
                                       (_%bind176135%_ '())
                                       (_%post176136%_ '()))
                      (let* ((_%rest176137176151%_ _%rest176133%_)
                             (_%else176140176159%_
                              (lambda ()
                                (_%compile-bind175979%_
                                 _%bind176135%_
                                 _%post176136%_
                                 _%body176129%_))))
                        (let ((_%K176145176203%_
                               (lambda (_%rest176198%_ _%hd176199%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd176199%_))
                                     (let ((_%id176201%_
                                            (__SRC__0 _%hd176199%_)))
                                       (_%lp176131%_
                                        _%rest176198%_
                                        (cdr _%exprs176134%_)
                                        (cons (cons _%id176201%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind176135%_)
                                        (cons (cons _%id176201%_
                                                    (cons (car _%exprs176134%_)
                                                          '()))
                                              _%post176136%_)))
                                     (_%lp176131%_
                                      _%rest176198%_
                                      (cdr _%exprs176134%_)
                                      _%bind176135%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs176134%_)
                                                        '()))
                                            _%post176136%_)))))
                              (_%K176142176183%_
                               (lambda (_%rest176163%_ _%hd176164%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd176164%_))
                                     (let ((_%id176167%_
                                            (__SRC__0 _%hd176164%_)))
                                       (_%lp176131%_
                                        _%rest176163%_
                                        (cdr _%exprs176134%_)
                                        (cons (cons _%id176167%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind176135%_)
                                        (cons (cons _%id176167%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs176134%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post176136%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd176164%_))
                                         (if (list? _%hd176164%_)
                                             (let* ((_%len176171%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd176164%_)))
                                                    (_%tmp176173%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp176131%_
                                                _%rest176163%_
                                                (cdr _%exprs176134%_)
                                                (let ((__tmp177820
                                                       (lambda (_%id176176%_
                                                                _%r176177%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id176176%_))
                     (cons (cons (__SRC__0 _%id176176%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r176177%_)
                     _%r176177%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp177820
                                                   _%bind176135%_
                                                   _%hd176164%_))
                                                (cons (cons _%tmp176173%_
                                                            (cons (car _%exprs176134%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len176171%_
                                (let ((__tmp177822
                                       (lambda (_%id176179%_ _%k176180%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id176179%_))
                                             (cons (__SRC__0 _%id176179%_)
                                                   _%k176180%_)
                                             '#f)))
                                      (__tmp177821
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len176171%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp177822
                                   _%hd176164%_
                                   __tmp177821)))))
              _%post176136%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx175975%_
                                              _%hd176164%_))
                                         (_%lp176131%_
                                          _%rest176163%_
                                          (cdr _%exprs176134%_)
                                          _%bind176135%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs176134%_)
                                                            '()))
                                                _%post176136%_)))))))
                          (if (pair? _%rest176137176151%_)
                              (let ((_%tl176147176208%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest176137176151%_)))
                                    (_%hd176146176206%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest176137176151%_))))
                                (if (pair? _%hd176146176206%_)
                                    (let ((_%tl176149176213%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd176146176206%_)))
                                          (_%hd176148176211%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd176146176206%_))))
                                      (if (null? _%tl176149176213%_)
                                          (let ((_%hd176216%_
                                                 _%hd176148176211%_)
                                                (_%rest176218%_
                                                 _%tl176147176208%_))
                                            (_%K176145176203%_
                                             _%rest176218%_
                                             _%hd176216%_))
                                          (let ((_%hd176191%_
                                                 _%hd176146176206%_)
                                                (_%rest176193%_
                                                 _%tl176147176208%_))
                                            (_%K176142176183%_
                                             _%rest176193%_
                                             _%hd176191%_))))
                                    (let ((_%hd176191%_ _%hd176146176206%_)
                                          (_%rest176193%_ _%tl176147176208%_))
                                      (_%K176142176183%_
                                       _%rest176193%_
                                       _%hd176191%_))))
                              (_%else176140176159%_)))))))
                 (_%compile-bind175979%_
                  (lambda (_%bind176123%_ _%post176124%_ _%body176125%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind176123%_)
                                 (cons (_%compile-post175980%_
                                        _%post176124%_
                                        _%body176125%_)
                                       '())))
                     _%stx175975%_)))
                 (_%compile-post175980%_
                  (lambda (_%post175982%_ _%body175983%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp177823
                                  (let ((__tmp177825
                                         (lambda (_%hd175985%_ _%r175986%_)
                                           (let* ((_%hd175987176010%_
                                                   _%hd175985%_)
                                                  (_%E175991176014%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd175987176010%_
                                                              '([#f expr])
                                                              '([id expr])
                                                              '([tmp
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         expr
                         len
                         .
                         init])))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K176004176108%_
                                                    (lambda (_%expr176106%_)
                                                      (cons _%expr176106%_
                                                            _%r175986%_)))
                                                   (_%K175999176086%_
                                                    (lambda (_%expr176083%_
                                                             _%id176084%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id176084%_ (cons _%expr176083%_ '())))
                     _%stx175975%_)
                    _%r175986%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K175992176053%_
                                                    (lambda (_%init176018%_
                                                             _%len176019%_
                                                             _%expr176020%_
                                                             _%tmp176021%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp176021%_
                                             (cons _%expr176020%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp176021%_
                                                    (cons _%len176019%_ '())))
                                        _%stx175975%_)
                                       (let ((__tmp177826
                                              (map (lambda (_%hd176023%_)
                                                     (let* ((_%hd176024176031%_
                                                             _%hd176023%_)
                                                            (_%E176026176035%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd176024176031%_
                                '([id . k])))
                       '#!void))
                    (_%K176027176041%_
                     (lambda (_%k176038%_ _%id176039%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id176039%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp176021%_
                                                      (cons _%k176038%_ '())))
                                          '())))
                        _%stx175975%_))))
               (if (pair? _%hd176024176031%_)
                   (let ((_%hd176028176044%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd176024176031%_)))
                         (_%tl176029176046%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd176024176031%_))))
                     (let* ((_%id176049%_ _%hd176028176044%_)
                            (_%k176051%_ _%tl176029176046%_))
                       (_%K176027176041%_ _%k176051%_ _%id176049%_)))
                   (_%E176026176035%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init176018%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp177826)))))
                     _%stx175975%_)
                    _%r175986%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match177681177682%_
                                                       (lambda (_%hd175993176056%_
                                                                _%tl175994176058%_
                                                                _%hd175995176063%_
                                                                _%tl175996176065%_)
                                                         (let ((_%tmp176061%_
                                                                _%hd175993176056%_)
                                                               (_%expr176068%_
                                                                _%hd175995176063%_))
                                                           (_%E175991176014%_))))
                                                      (_%__match177675177676%_
                                                       (lambda (_%hd175993176056%_
                                                                _%tl175994176058%_)
                                                         (let ((_%tmp176061%_
                                                                _%hd175993176056%_))
                                                           (_%E175991176014%_)))))
                                                 (if (pair? _%hd175987176010%_)
                                                     (let ((_%tl176006176113%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd175987176010%_)))
                                                           (_%hd176005176111%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd175987176010%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd176005176111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl176006176113%_)
                       (let ((_%tl176008176118%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl176006176113%_)))
                             (_%hd176007176116%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl176006176113%_))))
                         (if (null? _%tl176008176118%_)
                             (let ((_%expr176121%_ _%hd176007176116%_))
                               (_%K176004176108%_ _%expr176121%_))
                             (if (pair? _%tl176008176118%_)
                                 (let ((_%tl175998176072%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl176008176118%_)))
                                       (_%hd175997176070%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl176008176118%_))))
                                   (let ((_%tmp176061%_ _%hd176005176111%_)
                                         (_%expr176068%_ _%hd176007176116%_)
                                         (_%len176075%_ _%hd175997176070%_)
                                         (_%init176077%_ _%tl175998176072%_))
                                     (_%K175992176053%_
                                      _%init176077%_
                                      _%len176075%_
                                      _%expr176068%_
                                      _%tmp176061%_)))
                                 (_%__match177681177682%_
                                  _%hd176005176111%_
                                  _%tl176006176113%_
                                  _%hd176007176116%_
                                  _%tl176008176118%_))))
                       (_%__match177675177676%_
                        _%hd176005176111%_
                        _%tl176006176113%_))
                   (if (pair? _%tl176006176113%_)
                       (let ((_%tl176003176098%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl176006176113%_)))
                             (_%hd176002176096%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl176006176113%_))))
                         (if (null? _%tl176003176098%_)
                             (let ((_%id176094%_ _%hd176005176111%_)
                                   (_%expr176101%_ _%hd176002176096%_))
                               (_%K175999176086%_ _%expr176101%_ _%id176094%_))
                             (if (pair? _%tl176003176098%_)
                                 (let ((_%tl175998176072%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl176003176098%_)))
                                       (_%hd175997176070%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl176003176098%_))))
                                   (let ((_%tmp176061%_ _%hd176005176111%_)
                                         (_%expr176068%_ _%hd176002176096%_)
                                         (_%len176075%_ _%hd175997176070%_)
                                         (_%init176077%_ _%tl175998176072%_))
                                     (_%K175992176053%_
                                      _%init176077%_
                                      _%len176075%_
                                      _%expr176068%_
                                      _%tmp176061%_)))
                                 (_%__match177681177682%_
                                  _%hd176005176111%_
                                  _%tl176006176113%_
                                  _%hd176002176096%_
                                  _%tl176003176098%_))))
                       (_%__match177675177676%_
                        _%hd176005176111%_
                        _%tl176006176113%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E175991176014%_)))))))
                                        (__tmp177824 (list _%body175983%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp177825
                                     __tmp177824
                                     _%post175982%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp177823)))
                     _%stx175975%_))))
          (__compile-let-form
           _%stx175975%_
           _%compile-simple175977%_
           _%compile-values175978%_))))
    (define __compile-call%
      (lambda (_%stx175935%_)
        (let* ((_%$e175937%_ _%stx175935%_)
               (_%$E175939175948%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e175937%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e175937%_))
              (let* ((_%$tgt175940175951%_
                      (let () (declare (not safe)) (__AST-e _%$e175937%_)))
                     (_%$hd175941175954%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt175940175951%_)))
                     (_%$tl175942175957%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt175940175951%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl175942175957%_))
                    (let* ((_%$tgt175943175961%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl175942175957%_)))
                           (_%$hd175944175964%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt175943175961%_)))
                           (_%$tl175945175967%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt175943175961%_)))
                           (_%rator175971%_ _%$hd175944175964%_)
                           (_%rands175973%_ _%$tl175945175967%_))
                      (__SRC__%
                       (cons (__compile _%rator175971%_)
                             (map __compile _%rands175973%_))
                       _%stx175935%_))
                    (_%$E175939175948%_)))
              (_%$E175939175948%_)))))
    (define __compile-ref%
      (lambda (_%stx175897%_)
        (let* ((_%$e175899%_ _%stx175897%_)
               (_%$E175901175910%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e175899%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e175899%_))
              (let* ((_%$tgt175902175913%_
                      (let () (declare (not safe)) (__AST-e _%$e175899%_)))
                     (_%$hd175903175916%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt175902175913%_)))
                     (_%$tl175904175919%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt175902175913%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl175904175919%_))
                    (let* ((_%$tgt175905175923%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl175904175919%_)))
                           (_%$hd175906175926%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt175905175923%_)))
                           (_%$tl175907175929%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt175905175923%_)))
                           (_%id175933%_ _%$hd175906175926%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl175907175929%_))
                                  '())
                          (__SRC__% _%id175933%_ _%stx175897%_)
                          (_%$E175901175910%_)))
                    (_%$E175901175910%_)))
              (_%$E175901175910%_)))))
    (define __compile-setq%
      (lambda (_%stx175844%_)
        (let* ((_%$e175846%_ _%stx175844%_)
               (_%$E175848175860%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e175846%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e175846%_))
              (let* ((_%$tgt175849175863%_
                      (let () (declare (not safe)) (__AST-e _%$e175846%_)))
                     (_%$hd175850175866%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt175849175863%_)))
                     (_%$tl175851175869%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt175849175863%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl175851175869%_))
                    (let* ((_%$tgt175852175873%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl175851175869%_)))
                           (_%$hd175853175876%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt175852175873%_)))
                           (_%$tl175854175879%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt175852175873%_)))
                           (_%id175883%_ _%$hd175853175876%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl175854175879%_))
                          (let* ((_%$tgt175855175885%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl175854175879%_)))
                                 (_%$hd175856175888%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt175855175885%_)))
                                 (_%$tl175857175891%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt175855175885%_)))
                                 (_%expr175895%_ _%$hd175856175888%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl175857175891%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id175883%_
                                              _%stx175844%_)
                                             (cons (__compile _%expr175895%_)
                                                   '())))
                                 _%stx175844%_)
                                (_%$E175848175860%_)))
                          (_%$E175848175860%_)))
                    (_%$E175848175860%_)))
              (_%$E175848175860%_)))))
    (define __compile-if%
      (lambda (_%stx175776%_)
        (let* ((_%$e175778%_ _%stx175776%_)
               (_%$E175780175795%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e175778%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e175778%_))
              (let* ((_%$tgt175781175798%_
                      (let () (declare (not safe)) (__AST-e _%$e175778%_)))
                     (_%$hd175782175801%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt175781175798%_)))
                     (_%$tl175783175804%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt175781175798%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl175783175804%_))
                    (let* ((_%$tgt175784175808%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl175783175804%_)))
                           (_%$hd175785175811%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt175784175808%_)))
                           (_%$tl175786175814%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt175784175808%_)))
                           (_%p175818%_ _%$hd175785175811%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl175786175814%_))
                          (let* ((_%$tgt175787175820%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl175786175814%_)))
                                 (_%$hd175788175823%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt175787175820%_)))
                                 (_%$tl175789175826%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt175787175820%_)))
                                 (_%t175830%_ _%$hd175788175823%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl175789175826%_))
                                (let* ((_%$tgt175790175832%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl175789175826%_)))
                                       (_%$hd175791175835%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt175790175832%_)))
                                       (_%$tl175792175838%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt175790175832%_)))
                                       (_%f175842%_ _%$hd175791175835%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl175792175838%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p175818%_)
                                                   (cons (__compile
                                                          _%t175830%_)
                                                         (cons (__compile
                                                                _%f175842%_)
                                                               '()))))
                                       _%stx175776%_)
                                      (_%$E175780175795%_)))
                                (_%$E175780175795%_)))
                          (_%$E175780175795%_)))
                    (_%$E175780175795%_)))
              (_%$E175780175795%_)))))
    (define __compile-quote%
      (lambda (_%stx175738%_)
        (let* ((_%$e175740%_ _%stx175738%_)
               (_%$E175742175751%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e175740%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e175740%_))
              (let* ((_%$tgt175743175754%_
                      (let () (declare (not safe)) (__AST-e _%$e175740%_)))
                     (_%$hd175744175757%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt175743175754%_)))
                     (_%$tl175745175760%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt175743175754%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl175745175760%_))
                    (let* ((_%$tgt175746175764%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl175745175760%_)))
                           (_%$hd175747175767%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt175746175764%_)))
                           (_%$tl175748175770%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt175746175764%_)))
                           (_%e175774%_ _%$hd175747175767%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl175748175770%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e175774%_))
                                       '()))
                           _%stx175738%_)
                          (_%$E175742175751%_)))
                    (_%$E175742175751%_)))
              (_%$E175742175751%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx175700%_)
        (let* ((_%$e175702%_ _%stx175700%_)
               (_%$E175704175713%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e175702%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e175702%_))
              (let* ((_%$tgt175705175716%_
                      (let () (declare (not safe)) (__AST-e _%$e175702%_)))
                     (_%$hd175706175719%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt175705175716%_)))
                     (_%$tl175707175722%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt175705175716%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl175707175722%_))
                    (let* ((_%$tgt175708175726%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl175707175722%_)))
                           (_%$hd175709175729%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt175708175726%_)))
                           (_%$tl175710175732%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt175708175726%_)))
                           (_%e175736%_ _%$hd175709175729%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl175710175732%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e175736%_ '()))
                           _%stx175700%_)
                          (_%$E175704175713%_)))
                    (_%$E175704175713%_)))
              (_%$E175704175713%_)))))
    (__core-bind-syntax!__% '%#begin __compile-begin% make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-syntax
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-foreign
     __compile-begin-foreign%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#module
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#import
     __compile-import%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#export
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#provide
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-values
     __compile-define-values%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-syntax
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-alias
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-runtime
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#extern
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#declare
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-annotation
     __compile-begin-annotation%
     make-__core-expression)
    (__core-bind-syntax!__% '%#quote __compile-quote% make-__core-expression)
    (__core-bind-syntax!__%
     '%#quote-syntax
     __compile-quote-syntax%
     make-__core-expression)
    (__core-bind-syntax!__% '%#lambda __compile-lambda% make-__core-expression)
    (__core-bind-syntax!__%
     '%#case-lambda
     __compile-case-lambda%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#let-values
     __compile-let-values%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#letrec-values
     __compile-letrec-values%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#letrec*-values
     __compile-letrec*-values%
     make-__core-expression)
    (__core-bind-syntax!__% '%#call __compile-call% make-__core-expression)
    (__core-bind-syntax!__% '%#if __compile-if% make-__core-expression)
    (__core-bind-syntax!__% '%#ref __compile-ref% make-__core-expression)
    (__core-bind-syntax!__% '%#set! __compile-setq% make-__core-expression)
    (__core-bind-syntax!__% '%#cond-expand __compile-error make-__core-form)
    (__core-bind-syntax!__% '%#include __compile-error make-__core-form)
    (__core-bind-syntax!__% '%#let-syntax __compile-error make-__core-form)
    (__core-bind-syntax!__%
     '%#letrec-syntax
     __compile-error
     make-__core-form)))
