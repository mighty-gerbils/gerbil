(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1712093476)
  (begin
    (define __syntax::t
      (let ((__tmp111281 (list)) (__tmp111280 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp111281
         '(e id)
         __tmp111280
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args111085%_
        (apply make-instance __syntax::t _%$args111085%_)))
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
      (let ((__tmp111283 (list __syntax::t))
            (__tmp111282 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp111283
         '()
         __tmp111282
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args111082%_
        (apply make-instance __core-form::t _%$args111082%_)))
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
      (let ((__tmp111285 (list __core-form::t))
            (__tmp111284 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp111285
         '()
         __tmp111284
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args111079%_
        (apply make-instance __core-expression::t _%$args111079%_)))
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
      (let ((__tmp111287 (list __core-form::t))
            (__tmp111286 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp111287
         '()
         __tmp111286
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args111076%_
        (apply make-instance __core-special-form::t _%$args111076%_)))
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
      (lambda (_%id111074%_)
        (let ((__tmp111288
               (let () (declare (not safe)) (__AST-e _%id111074%_))))
          (declare (not safe))
          (hash-get __core __tmp111288))))
    (define __core-bound-id?__%
      (lambda (_%id111057%_ _%is?111058%_)
        (let ((_%$e111060%_
               (let () (declare (not safe)) (__core-resolve _%id111057%_))))
          (if _%$e111060%_ (_%is?111058%_ _%$e111060%_) (let () '#f)))))
    (define __core-bound-id?__0
      (lambda (_%id111067%_)
        (let ((_%is?111069%_ true))
          (declare (not safe))
          (__core-bound-id?__% _%id111067%_ _%is?111069%_))))
    (define __core-bound-id?
      (lambda _g111290_
        (let ((_g111289_ (let () (declare (not safe)) (##length _g111290_))))
          (cond ((let () (declare (not safe)) (##fx= _g111289_ 1))
                 (apply (lambda (_%id111067%_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _%id111067%_)))
                        _g111290_))
                ((let () (declare (not safe)) (##fx= _g111289_ 2))
                 (apply (lambda (_%id111071%_ _%is?111072%_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _%id111071%_ _%is?111072%_)))
                        _g111290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g111290_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id111040%_ _%e111041%_ _%make111042%_)
        (let ((__tmp111291
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e111041%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e111041%_
                   (_%make111042%_ _%e111041%_ _%id111040%_))))
          (declare (not safe))
          (hash-put! __core _%id111040%_ __tmp111291))))
    (define __core-bind-syntax!__0
      (lambda (_%id111047%_ _%e111048%_)
        (let ((_%make111050%_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _%id111047%_ _%e111048%_ _%make111050%_))))
    (define __core-bind-syntax!
      (lambda _g111293_
        (let ((_g111292_ (let () (declare (not safe)) (##length _g111293_))))
          (cond ((let () (declare (not safe)) (##fx= _g111292_ 2))
                 (apply (lambda (_%id111047%_ _%e111048%_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _%id111047%_ _%e111048%_)))
                        _g111293_))
                ((let () (declare (not safe)) (##fx= _g111292_ 3))
                 (apply (lambda (_%id111052%_ _%e111053%_ _%make111054%_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _%id111052%_
                             _%e111053%_
                             _%make111054%_)))
                        _g111293_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g111293_))))))
    (define __SRC__%
      (lambda (_%e111020%_ _%src-stx111021%_)
        (if (or (let () (declare (not safe)) (pair? _%e111020%_))
                (let () (declare (not safe)) (symbol? _%e111020%_)))
            (let ()
              (let ((__tmp111294
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _%src-stx111021%_
                            'gerbil#AST::t))
                         (let ((__tmp111295
                                (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx111021%_))))
                           (declare (not safe))
                           (__locat __tmp111295))
                         '#f)))
                (declare (not safe))
                (##make-source _%e111020%_ __tmp111294)))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e111020%_ 'gerbil#AST::t))
                (let ()
                  (let ((__tmp111298
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref _%e111020%_ '1 '#f '#f)))
                        (__tmp111296
                         (let ((__tmp111297
                                (let ()
                                  (declare (not safe))
                                  (__AST-source _%e111020%_))))
                           (declare (not safe))
                           (__locat __tmp111297))))
                    (declare (not safe))
                    (##make-source __tmp111298 __tmp111296)))
                (let ()
                  (let ()
                    (declare (not safe))
                    (error '"BUG! Cannot sourcify object" _%e111020%_)))))))
    (define __SRC__0
      (lambda (_%e111032%_)
        (let ((_%src-stx111034%_ '#f))
          (declare (not safe))
          (__SRC__% _%e111032%_ _%src-stx111034%_))))
    (define __SRC
      (lambda _g111300_
        (let ((_g111299_ (let () (declare (not safe)) (##length _g111300_))))
          (cond ((let () (declare (not safe)) (##fx= _g111299_ 1))
                 (apply (lambda (_%e111032%_)
                          (let () (declare (not safe)) (__SRC__0 _%e111032%_)))
                        _g111300_))
                ((let () (declare (not safe)) (##fx= _g111299_ 2))
                 (apply (lambda (_%e111036%_ _%src-stx111037%_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _%e111036%_ _%src-stx111037%_)))
                        _g111300_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g111300_))))))
    (define __locat
      (lambda (_%loc111017%_)
        (if (let () (declare (not safe)) (##locat? _%loc111017%_))
            _%loc111017%_
            '#f)))
    (define __check-values
      (lambda (_%obj111012%_ _%k111013%_)
        (let ((_%count111015%_
               (if (let () (declare (not safe)) (##values? _%obj111012%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj111012%_))
                   '1)))
          (if (fx= _%count111015%_ _%k111013%_)
              '#!void
              (let ((__tmp111302
                     (if (fx< _%count111015%_ _%k111013%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp111301
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj111012%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj111012%_))
                         _%obj111012%_)))
                (declare (not safe))
                (error __tmp111302 __tmp111301 _%k111013%_))))))
    (define __compile
      (lambda (_%stx110981%_)
        (let* ((_%$e110983%_ _%stx110981%_)
               (_%$E110985110991%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110983%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110983%_))
              (let* ((_%$tgt110986110994%_
                      (let () (declare (not safe)) (__AST-e _%$e110983%_)))
                     (_%$hd110987110997%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110986110994%_)))
                     (_%$tl110988111000%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110986110994%_))))
                (let* ((_%form111004%_ _%$hd110987110997%_)
                       (_%$e111006%_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _%form111004%_))))
                  (if _%$e111006%_
                      ((lambda (_%bind111009%_)
                         ((##structure-ref _%bind111009%_ '1 __syntax::t '#f)
                          _%stx110981%_))
                       _%$e111006%_)
                      (let ()
                        (let ()
                          (declare (not safe))
                          (__raise-syntax-error
                           '#f
                           '"Bad syntax; cannot resolve form"
                           _%stx110981%_
                           _%form111004%_))))))
              (let () (declare (not safe)) (_%$E110985110991%_))))))
    (define __compile-error__%
      (lambda (_%stx110968%_ _%detail110969%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx110968%_
           _%detail110969%_))))
    (define __compile-error__0
      (lambda (_%stx110974%_)
        (let ((_%detail110976%_ '#f))
          (declare (not safe))
          (__compile-error__% _%stx110974%_ _%detail110976%_))))
    (define __compile-error
      (lambda _g111304_
        (let ((_g111303_ (let () (declare (not safe)) (##length _g111304_))))
          (cond ((let () (declare (not safe)) (##fx= _g111303_ 1))
                 (apply (lambda (_%stx110974%_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _%stx110974%_)))
                        _g111304_))
                ((let () (declare (not safe)) (##fx= _g111303_ 2))
                 (apply (lambda (_%stx110978%_ _%detail110979%_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__%
                             _%stx110978%_
                             _%detail110979%_)))
                        _g111304_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g111304_))))))
    (define __compile-ignore%
      (lambda (_%stx110965%_)
        (let () (declare (not safe)) (__SRC__% ''#!void _%stx110965%_))))
    (define __compile-begin%
      (lambda (_%stx110940%_)
        (let* ((_%$e110942%_ _%stx110940%_)
               (_%$E110944110950%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110942%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110942%_))
              (let* ((_%$tgt110945110953%_
                      (let () (declare (not safe)) (__AST-e _%$e110942%_)))
                     (_%$hd110946110956%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110945110953%_)))
                     (_%$tl110947110959%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110945110953%_))))
                (let* ((_%body110963%_ _%$tl110947110959%_)
                       (__tmp111305
                        (cons 'begin (map __compile _%body110963%_))))
                  (declare (not safe))
                  (__SRC__% __tmp111305 _%stx110940%_)))
              (let () (declare (not safe)) (_%$E110944110950%_))))))
    (define __compile-begin-foreign%
      (lambda (_%stx110915%_)
        (let* ((_%$e110917%_ _%stx110915%_)
               (_%$E110919110925%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110917%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110917%_))
              (let* ((_%$tgt110920110928%_
                      (let () (declare (not safe)) (__AST-e _%$e110917%_)))
                     (_%$hd110921110931%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110920110928%_)))
                     (_%$tl110922110934%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110920110928%_))))
                (let* ((_%body110938%_ _%$tl110922110934%_)
                       (__tmp111306
                        (cons 'begin
                              (let ()
                                (declare (not safe))
                                (__AST->datum _%body110938%_)))))
                  (declare (not safe))
                  (__SRC__% __tmp111306 _%stx110915%_)))
              (let () (declare (not safe)) (_%$E110919110925%_))))))
    (define __compile-import%
      (lambda (_%stx110890%_)
        (let* ((_%$e110892%_ _%stx110890%_)
               (_%$E110894110900%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110892%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110892%_))
              (let* ((_%$tgt110895110903%_
                      (let () (declare (not safe)) (__AST-e _%$e110892%_)))
                     (_%$hd110896110906%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110895110903%_)))
                     (_%$tl110897110909%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110895110903%_))))
                (let* ((_%body110913%_ _%$tl110897110909%_)
                       (__tmp111307
                        (cons '__eval-import
                              (cons (cons 'quote (cons _%body110913%_ '()))
                                    '()))))
                  (declare (not safe))
                  (__SRC__% __tmp111307 _%stx110890%_)))
              (let () (declare (not safe)) (_%$E110894110900%_))))))
    (define __compile-begin-annotation%
      (lambda (_%stx110837%_)
        (let* ((_%$e110839%_ _%stx110837%_)
               (_%$E110841110853%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110839%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110839%_))
              (let* ((_%$tgt110842110856%_
                      (let () (declare (not safe)) (__AST-e _%$e110839%_)))
                     (_%$hd110843110859%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110842110856%_)))
                     (_%$tl110844110862%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110842110856%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110844110862%_))
                    (let* ((_%$tgt110845110866%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110844110862%_)))
                           (_%$hd110846110869%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110845110866%_)))
                           (_%$tl110847110872%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110845110866%_))))
                      (let ((_%ann110876%_ _%$hd110846110869%_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$tl110847110872%_))
                            (let* ((_%$tgt110848110878%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl110847110872%_)))
                                   (_%$hd110849110881%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt110848110878%_)))
                                   (_%$tl110850110884%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt110848110878%_))))
                              (let ((_%expr110888%_ _%$hd110849110881%_))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$tl110850110884%_))
                                            '())
                                    (let ()
                                      (declare (not safe))
                                      (__compile _%expr110888%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%$E110841110853%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$E110841110853%_)))))
                    (let () (declare (not safe)) (_%$E110841110853%_))))
              (let () (declare (not safe)) (_%$E110841110853%_))))))
    (define __compile-define-values%
      (lambda (_%stx110728%_)
        (let* ((_%$e110730%_ _%stx110728%_)
               (_%$E110732110744%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110730%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110730%_))
              (let* ((_%$tgt110733110747%_
                      (let () (declare (not safe)) (__AST-e _%$e110730%_)))
                     (_%$hd110734110750%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110733110747%_)))
                     (_%$tl110735110753%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110733110747%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110735110753%_))
                    (let* ((_%$tgt110736110757%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110735110753%_)))
                           (_%$hd110737110760%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110736110757%_)))
                           (_%$tl110738110763%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110736110757%_))))
                      (let ((_%hd110767%_ _%$hd110737110760%_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$tl110738110763%_))
                            (let* ((_%$tgt110739110769%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl110738110763%_)))
                                   (_%$hd110740110772%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt110739110769%_)))
                                   (_%$tl110741110775%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt110739110769%_))))
                              (let ((_%expr110779%_ _%$hd110740110772%_))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$tl110741110775%_))
                                            '())
                                    (let* ((_%$e110781%_ _%hd110767%_)
                                           (_%$E110783110824%_
                                            (lambda ()
                                              (let ((_%$E110784110809%_
                                                     (lambda ()
                                                       (let* ((_%$E110785110796%_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _%$e110781%_))))
                      (_%ids110799%_ _%hd110767%_)
                      (_%len110801%_ (length _%ids110799%_))
                      (_%tmp110803%_
                       (let ((__tmp111308
                              (let () (declare (not safe)) (##gensym))))
                         (declare (not safe))
                         (__SRC__0 __tmp111308))))
                 (let ((__tmp111309
                        (cons 'begin
                              (cons (let ((__tmp111310
                                           (cons 'define
                                                 (cons _%tmp110803%_
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__compile _%expr110779%_))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (__SRC__% __tmp111310 _%stx110728%_))
                                    (cons (let ((__tmp111311
                                                 (cons '__check-values
                                                       (cons _%tmp110803%_
                                                             (cons _%len110801%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (__SRC__%
                                             __tmp111311
                                             _%stx110728%_))
                                          (let ((__tmp111312
                                                 (let ((__tmp111314
                                                        (lambda (_%id110806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%k110807%_)
                  (if (let () (declare (not safe)) (__AST-e _%id110806%_))
                      (let ((__tmp111315
                             (cons 'define
                                   (cons (let ()
                                           (declare (not safe))
                                           (__SRC__0 _%id110806%_))
                                         (cons (cons '##vector-ref
                                                     (cons _%tmp110803%_
                                                           (cons _%k110807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (__SRC__% __tmp111315 _%stx110728%_))
                      '#f)))
               (__tmp111313
                (let () (declare (not safe)) (##iota _%len110801%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__filter-map2
                                                    __tmp111314
                                                    _%ids110799%_
                                                    __tmp111313))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             '()
                                             __tmp111312)))))))
                   (declare (not safe))
                   (__SRC__% __tmp111309 _%stx110728%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair?
                                                       _%$e110781%_))
                                                    (let* ((_%$tgt110786110812%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _%$e110781%_)))
                                                           (_%$hd110787110815%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$tgt110786110812%_)))
                                                           (_%$tl110788110818%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$tgt110786110812%_))))
                                                      (let ((_%id110822%_
                                                             _%$hd110787110815%_))
                                                        (if (equal? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (__AST-e _%$tl110788110818%_))
                            '())
                    (let ((__tmp111316
                           (cons 'define
                                 (cons (let ()
                                         (declare (not safe))
                                         (__SRC__0 _%id110822%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (__compile _%expr110779%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111316 _%stx110728%_))
                    (let () (declare (not safe)) (_%$E110784110809%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$E110784110809%_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _%$e110781%_))
                                          (let* ((_%$tgt110789110827%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _%$e110781%_)))
                                                 (_%$hd110790110830%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$tgt110789110827%_)))
                                                 (_%$tl110791110833%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$tgt110789110827%_))))
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$hd110790110830%_))
                                                        '#f)
                                                (if (equal? (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _%$tl110791110833%_))
                                                            '())
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile
                                                       _%expr110779%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$E110783110824%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E110783110824%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$E110783110824%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$E110732110744%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$E110732110744%_)))))
                    (let () (declare (not safe)) (_%$E110732110744%_))))
              (let () (declare (not safe)) (_%$E110732110744%_))))))
    (define __compile-head-id
      (lambda (_%e110726%_)
        (let ((__tmp111317
               (if (let () (declare (not safe)) (__AST-e _%e110726%_))
                   _%e110726%_
                   (let () (declare (not safe)) (##gensym)))))
          (declare (not safe))
          (__SRC__0 __tmp111317))))
    (define __compile-lambda-head
      (lambda (_%hd110683%_)
        (let _%recur110685%_ ((_%rest110687%_ _%hd110683%_))
          (let* ((_%$e110689%_ _%rest110687%_)
                 (_%$E110691110709%_
                  (lambda ()
                    (let ((_%$E110692110706%_
                           (lambda ()
                             (let* ((_%$E110693110701%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e110689%_))))
                                    (_%tail110704%_ _%$e110689%_))
                               (declare (not safe))
                               (__compile-head-id _%tail110704%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110689%_))
                                  '())
                          '()
                          (let ()
                            (declare (not safe))
                            (_%$E110692110706%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110689%_))
                (let* ((_%$tgt110694110712%_
                        (let () (declare (not safe)) (__AST-e _%$e110689%_)))
                       (_%$hd110695110715%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110694110712%_)))
                       (_%$tl110696110718%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110694110712%_))))
                  (let* ((_%hd110722%_ _%$hd110695110715%_)
                         (_%rest110724%_ _%$tl110696110718%_))
                    (cons (let ()
                            (declare (not safe))
                            (__compile-head-id _%hd110722%_))
                          (let ()
                            (declare (not safe))
                            (_%recur110685%_ _%rest110724%_)))))
                (let () (declare (not safe)) (_%$E110691110709%_)))))))
    (define __compile-lambda%
      (lambda (_%stx110630%_)
        (let* ((_%$e110632%_ _%stx110630%_)
               (_%$E110634110646%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110632%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110632%_))
              (let* ((_%$tgt110635110649%_
                      (let () (declare (not safe)) (__AST-e _%$e110632%_)))
                     (_%$hd110636110652%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110635110649%_)))
                     (_%$tl110637110655%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110635110649%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110637110655%_))
                    (let* ((_%$tgt110638110659%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110637110655%_)))
                           (_%$hd110639110662%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110638110659%_)))
                           (_%$tl110640110665%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110638110659%_))))
                      (let ((_%hd110669%_ _%$hd110639110662%_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$tl110640110665%_))
                            (let* ((_%$tgt110641110671%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl110640110665%_)))
                                   (_%$hd110642110674%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt110641110671%_)))
                                   (_%$tl110643110677%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt110641110671%_))))
                              (let ((_%body110681%_ _%$hd110642110674%_))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$tl110643110677%_))
                                            '())
                                    (let ((__tmp111318
                                           (cons 'lambda
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (__compile-lambda-head
                                                          _%hd110669%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__compile _%body110681%_))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (__SRC__% __tmp111318 _%stx110630%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%$E110634110646%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$E110634110646%_)))))
                    (let () (declare (not safe)) (_%$E110634110646%_))))
              (let () (declare (not safe)) (_%$E110634110646%_))))))
    (define __compile-case-lambda%
      (lambda (_%stx110422%_)
        (letrec ((_%variadic?110424%_
                  (lambda (_%hd110595%_)
                    (let* ((_%$e110597%_ _%hd110595%_)
                           (_%$E110599110615%_
                            (lambda ()
                              (let ((_%$E110600110612%_
                                     (lambda ()
                                       (let ((_%$E110601110609%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e110597%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e110597%_))
                                            '())
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_%$E110600110612%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110597%_))
                          (let* ((_%$tgt110602110618%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110597%_)))
                                 (_%$hd110603110621%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110602110618%_)))
                                 (_%$tl110604110624%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110602110618%_))))
                            (let ((_%rest110628%_ _%$tl110604110624%_))
                              (declare (not safe))
                              (_%variadic?110424%_ _%rest110628%_)))
                          (let ()
                            (declare (not safe))
                            (_%$E110599110615%_))))))
                 (_%arity110425%_
                  (lambda (_%hd110560%_)
                    (let _%lp110562%_ ((_%rest110564%_ _%hd110560%_)
                                       (_%k110565%_ '0))
                      (let* ((_%$e110567%_ _%rest110564%_)
                             (_%$E110569110580%_
                              (lambda ()
                                (let ((_%$E110570110577%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e110567%_)))))
                                  _%k110565%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e110567%_))
                            (let* ((_%$tgt110571110583%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e110567%_)))
                                   (_%$hd110572110586%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt110571110583%_)))
                                   (_%$tl110573110589%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt110571110583%_))))
                              (let* ((_%rest110593%_ _%$tl110573110589%_)
                                     (__tmp111319
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%k110565%_ '1))))
                                (declare (not safe))
                                (_%lp110562%_ _%rest110593%_ __tmp111319)))
                            (let ()
                              (declare (not safe))
                              (_%$E110569110580%_)))))))
                 (_%generate110426%_
                  (lambda (_%rest110487%_ _%args110488%_ _%len110489%_)
                    (let* ((_%$e110491%_ _%rest110487%_)
                           (_%$E110493110504%_
                            (lambda ()
                              (let* ((_%$E110494110501%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _%$e110491%_))))
                                     (__tmp111320
                                      (cons 'error
                                            (cons '"No clause matching arguments"
                                                  (cons _%args110488%_ '())))))
                                (declare (not safe))
                                (__SRC__% __tmp111320 _%stx110422%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110491%_))
                          (let* ((_%$tgt110495110507%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110491%_)))
                                 (_%$hd110496110510%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110495110507%_)))
                                 (_%$tl110497110513%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110495110507%_))))
                            (let* ((_%clause110517%_ _%$hd110496110510%_)
                                   (_%rest110519%_ _%$tl110497110513%_)
                                   (_%$e110521%_ _%clause110517%_)
                                   (_%$E110523110532%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _%$e110521%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _%$e110521%_))
                                  (let* ((_%$tgt110524110535%_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _%$e110521%_)))
                                         (_%$hd110525110538%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$tgt110524110535%_)))
                                         (_%$tl110526110541%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$tgt110524110535%_))))
                                    (let ((_%hd110545%_ _%$hd110525110538%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _%$tl110526110541%_))
                                          (let* ((_%$tgt110527110547%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _%$tl110526110541%_)))
                                                 (_%$hd110528110550%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$tgt110527110547%_)))
                                                 (_%$tl110529110553%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$tgt110527110547%_))))
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl110529110553%_))
                                                        '())
                                                (let ((_%clen110557%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%arity110425%_
                                                          _%hd110545%_)))
                                                      (_%cmp110558%_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%variadic?110424%_
                                                              _%hd110545%_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp111321
                                                         (cons 'if
                                                               (cons (cons _%cmp110558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%len110489%_
                                         (cons _%clen110557%_ '())))
                             (cons (let ((__tmp111322
                                          (cons '##apply
                                                (cons (let ((__tmp111323
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause110517%_)))
                (declare (not safe))
                (__compile-lambda% __tmp111323))
              (cons _%args110488%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (__SRC__% __tmp111322 _%stx110422%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (_%generate110426%_
                                            _%rest110519%_
                                            _%args110488%_
                                            _%len110489%_))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp111321
                                                     _%stx110422%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E110523110532%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$E110523110532%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$E110523110532%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$E110493110504%_)))))))
          (let* ((_%$e110428%_ _%stx110422%_)
                 (_%$E110430110462%_
                  (lambda ()
                    (let ((_%$E110431110444%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110428%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110428%_))
                          (let* ((_%$tgt110432110447%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110428%_)))
                                 (_%$hd110433110450%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110432110447%_)))
                                 (_%$tl110434110453%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110432110447%_))))
                            (let ((_%clauses110457%_ _%$tl110434110453%_))
                              (let ((_%args110459%_
                                     (let ((__tmp111324
                                            (let ()
                                              (declare (not safe))
                                              (##gensym))))
                                       (declare (not safe))
                                       (__SRC__% __tmp111324 _%stx110422%_)))
                                    (_%len110460%_
                                     (let ((__tmp111325
                                            (let ()
                                              (declare (not safe))
                                              (##gensym))))
                                       (declare (not safe))
                                       (__SRC__% __tmp111325 _%stx110422%_))))
                                (let ((__tmp111326
                                       (cons 'lambda
                                             (cons _%args110459%_
                                                   (cons (let ((__tmp111327
                                                                (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (cons _%len110460%_
                                                (cons (let ((__tmp111328
                                                             (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args110459%_ '()))))
                (declare (not safe))
                (__SRC__% __tmp111328 _%stx110422%_))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%generate110426%_
                                             _%clauses110457%_
                                             _%args110459%_
                                             _%len110460%_))
                                          '())))))
                   (declare (not safe))
                   (__SRC__% __tmp111327 _%stx110422%_))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (declare (not safe))
                                  (__SRC__% __tmp111326 _%stx110422%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$E110431110444%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110428%_))
                (let* ((_%$tgt110435110465%_
                        (let () (declare (not safe)) (__AST-e _%$e110428%_)))
                       (_%$hd110436110468%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110435110465%_)))
                       (_%$tl110437110471%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110435110465%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110437110471%_))
                      (let* ((_%$tgt110438110475%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110437110471%_)))
                             (_%$hd110439110478%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110438110475%_)))
                             (_%$tl110440110481%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110438110475%_))))
                        (let ((_%clause110485%_ _%$hd110439110478%_))
                          (if (equal? (let ()
                                        (declare (not safe))
                                        (__AST-e _%$tl110440110481%_))
                                      '())
                              (let ((__tmp111329
                                     (cons '%#lambda _%clause110485%_)))
                                (declare (not safe))
                                (__compile-lambda% __tmp111329))
                              (let ()
                                (declare (not safe))
                                (_%$E110430110462%_)))))
                      (let () (declare (not safe)) (_%$E110430110462%_))))
                (let () (declare (not safe)) (_%$E110430110462%_)))))))
    (define __compile-let-form
      (lambda (_%stx110191%_ _%compile-simple110192%_ _%compile-values110193%_)
        (letrec ((_%simple-bind?110195%_
                  (lambda (_%hd110380%_)
                    (let* ((_%hd110381110391%_ _%hd110380%_)
                           (_%else110384110399%_ (lambda () '#f)))
                      (let ((_%K110387110412%_ (lambda (_%id110410%_) '#t))
                            (_%K110386110404%_ (lambda () '#t)))
                        (let ((_%try-match110383110407%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd110381110391%_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_%K110386110404%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%else110384110399%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd110381110391%_))
                              (let ((_%tl110389110417%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd110381110391%_)))
                                    (_%hd110388110415%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd110381110391%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl110389110417%_))
                                    (let ((_%id110420%_ _%hd110388110415%_))
                                      (declare (not safe))
                                      (_%K110387110412%_ _%id110420%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%try-match110383110407%_))))
                              (let ()
                                (declare (not safe))
                                (_%try-match110383110407%_))))))))
                 (_%car-e110196%_
                  (lambda (_%hd110378%_)
                    (if (let () (declare (not safe)) (pair? _%hd110378%_))
                        (car _%hd110378%_)
                        _%hd110378%_))))
          (let* ((_%$e110198%_ _%stx110191%_)
                 (_%$E110200110343%_
                  (lambda ()
                    (let ((_%$E110201110223%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110198%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110198%_))
                          (let* ((_%$tgt110202110226%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110198%_)))
                                 (_%$hd110203110229%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110202110226%_)))
                                 (_%$tl110204110232%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110202110226%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110204110232%_))
                                (let* ((_%$tgt110205110236%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110204110232%_)))
                                       (_%$hd110206110239%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110205110236%_)))
                                       (_%$tl110207110242%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110205110236%_))))
                                  (let ((_%hd110246%_ _%$hd110206110239%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _%$tl110207110242%_))
                                        (let* ((_%$tgt110208110248%_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%$tl110207110242%_)))
                                               (_%$hd110209110251%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$tgt110208110248%_)))
                                               (_%$tl110210110254%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$tgt110208110248%_))))
                                          (let ((_%body110258%_
                                                 _%$hd110209110251%_))
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl110210110254%_))
                                                        '())
                                                (let* ((_%hd-ids110298%_
                                                        (map (lambda (_%bind110260%_)
                                                               (let* ((_%$e110262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%bind110260%_)
                              (_%$E110264110273%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _%$e110262%_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _%$e110262%_))
                             (let* ((_%$tgt110265110276%_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _%$e110262%_)))
                                    (_%$hd110266110279%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$tgt110265110276%_)))
                                    (_%$tl110267110282%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$tgt110265110276%_))))
                               (let ((_%ids110286%_ _%$hd110266110279%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _%$tl110267110282%_))
                                     (let* ((_%$tgt110268110288%_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110267110282%_)))
                                            (_%$hd110269110291%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$tgt110268110288%_)))
                                            (_%$tl110270110294%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$tgt110268110288%_))))
                                       (if (equal? (let ()
                                                     (declare (not safe))
                                                     (__AST-e _%$tl110270110294%_))
                                                   '())
                                           _%ids110286%_
                                           (let ()
                                             (declare (not safe))
                                             (_%$E110264110273%_))))
                                     (let ()
                                       (declare (not safe))
                                       (_%$E110264110273%_)))))
                             (let ()
                               (declare (not safe))
                               (_%$E110264110273%_)))))
                     _%hd110246%_))
               (_%exprs110338%_
                (map (lambda (_%bind110300%_)
                       (let* ((_%$e110302%_ _%bind110300%_)
                              (_%$E110304110313%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _%$e110302%_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _%$e110302%_))
                             (let* ((_%$tgt110305110316%_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _%$e110302%_)))
                                    (_%$hd110306110319%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$tgt110305110316%_)))
                                    (_%$tl110307110322%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$tgt110305110316%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _%$tl110307110322%_))
                                   (let* ((_%$tgt110308110326%_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _%$tl110307110322%_)))
                                          (_%$hd110309110329%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$tgt110308110326%_)))
                                          (_%$tl110310110332%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$tgt110308110326%_))))
                                     (let ((_%expr110336%_
                                            _%$hd110309110329%_))
                                       (if (equal? (let ()
                                                     (declare (not safe))
                                                     (__AST-e _%$tl110310110332%_))
                                                   '())
                                           (let ()
                                             (declare (not safe))
                                             (__compile _%expr110336%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%$E110304110313%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$E110304110313%_))))
                             (let ()
                               (declare (not safe))
                               (_%$E110304110313%_)))))
                     _%hd110246%_))
               (_%body110340%_
                (let () (declare (not safe)) (__compile _%body110258%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (__andmap1
                                                         _%simple-bind?110195%_
                                                         _%hd-ids110298%_))
                                                      (_%compile-simple110192%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##map _%car-e110196%_
                                                                _%hd-ids110298%_))
                                                       _%exprs110338%_
                                                       _%body110340%_)
                                                      (_%compile-values110193%_
                                                       _%hd-ids110298%_
                                                       _%exprs110338%_
                                                       _%body110340%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E110201110223%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$E110201110223%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110201110223%_))))
                          (let ()
                            (declare (not safe))
                            (_%$E110201110223%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110198%_))
                (let* ((_%$tgt110211110346%_
                        (let () (declare (not safe)) (__AST-e _%$e110198%_)))
                       (_%$hd110212110349%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110211110346%_)))
                       (_%$tl110213110352%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110211110346%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110213110352%_))
                      (let* ((_%$tgt110214110356%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110213110352%_)))
                             (_%$hd110215110359%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110214110356%_)))
                             (_%$tl110216110362%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110214110356%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd110215110359%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110216110362%_))
                                (let* ((_%$tgt110217110366%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110216110362%_)))
                                       (_%$hd110218110369%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110217110366%_)))
                                       (_%$tl110219110372%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110217110366%_))))
                                  (let ((_%body110376%_ _%$hd110218110369%_))
                                    (if (equal? (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%$tl110219110372%_))
                                                '())
                                        (let ()
                                          (declare (not safe))
                                          (__compile _%body110376%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%$E110200110343%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110200110343%_)))
                            (let ()
                              (declare (not safe))
                              (_%$E110200110343%_))))
                      (let () (declare (not safe)) (_%$E110200110343%_))))
                (let () (declare (not safe)) (_%$E110200110343%_)))))))
    (define __compile-let-values%
      (lambda (_%stx110003%_)
        (letrec ((_%compile-simple110005%_
                  (lambda (_%hd-ids110187%_ _%exprs110188%_ _%body110189%_)
                    (let ((__tmp111330
                           (cons 'let
                                 (cons (let ((__tmp111331
                                              (map __compile-head-id
                                                   _%hd-ids110187%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111331
                                                _%exprs110188%_))
                                       (cons _%body110189%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111330 _%stx110003%_))))
                 (_%compile-values110006%_
                  (lambda (_%hd-ids110102%_ _%exprs110103%_ _%body110104%_)
                    (let _%lp110106%_ ((_%rest110108%_ _%hd-ids110102%_)
                                       (_%exprs110109%_ _%exprs110103%_)
                                       (_%bind110110%_ '())
                                       (_%post110111%_ '()))
                      (let* ((_%rest110112110126%_ _%rest110108%_)
                             (_%else110115110134%_
                              (lambda ()
                                (let ((__tmp111332
                                       (cons 'let
                                             (cons (reverse _%bind110110%_)
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (_%compile-post110007%_
                                                            _%post110111%_
                                                            _%body110104%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111332 _%stx110003%_)))))
                        (let ((_%K110120110170%_
                               (lambda (_%rest110167%_ _%id110168%_)
                                 (let ((__tmp111334 (cdr _%exprs110109%_))
                                       (__tmp111333
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _%id110168%_))
                                                    (cons (car _%exprs110109%_)
                                                          '()))
                                              _%bind110110%_)))
                                   (declare (not safe))
                                   (_%lp110106%_
                                    _%rest110167%_
                                    __tmp111334
                                    __tmp111333
                                    _%post110111%_))))
                              (_%K110117110152%_
                               (lambda (_%rest110138%_ _%hd110139%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110139%_))
                                     (let ()
                                       (let ((__tmp111336
                                              (cdr _%exprs110109%_))
                                             (__tmp111335
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _%hd110139%_))
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (car _%exprs110109%_) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind110110%_)))
                                         (declare (not safe))
                                         (_%lp110106%_
                                          _%rest110138%_
                                          __tmp111336
                                          __tmp111335
                                          _%post110111%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _%hd110139%_))
                                         (let ()
                                           (let* ((_%len110143%_
                                                   (length _%hd110139%_))
                                                  (_%tmp110145%_
                                                   (let ((__tmp111337
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym))))
                                                     (declare (not safe))
                                                     (__SRC__0 __tmp111337))))
                                             (let ((__tmp111344
                                                    (cdr _%exprs110109%_))
                                                   (__tmp111343
                                                    (cons (cons _%tmp110145%_
                                                                (cons (car _%exprs110109%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind110110%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111338
                                                    (cons (let ((__tmp111339
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111340
                                (let ((__tmp111342
                                       (lambda (_%id110148%_ _%k110149%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id110148%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _%id110148%_))
                                                   _%k110149%_)
                                             '#f)))
                                      (__tmp111341
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len110143%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111342
                                   _%hd110139%_
                                   __tmp111341))))
                           (declare (not safe))
                           (cons _%len110143%_ __tmp111340))))
                    (declare (not safe))
                    (cons _%tmp110145%_ __tmp111339))
                  _%post110111%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp110106%_
                                                _%rest110138%_
                                                __tmp111344
                                                __tmp111343
                                                __tmp111338))))
                                         (let ()
                                           (let ()
                                             (declare (not safe))
                                             (__compile-error__%
                                              _%stx110003%_
                                              _%hd110139%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110112110126%_))
                              (let ((_%tl110122110175%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110112110126%_)))
                                    (_%hd110121110173%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110112110126%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110121110173%_))
                                    (let ((_%tl110124110180%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110121110173%_)))
                                          (_%hd110123110178%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110121110173%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110124110180%_))
                                          (let ((_%id110183%_
                                                 _%hd110123110178%_)
                                                (_%rest110185%_
                                                 _%tl110122110175%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110120110170%_
                                               _%rest110185%_
                                               _%id110183%_)))
                                          (let ((_%hd110160%_
                                                 _%hd110121110173%_)
                                                (_%rest110162%_
                                                 _%tl110122110175%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110117110152%_
                                               _%rest110162%_
                                               _%hd110160%_)))))
                                    (let ((_%hd110160%_ _%hd110121110173%_)
                                          (_%rest110162%_ _%tl110122110175%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K110117110152%_
                                         _%rest110162%_
                                         _%hd110160%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else110115110134%_))))))))
                 (_%compile-post110007%_
                  (lambda (_%post110009%_ _%body110010%_)
                    (let _%lp110012%_ ((_%rest110014%_ _%post110009%_)
                                       (_%check110015%_ '())
                                       (_%bind110016%_ '()))
                      (let* ((_%rest110017110029%_ _%rest110014%_)
                             (_%else110019110037%_
                              (lambda ()
                                (let ((__tmp111345
                                       (cons 'begin
                                             (let ((__tmp111346
                                                    (cons (let ((__tmp111347
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'let
                               (cons _%bind110016%_
                                     (cons _%body110010%_ '())))))
                    (declare (not safe))
                    (__SRC__% __tmp111347 _%stx110003%_))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp111346
                                                _%check110015%_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111345 _%stx110003%_))))
                             (_%K110021110076%_
                              (lambda (_%rest110040%_
                                       _%init110041%_
                                       _%len110042%_
                                       _%tmp110043%_)
                                (let ((__tmp111350
                                       (cons (let ((__tmp111351
                                                    (cons '__check-values
                                                          (cons _%tmp110043%_
                                                                (cons _%len110042%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp111351
                                                _%stx110003%_))
                                             _%check110015%_))
                                      (__tmp111348
                                       (let ((__tmp111349
                                              (lambda (_%hd110045%_
                                                       _%r110046%_)
                                                (let* ((_%hd110047110054%_
                                                        _%hd110045%_)
                                                       (_%E110049110058%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd110047110054%_
                           '([id . k])))
                  '#!void))
               (_%K110050110064%_
                (lambda (_%k110061%_ _%id110062%_)
                  (cons (cons _%id110062%_
                              (cons (cons '##vector-ref
                                          (cons _%tmp110043%_
                                                (cons _%k110061%_ '())))
                                    '()))
                        _%r110046%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd110047110054%_))
                                                      (let ((_%hd110051110067%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd110047110054%_)))
                    (_%tl110052110069%_
                     (let () (declare (not safe)) (##cdr _%hd110047110054%_))))
                (let* ((_%id110072%_ _%hd110051110067%_)
                       (_%k110074%_ _%tl110052110069%_))
                  (declare (not safe))
                  (_%K110050110064%_ _%k110074%_ _%id110072%_)))
              (let () (declare (not safe)) (_%E110049110058%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp111349
                                          _%bind110016%_
                                          _%init110041%_))))
                                  (declare (not safe))
                                  (_%lp110012%_
                                   _%rest110040%_
                                   __tmp111350
                                   __tmp111348)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest110017110029%_))
                            (let ((_%hd110022110079%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest110017110029%_)))
                                  (_%tl110023110081%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest110017110029%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd110022110079%_))
                                  (let ((_%hd110024110084%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd110022110079%_)))
                                        (_%tl110025110086%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd110022110079%_))))
                                    (let ((_%tmp110089%_ _%hd110024110084%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl110025110086%_))
                                          (let ((_%hd110026110091%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl110025110086%_)))
                                                (_%tl110027110093%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl110025110086%_))))
                                            (let* ((_%len110096%_
                                                    _%hd110026110091%_)
                                                   (_%init110098%_
                                                    _%tl110027110093%_)
                                                   (_%rest110100%_
                                                    _%tl110023110081%_))
                                              (declare (not safe))
                                              (_%K110021110076%_
                                               _%rest110100%_
                                               _%init110098%_
                                               _%len110096%_
                                               _%tmp110089%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else110019110037%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else110019110037%_))))
                            (let ()
                              (declare (not safe))
                              (_%else110019110037%_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx110003%_
             _%compile-simple110005%_
             _%compile-values110006%_)))))
    (define __compile-letrec-values%
      (lambda (_%stx109800%_)
        (letrec ((_%compile-simple109802%_
                  (lambda (_%hd-ids109999%_ _%exprs110000%_ _%body110001%_)
                    (let ((__tmp111352
                           (cons 'letrec
                                 (cons (let ((__tmp111353
                                              (map __compile-head-id
                                                   _%hd-ids109999%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111353
                                                _%exprs110000%_))
                                       (cons _%body110001%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111352 _%stx109800%_))))
                 (_%compile-values109803%_
                  (lambda (_%hd-ids109910%_ _%exprs109911%_ _%body109912%_)
                    (let _%lp109914%_ ((_%rest109916%_ _%hd-ids109910%_)
                                       (_%exprs109917%_ _%exprs109911%_)
                                       (_%pre109918%_ '())
                                       (_%bind109919%_ '())
                                       (_%post109920%_ '()))
                      (let* ((_%rest109921109935%_ _%rest109916%_)
                             (_%else109924109943%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_%compile-inner109804%_
                                   _%pre109918%_
                                   _%bind109919%_
                                   _%post109920%_
                                   _%body109912%_)))))
                        (let ((_%K109929109982%_
                               (lambda (_%rest109979%_ _%id109980%_)
                                 (let ((__tmp111355 (cdr _%exprs109917%_))
                                       (__tmp111354
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _%id109980%_))
                                                    (cons (car _%exprs109917%_)
                                                          '()))
                                              _%bind109919%_)))
                                   (declare (not safe))
                                   (_%lp109914%_
                                    _%rest109979%_
                                    __tmp111355
                                    _%pre109918%_
                                    __tmp111354
                                    _%post109920%_))))
                              (_%K109926109964%_
                               (lambda (_%rest109947%_ _%hd109948%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd109948%_))
                                     (let ()
                                       (let ((__tmp111357
                                              (cdr _%exprs109917%_))
                                             (__tmp111356
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _%hd109948%_))
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (car _%exprs109917%_) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind109919%_)))
                                         (declare (not safe))
                                         (_%lp109914%_
                                          _%rest109947%_
                                          __tmp111357
                                          _%pre109918%_
                                          __tmp111356
                                          _%post109920%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _%hd109948%_))
                                         (let ()
                                           (let* ((_%len109952%_
                                                   (length _%hd109948%_))
                                                  (_%tmp109954%_
                                                   (let ((__tmp111358
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym))))
                                                     (declare (not safe))
                                                     (__SRC__0 __tmp111358))))
                                             (let ((__tmp111367
                                                    (cdr _%exprs109917%_))
                                                   (__tmp111365
                                                    (let ((__tmp111366
                                                           (lambda (_%id109957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%r109958%_)
                     (if (let () (declare (not safe)) (__AST-e _%id109957%_))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (__SRC__0 _%id109957%_))
                                     (cons (cons 'quote (cons '#!void '()))
                                           '()))
                               _%r109958%_)
                         _%r109958%_))))
              (declare (not safe))
              (__foldl1 __tmp111366 _%pre109918%_ _%hd109948%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111364
                                                    (cons (cons _%tmp109954%_
                                                                (cons (car _%exprs109917%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind109919%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111359
                                                    (cons (let ((__tmp111360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111361
                                (let ((__tmp111363
                                       (lambda (_%id109960%_ _%k109961%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id109960%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _%id109960%_))
                                                   _%k109961%_)
                                             '#f)))
                                      (__tmp111362
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len109952%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111363
                                   _%hd109948%_
                                   __tmp111362))))
                           (declare (not safe))
                           (cons _%len109952%_ __tmp111361))))
                    (declare (not safe))
                    (cons _%tmp109954%_ __tmp111360))
                  _%post109920%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp109914%_
                                                _%rest109947%_
                                                __tmp111367
                                                __tmp111365
                                                __tmp111364
                                                __tmp111359))))
                                         (let ()
                                           (let ()
                                             (declare (not safe))
                                             (__compile-error__%
                                              _%stx109800%_
                                              _%hd109948%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest109921109935%_))
                              (let ((_%tl109931109987%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest109921109935%_)))
                                    (_%hd109930109985%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest109921109935%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd109930109985%_))
                                    (let ((_%tl109933109992%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd109930109985%_)))
                                          (_%hd109932109990%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd109930109985%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl109933109992%_))
                                          (let ((_%id109995%_
                                                 _%hd109932109990%_)
                                                (_%rest109997%_
                                                 _%tl109931109987%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109929109982%_
                                               _%rest109997%_
                                               _%id109995%_)))
                                          (let ((_%hd109972%_
                                                 _%hd109930109985%_)
                                                (_%rest109974%_
                                                 _%tl109931109987%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109926109964%_
                                               _%rest109974%_
                                               _%hd109972%_)))))
                                    (let ((_%hd109972%_ _%hd109930109985%_)
                                          (_%rest109974%_ _%tl109931109987%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K109926109964%_
                                         _%rest109974%_
                                         _%hd109972%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else109924109943%_))))))))
                 (_%compile-inner109804%_
                  (lambda (_%pre109905%_
                           _%bind109906%_
                           _%post109907%_
                           _%body109908%_)
                    (if (let () (declare (not safe)) (null? _%pre109905%_))
                        (let ()
                          (declare (not safe))
                          (_%compile-bind109805%_
                           _%bind109906%_
                           _%post109907%_
                           _%body109908%_))
                        (let ((__tmp111368
                               (cons 'let
                                     (cons (reverse _%pre109905%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%compile-bind109805%_
                                                    _%bind109906%_
                                                    _%post109907%_
                                                    _%body109908%_))
                                                 '())))))
                          (declare (not safe))
                          (__SRC__% __tmp111368 _%stx109800%_)))))
                 (_%compile-bind109805%_
                  (lambda (_%bind109901%_ _%post109902%_ _%body109903%_)
                    (let ((__tmp111369
                           (cons 'letrec
                                 (cons (reverse _%bind109901%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%compile-post109806%_
                                                _%post109902%_
                                                _%body109903%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111369 _%stx109800%_))))
                 (_%compile-post109806%_
                  (lambda (_%post109808%_ _%body109809%_)
                    (let _%lp109811%_ ((_%rest109813%_ _%post109808%_)
                                       (_%check109814%_ '())
                                       (_%bind109815%_ '()))
                      (let* ((_%rest109816109828%_ _%rest109813%_)
                             (_%else109818109836%_
                              (lambda ()
                                (let ((__tmp111370
                                       (cons 'begin
                                             (let ((__tmp111371
                                                    (let ((__tmp111372
                                                           (cons _%body109809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
              (declare (not safe))
              (__foldr1 cons __tmp111372 _%bind109815%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp111371
                                                _%check109814%_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111370 _%stx109800%_))))
                             (_%K109820109875%_
                              (lambda (_%rest109839%_
                                       _%init109840%_
                                       _%len109841%_
                                       _%tmp109842%_)
                                (let ((__tmp111375
                                       (cons (let ((__tmp111376
                                                    (cons '__check-values
                                                          (cons _%tmp109842%_
                                                                (cons _%len109841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp111376
                                                _%stx109800%_))
                                             _%check109814%_))
                                      (__tmp111373
                                       (let ((__tmp111374
                                              (lambda (_%hd109844%_
                                                       _%r109845%_)
                                                (let* ((_%hd109846109853%_
                                                        _%hd109844%_)
                                                       (_%E109848109857%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd109846109853%_
                           '([id . k])))
                  '#!void))
               (_%K109849109863%_
                (lambda (_%k109860%_ _%id109861%_)
                  (cons (cons 'set!
                              (cons _%id109861%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp109842%_
                                                      (cons _%k109860%_ '())))
                                          '())))
                        _%r109845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd109846109853%_))
                                                      (let ((_%hd109850109866%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd109846109853%_)))
                    (_%tl109851109868%_
                     (let () (declare (not safe)) (##cdr _%hd109846109853%_))))
                (let* ((_%id109871%_ _%hd109850109866%_)
                       (_%k109873%_ _%tl109851109868%_))
                  (declare (not safe))
                  (_%K109849109863%_ _%k109873%_ _%id109871%_)))
              (let () (declare (not safe)) (_%E109848109857%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp111374
                                          _%bind109815%_
                                          _%init109840%_))))
                                  (declare (not safe))
                                  (_%lp109811%_
                                   _%rest109839%_
                                   __tmp111375
                                   __tmp111373)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest109816109828%_))
                            (let ((_%hd109821109878%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest109816109828%_)))
                                  (_%tl109822109880%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest109816109828%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd109821109878%_))
                                  (let ((_%hd109823109883%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd109821109878%_)))
                                        (_%tl109824109885%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd109821109878%_))))
                                    (let ((_%tmp109888%_ _%hd109823109883%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl109824109885%_))
                                          (let ((_%hd109825109890%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl109824109885%_)))
                                                (_%tl109826109892%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl109824109885%_))))
                                            (let* ((_%len109895%_
                                                    _%hd109825109890%_)
                                                   (_%init109897%_
                                                    _%tl109826109892%_)
                                                   (_%rest109899%_
                                                    _%tl109822109880%_))
                                              (declare (not safe))
                                              (_%K109820109875%_
                                               _%rest109899%_
                                               _%init109897%_
                                               _%len109895%_
                                               _%tmp109888%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else109818109836%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else109818109836%_))))
                            (let ()
                              (declare (not safe))
                              (_%else109818109836%_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx109800%_
             _%compile-simple109802%_
             _%compile-values109803%_)))))
    (define __compile-letrec*-values%
      (lambda (_%stx109551%_)
        (letrec ((_%compile-simple109553%_
                  (lambda (_%hd-ids109796%_ _%exprs109797%_ _%body109798%_)
                    (let ((__tmp111377
                           (cons 'letrec*
                                 (cons (let ((__tmp111378
                                              (map __compile-head-id
                                                   _%hd-ids109796%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111378
                                                _%exprs109797%_))
                                       (cons _%body109798%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111377 _%stx109551%_))))
                 (_%compile-values109554%_
                  (lambda (_%hd-ids109703%_ _%exprs109704%_ _%body109705%_)
                    (let _%lp109707%_ ((_%rest109709%_ _%hd-ids109703%_)
                                       (_%exprs109710%_ _%exprs109704%_)
                                       (_%bind109711%_ '())
                                       (_%post109712%_ '()))
                      (let* ((_%rest109713109727%_ _%rest109709%_)
                             (_%else109716109735%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_%compile-bind109555%_
                                   _%bind109711%_
                                   _%post109712%_
                                   _%body109705%_)))))
                        (let ((_%K109721109779%_
                               (lambda (_%rest109774%_ _%hd109775%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd109775%_))
                                     (let ((_%id109777%_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _%hd109775%_))))
                                       (let ((__tmp111381
                                              (cdr _%exprs109710%_))
                                             (__tmp111380
                                              (cons (cons _%id109777%_
                                                          (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#!void '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind109711%_))
                                             (__tmp111379
                                              (cons (cons _%id109777%_
                                                          (cons (car _%exprs109710%_)
                                                                '()))
                                                    _%post109712%_)))
                                         (declare (not safe))
                                         (_%lp109707%_
                                          _%rest109774%_
                                          __tmp111381
                                          __tmp111380
                                          __tmp111379)))
                                     (let ((__tmp111383 (cdr _%exprs109710%_))
                                           (__tmp111382
                                            (cons (cons '#f
                                                        (cons (car _%exprs109710%_)
                                                              '()))
                                                  _%post109712%_)))
                                       (declare (not safe))
                                       (_%lp109707%_
                                        _%rest109774%_
                                        __tmp111383
                                        _%bind109711%_
                                        __tmp111382)))))
                              (_%K109718109759%_
                               (lambda (_%rest109739%_ _%hd109740%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd109740%_))
                                     (let ()
                                       (let ((_%id109743%_
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _%hd109740%_))))
                                         (let ((__tmp111386
                                                (cdr _%exprs109710%_))
                                               (__tmp111385
                                                (cons (cons _%id109743%_
                                                            (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons '#!void '()))
                          '()))
              _%bind109711%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp111384
                                                (cons (cons _%id109743%_
                                                            (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (car _%exprs109710%_) '()))
                          '()))
              _%post109712%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp109707%_
                                            _%rest109739%_
                                            __tmp111386
                                            __tmp111385
                                            __tmp111384))))
                                     (if (let ((__tmp111387
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%hd109740%_))))
                                           (declare (not safe))
                                           (not __tmp111387))
                                         (let ()
                                           (let ((__tmp111389
                                                  (cdr _%exprs109710%_))
                                                 (__tmp111388
                                                  (cons (cons '#f
                                                              (cons (car _%exprs109710%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%post109712%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_%lp109707%_
                                              _%rest109739%_
                                              __tmp111389
                                              _%bind109711%_
                                              __tmp111388)))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _%hd109740%_))
                                             (let ()
                                               (let* ((_%len109747%_
                                                       (length _%hd109740%_))
                                                      (_%tmp109749%_
                                                       (let ((__tmp111390
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym))))
                 (declare (not safe))
                 (__SRC__0 __tmp111390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp111400
                                                        (cdr _%exprs109710%_))
                                                       (__tmp111398
                                                        (let ((__tmp111399
                                                               (lambda (_%id109752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%r109753%_)
                         (if (let ()
                               (declare (not safe))
                               (__AST-e _%id109752%_))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (__SRC__0 _%id109752%_))
                                         (cons (cons 'quote (cons '#!void '()))
                                               '()))
                                   _%r109753%_)
                             _%r109753%_))))
                  (declare (not safe))
                  (__foldl1 __tmp111399 _%bind109711%_ _%hd109740%_)))
               (__tmp111391
                (cons (let ((__tmp111392
                             (let ((__tmp111397 (car _%exprs109710%_))
                                   (__tmp111393
                                    (let ((__tmp111394
                                           (let ((__tmp111396
                                                  (lambda (_%id109755%_
                                                           _%k109756%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%id109755%_))
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _%id109755%_))
                      _%k109756%_)
                '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp111395
                                                  (let ()
                                                    (declare (not safe))
                                                    (##iota _%len109747%_))))
                                             (declare (not safe))
                                             (__filter-map2
                                              __tmp111396
                                              _%hd109740%_
                                              __tmp111395))))
                                      (declare (not safe))
                                      (cons _%len109747%_ __tmp111394))))
                               (declare (not safe))
                               (cons __tmp111397 __tmp111393))))
                        (declare (not safe))
                        (cons _%tmp109749%_ __tmp111392))
                      _%post109712%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%lp109707%_
                                                    _%rest109739%_
                                                    __tmp111400
                                                    __tmp111398
                                                    __tmp111391))))
                                             (let ()
                                               (let ()
                                                 (declare (not safe))
                                                 (__compile-error__%
                                                  _%stx109551%_
                                                  _%hd109740%_)))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest109713109727%_))
                              (let ((_%tl109723109784%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest109713109727%_)))
                                    (_%hd109722109782%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest109713109727%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd109722109782%_))
                                    (let ((_%tl109725109789%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd109722109782%_)))
                                          (_%hd109724109787%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd109722109782%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl109725109789%_))
                                          (let ((_%hd109792%_
                                                 _%hd109724109787%_)
                                                (_%rest109794%_
                                                 _%tl109723109784%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109721109779%_
                                               _%rest109794%_
                                               _%hd109792%_)))
                                          (let ((_%hd109767%_
                                                 _%hd109722109782%_)
                                                (_%rest109769%_
                                                 _%tl109723109784%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109718109759%_
                                               _%rest109769%_
                                               _%hd109767%_)))))
                                    (let ((_%hd109767%_ _%hd109722109782%_)
                                          (_%rest109769%_ _%tl109723109784%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K109718109759%_
                                         _%rest109769%_
                                         _%hd109767%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else109716109735%_))))))))
                 (_%compile-bind109555%_
                  (lambda (_%bind109699%_ _%post109700%_ _%body109701%_)
                    (let ((__tmp111401
                           (cons 'let
                                 (cons (reverse _%bind109699%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%compile-post109556%_
                                                _%post109700%_
                                                _%body109701%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111401 _%stx109551%_))))
                 (_%compile-post109556%_
                  (lambda (_%post109558%_ _%body109559%_)
                    (let ((__tmp111402
                           (cons 'begin
                                 (let ((__tmp111403
                                        (let ((__tmp111405
                                               (lambda (_%hd109561%_
                                                        _%r109562%_)
                                                 (let* ((_%hd109563109586%_
                                                         _%hd109561%_)
                                                        (_%E109567109590%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd109563109586%_
                            '([#f expr])
                            '([id expr])
                            '([tmp expr len . init])))
                   '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%K109580109684%_
                                                          (lambda (_%expr109682%_)
                                                            (cons _%expr109682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r109562%_)))
                 (_%K109575109662%_
                  (lambda (_%expr109659%_ _%id109660%_)
                    (cons (let ((__tmp111406
                                 (cons 'set!
                                       (cons _%id109660%_
                                             (cons _%expr109659%_ '())))))
                            (declare (not safe))
                            (__SRC__% __tmp111406 _%stx109551%_))
                          _%r109562%_)))
                 (_%K109568109629%_
                  (lambda (_%init109594%_
                           _%len109595%_
                           _%expr109596%_
                           _%tmp109597%_)
                    (cons (let ((__tmp111407
                                 (cons 'let
                                       (cons (cons (cons _%tmp109597%_
                                                         (cons _%expr109596%_
                                                               '()))
                                                   '())
                                             (cons (let ((__tmp111408
                                                          (cons '__check-values
                                                                (cons _%tmp109597%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%len109595%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      __tmp111408
                                                      _%stx109551%_))
                                                   (let ((__tmp111409
                                                          (map (lambda (_%hd109599%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%hd109600109607%_ _%hd109599%_)
                                (_%E109602109611%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _%hd109600109607%_
                                            '([id . k])))
                                   '#!void))
                                (_%K109603109617%_
                                 (lambda (_%k109614%_ _%id109615%_)
                                   (let ((__tmp111410
                                          (cons 'set!
                                                (cons _%id109615%_
                                                      (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%tmp109597%_ (cons _%k109614%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (__SRC__% __tmp111410 _%stx109551%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%hd109600109607%_))
                               (let ((_%hd109604109620%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%hd109600109607%_)))
                                     (_%tl109605109622%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%hd109600109607%_))))
                                 (let* ((_%id109625%_ _%hd109604109620%_)
                                        (_%k109627%_ _%tl109605109622%_))
                                   (declare (not safe))
                                   (_%K109603109617%_
                                    _%k109627%_
                                    _%id109625%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%E109602109611%_)))))
                       _%init109594%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      '()
                                                      __tmp111409)))))))
                            (declare (not safe))
                            (__SRC__% __tmp111407 _%stx109551%_))
                          _%r109562%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__match111178111179%_
                                                             (lambda (_%hd109569109632%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tl109570109634%_
                              _%hd109571109639%_
                              _%tl109572109641%_)
                       (let ((_%tmp109637%_ _%hd109569109632%_)
                             (_%expr109644%_ _%hd109571109639%_))
                         (let () (declare (not safe)) (_%E109567109590%_)))))
                    (_%__match111172111173%_
                     (lambda (_%hd109569109632%_ _%tl109570109634%_)
                       (let ((_%tmp109637%_ _%hd109569109632%_))
                         (declare (not safe))
                         (_%E109567109590%_)))))
               (if (let () (declare (not safe)) (##pair? _%hd109563109586%_))
                   (let ((_%tl109582109689%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd109563109586%_)))
                         (_%hd109581109687%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd109563109586%_))))
                     (if (let ()
                           (declare (not safe))
                           (##eq? _%hd109581109687%_ '#f))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%tl109582109689%_))
                             (let ((_%tl109584109694%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl109582109689%_)))
                                   (_%hd109583109692%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%tl109582109689%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl109584109694%_))
                                   (let ((_%expr109697%_ _%hd109583109692%_))
                                     (declare (not safe))
                                     (_%K109580109684%_ _%expr109697%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%tl109584109694%_))
                                       (let ((_%tl109574109648%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl109584109694%_)))
                                             (_%hd109573109646%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%tl109584109694%_))))
                                         (let ((_%tmp109637%_
                                                _%hd109581109687%_)
                                               (_%expr109644%_
                                                _%hd109583109692%_)
                                               (_%len109651%_
                                                _%hd109573109646%_)
                                               (_%init109653%_
                                                _%tl109574109648%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%K109568109629%_
                                              _%init109653%_
                                              _%len109651%_
                                              _%expr109644%_
                                              _%tmp109637%_))))
                                       (_%__match111178111179%_
                                        _%hd109581109687%_
                                        _%tl109582109689%_
                                        _%hd109583109692%_
                                        _%tl109584109694%_))))
                             (_%__match111172111173%_
                              _%hd109581109687%_
                              _%tl109582109689%_))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%tl109582109689%_))
                             (let ((_%tl109579109674%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl109582109689%_)))
                                   (_%hd109578109672%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%tl109582109689%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl109579109674%_))
                                   (let ((_%id109670%_ _%hd109581109687%_)
                                         (_%expr109677%_ _%hd109578109672%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%K109575109662%_
                                        _%expr109677%_
                                        _%id109670%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%tl109579109674%_))
                                       (let ((_%tl109574109648%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl109579109674%_)))
                                             (_%hd109573109646%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%tl109579109674%_))))
                                         (let ((_%tmp109637%_
                                                _%hd109581109687%_)
                                               (_%expr109644%_
                                                _%hd109578109672%_)
                                               (_%len109651%_
                                                _%hd109573109646%_)
                                               (_%init109653%_
                                                _%tl109574109648%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%K109568109629%_
                                              _%init109653%_
                                              _%len109651%_
                                              _%expr109644%_
                                              _%tmp109637%_))))
                                       (_%__match111178111179%_
                                        _%hd109581109687%_
                                        _%tl109582109689%_
                                        _%hd109578109672%_
                                        _%tl109579109674%_))))
                             (_%__match111172111173%_
                              _%hd109581109687%_
                              _%tl109582109689%_))))
                   (let () (declare (not safe)) (_%E109567109590%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (__tmp111404
                                               (list _%body109559%_)))
                                          (declare (not safe))
                                          (__foldl1
                                           __tmp111405
                                           __tmp111404
                                           _%post109558%_))))
                                   (declare (not safe))
                                   (__foldr1 cons '() __tmp111403)))))
                      (declare (not safe))
                      (__SRC__% __tmp111402 _%stx109551%_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx109551%_
             _%compile-simple109553%_
             _%compile-values109554%_)))))
    (define __compile-call%
      (lambda (_%stx109511%_)
        (let* ((_%$e109513%_ _%stx109511%_)
               (_%$E109515109524%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109513%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109513%_))
              (let* ((_%$tgt109516109527%_
                      (let () (declare (not safe)) (__AST-e _%$e109513%_)))
                     (_%$hd109517109530%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109516109527%_)))
                     (_%$tl109518109533%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109516109527%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109518109533%_))
                    (let* ((_%$tgt109519109537%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109518109533%_)))
                           (_%$hd109520109540%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109519109537%_)))
                           (_%$tl109521109543%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109519109537%_))))
                      (let* ((_%rator109547%_ _%$hd109520109540%_)
                             (_%rands109549%_ _%$tl109521109543%_)
                             (__tmp111411
                              (cons (let ()
                                      (declare (not safe))
                                      (__compile _%rator109547%_))
                                    (map __compile _%rands109549%_))))
                        (declare (not safe))
                        (__SRC__% __tmp111411 _%stx109511%_)))
                    (let () (declare (not safe)) (_%$E109515109524%_))))
              (let () (declare (not safe)) (_%$E109515109524%_))))))
    (define __compile-ref%
      (lambda (_%stx109473%_)
        (let* ((_%$e109475%_ _%stx109473%_)
               (_%$E109477109486%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109475%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109475%_))
              (let* ((_%$tgt109478109489%_
                      (let () (declare (not safe)) (__AST-e _%$e109475%_)))
                     (_%$hd109479109492%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109478109489%_)))
                     (_%$tl109480109495%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109478109489%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109480109495%_))
                    (let* ((_%$tgt109481109499%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109480109495%_)))
                           (_%$hd109482109502%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109481109499%_)))
                           (_%$tl109483109505%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109481109499%_))))
                      (let ((_%id109509%_ _%$hd109482109502%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl109483109505%_))
                                    '())
                            (let ()
                              (declare (not safe))
                              (__SRC__% _%id109509%_ _%stx109473%_))
                            (let ()
                              (declare (not safe))
                              (_%$E109477109486%_)))))
                    (let () (declare (not safe)) (_%$E109477109486%_))))
              (let () (declare (not safe)) (_%$E109477109486%_))))))
    (define __compile-setq%
      (lambda (_%stx109420%_)
        (let* ((_%$e109422%_ _%stx109420%_)
               (_%$E109424109436%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109422%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109422%_))
              (let* ((_%$tgt109425109439%_
                      (let () (declare (not safe)) (__AST-e _%$e109422%_)))
                     (_%$hd109426109442%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109425109439%_)))
                     (_%$tl109427109445%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109425109439%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109427109445%_))
                    (let* ((_%$tgt109428109449%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109427109445%_)))
                           (_%$hd109429109452%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109428109449%_)))
                           (_%$tl109430109455%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109428109449%_))))
                      (let ((_%id109459%_ _%$hd109429109452%_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$tl109430109455%_))
                            (let* ((_%$tgt109431109461%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl109430109455%_)))
                                   (_%$hd109432109464%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt109431109461%_)))
                                   (_%$tl109433109467%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt109431109461%_))))
                              (let ((_%expr109471%_ _%$hd109432109464%_))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$tl109433109467%_))
                                            '())
                                    (let ((__tmp111412
                                           (cons 'set!
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (__SRC__%
                                                          _%id109459%_
                                                          _%stx109420%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__compile _%expr109471%_))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (__SRC__% __tmp111412 _%stx109420%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%$E109424109436%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$E109424109436%_)))))
                    (let () (declare (not safe)) (_%$E109424109436%_))))
              (let () (declare (not safe)) (_%$E109424109436%_))))))
    (define __compile-if%
      (lambda (_%stx109352%_)
        (let* ((_%$e109354%_ _%stx109352%_)
               (_%$E109356109371%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109354%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109354%_))
              (let* ((_%$tgt109357109374%_
                      (let () (declare (not safe)) (__AST-e _%$e109354%_)))
                     (_%$hd109358109377%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109357109374%_)))
                     (_%$tl109359109380%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109357109374%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109359109380%_))
                    (let* ((_%$tgt109360109384%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109359109380%_)))
                           (_%$hd109361109387%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109360109384%_)))
                           (_%$tl109362109390%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109360109384%_))))
                      (let ((_%p109394%_ _%$hd109361109387%_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$tl109362109390%_))
                            (let* ((_%$tgt109363109396%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl109362109390%_)))
                                   (_%$hd109364109399%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt109363109396%_)))
                                   (_%$tl109365109402%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt109363109396%_))))
                              (let ((_%t109406%_ _%$hd109364109399%_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _%$tl109365109402%_))
                                    (let* ((_%$tgt109366109408%_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _%$tl109365109402%_)))
                                           (_%$hd109367109411%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$tgt109366109408%_)))
                                           (_%$tl109368109414%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$tgt109366109408%_))))
                                      (let ((_%f109418%_ _%$hd109367109411%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl109368109414%_))
                                                    '())
                                            (let ((__tmp111413
                                                   (cons 'if
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__compile _%p109394%_))
                       (cons (let ()
                               (declare (not safe))
                               (__compile _%t109406%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (__compile _%f109418%_))
                                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp111413
                                               _%stx109352%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%$E109356109371%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$E109356109371%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$E109356109371%_)))))
                    (let () (declare (not safe)) (_%$E109356109371%_))))
              (let () (declare (not safe)) (_%$E109356109371%_))))))
    (define __compile-quote%
      (lambda (_%stx109314%_)
        (let* ((_%$e109316%_ _%stx109314%_)
               (_%$E109318109327%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109316%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109316%_))
              (let* ((_%$tgt109319109330%_
                      (let () (declare (not safe)) (__AST-e _%$e109316%_)))
                     (_%$hd109320109333%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109319109330%_)))
                     (_%$tl109321109336%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109319109330%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109321109336%_))
                    (let* ((_%$tgt109322109340%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109321109336%_)))
                           (_%$hd109323109343%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109322109340%_)))
                           (_%$tl109324109346%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109322109340%_))))
                      (let ((_%e109350%_ _%$hd109323109343%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl109324109346%_))
                                    '())
                            (let ((__tmp111414
                                   (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (__AST->datum _%e109350%_))
                                               '()))))
                              (declare (not safe))
                              (__SRC__% __tmp111414 _%stx109314%_))
                            (let ()
                              (declare (not safe))
                              (_%$E109318109327%_)))))
                    (let () (declare (not safe)) (_%$E109318109327%_))))
              (let () (declare (not safe)) (_%$E109318109327%_))))))
    (define __compile-quote-syntax%
      (lambda (_%stx109276%_)
        (let* ((_%$e109278%_ _%stx109276%_)
               (_%$E109280109289%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109278%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109278%_))
              (let* ((_%$tgt109281109292%_
                      (let () (declare (not safe)) (__AST-e _%$e109278%_)))
                     (_%$hd109282109295%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109281109292%_)))
                     (_%$tl109283109298%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109281109292%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109283109298%_))
                    (let* ((_%$tgt109284109302%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109283109298%_)))
                           (_%$hd109285109305%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109284109302%_)))
                           (_%$tl109286109308%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109284109302%_))))
                      (let ((_%e109312%_ _%$hd109285109305%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl109286109308%_))
                                    '())
                            (let ((__tmp111415
                                   (cons 'quote (cons _%e109312%_ '()))))
                              (declare (not safe))
                              (__SRC__% __tmp111415 _%stx109276%_))
                            (let ()
                              (declare (not safe))
                              (_%$E109280109289%_)))))
                    (let () (declare (not safe)) (_%$E109280109289%_))))
              (let () (declare (not safe)) (_%$E109280109289%_))))))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin
       __compile-begin%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-syntax
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-foreign
       __compile-begin-foreign%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#module
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#import
       __compile-import%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#export
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#provide
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-values
       __compile-define-values%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-syntax
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-alias
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-runtime
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#extern
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#declare
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-annotation
       __compile-begin-annotation%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#quote
       __compile-quote%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#quote-syntax
       __compile-quote-syntax%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#lambda
       __compile-lambda%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#case-lambda
       __compile-case-lambda%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#let-values
       __compile-let-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec-values
       __compile-letrec-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec*-values
       __compile-letrec*-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#call __compile-call% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#if __compile-if% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#ref __compile-ref% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#set! __compile-setq% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#cond-expand __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#include __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#let-syntax __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec-syntax
       __compile-error
       make-__core-form))))
