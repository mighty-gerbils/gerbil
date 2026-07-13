(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1783939348)
  (begin
    (define __syntax::t
      (let ((__tmp175283 (list)) (__tmp175282 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__syntax::t
         '__syntax
         __tmp175283
         '(e id)
         __tmp175282
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args175087%_
        (apply make-instance __syntax::t _%$args175087%_)))
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
      (let ((__tmp175285 (list __syntax::t))
            (__tmp175284 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-form::t
         '__core-form
         __tmp175285
         '()
         __tmp175284
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args175084%_
        (apply make-instance __core-form::t _%$args175084%_)))
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
      (let ((__tmp175287 (list __core-form::t))
            (__tmp175286 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-expression::t
         '__core-expression
         __tmp175287
         '()
         __tmp175286
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args175081%_
        (apply make-instance __core-expression::t _%$args175081%_)))
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
      (let ((__tmp175289 (list __core-form::t))
            (__tmp175288 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-special-form::t
         '__core-special-form
         __tmp175289
         '()
         __tmp175288
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args175078%_
        (apply make-instance __core-special-form::t _%$args175078%_)))
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
      (lambda (_%id175055%_)
        (let* ((_%h175057%_ __core)
               (_%key175060%_
                (let () (declare (not safe)) (__AST-e _%id175055%_)))
               (_%h175064%_ _%h175057%_)
               (_%h175066%_ _%h175064%_))
          (declare (not safe))
          (__hash-get _%h175066%_ _%key175060%_))))
    (define __core-bound-id?__%
      (lambda (_%id175038%_ _%is?175039%_)
        (let ((_%$e175041%_ (__core-resolve _%id175038%_)))
          (if _%$e175041%_ (_%is?175039%_ _%$e175041%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id175048%_)
        (let ((_%is?175050%_ true))
          (__core-bound-id?__% _%id175048%_ _%is?175050%_))))
    (define __core-bound-id?
      (lambda _g175290_
        (let ((_g175291_ (let () (declare (not safe)) (##length _g175290_))))
          (cond ((let () (declare (not safe)) (##fx= _g175291_ 1))
                 (apply __core-bound-id?__0 _g175290_))
                ((let () (declare (not safe)) (##fx= _g175291_ 2))
                 (apply __core-bound-id?__% _g175290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g175290_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id174996%_ _%e174997%_ _%make174998%_)
        (let* ((_%h175000%_ __core)
               (_%key175003%_ _%id174996%_)
               (_%value175006%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%e174997%_ '__syntax::t))
                    _%e174997%_
                    (_%make174998%_ _%e174997%_ _%id174996%_)))
               (_%h175010%_ _%h175000%_)
               (_%h175012%_ _%h175010%_))
          (declare (not safe))
          (__hash-put! _%h175012%_ _%key175003%_ _%value175006%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id175028%_ _%e175029%_)
        (let ((_%make175031%_ make-__syntax))
          (__core-bind-syntax!__% _%id175028%_ _%e175029%_ _%make175031%_))))
    (define __core-bind-syntax!
      (lambda _g175292_
        (let ((_g175293_ (let () (declare (not safe)) (##length _g175292_))))
          (cond ((let () (declare (not safe)) (##fx= _g175293_ 2))
                 (apply __core-bind-syntax!__0 _g175292_))
                ((let () (declare (not safe)) (##fx= _g175293_ 3))
                 (apply __core-bind-syntax!__% _g175292_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g175292_))))))
    (define __SRC__%
      (lambda (_%e174976%_ _%src-stx174977%_)
        (if (or (pair? _%e174976%_) (symbol? _%e174976%_))
            (let ((__tmp175294
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx174977%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx174977%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e174976%_ __tmp175294))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e174976%_ 'gerbil#AST::t))
                (let ((__tmp175296
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e174976%_ '1 '#f '#f)))
                      (__tmp175295
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e174976%_)))))
                  (declare (not safe))
                  (##make-source __tmp175296 __tmp175295))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e174976%_))))))
    (define __SRC__0
      (lambda (_%e174988%_)
        (let ((_%src-stx174990%_ '#f))
          (__SRC__% _%e174988%_ _%src-stx174990%_))))
    (define __SRC
      (lambda _g175297_
        (let ((_g175298_ (let () (declare (not safe)) (##length _g175297_))))
          (cond ((let () (declare (not safe)) (##fx= _g175298_ 1))
                 (apply __SRC__0 _g175297_))
                ((let () (declare (not safe)) (##fx= _g175298_ 2))
                 (apply __SRC__% _g175297_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g175297_))))))
    (define __locat
      (lambda (_%loc174973%_)
        (if (let () (declare (not safe)) (##locat? _%loc174973%_))
            _%loc174973%_
            '#f)))
    (define __check-values
      (lambda (_%obj174968%_ _%k174969%_)
        (let ((_%count174971%_
               (if (let () (declare (not safe)) (##values? _%obj174968%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj174968%_))
                   '1)))
          (if (fx= _%count174971%_ _%k174969%_)
              '#!void
              (let ((__tmp175300
                     (if (fx< _%count174971%_ _%k174969%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp175299
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj174968%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj174968%_))
                         _%obj174968%_)))
                (declare (not safe))
                (error __tmp175300 __tmp175299 _%k174969%_))))))
    (define __compile
      (lambda (_%stx174937%_)
        (let* ((_%$e174939%_ _%stx174937%_)
               (_%$%$E174941174947%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e174939%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e174939%_))
              (let* ((_%$%$tgt174942174950%_
                      (let () (declare (not safe)) (__AST-e _%$e174939%_)))
                     (_%$%$hd174943174953%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt174942174950%_)))
                     (_%$%$tl174944174956%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt174942174950%_)))
                     (_%form174960%_ _%$%$hd174943174953%_)
                     (_%$e174962%_ (__core-resolve _%form174960%_)))
                (if _%$e174962%_
                    ((##structure-ref _%$e174962%_ '1 __syntax::t '#f)
                     _%stx174937%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx174937%_
                       _%form174960%_))))
              (_%$%$E174941174947%_)))))
    (define __compile-error__%
      (lambda (_%stx174924%_ _%detail174925%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx174924%_
           _%detail174925%_))))
    (define __compile-error__0
      (lambda (_%stx174930%_)
        (let ((_%detail174932%_ '#f))
          (__compile-error__% _%stx174930%_ _%detail174932%_))))
    (define __compile-error
      (lambda _g175301_
        (let ((_g175302_ (let () (declare (not safe)) (##length _g175301_))))
          (cond ((let () (declare (not safe)) (##fx= _g175302_ 1))
                 (apply __compile-error__0 _g175301_))
                ((let () (declare (not safe)) (##fx= _g175302_ 2))
                 (apply __compile-error__% _g175301_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g175301_))))))
    (define __compile-ignore%
      (lambda (_%stx174921%_) (__SRC__% ''#!void _%stx174921%_)))
    (define __compile-begin%
      (lambda (_%stx174896%_)
        (let* ((_%$e174898%_ _%stx174896%_)
               (_%$%$E174900174906%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e174898%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e174898%_))
              (let* ((_%$%$tgt174901174909%_
                      (let () (declare (not safe)) (__AST-e _%$e174898%_)))
                     (_%$%$hd174902174912%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt174901174909%_)))
                     (_%$%$tl174903174915%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt174901174909%_)))
                     (_%body174919%_ _%$%$tl174903174915%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body174919%_))
                 _%stx174896%_))
              (_%$%$E174900174906%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx174871%_)
        (let* ((_%$e174873%_ _%stx174871%_)
               (_%$%$E174875174881%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e174873%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e174873%_))
              (let* ((_%$%$tgt174876174884%_
                      (let () (declare (not safe)) (__AST-e _%$e174873%_)))
                     (_%$%$hd174877174887%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt174876174884%_)))
                     (_%$%$tl174878174890%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt174876174884%_)))
                     (_%body174894%_ _%$%$tl174878174890%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body174894%_)))
                 _%stx174871%_))
              (_%$%$E174875174881%_)))))
    (define __compile-import%
      (lambda (_%stx174846%_)
        (let* ((_%$e174848%_ _%stx174846%_)
               (_%$%$E174850174856%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e174848%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e174848%_))
              (let* ((_%$%$tgt174851174859%_
                      (let () (declare (not safe)) (__AST-e _%$e174848%_)))
                     (_%$%$hd174852174862%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt174851174859%_)))
                     (_%$%$tl174853174865%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt174851174859%_)))
                     (_%body174869%_ _%$%$tl174853174865%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body174869%_ '())) '()))
                 _%stx174846%_))
              (_%$%$E174850174856%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx174793%_)
        (let* ((_%$e174795%_ _%stx174793%_)
               (_%$%$E174797174809%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e174795%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e174795%_))
              (let* ((_%$%$tgt174798174812%_
                      (let () (declare (not safe)) (__AST-e _%$e174795%_)))
                     (_%$%$hd174799174815%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt174798174812%_)))
                     (_%$%$tl174800174818%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt174798174812%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl174800174818%_))
                    (let* ((_%$%$tgt174801174822%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl174800174818%_)))
                           (_%$%$hd174802174825%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt174801174822%_)))
                           (_%$%$tl174803174828%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt174801174822%_)))
                           (_%ann174832%_ _%$%$hd174802174825%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl174803174828%_))
                          (let* ((_%$%$tgt174804174834%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl174803174828%_)))
                                 (_%$%$hd174805174837%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt174804174834%_)))
                                 (_%$%$tl174806174840%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt174804174834%_)))
                                 (_%expr174844%_ _%$%$hd174805174837%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl174806174840%_))
                                        '())
                                (__compile _%expr174844%_)
                                (_%$%$E174797174809%_)))
                          (_%$%$E174797174809%_)))
                    (_%$%$E174797174809%_)))
              (_%$%$E174797174809%_)))))
    (define __compile-define-values%
      (lambda (_%stx174684%_)
        (let* ((_%$e174686%_ _%stx174684%_)
               (_%$%$E174688174700%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e174686%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e174686%_))
              (let* ((_%$%$tgt174689174703%_
                      (let () (declare (not safe)) (__AST-e _%$e174686%_)))
                     (_%$%$hd174690174706%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt174689174703%_)))
                     (_%$%$tl174691174709%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt174689174703%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl174691174709%_))
                    (let* ((_%$%$tgt174692174713%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl174691174709%_)))
                           (_%$%$hd174693174716%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt174692174713%_)))
                           (_%$%$tl174694174719%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt174692174713%_)))
                           (_%hd174723%_ _%$%$hd174693174716%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl174694174719%_))
                          (let* ((_%$%$tgt174695174725%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl174694174719%_)))
                                 (_%$%$hd174696174728%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt174695174725%_)))
                                 (_%$%$tl174697174731%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt174695174725%_)))
                                 (_%expr174735%_ _%$%$hd174696174728%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl174697174731%_))
                                        '())
                                (let* ((_%$e174737%_ _%hd174723%_)
                                       (_%$%$E174739174780%_
                                        (lambda ()
                                          (let ((_%$%$E174740174765%_
                                                 (lambda ()
                                                   (let* ((_%$%$E174741174752%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e174737%_))))
                  (_%ids174755%_ _%hd174723%_)
                  (_%len174757%_ (length _%ids174755%_))
                  (_%tmp174759%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp174759%_
                                       (cons (__compile _%expr174735%_) '())))
                           _%stx174684%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp174759%_
                                             (cons _%len174757%_ '())))
                                 _%stx174684%_)
                                (let ((__tmp175303
                                       (let ((__tmp175305
                                              (lambda (_%id174762%_
                                                       _%k174763%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id174762%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id174762%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp174759%_
                                           (cons _%k174763%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx174684%_)
                                                    '#f)))
                                             (__tmp175304
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len174757%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp175305
                                          _%ids174755%_
                                          __tmp175304))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp175303)))))
              _%stx174684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e174737%_))
                                                (let* ((_%$%$tgt174742174768%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e174737%_)))
                                                       (_%$%$hd174743174771%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%$tgt174742174768%_)))
                                                       (_%$%$tl174744174774%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%$tgt174742174768%_)))
                                                       (_%id174778%_
                                                        _%$%$hd174743174771%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$%$tl174744174774%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id174778%_)
                           (cons (__compile _%expr174735%_) '())))
               _%stx174684%_)
              (_%$%$E174740174765%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%$E174740174765%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e174737%_))
                                      (let* ((_%$%$tgt174745174783%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e174737%_)))
                                             (_%$%$hd174746174786%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt174745174783%_)))
                                             (_%$%$tl174747174789%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt174745174783%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$hd174746174786%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$%$tl174747174789%_))
                                                        '())
                                                (__compile _%expr174735%_)
                                                (_%$%$E174739174780%_))
                                            (_%$%$E174739174780%_)))
                                      (_%$%$E174739174780%_)))
                                (_%$%$E174688174700%_)))
                          (_%$%$E174688174700%_)))
                    (_%$%$E174688174700%_)))
              (_%$%$E174688174700%_)))))
    (define __compile-head-id
      (lambda (_%e174682%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e174682%_))
             _%e174682%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd174639%_)
        (let _%recur174641%_ ((_%rest174643%_ _%hd174639%_))
          (let* ((_%$e174645%_ _%rest174643%_)
                 (_%$%$E174647174665%_
                  (lambda ()
                    (let ((_%$%$E174648174662%_
                           (lambda ()
                             (let* ((_%$%$E174649174657%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e174645%_))))
                                    (_%tail174660%_ _%$e174645%_))
                               (__compile-head-id _%tail174660%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e174645%_))
                                  '())
                          '()
                          (_%$%$E174648174662%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e174645%_))
                (let* ((_%$%$tgt174650174668%_
                        (let () (declare (not safe)) (__AST-e _%$e174645%_)))
                       (_%$%$hd174651174671%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt174650174668%_)))
                       (_%$%$tl174652174674%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt174650174668%_)))
                       (_%hd174678%_ _%$%$hd174651174671%_)
                       (_%rest174680%_ _%$%$tl174652174674%_))
                  (cons (__compile-head-id _%hd174678%_)
                        (_%recur174641%_ _%rest174680%_)))
                (_%$%$E174647174665%_))))))
    (define __compile-lambda%
      (lambda (_%stx174586%_)
        (let* ((_%$e174588%_ _%stx174586%_)
               (_%$%$E174590174602%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e174588%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e174588%_))
              (let* ((_%$%$tgt174591174605%_
                      (let () (declare (not safe)) (__AST-e _%$e174588%_)))
                     (_%$%$hd174592174608%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt174591174605%_)))
                     (_%$%$tl174593174611%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt174591174605%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl174593174611%_))
                    (let* ((_%$%$tgt174594174615%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl174593174611%_)))
                           (_%$%$hd174595174618%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt174594174615%_)))
                           (_%$%$tl174596174621%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt174594174615%_)))
                           (_%hd174625%_ _%$%$hd174595174618%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl174596174621%_))
                          (let* ((_%$%$tgt174597174627%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl174596174621%_)))
                                 (_%$%$hd174598174630%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt174597174627%_)))
                                 (_%$%$tl174599174633%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt174597174627%_)))
                                 (_%body174637%_ _%$%$hd174598174630%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl174599174633%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd174625%_)
                                             (cons (__compile _%body174637%_)
                                                   '())))
                                 _%stx174586%_)
                                (_%$%$E174590174602%_)))
                          (_%$%$E174590174602%_)))
                    (_%$%$E174590174602%_)))
              (_%$%$E174590174602%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx174351%_)
        (letrec ((_%variadic?174353%_
                  (lambda (_%hd174551%_)
                    (let* ((_%$e174553%_ _%hd174551%_)
                           (_%$%$E174555174571%_
                            (lambda ()
                              (let ((_%$%$E174556174568%_
                                     (lambda ()
                                       (let ((_%$%$E174557174565%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e174553%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e174553%_))
                                            '())
                                    '#f
                                    (_%$%$E174556174568%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e174553%_))
                          (let* ((_%$%$tgt174558174574%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e174553%_)))
                                 (_%$%$hd174559174577%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt174558174574%_)))
                                 (_%$%$tl174560174580%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt174558174574%_)))
                                 (_%rest174584%_ _%$%$tl174560174580%_))
                            (_%variadic?174353%_ _%rest174584%_))
                          (_%$%$E174555174571%_)))))
                 (_%arity174354%_
                  (lambda (_%hd174489%_)
                    (let _%lp174491%_ ((_%rest174493%_ _%hd174489%_)
                                       (_%k174494%_ '0))
                      (let* ((_%$e174496%_ _%rest174493%_)
                             (_%$%$E174498174509%_
                              (lambda ()
                                (let ((_%$%$E174499174506%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e174496%_)))))
                                  _%k174494%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e174496%_))
                            (let* ((_%$%$tgt174500174512%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e174496%_)))
                                   (_%$%$hd174501174515%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%$tgt174500174512%_)))
                                   (_%$%$tl174502174518%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%$tgt174500174512%_)))
                                   (_%rest174522%_ _%$%$tl174502174518%_))
                              (_%lp174491%_
                               _%rest174522%_
                               (let ((_%x174524%_ _%k174494%_))
                                 (if (fixnum? _%x174524%_)
                                     (let ((_%x174529%_ _%x174524%_))
                                       (declare (not safe))
                                       (__fx1+ _%x174529%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x174524%_)
                                       '#!void)))))
                            (_%$%$E174498174509%_))))))
                 (_%generate174355%_
                  (lambda (_%rest174416%_ _%args174417%_ _%len174418%_)
                    (let* ((_%$e174420%_ _%rest174416%_)
                           (_%$%$E174422174433%_
                            (lambda ()
                              (let ((_%$%$E174423174430%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e174420%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args174417%_ '())))
                                 _%stx174351%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e174420%_))
                          (let* ((_%$%$tgt174424174436%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e174420%_)))
                                 (_%$%$hd174425174439%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt174424174436%_)))
                                 (_%$%$tl174426174442%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt174424174436%_)))
                                 (_%clause174446%_ _%$%$hd174425174439%_)
                                 (_%rest174448%_ _%$%$tl174426174442%_)
                                 (_%$e174450%_ _%clause174446%_)
                                 (_%$%$E174452174461%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e174450%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e174450%_))
                                (let* ((_%$%$tgt174453174464%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e174450%_)))
                                       (_%$%$hd174454174467%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt174453174464%_)))
                                       (_%$%$tl174455174470%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt174453174464%_)))
                                       (_%hd174474%_ _%$%$hd174454174467%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl174455174470%_))
                                      (let* ((_%$%$tgt174456174476%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl174455174470%_)))
                                             (_%$%$hd174457174479%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt174456174476%_)))
                                             (_%$%$tl174458174482%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt174456174476%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl174458174482%_))
                                                    '())
                                            (let ((_%clen174486%_
                                                   (_%arity174354%_
                                                    _%hd174474%_))
                                                  (_%cmp174487%_
                                                   (if (_%variadic?174353%_
                                                        _%hd174474%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp174487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len174418%_ (cons _%clen174486%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause174446%_))
                                      (cons _%args174417%_ '())))
                          _%stx174351%_)
                         (cons (_%generate174355%_
                                _%rest174448%_
                                _%args174417%_
                                _%len174418%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx174351%_))
                                            (_%$%$E174452174461%_)))
                                      (_%$%$E174452174461%_)))
                                (_%$%$E174452174461%_)))
                          (_%$%$E174422174433%_))))))
          (let* ((_%$e174357%_ _%stx174351%_)
                 (_%$%$E174359174391%_
                  (lambda ()
                    (let ((_%$%$E174360174373%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e174357%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e174357%_))
                          (let* ((_%$%$tgt174361174376%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e174357%_)))
                                 (_%$%$hd174362174379%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt174361174376%_)))
                                 (_%$%$tl174363174382%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt174361174376%_)))
                                 (_%clauses174386%_ _%$%$tl174363174382%_))
                            (let ((_%args174388%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx174351%_))
                                  (_%len174389%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx174351%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args174388%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len174389%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args174388%_ '()))
                                         _%stx174351%_)
                                        '()))
                            '())
                      (cons (_%generate174355%_
                             _%clauses174386%_
                             _%args174388%_
                             _%len174389%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx174351%_)
                                                 '())))
                               _%stx174351%_)))
                          (_%$%$E174360174373%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e174357%_))
                (let* ((_%$%$tgt174364174394%_
                        (let () (declare (not safe)) (__AST-e _%$e174357%_)))
                       (_%$%$hd174365174397%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt174364174394%_)))
                       (_%$%$tl174366174400%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt174364174394%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl174366174400%_))
                      (let* ((_%$%$tgt174367174404%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl174366174400%_)))
                             (_%$%$hd174368174407%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt174367174404%_)))
                             (_%$%$tl174369174410%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt174367174404%_)))
                             (_%clause174414%_ _%$%$hd174368174407%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$tl174369174410%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause174414%_))
                            (_%$%$E174359174391%_)))
                      (_%$%$E174359174391%_)))
                (_%$%$E174359174391%_))))))
    (define __compile-let-form
      (lambda (_%stx174120%_ _%compile-simple174121%_ _%compile-values174122%_)
        (letrec ((_%simple-bind?174124%_
                  (lambda (_%hd174309%_)
                    (let* ((_%$%hd174310174320%_ _%hd174309%_)
                           (_%$%else174313174328%_ (lambda () '#f)))
                      (let ((_%$%K174316174341%_ (lambda (_%id174339%_) '#t))
                            (_%$%K174315174333%_ (lambda () '#t)))
                        (let ((_%$%try-match174312174336%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%$%hd174310174320%_ '#f))
                                     (_%$%K174315174333%_)
                                     (_%$%else174313174328%_)))))
                          (if (pair? _%$%hd174310174320%_)
                              (let ((_%$%tl174318174346%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%hd174310174320%_)))
                                    (_%$%hd174317174344%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%hd174310174320%_))))
                                (if (null? _%$%tl174318174346%_)
                                    (let ((_%id174349%_ _%$%hd174317174344%_))
                                      (_%$%K174316174341%_ _%id174349%_))
                                    (_%$%try-match174312174336%_)))
                              (_%$%try-match174312174336%_)))))))
                 (_%car-e174125%_
                  (lambda (_%hd174307%_)
                    (if (pair? _%hd174307%_)
                        (let () (declare (not safe)) (##car _%hd174307%_))
                        _%hd174307%_))))
          (let* ((_%$e174127%_ _%stx174120%_)
                 (_%$%$E174129174272%_
                  (lambda ()
                    (let ((_%$%$E174130174152%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e174127%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e174127%_))
                          (let* ((_%$%$tgt174131174155%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e174127%_)))
                                 (_%$%$hd174132174158%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt174131174155%_)))
                                 (_%$%$tl174133174161%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt174131174155%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl174133174161%_))
                                (let* ((_%$%$tgt174134174165%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl174133174161%_)))
                                       (_%$%$hd174135174168%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt174134174165%_)))
                                       (_%$%$tl174136174171%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt174134174165%_)))
                                       (_%hd174175%_ _%$%$hd174135174168%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl174136174171%_))
                                      (let* ((_%$%$tgt174137174177%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl174136174171%_)))
                                             (_%$%$hd174138174180%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt174137174177%_)))
                                             (_%$%$tl174139174183%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt174137174177%_)))
                                             (_%body174187%_
                                              _%$%$hd174138174180%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl174139174183%_))
                                                    '())
                                            (let* ((_%hd-ids174227%_
                                                    (map (lambda (_%bind174189%_)
                                                           (let* ((_%$e174191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind174189%_)
                          (_%$%$E174193174202%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e174191%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e174191%_))
                         (let* ((_%$%$tgt174194174205%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e174191%_)))
                                (_%$%$hd174195174208%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt174194174205%_)))
                                (_%$%$tl174196174211%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt174194174205%_)))
                                (_%ids174215%_ _%$%$hd174195174208%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl174196174211%_))
                               (let* ((_%$%$tgt174197174217%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl174196174211%_)))
                                      (_%$%$hd174198174220%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt174197174217%_)))
                                      (_%$%$tl174199174223%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt174197174217%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl174199174223%_))
                                             '())
                                     _%ids174215%_
                                     (_%$%$E174193174202%_)))
                               (_%$%$E174193174202%_)))
                         (_%$%$E174193174202%_))))
                 _%hd174175%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs174267%_
                                                    (map (lambda (_%bind174229%_)
                                                           (let* ((_%$e174231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind174229%_)
                          (_%$%$E174233174242%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e174231%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e174231%_))
                         (let* ((_%$%$tgt174234174245%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e174231%_)))
                                (_%$%$hd174235174248%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt174234174245%_)))
                                (_%$%$tl174236174251%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt174234174245%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl174236174251%_))
                               (let* ((_%$%$tgt174237174255%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl174236174251%_)))
                                      (_%$%$hd174238174258%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt174237174255%_)))
                                      (_%$%$tl174239174261%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt174237174255%_)))
                                      (_%expr174265%_ _%$%$hd174238174258%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl174239174261%_))
                                             '())
                                     (__compile _%expr174265%_)
                                     (_%$%$E174233174242%_)))
                               (_%$%$E174233174242%_)))
                         (_%$%$E174233174242%_))))
                 _%hd174175%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body174269%_
                                                    (__compile
                                                     _%body174187%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?174124%_
                                                     _%hd-ids174227%_))
                                                  (_%compile-simple174121%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e174125%_
                                                            _%hd-ids174227%_))
                                                   _%exprs174267%_
                                                   _%body174269%_)
                                                  (_%compile-values174122%_
                                                   _%hd-ids174227%_
                                                   _%exprs174267%_
                                                   _%body174269%_)))
                                            (_%$%$E174130174152%_)))
                                      (_%$%$E174130174152%_)))
                                (_%$%$E174130174152%_)))
                          (_%$%$E174130174152%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e174127%_))
                (let* ((_%$%$tgt174140174275%_
                        (let () (declare (not safe)) (__AST-e _%$e174127%_)))
                       (_%$%$hd174141174278%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt174140174275%_)))
                       (_%$%$tl174142174281%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt174140174275%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl174142174281%_))
                      (let* ((_%$%$tgt174143174285%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl174142174281%_)))
                             (_%$%$hd174144174288%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt174143174285%_)))
                             (_%$%$tl174145174291%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt174143174285%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$hd174144174288%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl174145174291%_))
                                (let* ((_%$%$tgt174146174295%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl174145174291%_)))
                                       (_%$%$hd174147174298%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt174146174295%_)))
                                       (_%$%$tl174148174301%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt174146174295%_)))
                                       (_%body174305%_ _%$%$hd174147174298%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl174148174301%_))
                                              '())
                                      (__compile _%body174305%_)
                                      (_%$%$E174129174272%_)))
                                (_%$%$E174129174272%_))
                            (_%$%$E174129174272%_)))
                      (_%$%$E174129174272%_)))
                (_%$%$E174129174272%_))))))
    (define __compile-let-values%
      (lambda (_%stx173932%_)
        (letrec ((_%compile-simple173934%_
                  (lambda (_%hd-ids174116%_ _%exprs174117%_ _%body174118%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp175306
                                        (map __compile-head-id
                                             _%hd-ids174116%_)))
                                   (declare (not safe))
                                   (##map list __tmp175306 _%exprs174117%_))
                                 (cons _%body174118%_ '())))
                     _%stx173932%_)))
                 (_%compile-values173935%_
                  (lambda (_%hd-ids174031%_ _%exprs174032%_ _%body174033%_)
                    (let _%lp174035%_ ((_%rest174037%_ _%hd-ids174031%_)
                                       (_%exprs174038%_ _%exprs174032%_)
                                       (_%bind174039%_ '())
                                       (_%post174040%_ '()))
                      (let* ((_%$%rest174041174055%_ _%rest174037%_)
                             (_%$%else174044174063%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind174039%_)
                                             (cons (_%compile-post173936%_
                                                    _%post174040%_
                                                    _%body174033%_)
                                                   '())))
                                 _%stx173932%_))))
                        (let ((_%$%K174049174099%_
                               (lambda (_%rest174096%_ _%id174097%_)
                                 (_%lp174035%_
                                  _%rest174096%_
                                  (cdr _%exprs174038%_)
                                  (cons (cons (__compile-head-id _%id174097%_)
                                              (cons (car _%exprs174038%_) '()))
                                        _%bind174039%_)
                                  _%post174040%_)))
                              (_%$%K174046174081%_
                               (lambda (_%rest174067%_ _%hd174068%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd174068%_))
                                     (_%lp174035%_
                                      _%rest174067%_
                                      (cdr _%exprs174038%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd174068%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs174038%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind174039%_)
                                      _%post174040%_)
                                     (if (list? _%hd174068%_)
                                         (let* ((_%len174072%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd174068%_)))
                                                (_%tmp174074%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp174035%_
                                            _%rest174067%_
                                            (cdr _%exprs174038%_)
                                            (cons (cons _%tmp174074%_
                                                        (cons (car _%exprs174038%_)
                                                              '()))
                                                  _%bind174039%_)
                                            (cons (cons _%tmp174074%_
                                                        (cons _%len174072%_
                                                              (let ((__tmp175308
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id174077%_ _%k174078%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id174077%_))
                                   (cons (__SRC__0 _%id174077%_) _%k174078%_)
                                   '#f)))
                            (__tmp175307
                             (let ()
                               (declare (not safe))
                               (##iota _%len174072%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp175308 _%hd174068%_ __tmp175307))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post174040%_)))
                                         (__compile-error__%
                                          _%stx173932%_
                                          _%hd174068%_))))))
                          (if (pair? _%$%rest174041174055%_)
                              (let ((_%$%tl174051174104%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest174041174055%_)))
                                    (_%$%hd174050174102%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest174041174055%_))))
                                (if (pair? _%$%hd174050174102%_)
                                    (let ((_%$%tl174053174109%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd174050174102%_)))
                                          (_%$%hd174052174107%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd174050174102%_))))
                                      (if (null? _%$%tl174053174109%_)
                                          (let ((_%id174112%_
                                                 _%$%hd174052174107%_)
                                                (_%rest174114%_
                                                 _%$%tl174051174104%_))
                                            (_%$%K174049174099%_
                                             _%rest174114%_
                                             _%id174112%_))
                                          (let ((_%hd174089%_
                                                 _%$%hd174050174102%_)
                                                (_%rest174091%_
                                                 _%$%tl174051174104%_))
                                            (_%$%K174046174081%_
                                             _%rest174091%_
                                             _%hd174089%_))))
                                    (let ((_%hd174089%_ _%$%hd174050174102%_)
                                          (_%rest174091%_
                                           _%$%tl174051174104%_))
                                      (_%$%K174046174081%_
                                       _%rest174091%_
                                       _%hd174089%_))))
                              (_%$%else174044174063%_)))))))
                 (_%compile-post173936%_
                  (lambda (_%post173938%_ _%body173939%_)
                    (let _%lp173941%_ ((_%rest173943%_ _%post173938%_)
                                       (_%check173944%_ '())
                                       (_%bind173945%_ '()))
                      (let* ((_%$%rest173946173958%_ _%rest173943%_)
                             (_%$%else173948173966%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp175309
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind173945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body173939%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx173932%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp175309
                                          _%check173944%_)))
                                 _%stx173932%_)))
                             (_%$%K173950174005%_
                              (lambda (_%rest173969%_
                                       _%init173970%_
                                       _%len173971%_
                                       _%tmp173972%_)
                                (_%lp173941%_
                                 _%rest173969%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp173972%_
                                                    (cons _%len173971%_ '())))
                                        _%stx173932%_)
                                       _%check173944%_)
                                 (let ((__tmp175310
                                        (lambda (_%hd173974%_ _%r173975%_)
                                          (let* ((_%$%hd173976173983%_
                                                  _%hd173974%_)
                                                 (_%$%E173978173987%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd173976173983%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K173979173993%_
                                                  (lambda (_%k173990%_
                                                           _%id173991%_)
                                                    (cons (cons _%id173991%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp173972%_
                                          (cons _%k173990%_ '())))
                              '()))
                  _%r173975%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd173976173983%_)
                                                (let ((_%$%hd173980173996%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd173976173983%_)))
                                                      (_%$%tl173981173998%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd173976173983%_))))
                                                  (let* ((_%id174001%_
                                                          _%$%hd173980173996%_)
                                                         (_%k174003%_
                                                          _%$%tl173981173998%_))
                                                    (_%$%K173979173993%_
                                                     _%k174003%_
                                                     _%id174001%_)))
                                                (_%$%E173978173987%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp175310
                                    _%bind173945%_
                                    _%init173970%_))))))
                        (if (pair? _%$%rest173946173958%_)
                            (let ((_%$%hd173951174008%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest173946173958%_)))
                                  (_%$%tl173952174010%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest173946173958%_))))
                              (if (pair? _%$%hd173951174008%_)
                                  (let ((_%$%hd173953174013%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd173951174008%_)))
                                        (_%$%tl173954174015%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd173951174008%_))))
                                    (let ((_%tmp174018%_ _%$%hd173953174013%_))
                                      (if (pair? _%$%tl173954174015%_)
                                          (let ((_%$%hd173955174020%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl173954174015%_)))
                                                (_%$%tl173956174022%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl173954174015%_))))
                                            (let* ((_%len174025%_
                                                    _%$%hd173955174020%_)
                                                   (_%init174027%_
                                                    _%$%tl173956174022%_)
                                                   (_%rest174029%_
                                                    _%$%tl173952174010%_))
                                              (_%$%K173950174005%_
                                               _%rest174029%_
                                               _%init174027%_
                                               _%len174025%_
                                               _%tmp174018%_)))
                                          (_%$%else173948173966%_))))
                                  (_%$%else173948173966%_)))
                            (_%$%else173948173966%_)))))))
          (__compile-let-form
           _%stx173932%_
           _%compile-simple173934%_
           _%compile-values173935%_))))
    (define __compile-letrec-values%
      (lambda (_%stx173729%_)
        (letrec ((_%compile-simple173731%_
                  (lambda (_%hd-ids173928%_ _%exprs173929%_ _%body173930%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp175311
                                        (map __compile-head-id
                                             _%hd-ids173928%_)))
                                   (declare (not safe))
                                   (##map list __tmp175311 _%exprs173929%_))
                                 (cons _%body173930%_ '())))
                     _%stx173729%_)))
                 (_%compile-values173732%_
                  (lambda (_%hd-ids173839%_ _%exprs173840%_ _%body173841%_)
                    (let _%lp173843%_ ((_%rest173845%_ _%hd-ids173839%_)
                                       (_%exprs173846%_ _%exprs173840%_)
                                       (_%pre173847%_ '())
                                       (_%bind173848%_ '())
                                       (_%post173849%_ '()))
                      (let* ((_%$%rest173850173864%_ _%rest173845%_)
                             (_%$%else173853173872%_
                              (lambda ()
                                (_%compile-inner173733%_
                                 _%pre173847%_
                                 _%bind173848%_
                                 _%post173849%_
                                 _%body173841%_))))
                        (let ((_%$%K173858173911%_
                               (lambda (_%rest173908%_ _%id173909%_)
                                 (_%lp173843%_
                                  _%rest173908%_
                                  (cdr _%exprs173846%_)
                                  _%pre173847%_
                                  (cons (cons (__compile-head-id _%id173909%_)
                                              (cons (car _%exprs173846%_) '()))
                                        _%bind173848%_)
                                  _%post173849%_)))
                              (_%$%K173855173893%_
                               (lambda (_%rest173876%_ _%hd173877%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd173877%_))
                                     (_%lp173843%_
                                      _%rest173876%_
                                      (cdr _%exprs173846%_)
                                      _%pre173847%_
                                      (cons (cons (__compile-head-id
                                                   _%hd173877%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs173846%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind173848%_)
                                      _%post173849%_)
                                     (if (list? _%hd173877%_)
                                         (let* ((_%len173881%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd173877%_)))
                                                (_%tmp173883%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp173843%_
                                            _%rest173876%_
                                            (cdr _%exprs173846%_)
                                            (let ((__tmp175312
                                                   (lambda (_%id173886%_
                                                            _%r173887%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id173886%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id173886%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r173887%_)
                 _%r173887%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp175312
                                               _%pre173847%_
                                               _%hd173877%_))
                                            (cons (cons _%tmp173883%_
                                                        (cons (car _%exprs173846%_)
                                                              '()))
                                                  _%bind173848%_)
                                            (cons (cons _%tmp173883%_
                                                        (cons _%len173881%_
                                                              (let ((__tmp175314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id173889%_ _%k173890%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id173889%_))
                                   (cons (__SRC__0 _%id173889%_) _%k173890%_)
                                   '#f)))
                            (__tmp175313
                             (let ()
                               (declare (not safe))
                               (##iota _%len173881%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp175314 _%hd173877%_ __tmp175313))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post173849%_)))
                                         (__compile-error__%
                                          _%stx173729%_
                                          _%hd173877%_))))))
                          (if (pair? _%$%rest173850173864%_)
                              (let ((_%$%tl173860173916%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest173850173864%_)))
                                    (_%$%hd173859173914%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest173850173864%_))))
                                (if (pair? _%$%hd173859173914%_)
                                    (let ((_%$%tl173862173921%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd173859173914%_)))
                                          (_%$%hd173861173919%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd173859173914%_))))
                                      (if (null? _%$%tl173862173921%_)
                                          (let ((_%id173924%_
                                                 _%$%hd173861173919%_)
                                                (_%rest173926%_
                                                 _%$%tl173860173916%_))
                                            (_%$%K173858173911%_
                                             _%rest173926%_
                                             _%id173924%_))
                                          (let ((_%hd173901%_
                                                 _%$%hd173859173914%_)
                                                (_%rest173903%_
                                                 _%$%tl173860173916%_))
                                            (_%$%K173855173893%_
                                             _%rest173903%_
                                             _%hd173901%_))))
                                    (let ((_%hd173901%_ _%$%hd173859173914%_)
                                          (_%rest173903%_
                                           _%$%tl173860173916%_))
                                      (_%$%K173855173893%_
                                       _%rest173903%_
                                       _%hd173901%_))))
                              (_%$%else173853173872%_)))))))
                 (_%compile-inner173733%_
                  (lambda (_%pre173834%_
                           _%bind173835%_
                           _%post173836%_
                           _%body173837%_)
                    (if (null? _%pre173834%_)
                        (_%compile-bind173734%_
                         _%bind173835%_
                         _%post173836%_
                         _%body173837%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre173834%_)
                                     (cons (_%compile-bind173734%_
                                            _%bind173835%_
                                            _%post173836%_
                                            _%body173837%_)
                                           '())))
                         _%stx173729%_))))
                 (_%compile-bind173734%_
                  (lambda (_%bind173830%_ _%post173831%_ _%body173832%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind173830%_)
                                 (cons (_%compile-post173735%_
                                        _%post173831%_
                                        _%body173832%_)
                                       '())))
                     _%stx173729%_)))
                 (_%compile-post173735%_
                  (lambda (_%post173737%_ _%body173738%_)
                    (let _%lp173740%_ ((_%rest173742%_ _%post173737%_)
                                       (_%check173743%_ '())
                                       (_%bind173744%_ '()))
                      (let* ((_%$%rest173745173757%_ _%rest173742%_)
                             (_%$%else173747173765%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp175315
                                              (let ((__tmp175316
                                                     (cons _%body173738%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp175316
                                                 _%bind173744%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp175315
                                          _%check173743%_)))
                                 _%stx173729%_)))
                             (_%$%K173749173804%_
                              (lambda (_%rest173768%_
                                       _%init173769%_
                                       _%len173770%_
                                       _%tmp173771%_)
                                (_%lp173740%_
                                 _%rest173768%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp173771%_
                                                    (cons _%len173770%_ '())))
                                        _%stx173729%_)
                                       _%check173743%_)
                                 (let ((__tmp175317
                                        (lambda (_%hd173773%_ _%r173774%_)
                                          (let* ((_%$%hd173775173782%_
                                                  _%hd173773%_)
                                                 (_%$%E173777173786%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd173775173782%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K173778173792%_
                                                  (lambda (_%k173789%_
                                                           _%id173790%_)
                                                    (cons (cons 'set!
                                                                (cons _%id173790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp173771%_
                                                (cons _%k173789%_ '())))
                                    '())))
                  _%r173774%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd173775173782%_)
                                                (let ((_%$%hd173779173795%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd173775173782%_)))
                                                      (_%$%tl173780173797%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd173775173782%_))))
                                                  (let* ((_%id173800%_
                                                          _%$%hd173779173795%_)
                                                         (_%k173802%_
                                                          _%$%tl173780173797%_))
                                                    (_%$%K173778173792%_
                                                     _%k173802%_
                                                     _%id173800%_)))
                                                (_%$%E173777173786%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp175317
                                    _%bind173744%_
                                    _%init173769%_))))))
                        (if (pair? _%$%rest173745173757%_)
                            (let ((_%$%hd173750173807%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest173745173757%_)))
                                  (_%$%tl173751173809%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest173745173757%_))))
                              (if (pair? _%$%hd173750173807%_)
                                  (let ((_%$%hd173752173812%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd173750173807%_)))
                                        (_%$%tl173753173814%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd173750173807%_))))
                                    (let ((_%tmp173817%_ _%$%hd173752173812%_))
                                      (if (pair? _%$%tl173753173814%_)
                                          (let ((_%$%hd173754173819%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl173753173814%_)))
                                                (_%$%tl173755173821%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl173753173814%_))))
                                            (let* ((_%len173824%_
                                                    _%$%hd173754173819%_)
                                                   (_%init173826%_
                                                    _%$%tl173755173821%_)
                                                   (_%rest173828%_
                                                    _%$%tl173751173809%_))
                                              (_%$%K173749173804%_
                                               _%rest173828%_
                                               _%init173826%_
                                               _%len173824%_
                                               _%tmp173817%_)))
                                          (_%$%else173747173765%_))))
                                  (_%$%else173747173765%_)))
                            (_%$%else173747173765%_)))))))
          (__compile-let-form
           _%stx173729%_
           _%compile-simple173731%_
           _%compile-values173732%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx173480%_)
        (letrec ((_%compile-simple173482%_
                  (lambda (_%hd-ids173725%_ _%exprs173726%_ _%body173727%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp175318
                                        (map __compile-head-id
                                             _%hd-ids173725%_)))
                                   (declare (not safe))
                                   (##map list __tmp175318 _%exprs173726%_))
                                 (cons _%body173727%_ '())))
                     _%stx173480%_)))
                 (_%compile-values173483%_
                  (lambda (_%hd-ids173632%_ _%exprs173633%_ _%body173634%_)
                    (let _%lp173636%_ ((_%rest173638%_ _%hd-ids173632%_)
                                       (_%exprs173639%_ _%exprs173633%_)
                                       (_%bind173640%_ '())
                                       (_%post173641%_ '()))
                      (let* ((_%$%rest173642173656%_ _%rest173638%_)
                             (_%$%else173645173664%_
                              (lambda ()
                                (_%compile-bind173484%_
                                 _%bind173640%_
                                 _%post173641%_
                                 _%body173634%_))))
                        (let ((_%$%K173650173708%_
                               (lambda (_%rest173703%_ _%hd173704%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd173704%_))
                                     (let ((_%id173706%_
                                            (__SRC__0 _%hd173704%_)))
                                       (_%lp173636%_
                                        _%rest173703%_
                                        (cdr _%exprs173639%_)
                                        (cons (cons _%id173706%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind173640%_)
                                        (cons (cons _%id173706%_
                                                    (cons (car _%exprs173639%_)
                                                          '()))
                                              _%post173641%_)))
                                     (_%lp173636%_
                                      _%rest173703%_
                                      (cdr _%exprs173639%_)
                                      _%bind173640%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs173639%_)
                                                        '()))
                                            _%post173641%_)))))
                              (_%$%K173647173688%_
                               (lambda (_%rest173668%_ _%hd173669%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd173669%_))
                                     (let ((_%id173672%_
                                            (__SRC__0 _%hd173669%_)))
                                       (_%lp173636%_
                                        _%rest173668%_
                                        (cdr _%exprs173639%_)
                                        (cons (cons _%id173672%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind173640%_)
                                        (cons (cons _%id173672%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs173639%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post173641%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd173669%_))
                                         (if (list? _%hd173669%_)
                                             (let* ((_%len173676%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd173669%_)))
                                                    (_%tmp173678%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp173636%_
                                                _%rest173668%_
                                                (cdr _%exprs173639%_)
                                                (let ((__tmp175319
                                                       (lambda (_%id173681%_
                                                                _%r173682%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id173681%_))
                     (cons (cons (__SRC__0 _%id173681%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r173682%_)
                     _%r173682%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp175319
                                                   _%bind173640%_
                                                   _%hd173669%_))
                                                (cons (cons _%tmp173678%_
                                                            (cons (car _%exprs173639%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len173676%_
                                (let ((__tmp175321
                                       (lambda (_%id173684%_ _%k173685%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id173684%_))
                                             (cons (__SRC__0 _%id173684%_)
                                                   _%k173685%_)
                                             '#f)))
                                      (__tmp175320
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len173676%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp175321
                                   _%hd173669%_
                                   __tmp175320)))))
              _%post173641%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx173480%_
                                              _%hd173669%_))
                                         (_%lp173636%_
                                          _%rest173668%_
                                          (cdr _%exprs173639%_)
                                          _%bind173640%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs173639%_)
                                                            '()))
                                                _%post173641%_)))))))
                          (if (pair? _%$%rest173642173656%_)
                              (let ((_%$%tl173652173713%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest173642173656%_)))
                                    (_%$%hd173651173711%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest173642173656%_))))
                                (if (pair? _%$%hd173651173711%_)
                                    (let ((_%$%tl173654173718%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd173651173711%_)))
                                          (_%$%hd173653173716%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd173651173711%_))))
                                      (if (null? _%$%tl173654173718%_)
                                          (let ((_%hd173721%_
                                                 _%$%hd173653173716%_)
                                                (_%rest173723%_
                                                 _%$%tl173652173713%_))
                                            (_%$%K173650173708%_
                                             _%rest173723%_
                                             _%hd173721%_))
                                          (let ((_%hd173696%_
                                                 _%$%hd173651173711%_)
                                                (_%rest173698%_
                                                 _%$%tl173652173713%_))
                                            (_%$%K173647173688%_
                                             _%rest173698%_
                                             _%hd173696%_))))
                                    (let ((_%hd173696%_ _%$%hd173651173711%_)
                                          (_%rest173698%_
                                           _%$%tl173652173713%_))
                                      (_%$%K173647173688%_
                                       _%rest173698%_
                                       _%hd173696%_))))
                              (_%$%else173645173664%_)))))))
                 (_%compile-bind173484%_
                  (lambda (_%bind173628%_ _%post173629%_ _%body173630%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind173628%_)
                                 (cons (_%compile-post173485%_
                                        _%post173629%_
                                        _%body173630%_)
                                       '())))
                     _%stx173480%_)))
                 (_%compile-post173485%_
                  (lambda (_%post173487%_ _%body173488%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp175322
                                  (let ((__tmp175324
                                         (lambda (_%hd173490%_ _%r173491%_)
                                           (let* ((_%$%hd173492173515%_
                                                   _%hd173490%_)
                                                  (_%$%E173496173519%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%$%hd173492173515%_
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
                                             (let ((_%$%K173509173613%_
                                                    (lambda (_%expr173611%_)
                                                      (cons _%expr173611%_
                                                            _%r173491%_)))
                                                   (_%$%K173504173591%_
                                                    (lambda (_%expr173588%_
                                                             _%id173589%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id173589%_ (cons _%expr173588%_ '())))
                     _%stx173480%_)
                    _%r173491%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%K173497173558%_
                                                    (lambda (_%init173523%_
                                                             _%len173524%_
                                                             _%expr173525%_
                                                             _%tmp173526%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp173526%_
                                             (cons _%expr173525%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp173526%_
                                                    (cons _%len173524%_ '())))
                                        _%stx173480%_)
                                       (let ((__tmp175325
                                              (map (lambda (_%hd173528%_)
                                                     (let* ((_%$%hd173529173536%_
                                                             _%hd173528%_)
                                                            (_%$%E173531173540%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%$%hd173529173536%_
                                '([id . k])))
                       '#!void))
                    (_%$%K173532173546%_
                     (lambda (_%k173543%_ _%id173544%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id173544%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp173526%_
                                                      (cons _%k173543%_ '())))
                                          '())))
                        _%stx173480%_))))
               (if (pair? _%$%hd173529173536%_)
                   (let ((_%$%hd173533173549%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%hd173529173536%_)))
                         (_%$%tl173534173551%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%hd173529173536%_))))
                     (let* ((_%id173554%_ _%$%hd173533173549%_)
                            (_%k173556%_ _%$%tl173534173551%_))
                       (_%$%K173532173546%_ _%k173556%_ _%id173554%_)))
                   (_%$%E173531173540%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init173523%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp175325)))))
                     _%stx173480%_)
                    _%r173491%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match175180175181%_
                                                       (lambda (_%$%hd173498173561%_
                                                                _%$%tl173499173563%_
                                                                _%$%hd173500173568%_
                                                                _%$%tl173501173570%_)
                                                         (let ((_%tmp173566%_
                                                                _%$%hd173498173561%_)
                                                               (_%expr173573%_
                                                                _%$%hd173500173568%_))
                                                           (_%$%E173496173519%_))))
                                                      (_%__match175174175175%_
                                                       (lambda (_%$%hd173498173561%_
                                                                _%$%tl173499173563%_)
                                                         (let ((_%tmp173566%_
                                                                _%$%hd173498173561%_))
                                                           (_%$%E173496173519%_)))))
                                                 (if (pair? _%$%hd173492173515%_)
                                                     (let ((_%$%tl173511173618%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%hd173492173515%_)))
                                                           (_%$%hd173510173616%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%hd173492173515%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%$%hd173510173616%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%$%tl173511173618%_)
                       (let ((_%$%tl173513173623%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%tl173511173618%_)))
                             (_%$%hd173512173621%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%tl173511173618%_))))
                         (if (null? _%$%tl173513173623%_)
                             (let ((_%expr173626%_ _%$%hd173512173621%_))
                               (_%$%K173509173613%_ _%expr173626%_))
                             (if (pair? _%$%tl173513173623%_)
                                 (let ((_%$%tl173503173577%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl173513173623%_)))
                                       (_%$%hd173502173575%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%tl173513173623%_))))
                                   (let ((_%tmp173566%_ _%$%hd173510173616%_)
                                         (_%expr173573%_ _%$%hd173512173621%_)
                                         (_%len173580%_ _%$%hd173502173575%_)
                                         (_%init173582%_ _%$%tl173503173577%_))
                                     (_%$%K173497173558%_
                                      _%init173582%_
                                      _%len173580%_
                                      _%expr173573%_
                                      _%tmp173566%_)))
                                 (_%__match175180175181%_
                                  _%$%hd173510173616%_
                                  _%$%tl173511173618%_
                                  _%$%hd173512173621%_
                                  _%$%tl173513173623%_))))
                       (_%__match175174175175%_
                        _%$%hd173510173616%_
                        _%$%tl173511173618%_))
                   (if (pair? _%$%tl173511173618%_)
                       (let ((_%$%tl173508173603%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%tl173511173618%_)))
                             (_%$%hd173507173601%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%tl173511173618%_))))
                         (if (null? _%$%tl173508173603%_)
                             (let ((_%id173599%_ _%$%hd173510173616%_)
                                   (_%expr173606%_ _%$%hd173507173601%_))
                               (_%$%K173504173591%_
                                _%expr173606%_
                                _%id173599%_))
                             (if (pair? _%$%tl173508173603%_)
                                 (let ((_%$%tl173503173577%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl173508173603%_)))
                                       (_%$%hd173502173575%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%tl173508173603%_))))
                                   (let ((_%tmp173566%_ _%$%hd173510173616%_)
                                         (_%expr173573%_ _%$%hd173507173601%_)
                                         (_%len173580%_ _%$%hd173502173575%_)
                                         (_%init173582%_ _%$%tl173503173577%_))
                                     (_%$%K173497173558%_
                                      _%init173582%_
                                      _%len173580%_
                                      _%expr173573%_
                                      _%tmp173566%_)))
                                 (_%__match175180175181%_
                                  _%$%hd173510173616%_
                                  _%$%tl173511173618%_
                                  _%$%hd173507173601%_
                                  _%$%tl173508173603%_))))
                       (_%__match175174175175%_
                        _%$%hd173510173616%_
                        _%$%tl173511173618%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E173496173519%_)))))))
                                        (__tmp175323 (list _%body173488%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp175324
                                     __tmp175323
                                     _%post173487%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp175322)))
                     _%stx173480%_))))
          (__compile-let-form
           _%stx173480%_
           _%compile-simple173482%_
           _%compile-values173483%_))))
    (define __compile-call%
      (lambda (_%stx173440%_)
        (let* ((_%$e173442%_ _%stx173440%_)
               (_%$%$E173444173453%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e173442%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e173442%_))
              (let* ((_%$%$tgt173445173456%_
                      (let () (declare (not safe)) (__AST-e _%$e173442%_)))
                     (_%$%$hd173446173459%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt173445173456%_)))
                     (_%$%$tl173447173462%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt173445173456%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl173447173462%_))
                    (let* ((_%$%$tgt173448173466%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl173447173462%_)))
                           (_%$%$hd173449173469%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt173448173466%_)))
                           (_%$%$tl173450173472%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt173448173466%_)))
                           (_%rator173476%_ _%$%$hd173449173469%_)
                           (_%rands173478%_ _%$%$tl173450173472%_))
                      (__SRC__%
                       (cons (__compile _%rator173476%_)
                             (map __compile _%rands173478%_))
                       _%stx173440%_))
                    (_%$%$E173444173453%_)))
              (_%$%$E173444173453%_)))))
    (define __compile-ref%
      (lambda (_%stx173402%_)
        (let* ((_%$e173404%_ _%stx173402%_)
               (_%$%$E173406173415%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e173404%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e173404%_))
              (let* ((_%$%$tgt173407173418%_
                      (let () (declare (not safe)) (__AST-e _%$e173404%_)))
                     (_%$%$hd173408173421%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt173407173418%_)))
                     (_%$%$tl173409173424%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt173407173418%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl173409173424%_))
                    (let* ((_%$%$tgt173410173428%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl173409173424%_)))
                           (_%$%$hd173411173431%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt173410173428%_)))
                           (_%$%$tl173412173434%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt173410173428%_)))
                           (_%id173438%_ _%$%$hd173411173431%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl173412173434%_))
                                  '())
                          (__SRC__% _%id173438%_ _%stx173402%_)
                          (_%$%$E173406173415%_)))
                    (_%$%$E173406173415%_)))
              (_%$%$E173406173415%_)))))
    (define __compile-setq%
      (lambda (_%stx173349%_)
        (let* ((_%$e173351%_ _%stx173349%_)
               (_%$%$E173353173365%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e173351%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e173351%_))
              (let* ((_%$%$tgt173354173368%_
                      (let () (declare (not safe)) (__AST-e _%$e173351%_)))
                     (_%$%$hd173355173371%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt173354173368%_)))
                     (_%$%$tl173356173374%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt173354173368%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl173356173374%_))
                    (let* ((_%$%$tgt173357173378%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl173356173374%_)))
                           (_%$%$hd173358173381%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt173357173378%_)))
                           (_%$%$tl173359173384%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt173357173378%_)))
                           (_%id173388%_ _%$%$hd173358173381%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl173359173384%_))
                          (let* ((_%$%$tgt173360173390%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl173359173384%_)))
                                 (_%$%$hd173361173393%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt173360173390%_)))
                                 (_%$%$tl173362173396%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt173360173390%_)))
                                 (_%expr173400%_ _%$%$hd173361173393%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl173362173396%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id173388%_
                                              _%stx173349%_)
                                             (cons (__compile _%expr173400%_)
                                                   '())))
                                 _%stx173349%_)
                                (_%$%$E173353173365%_)))
                          (_%$%$E173353173365%_)))
                    (_%$%$E173353173365%_)))
              (_%$%$E173353173365%_)))))
    (define __compile-if%
      (lambda (_%stx173281%_)
        (let* ((_%$e173283%_ _%stx173281%_)
               (_%$%$E173285173300%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e173283%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e173283%_))
              (let* ((_%$%$tgt173286173303%_
                      (let () (declare (not safe)) (__AST-e _%$e173283%_)))
                     (_%$%$hd173287173306%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt173286173303%_)))
                     (_%$%$tl173288173309%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt173286173303%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl173288173309%_))
                    (let* ((_%$%$tgt173289173313%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl173288173309%_)))
                           (_%$%$hd173290173316%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt173289173313%_)))
                           (_%$%$tl173291173319%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt173289173313%_)))
                           (_%p173323%_ _%$%$hd173290173316%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl173291173319%_))
                          (let* ((_%$%$tgt173292173325%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl173291173319%_)))
                                 (_%$%$hd173293173328%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt173292173325%_)))
                                 (_%$%$tl173294173331%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt173292173325%_)))
                                 (_%t173335%_ _%$%$hd173293173328%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl173294173331%_))
                                (let* ((_%$%$tgt173295173337%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl173294173331%_)))
                                       (_%$%$hd173296173340%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt173295173337%_)))
                                       (_%$%$tl173297173343%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt173295173337%_)))
                                       (_%f173347%_ _%$%$hd173296173340%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl173297173343%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p173323%_)
                                                   (cons (__compile
                                                          _%t173335%_)
                                                         (cons (__compile
                                                                _%f173347%_)
                                                               '()))))
                                       _%stx173281%_)
                                      (_%$%$E173285173300%_)))
                                (_%$%$E173285173300%_)))
                          (_%$%$E173285173300%_)))
                    (_%$%$E173285173300%_)))
              (_%$%$E173285173300%_)))))
    (define __compile-quote%
      (lambda (_%stx173243%_)
        (let* ((_%$e173245%_ _%stx173243%_)
               (_%$%$E173247173256%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e173245%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e173245%_))
              (let* ((_%$%$tgt173248173259%_
                      (let () (declare (not safe)) (__AST-e _%$e173245%_)))
                     (_%$%$hd173249173262%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt173248173259%_)))
                     (_%$%$tl173250173265%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt173248173259%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl173250173265%_))
                    (let* ((_%$%$tgt173251173269%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl173250173265%_)))
                           (_%$%$hd173252173272%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt173251173269%_)))
                           (_%$%$tl173253173275%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt173251173269%_)))
                           (_%e173279%_ _%$%$hd173252173272%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl173253173275%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e173279%_))
                                       '()))
                           _%stx173243%_)
                          (_%$%$E173247173256%_)))
                    (_%$%$E173247173256%_)))
              (_%$%$E173247173256%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx173205%_)
        (let* ((_%$e173207%_ _%stx173205%_)
               (_%$%$E173209173218%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e173207%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e173207%_))
              (let* ((_%$%$tgt173210173221%_
                      (let () (declare (not safe)) (__AST-e _%$e173207%_)))
                     (_%$%$hd173211173224%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt173210173221%_)))
                     (_%$%$tl173212173227%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt173210173221%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl173212173227%_))
                    (let* ((_%$%$tgt173213173231%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl173212173227%_)))
                           (_%$%$hd173214173234%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt173213173231%_)))
                           (_%$%$tl173215173237%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt173213173231%_)))
                           (_%e173241%_ _%$%$hd173214173234%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl173215173237%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e173241%_ '()))
                           _%stx173205%_)
                          (_%$%$E173209173218%_)))
                    (_%$%$E173209173218%_)))
              (_%$%$E173209173218%_)))))
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
