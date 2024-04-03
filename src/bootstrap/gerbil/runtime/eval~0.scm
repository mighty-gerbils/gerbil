(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1712121898)
  (begin
    (define __syntax::t
      (let ((__tmp111192 (list)) (__tmp111191 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp111192
         '(e id)
         __tmp111191
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args110996%_
        (apply make-instance __syntax::t _%$args110996%_)))
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
      (let ((__tmp111194 (list __syntax::t))
            (__tmp111193 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp111194
         '()
         __tmp111193
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args110993%_
        (apply make-instance __core-form::t _%$args110993%_)))
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
      (let ((__tmp111196 (list __core-form::t))
            (__tmp111195 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp111196
         '()
         __tmp111195
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args110990%_
        (apply make-instance __core-expression::t _%$args110990%_)))
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
      (let ((__tmp111198 (list __core-form::t))
            (__tmp111197 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp111198
         '()
         __tmp111197
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args110987%_
        (apply make-instance __core-special-form::t _%$args110987%_)))
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
      (lambda (_%id110985%_)
        (let ((__tmp111199
               (let () (declare (not safe)) (__AST-e _%id110985%_))))
          (declare (not safe))
          (hash-get __core __tmp111199))))
    (define __core-bound-id?__%
      (lambda (_%id110968%_ _%is?110969%_)
        (let ((_%$e110971%_
               (let () (declare (not safe)) (__core-resolve _%id110968%_))))
          (if _%$e110971%_ (_%is?110969%_ _%$e110971%_) (let () '#f)))))
    (define __core-bound-id?__0
      (lambda (_%id110978%_)
        (let ((_%is?110980%_ true))
          (declare (not safe))
          (__core-bound-id?__% _%id110978%_ _%is?110980%_))))
    (define __core-bound-id?
      (lambda _g111201_
        (let ((_g111200_ (let () (declare (not safe)) (##length _g111201_))))
          (cond ((let () (declare (not safe)) (##fx= _g111200_ 1))
                 (apply (lambda (_%id110978%_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _%id110978%_)))
                        _g111201_))
                ((let () (declare (not safe)) (##fx= _g111200_ 2))
                 (apply (lambda (_%id110982%_ _%is?110983%_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _%id110982%_ _%is?110983%_)))
                        _g111201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g111201_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id110951%_ _%e110952%_ _%make110953%_)
        (let ((__tmp111202
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e110952%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e110952%_
                   (_%make110953%_ _%e110952%_ _%id110951%_))))
          (declare (not safe))
          (hash-put! __core _%id110951%_ __tmp111202))))
    (define __core-bind-syntax!__0
      (lambda (_%id110958%_ _%e110959%_)
        (let ((_%make110961%_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _%id110958%_ _%e110959%_ _%make110961%_))))
    (define __core-bind-syntax!
      (lambda _g111204_
        (let ((_g111203_ (let () (declare (not safe)) (##length _g111204_))))
          (cond ((let () (declare (not safe)) (##fx= _g111203_ 2))
                 (apply (lambda (_%id110958%_ _%e110959%_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _%id110958%_ _%e110959%_)))
                        _g111204_))
                ((let () (declare (not safe)) (##fx= _g111203_ 3))
                 (apply (lambda (_%id110963%_ _%e110964%_ _%make110965%_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _%id110963%_
                             _%e110964%_
                             _%make110965%_)))
                        _g111204_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g111204_))))))
    (define __SRC__%
      (lambda (_%e110931%_ _%src-stx110932%_)
        (if (or (let () (declare (not safe)) (pair? _%e110931%_))
                (let () (declare (not safe)) (symbol? _%e110931%_)))
            (let ()
              (let ((__tmp111205
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _%src-stx110932%_
                            'gerbil#AST::t))
                         (let ((__tmp111206
                                (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx110932%_))))
                           (declare (not safe))
                           (__locat __tmp111206))
                         '#f)))
                (declare (not safe))
                (##make-source _%e110931%_ __tmp111205)))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e110931%_ 'gerbil#AST::t))
                (let ()
                  (let ((__tmp111209
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref _%e110931%_ '1 '#f '#f)))
                        (__tmp111207
                         (let ((__tmp111208
                                (let ()
                                  (declare (not safe))
                                  (__AST-source _%e110931%_))))
                           (declare (not safe))
                           (__locat __tmp111208))))
                    (declare (not safe))
                    (##make-source __tmp111209 __tmp111207)))
                (let ()
                  (let ()
                    (declare (not safe))
                    (error '"BUG! Cannot sourcify object" _%e110931%_)))))))
    (define __SRC__0
      (lambda (_%e110943%_)
        (let ((_%src-stx110945%_ '#f))
          (declare (not safe))
          (__SRC__% _%e110943%_ _%src-stx110945%_))))
    (define __SRC
      (lambda _g111211_
        (let ((_g111210_ (let () (declare (not safe)) (##length _g111211_))))
          (cond ((let () (declare (not safe)) (##fx= _g111210_ 1))
                 (apply (lambda (_%e110943%_)
                          (let () (declare (not safe)) (__SRC__0 _%e110943%_)))
                        _g111211_))
                ((let () (declare (not safe)) (##fx= _g111210_ 2))
                 (apply (lambda (_%e110947%_ _%src-stx110948%_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _%e110947%_ _%src-stx110948%_)))
                        _g111211_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g111211_))))))
    (define __locat
      (lambda (_%loc110928%_)
        (if (let () (declare (not safe)) (##locat? _%loc110928%_))
            _%loc110928%_
            '#f)))
    (define __check-values
      (lambda (_%obj110923%_ _%k110924%_)
        (let ((_%count110926%_
               (if (let () (declare (not safe)) (##values? _%obj110923%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj110923%_))
                   '1)))
          (if (fx= _%count110926%_ _%k110924%_)
              '#!void
              (let ((__tmp111213
                     (if (fx< _%count110926%_ _%k110924%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp111212
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj110923%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj110923%_))
                         _%obj110923%_)))
                (declare (not safe))
                (error __tmp111213 __tmp111212 _%k110924%_))))))
    (define __compile
      (lambda (_%stx110892%_)
        (let* ((_%$e110894%_ _%stx110892%_)
               (_%$E110896110902%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110894%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110894%_))
              (let* ((_%$tgt110897110905%_
                      (let () (declare (not safe)) (__AST-e _%$e110894%_)))
                     (_%$hd110898110908%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110897110905%_)))
                     (_%$tl110899110911%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110897110905%_))))
                (let* ((_%form110915%_ _%$hd110898110908%_)
                       (_%$e110917%_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _%form110915%_))))
                  (if _%$e110917%_
                      ((lambda (_%bind110920%_)
                         ((##structure-ref _%bind110920%_ '1 __syntax::t '#f)
                          _%stx110892%_))
                       _%$e110917%_)
                      (let ()
                        (let ()
                          (declare (not safe))
                          (__raise-syntax-error
                           '#f
                           '"Bad syntax; cannot resolve form"
                           _%stx110892%_
                           _%form110915%_))))))
              (let () (declare (not safe)) (_%$E110896110902%_))))))
    (define __compile-error__%
      (lambda (_%stx110879%_ _%detail110880%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx110879%_
           _%detail110880%_))))
    (define __compile-error__0
      (lambda (_%stx110885%_)
        (let ((_%detail110887%_ '#f))
          (declare (not safe))
          (__compile-error__% _%stx110885%_ _%detail110887%_))))
    (define __compile-error
      (lambda _g111215_
        (let ((_g111214_ (let () (declare (not safe)) (##length _g111215_))))
          (cond ((let () (declare (not safe)) (##fx= _g111214_ 1))
                 (apply (lambda (_%stx110885%_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _%stx110885%_)))
                        _g111215_))
                ((let () (declare (not safe)) (##fx= _g111214_ 2))
                 (apply (lambda (_%stx110889%_ _%detail110890%_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__%
                             _%stx110889%_
                             _%detail110890%_)))
                        _g111215_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g111215_))))))
    (define __compile-ignore%
      (lambda (_%stx110876%_)
        (let () (declare (not safe)) (__SRC__% ''#!void _%stx110876%_))))
    (define __compile-begin%
      (lambda (_%stx110851%_)
        (let* ((_%$e110853%_ _%stx110851%_)
               (_%$E110855110861%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110853%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110853%_))
              (let* ((_%$tgt110856110864%_
                      (let () (declare (not safe)) (__AST-e _%$e110853%_)))
                     (_%$hd110857110867%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110856110864%_)))
                     (_%$tl110858110870%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110856110864%_))))
                (let* ((_%body110874%_ _%$tl110858110870%_)
                       (__tmp111216
                        (cons 'begin (map __compile _%body110874%_))))
                  (declare (not safe))
                  (__SRC__% __tmp111216 _%stx110851%_)))
              (let () (declare (not safe)) (_%$E110855110861%_))))))
    (define __compile-begin-foreign%
      (lambda (_%stx110826%_)
        (let* ((_%$e110828%_ _%stx110826%_)
               (_%$E110830110836%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110828%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110828%_))
              (let* ((_%$tgt110831110839%_
                      (let () (declare (not safe)) (__AST-e _%$e110828%_)))
                     (_%$hd110832110842%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110831110839%_)))
                     (_%$tl110833110845%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110831110839%_))))
                (let* ((_%body110849%_ _%$tl110833110845%_)
                       (__tmp111217
                        (cons 'begin
                              (let ()
                                (declare (not safe))
                                (__AST->datum _%body110849%_)))))
                  (declare (not safe))
                  (__SRC__% __tmp111217 _%stx110826%_)))
              (let () (declare (not safe)) (_%$E110830110836%_))))))
    (define __compile-import%
      (lambda (_%stx110801%_)
        (let* ((_%$e110803%_ _%stx110801%_)
               (_%$E110805110811%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110803%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110803%_))
              (let* ((_%$tgt110806110814%_
                      (let () (declare (not safe)) (__AST-e _%$e110803%_)))
                     (_%$hd110807110817%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110806110814%_)))
                     (_%$tl110808110820%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110806110814%_))))
                (let* ((_%body110824%_ _%$tl110808110820%_)
                       (__tmp111218
                        (cons '__eval-import
                              (cons (cons 'quote (cons _%body110824%_ '()))
                                    '()))))
                  (declare (not safe))
                  (__SRC__% __tmp111218 _%stx110801%_)))
              (let () (declare (not safe)) (_%$E110805110811%_))))))
    (define __compile-begin-annotation%
      (lambda (_%stx110748%_)
        (let* ((_%$e110750%_ _%stx110748%_)
               (_%$E110752110764%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110750%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110750%_))
              (let* ((_%$tgt110753110767%_
                      (let () (declare (not safe)) (__AST-e _%$e110750%_)))
                     (_%$hd110754110770%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110753110767%_)))
                     (_%$tl110755110773%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110753110767%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110755110773%_))
                    (let* ((_%$tgt110756110777%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110755110773%_)))
                           (_%$hd110757110780%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110756110777%_)))
                           (_%$tl110758110783%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110756110777%_))))
                      (let ((_%ann110787%_ _%$hd110757110780%_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$tl110758110783%_))
                            (let* ((_%$tgt110759110789%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl110758110783%_)))
                                   (_%$hd110760110792%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt110759110789%_)))
                                   (_%$tl110761110795%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt110759110789%_))))
                              (let ((_%expr110799%_ _%$hd110760110792%_))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$tl110761110795%_))
                                            '())
                                    (let ()
                                      (declare (not safe))
                                      (__compile _%expr110799%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%$E110752110764%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$E110752110764%_)))))
                    (let () (declare (not safe)) (_%$E110752110764%_))))
              (let () (declare (not safe)) (_%$E110752110764%_))))))
    (define __compile-define-values%
      (lambda (_%stx110639%_)
        (let* ((_%$e110641%_ _%stx110639%_)
               (_%$E110643110655%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110641%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110641%_))
              (let* ((_%$tgt110644110658%_
                      (let () (declare (not safe)) (__AST-e _%$e110641%_)))
                     (_%$hd110645110661%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110644110658%_)))
                     (_%$tl110646110664%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110644110658%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110646110664%_))
                    (let* ((_%$tgt110647110668%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110646110664%_)))
                           (_%$hd110648110671%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110647110668%_)))
                           (_%$tl110649110674%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110647110668%_))))
                      (let ((_%hd110678%_ _%$hd110648110671%_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$tl110649110674%_))
                            (let* ((_%$tgt110650110680%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl110649110674%_)))
                                   (_%$hd110651110683%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt110650110680%_)))
                                   (_%$tl110652110686%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt110650110680%_))))
                              (let ((_%expr110690%_ _%$hd110651110683%_))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$tl110652110686%_))
                                            '())
                                    (let* ((_%$e110692%_ _%hd110678%_)
                                           (_%$E110694110735%_
                                            (lambda ()
                                              (let ((_%$E110695110720%_
                                                     (lambda ()
                                                       (let* ((_%$E110696110707%_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _%$e110692%_))))
                      (_%ids110710%_ _%hd110678%_)
                      (_%len110712%_ (length _%ids110710%_))
                      (_%tmp110714%_
                       (let ((__tmp111219
                              (let () (declare (not safe)) (##gensym))))
                         (declare (not safe))
                         (__SRC__0 __tmp111219))))
                 (let ((__tmp111220
                        (cons 'begin
                              (cons (let ((__tmp111221
                                           (cons 'define
                                                 (cons _%tmp110714%_
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__compile _%expr110690%_))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (__SRC__% __tmp111221 _%stx110639%_))
                                    (cons (let ((__tmp111222
                                                 (cons '__check-values
                                                       (cons _%tmp110714%_
                                                             (cons _%len110712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (__SRC__%
                                             __tmp111222
                                             _%stx110639%_))
                                          (let ((__tmp111223
                                                 (let ((__tmp111225
                                                        (lambda (_%id110717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%k110718%_)
                  (if (let () (declare (not safe)) (__AST-e _%id110717%_))
                      (let ((__tmp111226
                             (cons 'define
                                   (cons (let ()
                                           (declare (not safe))
                                           (__SRC__0 _%id110717%_))
                                         (cons (cons '##vector-ref
                                                     (cons _%tmp110714%_
                                                           (cons _%k110718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (__SRC__% __tmp111226 _%stx110639%_))
                      '#f)))
               (__tmp111224
                (let () (declare (not safe)) (##iota _%len110712%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__filter-map2
                                                    __tmp111225
                                                    _%ids110710%_
                                                    __tmp111224))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             '()
                                             __tmp111223)))))))
                   (declare (not safe))
                   (__SRC__% __tmp111220 _%stx110639%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair?
                                                       _%$e110692%_))
                                                    (let* ((_%$tgt110697110723%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _%$e110692%_)))
                                                           (_%$hd110698110726%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$tgt110697110723%_)))
                                                           (_%$tl110699110729%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$tgt110697110723%_))))
                                                      (let ((_%id110733%_
                                                             _%$hd110698110726%_))
                                                        (if (equal? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (__AST-e _%$tl110699110729%_))
                            '())
                    (let ((__tmp111227
                           (cons 'define
                                 (cons (let ()
                                         (declare (not safe))
                                         (__SRC__0 _%id110733%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (__compile _%expr110690%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111227 _%stx110639%_))
                    (let () (declare (not safe)) (_%$E110695110720%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$E110695110720%_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _%$e110692%_))
                                          (let* ((_%$tgt110700110738%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _%$e110692%_)))
                                                 (_%$hd110701110741%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$tgt110700110738%_)))
                                                 (_%$tl110702110744%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$tgt110700110738%_))))
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$hd110701110741%_))
                                                        '#f)
                                                (if (equal? (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _%$tl110702110744%_))
                                                            '())
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile
                                                       _%expr110690%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$E110694110735%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E110694110735%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$E110694110735%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$E110643110655%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$E110643110655%_)))))
                    (let () (declare (not safe)) (_%$E110643110655%_))))
              (let () (declare (not safe)) (_%$E110643110655%_))))))
    (define __compile-head-id
      (lambda (_%e110637%_)
        (let ((__tmp111228
               (if (let () (declare (not safe)) (__AST-e _%e110637%_))
                   _%e110637%_
                   (let () (declare (not safe)) (##gensym)))))
          (declare (not safe))
          (__SRC__0 __tmp111228))))
    (define __compile-lambda-head
      (lambda (_%hd110594%_)
        (let _%recur110596%_ ((_%rest110598%_ _%hd110594%_))
          (let* ((_%$e110600%_ _%rest110598%_)
                 (_%$E110602110620%_
                  (lambda ()
                    (let ((_%$E110603110617%_
                           (lambda ()
                             (let* ((_%$E110604110612%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e110600%_))))
                                    (_%tail110615%_ _%$e110600%_))
                               (declare (not safe))
                               (__compile-head-id _%tail110615%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110600%_))
                                  '())
                          '()
                          (let ()
                            (declare (not safe))
                            (_%$E110603110617%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110600%_))
                (let* ((_%$tgt110605110623%_
                        (let () (declare (not safe)) (__AST-e _%$e110600%_)))
                       (_%$hd110606110626%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110605110623%_)))
                       (_%$tl110607110629%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110605110623%_))))
                  (let* ((_%hd110633%_ _%$hd110606110626%_)
                         (_%rest110635%_ _%$tl110607110629%_))
                    (cons (let ()
                            (declare (not safe))
                            (__compile-head-id _%hd110633%_))
                          (let ()
                            (declare (not safe))
                            (_%recur110596%_ _%rest110635%_)))))
                (let () (declare (not safe)) (_%$E110602110620%_)))))))
    (define __compile-lambda%
      (lambda (_%stx110541%_)
        (let* ((_%$e110543%_ _%stx110541%_)
               (_%$E110545110557%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110543%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110543%_))
              (let* ((_%$tgt110546110560%_
                      (let () (declare (not safe)) (__AST-e _%$e110543%_)))
                     (_%$hd110547110563%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110546110560%_)))
                     (_%$tl110548110566%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110546110560%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110548110566%_))
                    (let* ((_%$tgt110549110570%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110548110566%_)))
                           (_%$hd110550110573%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110549110570%_)))
                           (_%$tl110551110576%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110549110570%_))))
                      (let ((_%hd110580%_ _%$hd110550110573%_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$tl110551110576%_))
                            (let* ((_%$tgt110552110582%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl110551110576%_)))
                                   (_%$hd110553110585%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt110552110582%_)))
                                   (_%$tl110554110588%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt110552110582%_))))
                              (let ((_%body110592%_ _%$hd110553110585%_))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$tl110554110588%_))
                                            '())
                                    (let ((__tmp111229
                                           (cons 'lambda
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (__compile-lambda-head
                                                          _%hd110580%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__compile _%body110592%_))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (__SRC__% __tmp111229 _%stx110541%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%$E110545110557%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$E110545110557%_)))))
                    (let () (declare (not safe)) (_%$E110545110557%_))))
              (let () (declare (not safe)) (_%$E110545110557%_))))))
    (define __compile-case-lambda%
      (lambda (_%stx110333%_)
        (letrec ((_%variadic?110335%_
                  (lambda (_%hd110506%_)
                    (let* ((_%$e110508%_ _%hd110506%_)
                           (_%$E110510110526%_
                            (lambda ()
                              (let ((_%$E110511110523%_
                                     (lambda ()
                                       (let ((_%$E110512110520%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e110508%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e110508%_))
                                            '())
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_%$E110511110523%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110508%_))
                          (let* ((_%$tgt110513110529%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110508%_)))
                                 (_%$hd110514110532%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110513110529%_)))
                                 (_%$tl110515110535%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110513110529%_))))
                            (let ((_%rest110539%_ _%$tl110515110535%_))
                              (declare (not safe))
                              (_%variadic?110335%_ _%rest110539%_)))
                          (let ()
                            (declare (not safe))
                            (_%$E110510110526%_))))))
                 (_%arity110336%_
                  (lambda (_%hd110471%_)
                    (let _%lp110473%_ ((_%rest110475%_ _%hd110471%_)
                                       (_%k110476%_ '0))
                      (let* ((_%$e110478%_ _%rest110475%_)
                             (_%$E110480110491%_
                              (lambda ()
                                (let ((_%$E110481110488%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e110478%_)))))
                                  _%k110476%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e110478%_))
                            (let* ((_%$tgt110482110494%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e110478%_)))
                                   (_%$hd110483110497%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt110482110494%_)))
                                   (_%$tl110484110500%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt110482110494%_))))
                              (let* ((_%rest110504%_ _%$tl110484110500%_)
                                     (__tmp111230
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%k110476%_ '1))))
                                (declare (not safe))
                                (_%lp110473%_ _%rest110504%_ __tmp111230)))
                            (let ()
                              (declare (not safe))
                              (_%$E110480110491%_)))))))
                 (_%generate110337%_
                  (lambda (_%rest110398%_ _%args110399%_ _%len110400%_)
                    (let* ((_%$e110402%_ _%rest110398%_)
                           (_%$E110404110415%_
                            (lambda ()
                              (let* ((_%$E110405110412%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _%$e110402%_))))
                                     (__tmp111231
                                      (cons 'error
                                            (cons '"No clause matching arguments"
                                                  (cons _%args110399%_ '())))))
                                (declare (not safe))
                                (__SRC__% __tmp111231 _%stx110333%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110402%_))
                          (let* ((_%$tgt110406110418%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110402%_)))
                                 (_%$hd110407110421%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110406110418%_)))
                                 (_%$tl110408110424%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110406110418%_))))
                            (let* ((_%clause110428%_ _%$hd110407110421%_)
                                   (_%rest110430%_ _%$tl110408110424%_)
                                   (_%$e110432%_ _%clause110428%_)
                                   (_%$E110434110443%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _%$e110432%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _%$e110432%_))
                                  (let* ((_%$tgt110435110446%_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _%$e110432%_)))
                                         (_%$hd110436110449%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$tgt110435110446%_)))
                                         (_%$tl110437110452%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$tgt110435110446%_))))
                                    (let ((_%hd110456%_ _%$hd110436110449%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _%$tl110437110452%_))
                                          (let* ((_%$tgt110438110458%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _%$tl110437110452%_)))
                                                 (_%$hd110439110461%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$tgt110438110458%_)))
                                                 (_%$tl110440110464%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$tgt110438110458%_))))
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl110440110464%_))
                                                        '())
                                                (let ((_%clen110468%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%arity110336%_
                                                          _%hd110456%_)))
                                                      (_%cmp110469%_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%variadic?110335%_
                                                              _%hd110456%_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp111232
                                                         (cons 'if
                                                               (cons (cons _%cmp110469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%len110400%_
                                         (cons _%clen110468%_ '())))
                             (cons (let ((__tmp111233
                                          (cons '##apply
                                                (cons (let ((__tmp111234
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause110428%_)))
                (declare (not safe))
                (__compile-lambda% __tmp111234))
              (cons _%args110399%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (__SRC__% __tmp111233 _%stx110333%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (_%generate110337%_
                                            _%rest110430%_
                                            _%args110399%_
                                            _%len110400%_))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp111232
                                                     _%stx110333%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E110434110443%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$E110434110443%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$E110434110443%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$E110404110415%_)))))))
          (let* ((_%$e110339%_ _%stx110333%_)
                 (_%$E110341110373%_
                  (lambda ()
                    (let ((_%$E110342110355%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110339%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110339%_))
                          (let* ((_%$tgt110343110358%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110339%_)))
                                 (_%$hd110344110361%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110343110358%_)))
                                 (_%$tl110345110364%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110343110358%_))))
                            (let ((_%clauses110368%_ _%$tl110345110364%_))
                              (let ((_%args110370%_
                                     (let ((__tmp111235
                                            (let ()
                                              (declare (not safe))
                                              (##gensym))))
                                       (declare (not safe))
                                       (__SRC__% __tmp111235 _%stx110333%_)))
                                    (_%len110371%_
                                     (let ((__tmp111236
                                            (let ()
                                              (declare (not safe))
                                              (##gensym))))
                                       (declare (not safe))
                                       (__SRC__% __tmp111236 _%stx110333%_))))
                                (let ((__tmp111237
                                       (cons 'lambda
                                             (cons _%args110370%_
                                                   (cons (let ((__tmp111238
                                                                (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (cons _%len110371%_
                                                (cons (let ((__tmp111239
                                                             (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args110370%_ '()))))
                (declare (not safe))
                (__SRC__% __tmp111239 _%stx110333%_))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%generate110337%_
                                             _%clauses110368%_
                                             _%args110370%_
                                             _%len110371%_))
                                          '())))))
                   (declare (not safe))
                   (__SRC__% __tmp111238 _%stx110333%_))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (declare (not safe))
                                  (__SRC__% __tmp111237 _%stx110333%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$E110342110355%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110339%_))
                (let* ((_%$tgt110346110376%_
                        (let () (declare (not safe)) (__AST-e _%$e110339%_)))
                       (_%$hd110347110379%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110346110376%_)))
                       (_%$tl110348110382%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110346110376%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110348110382%_))
                      (let* ((_%$tgt110349110386%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110348110382%_)))
                             (_%$hd110350110389%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110349110386%_)))
                             (_%$tl110351110392%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110349110386%_))))
                        (let ((_%clause110396%_ _%$hd110350110389%_))
                          (if (equal? (let ()
                                        (declare (not safe))
                                        (__AST-e _%$tl110351110392%_))
                                      '())
                              (let ((__tmp111240
                                     (cons '%#lambda _%clause110396%_)))
                                (declare (not safe))
                                (__compile-lambda% __tmp111240))
                              (let ()
                                (declare (not safe))
                                (_%$E110341110373%_)))))
                      (let () (declare (not safe)) (_%$E110341110373%_))))
                (let () (declare (not safe)) (_%$E110341110373%_)))))))
    (define __compile-let-form
      (lambda (_%stx110102%_ _%compile-simple110103%_ _%compile-values110104%_)
        (letrec ((_%simple-bind?110106%_
                  (lambda (_%hd110291%_)
                    (let* ((_%hd110292110302%_ _%hd110291%_)
                           (_%else110295110310%_ (lambda () '#f)))
                      (let ((_%K110298110323%_ (lambda (_%id110321%_) '#t))
                            (_%K110297110315%_ (lambda () '#t)))
                        (let ((_%try-match110294110318%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd110292110302%_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_%K110297110315%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%else110295110310%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd110292110302%_))
                              (let ((_%tl110300110328%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd110292110302%_)))
                                    (_%hd110299110326%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd110292110302%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl110300110328%_))
                                    (let ((_%id110331%_ _%hd110299110326%_))
                                      (declare (not safe))
                                      (_%K110298110323%_ _%id110331%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%try-match110294110318%_))))
                              (let ()
                                (declare (not safe))
                                (_%try-match110294110318%_))))))))
                 (_%car-e110107%_
                  (lambda (_%hd110289%_)
                    (if (let () (declare (not safe)) (pair? _%hd110289%_))
                        (car _%hd110289%_)
                        _%hd110289%_))))
          (let* ((_%$e110109%_ _%stx110102%_)
                 (_%$E110111110254%_
                  (lambda ()
                    (let ((_%$E110112110134%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110109%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110109%_))
                          (let* ((_%$tgt110113110137%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110109%_)))
                                 (_%$hd110114110140%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110113110137%_)))
                                 (_%$tl110115110143%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110113110137%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110115110143%_))
                                (let* ((_%$tgt110116110147%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110115110143%_)))
                                       (_%$hd110117110150%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110116110147%_)))
                                       (_%$tl110118110153%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110116110147%_))))
                                  (let ((_%hd110157%_ _%$hd110117110150%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _%$tl110118110153%_))
                                        (let* ((_%$tgt110119110159%_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%$tl110118110153%_)))
                                               (_%$hd110120110162%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$tgt110119110159%_)))
                                               (_%$tl110121110165%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$tgt110119110159%_))))
                                          (let ((_%body110169%_
                                                 _%$hd110120110162%_))
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl110121110165%_))
                                                        '())
                                                (let* ((_%hd-ids110209%_
                                                        (map (lambda (_%bind110171%_)
                                                               (let* ((_%$e110173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%bind110171%_)
                              (_%$E110175110184%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _%$e110173%_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _%$e110173%_))
                             (let* ((_%$tgt110176110187%_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _%$e110173%_)))
                                    (_%$hd110177110190%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$tgt110176110187%_)))
                                    (_%$tl110178110193%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$tgt110176110187%_))))
                               (let ((_%ids110197%_ _%$hd110177110190%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _%$tl110178110193%_))
                                     (let* ((_%$tgt110179110199%_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110178110193%_)))
                                            (_%$hd110180110202%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$tgt110179110199%_)))
                                            (_%$tl110181110205%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$tgt110179110199%_))))
                                       (if (equal? (let ()
                                                     (declare (not safe))
                                                     (__AST-e _%$tl110181110205%_))
                                                   '())
                                           _%ids110197%_
                                           (let ()
                                             (declare (not safe))
                                             (_%$E110175110184%_))))
                                     (let ()
                                       (declare (not safe))
                                       (_%$E110175110184%_)))))
                             (let ()
                               (declare (not safe))
                               (_%$E110175110184%_)))))
                     _%hd110157%_))
               (_%exprs110249%_
                (map (lambda (_%bind110211%_)
                       (let* ((_%$e110213%_ _%bind110211%_)
                              (_%$E110215110224%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _%$e110213%_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _%$e110213%_))
                             (let* ((_%$tgt110216110227%_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _%$e110213%_)))
                                    (_%$hd110217110230%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$tgt110216110227%_)))
                                    (_%$tl110218110233%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$tgt110216110227%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _%$tl110218110233%_))
                                   (let* ((_%$tgt110219110237%_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _%$tl110218110233%_)))
                                          (_%$hd110220110240%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$tgt110219110237%_)))
                                          (_%$tl110221110243%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$tgt110219110237%_))))
                                     (let ((_%expr110247%_
                                            _%$hd110220110240%_))
                                       (if (equal? (let ()
                                                     (declare (not safe))
                                                     (__AST-e _%$tl110221110243%_))
                                                   '())
                                           (let ()
                                             (declare (not safe))
                                             (__compile _%expr110247%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%$E110215110224%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$E110215110224%_))))
                             (let ()
                               (declare (not safe))
                               (_%$E110215110224%_)))))
                     _%hd110157%_))
               (_%body110251%_
                (let () (declare (not safe)) (__compile _%body110169%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (__andmap1
                                                         _%simple-bind?110106%_
                                                         _%hd-ids110209%_))
                                                      (_%compile-simple110103%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##map _%car-e110107%_
                                                                _%hd-ids110209%_))
                                                       _%exprs110249%_
                                                       _%body110251%_)
                                                      (_%compile-values110104%_
                                                       _%hd-ids110209%_
                                                       _%exprs110249%_
                                                       _%body110251%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E110112110134%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$E110112110134%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110112110134%_))))
                          (let ()
                            (declare (not safe))
                            (_%$E110112110134%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110109%_))
                (let* ((_%$tgt110122110257%_
                        (let () (declare (not safe)) (__AST-e _%$e110109%_)))
                       (_%$hd110123110260%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110122110257%_)))
                       (_%$tl110124110263%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110122110257%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110124110263%_))
                      (let* ((_%$tgt110125110267%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110124110263%_)))
                             (_%$hd110126110270%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110125110267%_)))
                             (_%$tl110127110273%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110125110267%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd110126110270%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110127110273%_))
                                (let* ((_%$tgt110128110277%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110127110273%_)))
                                       (_%$hd110129110280%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110128110277%_)))
                                       (_%$tl110130110283%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110128110277%_))))
                                  (let ((_%body110287%_ _%$hd110129110280%_))
                                    (if (equal? (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%$tl110130110283%_))
                                                '())
                                        (let ()
                                          (declare (not safe))
                                          (__compile _%body110287%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%$E110111110254%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110111110254%_)))
                            (let ()
                              (declare (not safe))
                              (_%$E110111110254%_))))
                      (let () (declare (not safe)) (_%$E110111110254%_))))
                (let () (declare (not safe)) (_%$E110111110254%_)))))))
    (define __compile-let-values%
      (lambda (_%stx109914%_)
        (letrec ((_%compile-simple109916%_
                  (lambda (_%hd-ids110098%_ _%exprs110099%_ _%body110100%_)
                    (let ((__tmp111241
                           (cons 'let
                                 (cons (let ((__tmp111242
                                              (map __compile-head-id
                                                   _%hd-ids110098%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111242
                                                _%exprs110099%_))
                                       (cons _%body110100%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111241 _%stx109914%_))))
                 (_%compile-values109917%_
                  (lambda (_%hd-ids110013%_ _%exprs110014%_ _%body110015%_)
                    (let _%lp110017%_ ((_%rest110019%_ _%hd-ids110013%_)
                                       (_%exprs110020%_ _%exprs110014%_)
                                       (_%bind110021%_ '())
                                       (_%post110022%_ '()))
                      (let* ((_%rest110023110037%_ _%rest110019%_)
                             (_%else110026110045%_
                              (lambda ()
                                (let ((__tmp111243
                                       (cons 'let
                                             (cons (reverse _%bind110021%_)
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (_%compile-post109918%_
                                                            _%post110022%_
                                                            _%body110015%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111243 _%stx109914%_)))))
                        (let ((_%K110031110081%_
                               (lambda (_%rest110078%_ _%id110079%_)
                                 (let ((__tmp111245 (cdr _%exprs110020%_))
                                       (__tmp111244
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _%id110079%_))
                                                    (cons (car _%exprs110020%_)
                                                          '()))
                                              _%bind110021%_)))
                                   (declare (not safe))
                                   (_%lp110017%_
                                    _%rest110078%_
                                    __tmp111245
                                    __tmp111244
                                    _%post110022%_))))
                              (_%K110028110063%_
                               (lambda (_%rest110049%_ _%hd110050%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110050%_))
                                     (let ()
                                       (let ((__tmp111247
                                              (cdr _%exprs110020%_))
                                             (__tmp111246
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _%hd110050%_))
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (car _%exprs110020%_) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind110021%_)))
                                         (declare (not safe))
                                         (_%lp110017%_
                                          _%rest110049%_
                                          __tmp111247
                                          __tmp111246
                                          _%post110022%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _%hd110050%_))
                                         (let ()
                                           (let* ((_%len110054%_
                                                   (length _%hd110050%_))
                                                  (_%tmp110056%_
                                                   (let ((__tmp111248
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym))))
                                                     (declare (not safe))
                                                     (__SRC__0 __tmp111248))))
                                             (let ((__tmp111255
                                                    (cdr _%exprs110020%_))
                                                   (__tmp111254
                                                    (cons (cons _%tmp110056%_
                                                                (cons (car _%exprs110020%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind110021%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111249
                                                    (cons (let ((__tmp111250
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111251
                                (let ((__tmp111253
                                       (lambda (_%id110059%_ _%k110060%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id110059%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _%id110059%_))
                                                   _%k110060%_)
                                             '#f)))
                                      (__tmp111252
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len110054%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111253
                                   _%hd110050%_
                                   __tmp111252))))
                           (declare (not safe))
                           (cons _%len110054%_ __tmp111251))))
                    (declare (not safe))
                    (cons _%tmp110056%_ __tmp111250))
                  _%post110022%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp110017%_
                                                _%rest110049%_
                                                __tmp111255
                                                __tmp111254
                                                __tmp111249))))
                                         (let ()
                                           (let ()
                                             (declare (not safe))
                                             (__compile-error__%
                                              _%stx109914%_
                                              _%hd110050%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110023110037%_))
                              (let ((_%tl110033110086%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110023110037%_)))
                                    (_%hd110032110084%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110023110037%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110032110084%_))
                                    (let ((_%tl110035110091%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110032110084%_)))
                                          (_%hd110034110089%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110032110084%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110035110091%_))
                                          (let ((_%id110094%_
                                                 _%hd110034110089%_)
                                                (_%rest110096%_
                                                 _%tl110033110086%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110031110081%_
                                               _%rest110096%_
                                               _%id110094%_)))
                                          (let ((_%hd110071%_
                                                 _%hd110032110084%_)
                                                (_%rest110073%_
                                                 _%tl110033110086%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K110028110063%_
                                               _%rest110073%_
                                               _%hd110071%_)))))
                                    (let ((_%hd110071%_ _%hd110032110084%_)
                                          (_%rest110073%_ _%tl110033110086%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K110028110063%_
                                         _%rest110073%_
                                         _%hd110071%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else110026110045%_))))))))
                 (_%compile-post109918%_
                  (lambda (_%post109920%_ _%body109921%_)
                    (let _%lp109923%_ ((_%rest109925%_ _%post109920%_)
                                       (_%check109926%_ '())
                                       (_%bind109927%_ '()))
                      (let* ((_%rest109928109940%_ _%rest109925%_)
                             (_%else109930109948%_
                              (lambda ()
                                (let ((__tmp111256
                                       (cons 'begin
                                             (let ((__tmp111257
                                                    (cons (let ((__tmp111258
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'let
                               (cons _%bind109927%_
                                     (cons _%body109921%_ '())))))
                    (declare (not safe))
                    (__SRC__% __tmp111258 _%stx109914%_))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp111257
                                                _%check109926%_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111256 _%stx109914%_))))
                             (_%K109932109987%_
                              (lambda (_%rest109951%_
                                       _%init109952%_
                                       _%len109953%_
                                       _%tmp109954%_)
                                (let ((__tmp111261
                                       (cons (let ((__tmp111262
                                                    (cons '__check-values
                                                          (cons _%tmp109954%_
                                                                (cons _%len109953%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp111262
                                                _%stx109914%_))
                                             _%check109926%_))
                                      (__tmp111259
                                       (let ((__tmp111260
                                              (lambda (_%hd109956%_
                                                       _%r109957%_)
                                                (let* ((_%hd109958109965%_
                                                        _%hd109956%_)
                                                       (_%E109960109969%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd109958109965%_
                           '([id . k])))
                  '#!void))
               (_%K109961109975%_
                (lambda (_%k109972%_ _%id109973%_)
                  (cons (cons _%id109973%_
                              (cons (cons '##vector-ref
                                          (cons _%tmp109954%_
                                                (cons _%k109972%_ '())))
                                    '()))
                        _%r109957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd109958109965%_))
                                                      (let ((_%hd109962109978%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd109958109965%_)))
                    (_%tl109963109980%_
                     (let () (declare (not safe)) (##cdr _%hd109958109965%_))))
                (let* ((_%id109983%_ _%hd109962109978%_)
                       (_%k109985%_ _%tl109963109980%_))
                  (declare (not safe))
                  (_%K109961109975%_ _%k109985%_ _%id109983%_)))
              (let () (declare (not safe)) (_%E109960109969%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp111260
                                          _%bind109927%_
                                          _%init109952%_))))
                                  (declare (not safe))
                                  (_%lp109923%_
                                   _%rest109951%_
                                   __tmp111261
                                   __tmp111259)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest109928109940%_))
                            (let ((_%hd109933109990%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest109928109940%_)))
                                  (_%tl109934109992%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest109928109940%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd109933109990%_))
                                  (let ((_%hd109935109995%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd109933109990%_)))
                                        (_%tl109936109997%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd109933109990%_))))
                                    (let ((_%tmp110000%_ _%hd109935109995%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl109936109997%_))
                                          (let ((_%hd109937110002%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl109936109997%_)))
                                                (_%tl109938110004%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl109936109997%_))))
                                            (let* ((_%len110007%_
                                                    _%hd109937110002%_)
                                                   (_%init110009%_
                                                    _%tl109938110004%_)
                                                   (_%rest110011%_
                                                    _%tl109934109992%_))
                                              (declare (not safe))
                                              (_%K109932109987%_
                                               _%rest110011%_
                                               _%init110009%_
                                               _%len110007%_
                                               _%tmp110000%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else109930109948%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else109930109948%_))))
                            (let ()
                              (declare (not safe))
                              (_%else109930109948%_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx109914%_
             _%compile-simple109916%_
             _%compile-values109917%_)))))
    (define __compile-letrec-values%
      (lambda (_%stx109711%_)
        (letrec ((_%compile-simple109713%_
                  (lambda (_%hd-ids109910%_ _%exprs109911%_ _%body109912%_)
                    (let ((__tmp111263
                           (cons 'letrec
                                 (cons (let ((__tmp111264
                                              (map __compile-head-id
                                                   _%hd-ids109910%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111264
                                                _%exprs109911%_))
                                       (cons _%body109912%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111263 _%stx109711%_))))
                 (_%compile-values109714%_
                  (lambda (_%hd-ids109821%_ _%exprs109822%_ _%body109823%_)
                    (let _%lp109825%_ ((_%rest109827%_ _%hd-ids109821%_)
                                       (_%exprs109828%_ _%exprs109822%_)
                                       (_%pre109829%_ '())
                                       (_%bind109830%_ '())
                                       (_%post109831%_ '()))
                      (let* ((_%rest109832109846%_ _%rest109827%_)
                             (_%else109835109854%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_%compile-inner109715%_
                                   _%pre109829%_
                                   _%bind109830%_
                                   _%post109831%_
                                   _%body109823%_)))))
                        (let ((_%K109840109893%_
                               (lambda (_%rest109890%_ _%id109891%_)
                                 (let ((__tmp111266 (cdr _%exprs109828%_))
                                       (__tmp111265
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _%id109891%_))
                                                    (cons (car _%exprs109828%_)
                                                          '()))
                                              _%bind109830%_)))
                                   (declare (not safe))
                                   (_%lp109825%_
                                    _%rest109890%_
                                    __tmp111266
                                    _%pre109829%_
                                    __tmp111265
                                    _%post109831%_))))
                              (_%K109837109875%_
                               (lambda (_%rest109858%_ _%hd109859%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd109859%_))
                                     (let ()
                                       (let ((__tmp111268
                                              (cdr _%exprs109828%_))
                                             (__tmp111267
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _%hd109859%_))
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (car _%exprs109828%_) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind109830%_)))
                                         (declare (not safe))
                                         (_%lp109825%_
                                          _%rest109858%_
                                          __tmp111268
                                          _%pre109829%_
                                          __tmp111267
                                          _%post109831%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _%hd109859%_))
                                         (let ()
                                           (let* ((_%len109863%_
                                                   (length _%hd109859%_))
                                                  (_%tmp109865%_
                                                   (let ((__tmp111269
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym))))
                                                     (declare (not safe))
                                                     (__SRC__0 __tmp111269))))
                                             (let ((__tmp111278
                                                    (cdr _%exprs109828%_))
                                                   (__tmp111276
                                                    (let ((__tmp111277
                                                           (lambda (_%id109868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%r109869%_)
                     (if (let () (declare (not safe)) (__AST-e _%id109868%_))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (__SRC__0 _%id109868%_))
                                     (cons (cons 'quote (cons '#!void '()))
                                           '()))
                               _%r109869%_)
                         _%r109869%_))))
              (declare (not safe))
              (__foldl1 __tmp111277 _%pre109829%_ _%hd109859%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111275
                                                    (cons (cons _%tmp109865%_
                                                                (cons (car _%exprs109828%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind109830%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111270
                                                    (cons (let ((__tmp111271
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111272
                                (let ((__tmp111274
                                       (lambda (_%id109871%_ _%k109872%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id109871%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _%id109871%_))
                                                   _%k109872%_)
                                             '#f)))
                                      (__tmp111273
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len109863%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111274
                                   _%hd109859%_
                                   __tmp111273))))
                           (declare (not safe))
                           (cons _%len109863%_ __tmp111272))))
                    (declare (not safe))
                    (cons _%tmp109865%_ __tmp111271))
                  _%post109831%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp109825%_
                                                _%rest109858%_
                                                __tmp111278
                                                __tmp111276
                                                __tmp111275
                                                __tmp111270))))
                                         (let ()
                                           (let ()
                                             (declare (not safe))
                                             (__compile-error__%
                                              _%stx109711%_
                                              _%hd109859%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest109832109846%_))
                              (let ((_%tl109842109898%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest109832109846%_)))
                                    (_%hd109841109896%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest109832109846%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd109841109896%_))
                                    (let ((_%tl109844109903%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd109841109896%_)))
                                          (_%hd109843109901%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd109841109896%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl109844109903%_))
                                          (let ((_%id109906%_
                                                 _%hd109843109901%_)
                                                (_%rest109908%_
                                                 _%tl109842109898%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109840109893%_
                                               _%rest109908%_
                                               _%id109906%_)))
                                          (let ((_%hd109883%_
                                                 _%hd109841109896%_)
                                                (_%rest109885%_
                                                 _%tl109842109898%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109837109875%_
                                               _%rest109885%_
                                               _%hd109883%_)))))
                                    (let ((_%hd109883%_ _%hd109841109896%_)
                                          (_%rest109885%_ _%tl109842109898%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K109837109875%_
                                         _%rest109885%_
                                         _%hd109883%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else109835109854%_))))))))
                 (_%compile-inner109715%_
                  (lambda (_%pre109816%_
                           _%bind109817%_
                           _%post109818%_
                           _%body109819%_)
                    (if (let () (declare (not safe)) (null? _%pre109816%_))
                        (let ()
                          (declare (not safe))
                          (_%compile-bind109716%_
                           _%bind109817%_
                           _%post109818%_
                           _%body109819%_))
                        (let ((__tmp111279
                               (cons 'let
                                     (cons (reverse _%pre109816%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%compile-bind109716%_
                                                    _%bind109817%_
                                                    _%post109818%_
                                                    _%body109819%_))
                                                 '())))))
                          (declare (not safe))
                          (__SRC__% __tmp111279 _%stx109711%_)))))
                 (_%compile-bind109716%_
                  (lambda (_%bind109812%_ _%post109813%_ _%body109814%_)
                    (let ((__tmp111280
                           (cons 'letrec
                                 (cons (reverse _%bind109812%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%compile-post109717%_
                                                _%post109813%_
                                                _%body109814%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111280 _%stx109711%_))))
                 (_%compile-post109717%_
                  (lambda (_%post109719%_ _%body109720%_)
                    (let _%lp109722%_ ((_%rest109724%_ _%post109719%_)
                                       (_%check109725%_ '())
                                       (_%bind109726%_ '()))
                      (let* ((_%rest109727109739%_ _%rest109724%_)
                             (_%else109729109747%_
                              (lambda ()
                                (let ((__tmp111281
                                       (cons 'begin
                                             (let ((__tmp111282
                                                    (let ((__tmp111283
                                                           (cons _%body109720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
              (declare (not safe))
              (__foldr1 cons __tmp111283 _%bind109726%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp111282
                                                _%check109725%_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111281 _%stx109711%_))))
                             (_%K109731109786%_
                              (lambda (_%rest109750%_
                                       _%init109751%_
                                       _%len109752%_
                                       _%tmp109753%_)
                                (let ((__tmp111286
                                       (cons (let ((__tmp111287
                                                    (cons '__check-values
                                                          (cons _%tmp109753%_
                                                                (cons _%len109752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp111287
                                                _%stx109711%_))
                                             _%check109725%_))
                                      (__tmp111284
                                       (let ((__tmp111285
                                              (lambda (_%hd109755%_
                                                       _%r109756%_)
                                                (let* ((_%hd109757109764%_
                                                        _%hd109755%_)
                                                       (_%E109759109768%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd109757109764%_
                           '([id . k])))
                  '#!void))
               (_%K109760109774%_
                (lambda (_%k109771%_ _%id109772%_)
                  (cons (cons 'set!
                              (cons _%id109772%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp109753%_
                                                      (cons _%k109771%_ '())))
                                          '())))
                        _%r109756%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd109757109764%_))
                                                      (let ((_%hd109761109777%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd109757109764%_)))
                    (_%tl109762109779%_
                     (let () (declare (not safe)) (##cdr _%hd109757109764%_))))
                (let* ((_%id109782%_ _%hd109761109777%_)
                       (_%k109784%_ _%tl109762109779%_))
                  (declare (not safe))
                  (_%K109760109774%_ _%k109784%_ _%id109782%_)))
              (let () (declare (not safe)) (_%E109759109768%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp111285
                                          _%bind109726%_
                                          _%init109751%_))))
                                  (declare (not safe))
                                  (_%lp109722%_
                                   _%rest109750%_
                                   __tmp111286
                                   __tmp111284)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest109727109739%_))
                            (let ((_%hd109732109789%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest109727109739%_)))
                                  (_%tl109733109791%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest109727109739%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd109732109789%_))
                                  (let ((_%hd109734109794%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd109732109789%_)))
                                        (_%tl109735109796%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd109732109789%_))))
                                    (let ((_%tmp109799%_ _%hd109734109794%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl109735109796%_))
                                          (let ((_%hd109736109801%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl109735109796%_)))
                                                (_%tl109737109803%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl109735109796%_))))
                                            (let* ((_%len109806%_
                                                    _%hd109736109801%_)
                                                   (_%init109808%_
                                                    _%tl109737109803%_)
                                                   (_%rest109810%_
                                                    _%tl109733109791%_))
                                              (declare (not safe))
                                              (_%K109731109786%_
                                               _%rest109810%_
                                               _%init109808%_
                                               _%len109806%_
                                               _%tmp109799%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else109729109747%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else109729109747%_))))
                            (let ()
                              (declare (not safe))
                              (_%else109729109747%_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx109711%_
             _%compile-simple109713%_
             _%compile-values109714%_)))))
    (define __compile-letrec*-values%
      (lambda (_%stx109462%_)
        (letrec ((_%compile-simple109464%_
                  (lambda (_%hd-ids109707%_ _%exprs109708%_ _%body109709%_)
                    (let ((__tmp111288
                           (cons 'letrec*
                                 (cons (let ((__tmp111289
                                              (map __compile-head-id
                                                   _%hd-ids109707%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111289
                                                _%exprs109708%_))
                                       (cons _%body109709%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111288 _%stx109462%_))))
                 (_%compile-values109465%_
                  (lambda (_%hd-ids109614%_ _%exprs109615%_ _%body109616%_)
                    (let _%lp109618%_ ((_%rest109620%_ _%hd-ids109614%_)
                                       (_%exprs109621%_ _%exprs109615%_)
                                       (_%bind109622%_ '())
                                       (_%post109623%_ '()))
                      (let* ((_%rest109624109638%_ _%rest109620%_)
                             (_%else109627109646%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_%compile-bind109466%_
                                   _%bind109622%_
                                   _%post109623%_
                                   _%body109616%_)))))
                        (let ((_%K109632109690%_
                               (lambda (_%rest109685%_ _%hd109686%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd109686%_))
                                     (let ((_%id109688%_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _%hd109686%_))))
                                       (let ((__tmp111292
                                              (cdr _%exprs109621%_))
                                             (__tmp111291
                                              (cons (cons _%id109688%_
                                                          (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#!void '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind109622%_))
                                             (__tmp111290
                                              (cons (cons _%id109688%_
                                                          (cons (car _%exprs109621%_)
                                                                '()))
                                                    _%post109623%_)))
                                         (declare (not safe))
                                         (_%lp109618%_
                                          _%rest109685%_
                                          __tmp111292
                                          __tmp111291
                                          __tmp111290)))
                                     (let ((__tmp111294 (cdr _%exprs109621%_))
                                           (__tmp111293
                                            (cons (cons '#f
                                                        (cons (car _%exprs109621%_)
                                                              '()))
                                                  _%post109623%_)))
                                       (declare (not safe))
                                       (_%lp109618%_
                                        _%rest109685%_
                                        __tmp111294
                                        _%bind109622%_
                                        __tmp111293)))))
                              (_%K109629109670%_
                               (lambda (_%rest109650%_ _%hd109651%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd109651%_))
                                     (let ()
                                       (let ((_%id109654%_
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _%hd109651%_))))
                                         (let ((__tmp111297
                                                (cdr _%exprs109621%_))
                                               (__tmp111296
                                                (cons (cons _%id109654%_
                                                            (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons '#!void '()))
                          '()))
              _%bind109622%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp111295
                                                (cons (cons _%id109654%_
                                                            (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (car _%exprs109621%_) '()))
                          '()))
              _%post109623%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp109618%_
                                            _%rest109650%_
                                            __tmp111297
                                            __tmp111296
                                            __tmp111295))))
                                     (if (let ((__tmp111298
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%hd109651%_))))
                                           (declare (not safe))
                                           (not __tmp111298))
                                         (let ()
                                           (let ((__tmp111300
                                                  (cdr _%exprs109621%_))
                                                 (__tmp111299
                                                  (cons (cons '#f
                                                              (cons (car _%exprs109621%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%post109623%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_%lp109618%_
                                              _%rest109650%_
                                              __tmp111300
                                              _%bind109622%_
                                              __tmp111299)))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _%hd109651%_))
                                             (let ()
                                               (let* ((_%len109658%_
                                                       (length _%hd109651%_))
                                                      (_%tmp109660%_
                                                       (let ((__tmp111301
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym))))
                 (declare (not safe))
                 (__SRC__0 __tmp111301))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp111311
                                                        (cdr _%exprs109621%_))
                                                       (__tmp111309
                                                        (let ((__tmp111310
                                                               (lambda (_%id109663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%r109664%_)
                         (if (let ()
                               (declare (not safe))
                               (__AST-e _%id109663%_))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (__SRC__0 _%id109663%_))
                                         (cons (cons 'quote (cons '#!void '()))
                                               '()))
                                   _%r109664%_)
                             _%r109664%_))))
                  (declare (not safe))
                  (__foldl1 __tmp111310 _%bind109622%_ _%hd109651%_)))
               (__tmp111302
                (cons (let ((__tmp111303
                             (let ((__tmp111308 (car _%exprs109621%_))
                                   (__tmp111304
                                    (let ((__tmp111305
                                           (let ((__tmp111307
                                                  (lambda (_%id109666%_
                                                           _%k109667%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%id109666%_))
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _%id109666%_))
                      _%k109667%_)
                '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp111306
                                                  (let ()
                                                    (declare (not safe))
                                                    (##iota _%len109658%_))))
                                             (declare (not safe))
                                             (__filter-map2
                                              __tmp111307
                                              _%hd109651%_
                                              __tmp111306))))
                                      (declare (not safe))
                                      (cons _%len109658%_ __tmp111305))))
                               (declare (not safe))
                               (cons __tmp111308 __tmp111304))))
                        (declare (not safe))
                        (cons _%tmp109660%_ __tmp111303))
                      _%post109623%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%lp109618%_
                                                    _%rest109650%_
                                                    __tmp111311
                                                    __tmp111309
                                                    __tmp111302))))
                                             (let ()
                                               (let ()
                                                 (declare (not safe))
                                                 (__compile-error__%
                                                  _%stx109462%_
                                                  _%hd109651%_)))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest109624109638%_))
                              (let ((_%tl109634109695%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest109624109638%_)))
                                    (_%hd109633109693%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest109624109638%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd109633109693%_))
                                    (let ((_%tl109636109700%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd109633109693%_)))
                                          (_%hd109635109698%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd109633109693%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl109636109700%_))
                                          (let ((_%hd109703%_
                                                 _%hd109635109698%_)
                                                (_%rest109705%_
                                                 _%tl109634109695%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109632109690%_
                                               _%rest109705%_
                                               _%hd109703%_)))
                                          (let ((_%hd109678%_
                                                 _%hd109633109693%_)
                                                (_%rest109680%_
                                                 _%tl109634109695%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109629109670%_
                                               _%rest109680%_
                                               _%hd109678%_)))))
                                    (let ((_%hd109678%_ _%hd109633109693%_)
                                          (_%rest109680%_ _%tl109634109695%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K109629109670%_
                                         _%rest109680%_
                                         _%hd109678%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else109627109646%_))))))))
                 (_%compile-bind109466%_
                  (lambda (_%bind109610%_ _%post109611%_ _%body109612%_)
                    (let ((__tmp111312
                           (cons 'let
                                 (cons (reverse _%bind109610%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%compile-post109467%_
                                                _%post109611%_
                                                _%body109612%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111312 _%stx109462%_))))
                 (_%compile-post109467%_
                  (lambda (_%post109469%_ _%body109470%_)
                    (let ((__tmp111313
                           (cons 'begin
                                 (let ((__tmp111314
                                        (let ((__tmp111316
                                               (lambda (_%hd109472%_
                                                        _%r109473%_)
                                                 (let* ((_%hd109474109497%_
                                                         _%hd109472%_)
                                                        (_%E109478109501%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd109474109497%_
                            '([#f expr])
                            '([id expr])
                            '([tmp expr len . init])))
                   '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%K109491109595%_
                                                          (lambda (_%expr109593%_)
                                                            (cons _%expr109593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r109473%_)))
                 (_%K109486109573%_
                  (lambda (_%expr109570%_ _%id109571%_)
                    (cons (let ((__tmp111317
                                 (cons 'set!
                                       (cons _%id109571%_
                                             (cons _%expr109570%_ '())))))
                            (declare (not safe))
                            (__SRC__% __tmp111317 _%stx109462%_))
                          _%r109473%_)))
                 (_%K109479109540%_
                  (lambda (_%init109505%_
                           _%len109506%_
                           _%expr109507%_
                           _%tmp109508%_)
                    (cons (let ((__tmp111318
                                 (cons 'let
                                       (cons (cons (cons _%tmp109508%_
                                                         (cons _%expr109507%_
                                                               '()))
                                                   '())
                                             (cons (let ((__tmp111319
                                                          (cons '__check-values
                                                                (cons _%tmp109508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%len109506%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      __tmp111319
                                                      _%stx109462%_))
                                                   (let ((__tmp111320
                                                          (map (lambda (_%hd109510%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%hd109511109518%_ _%hd109510%_)
                                (_%E109513109522%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _%hd109511109518%_
                                            '([id . k])))
                                   '#!void))
                                (_%K109514109528%_
                                 (lambda (_%k109525%_ _%id109526%_)
                                   (let ((__tmp111321
                                          (cons 'set!
                                                (cons _%id109526%_
                                                      (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%tmp109508%_ (cons _%k109525%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (__SRC__% __tmp111321 _%stx109462%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%hd109511109518%_))
                               (let ((_%hd109515109531%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%hd109511109518%_)))
                                     (_%tl109516109533%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%hd109511109518%_))))
                                 (let* ((_%id109536%_ _%hd109515109531%_)
                                        (_%k109538%_ _%tl109516109533%_))
                                   (declare (not safe))
                                   (_%K109514109528%_
                                    _%k109538%_
                                    _%id109536%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%E109513109522%_)))))
                       _%init109505%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      '()
                                                      __tmp111320)))))))
                            (declare (not safe))
                            (__SRC__% __tmp111318 _%stx109462%_))
                          _%r109473%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__match111089111090%_
                                                             (lambda (_%hd109480109543%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tl109481109545%_
                              _%hd109482109550%_
                              _%tl109483109552%_)
                       (let ((_%tmp109548%_ _%hd109480109543%_)
                             (_%expr109555%_ _%hd109482109550%_))
                         (let () (declare (not safe)) (_%E109478109501%_)))))
                    (_%__match111083111084%_
                     (lambda (_%hd109480109543%_ _%tl109481109545%_)
                       (let ((_%tmp109548%_ _%hd109480109543%_))
                         (declare (not safe))
                         (_%E109478109501%_)))))
               (if (let () (declare (not safe)) (##pair? _%hd109474109497%_))
                   (let ((_%tl109493109600%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd109474109497%_)))
                         (_%hd109492109598%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd109474109497%_))))
                     (if (let ()
                           (declare (not safe))
                           (##eq? _%hd109492109598%_ '#f))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%tl109493109600%_))
                             (let ((_%tl109495109605%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl109493109600%_)))
                                   (_%hd109494109603%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%tl109493109600%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl109495109605%_))
                                   (let ((_%expr109608%_ _%hd109494109603%_))
                                     (declare (not safe))
                                     (_%K109491109595%_ _%expr109608%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%tl109495109605%_))
                                       (let ((_%tl109485109559%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl109495109605%_)))
                                             (_%hd109484109557%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%tl109495109605%_))))
                                         (let ((_%tmp109548%_
                                                _%hd109492109598%_)
                                               (_%expr109555%_
                                                _%hd109494109603%_)
                                               (_%len109562%_
                                                _%hd109484109557%_)
                                               (_%init109564%_
                                                _%tl109485109559%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%K109479109540%_
                                              _%init109564%_
                                              _%len109562%_
                                              _%expr109555%_
                                              _%tmp109548%_))))
                                       (_%__match111089111090%_
                                        _%hd109492109598%_
                                        _%tl109493109600%_
                                        _%hd109494109603%_
                                        _%tl109495109605%_))))
                             (_%__match111083111084%_
                              _%hd109492109598%_
                              _%tl109493109600%_))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%tl109493109600%_))
                             (let ((_%tl109490109585%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl109493109600%_)))
                                   (_%hd109489109583%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%tl109493109600%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl109490109585%_))
                                   (let ((_%id109581%_ _%hd109492109598%_)
                                         (_%expr109588%_ _%hd109489109583%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%K109486109573%_
                                        _%expr109588%_
                                        _%id109581%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%tl109490109585%_))
                                       (let ((_%tl109485109559%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl109490109585%_)))
                                             (_%hd109484109557%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%tl109490109585%_))))
                                         (let ((_%tmp109548%_
                                                _%hd109492109598%_)
                                               (_%expr109555%_
                                                _%hd109489109583%_)
                                               (_%len109562%_
                                                _%hd109484109557%_)
                                               (_%init109564%_
                                                _%tl109485109559%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%K109479109540%_
                                              _%init109564%_
                                              _%len109562%_
                                              _%expr109555%_
                                              _%tmp109548%_))))
                                       (_%__match111089111090%_
                                        _%hd109492109598%_
                                        _%tl109493109600%_
                                        _%hd109489109583%_
                                        _%tl109490109585%_))))
                             (_%__match111083111084%_
                              _%hd109492109598%_
                              _%tl109493109600%_))))
                   (let () (declare (not safe)) (_%E109478109501%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (__tmp111315
                                               (list _%body109470%_)))
                                          (declare (not safe))
                                          (__foldl1
                                           __tmp111316
                                           __tmp111315
                                           _%post109469%_))))
                                   (declare (not safe))
                                   (__foldr1 cons '() __tmp111314)))))
                      (declare (not safe))
                      (__SRC__% __tmp111313 _%stx109462%_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx109462%_
             _%compile-simple109464%_
             _%compile-values109465%_)))))
    (define __compile-call%
      (lambda (_%stx109422%_)
        (let* ((_%$e109424%_ _%stx109422%_)
               (_%$E109426109435%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109424%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109424%_))
              (let* ((_%$tgt109427109438%_
                      (let () (declare (not safe)) (__AST-e _%$e109424%_)))
                     (_%$hd109428109441%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109427109438%_)))
                     (_%$tl109429109444%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109427109438%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109429109444%_))
                    (let* ((_%$tgt109430109448%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109429109444%_)))
                           (_%$hd109431109451%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109430109448%_)))
                           (_%$tl109432109454%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109430109448%_))))
                      (let* ((_%rator109458%_ _%$hd109431109451%_)
                             (_%rands109460%_ _%$tl109432109454%_)
                             (__tmp111322
                              (cons (let ()
                                      (declare (not safe))
                                      (__compile _%rator109458%_))
                                    (map __compile _%rands109460%_))))
                        (declare (not safe))
                        (__SRC__% __tmp111322 _%stx109422%_)))
                    (let () (declare (not safe)) (_%$E109426109435%_))))
              (let () (declare (not safe)) (_%$E109426109435%_))))))
    (define __compile-ref%
      (lambda (_%stx109384%_)
        (let* ((_%$e109386%_ _%stx109384%_)
               (_%$E109388109397%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109386%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109386%_))
              (let* ((_%$tgt109389109400%_
                      (let () (declare (not safe)) (__AST-e _%$e109386%_)))
                     (_%$hd109390109403%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109389109400%_)))
                     (_%$tl109391109406%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109389109400%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109391109406%_))
                    (let* ((_%$tgt109392109410%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109391109406%_)))
                           (_%$hd109393109413%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109392109410%_)))
                           (_%$tl109394109416%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109392109410%_))))
                      (let ((_%id109420%_ _%$hd109393109413%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl109394109416%_))
                                    '())
                            (let ()
                              (declare (not safe))
                              (__SRC__% _%id109420%_ _%stx109384%_))
                            (let ()
                              (declare (not safe))
                              (_%$E109388109397%_)))))
                    (let () (declare (not safe)) (_%$E109388109397%_))))
              (let () (declare (not safe)) (_%$E109388109397%_))))))
    (define __compile-setq%
      (lambda (_%stx109331%_)
        (let* ((_%$e109333%_ _%stx109331%_)
               (_%$E109335109347%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109333%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109333%_))
              (let* ((_%$tgt109336109350%_
                      (let () (declare (not safe)) (__AST-e _%$e109333%_)))
                     (_%$hd109337109353%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109336109350%_)))
                     (_%$tl109338109356%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109336109350%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109338109356%_))
                    (let* ((_%$tgt109339109360%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109338109356%_)))
                           (_%$hd109340109363%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109339109360%_)))
                           (_%$tl109341109366%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109339109360%_))))
                      (let ((_%id109370%_ _%$hd109340109363%_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$tl109341109366%_))
                            (let* ((_%$tgt109342109372%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl109341109366%_)))
                                   (_%$hd109343109375%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt109342109372%_)))
                                   (_%$tl109344109378%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt109342109372%_))))
                              (let ((_%expr109382%_ _%$hd109343109375%_))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$tl109344109378%_))
                                            '())
                                    (let ((__tmp111323
                                           (cons 'set!
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (__SRC__%
                                                          _%id109370%_
                                                          _%stx109331%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__compile _%expr109382%_))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (__SRC__% __tmp111323 _%stx109331%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%$E109335109347%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$E109335109347%_)))))
                    (let () (declare (not safe)) (_%$E109335109347%_))))
              (let () (declare (not safe)) (_%$E109335109347%_))))))
    (define __compile-if%
      (lambda (_%stx109263%_)
        (let* ((_%$e109265%_ _%stx109263%_)
               (_%$E109267109282%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109265%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109265%_))
              (let* ((_%$tgt109268109285%_
                      (let () (declare (not safe)) (__AST-e _%$e109265%_)))
                     (_%$hd109269109288%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109268109285%_)))
                     (_%$tl109270109291%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109268109285%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109270109291%_))
                    (let* ((_%$tgt109271109295%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109270109291%_)))
                           (_%$hd109272109298%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109271109295%_)))
                           (_%$tl109273109301%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109271109295%_))))
                      (let ((_%p109305%_ _%$hd109272109298%_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$tl109273109301%_))
                            (let* ((_%$tgt109274109307%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl109273109301%_)))
                                   (_%$hd109275109310%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt109274109307%_)))
                                   (_%$tl109276109313%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt109274109307%_))))
                              (let ((_%t109317%_ _%$hd109275109310%_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _%$tl109276109313%_))
                                    (let* ((_%$tgt109277109319%_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _%$tl109276109313%_)))
                                           (_%$hd109278109322%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$tgt109277109319%_)))
                                           (_%$tl109279109325%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$tgt109277109319%_))))
                                      (let ((_%f109329%_ _%$hd109278109322%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl109279109325%_))
                                                    '())
                                            (let ((__tmp111324
                                                   (cons 'if
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__compile _%p109305%_))
                       (cons (let ()
                               (declare (not safe))
                               (__compile _%t109317%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (__compile _%f109329%_))
                                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp111324
                                               _%stx109263%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%$E109267109282%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$E109267109282%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$E109267109282%_)))))
                    (let () (declare (not safe)) (_%$E109267109282%_))))
              (let () (declare (not safe)) (_%$E109267109282%_))))))
    (define __compile-quote%
      (lambda (_%stx109225%_)
        (let* ((_%$e109227%_ _%stx109225%_)
               (_%$E109229109238%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109227%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109227%_))
              (let* ((_%$tgt109230109241%_
                      (let () (declare (not safe)) (__AST-e _%$e109227%_)))
                     (_%$hd109231109244%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109230109241%_)))
                     (_%$tl109232109247%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109230109241%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109232109247%_))
                    (let* ((_%$tgt109233109251%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109232109247%_)))
                           (_%$hd109234109254%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109233109251%_)))
                           (_%$tl109235109257%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109233109251%_))))
                      (let ((_%e109261%_ _%$hd109234109254%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl109235109257%_))
                                    '())
                            (let ((__tmp111325
                                   (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (__AST->datum _%e109261%_))
                                               '()))))
                              (declare (not safe))
                              (__SRC__% __tmp111325 _%stx109225%_))
                            (let ()
                              (declare (not safe))
                              (_%$E109229109238%_)))))
                    (let () (declare (not safe)) (_%$E109229109238%_))))
              (let () (declare (not safe)) (_%$E109229109238%_))))))
    (define __compile-quote-syntax%
      (lambda (_%stx109187%_)
        (let* ((_%$e109189%_ _%stx109187%_)
               (_%$E109191109200%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109189%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109189%_))
              (let* ((_%$tgt109192109203%_
                      (let () (declare (not safe)) (__AST-e _%$e109189%_)))
                     (_%$hd109193109206%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109192109203%_)))
                     (_%$tl109194109209%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109192109203%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109194109209%_))
                    (let* ((_%$tgt109195109213%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109194109209%_)))
                           (_%$hd109196109216%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109195109213%_)))
                           (_%$tl109197109219%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109195109213%_))))
                      (let ((_%e109223%_ _%$hd109196109216%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl109197109219%_))
                                    '())
                            (let ((__tmp111326
                                   (cons 'quote (cons _%e109223%_ '()))))
                              (declare (not safe))
                              (__SRC__% __tmp111326 _%stx109187%_))
                            (let ()
                              (declare (not safe))
                              (_%$E109191109200%_)))))
                    (let () (declare (not safe)) (_%$E109191109200%_))))
              (let () (declare (not safe)) (_%$E109191109200%_))))))
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
