(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1769384628)
  (begin
    (define __syntax::t
      (let ((__tmp127283 (list)) (__tmp127282 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp127283
         '(e id)
         __tmp127282
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args127087%_
        (apply make-instance __syntax::t _%$args127087%_)))
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
      (let ((__tmp127285 (list __syntax::t))
            (__tmp127284 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp127285
         '()
         __tmp127284
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args127084%_
        (apply make-instance __core-form::t _%$args127084%_)))
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
      (let ((__tmp127287 (list __core-form::t))
            (__tmp127286 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp127287
         '()
         __tmp127286
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args127081%_
        (apply make-instance __core-expression::t _%$args127081%_)))
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
      (let ((__tmp127289 (list __core-form::t))
            (__tmp127288 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp127289
         '()
         __tmp127288
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args127078%_
        (apply make-instance __core-special-form::t _%$args127078%_)))
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
      (lambda (_%id127076%_)
        (let ((__tmp127290
               (let () (declare (not safe)) (__AST-e _%id127076%_))))
          (declare (not safe))
          (__hash-get __core __tmp127290))))
    (define __core-bound-id?__%
      (lambda (_%id127059%_ _%is?127060%_)
        (let ((_%$e127062%_ (__core-resolve _%id127059%_)))
          (if _%$e127062%_ (_%is?127060%_ _%$e127062%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id127069%_)
        (let ((_%is?127071%_ true))
          (__core-bound-id?__% _%id127069%_ _%is?127071%_))))
    (define __core-bound-id?
      (lambda _g127291_
        (let ((_g127292_ (let () (declare (not safe)) (##length _g127291_))))
          (cond ((let () (declare (not safe)) (##fx= _g127292_ 1))
                 (apply __core-bound-id?__0 _g127291_))
                ((let () (declare (not safe)) (##fx= _g127292_ 2))
                 (apply __core-bound-id?__% _g127291_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g127291_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id127042%_ _%e127043%_ _%make127044%_)
        (let ((__tmp127293
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e127043%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e127043%_
                   (_%make127044%_ _%e127043%_ _%id127042%_))))
          (declare (not safe))
          (__hash-put! __core _%id127042%_ __tmp127293))))
    (define __core-bind-syntax!__0
      (lambda (_%id127049%_ _%e127050%_)
        (let ((_%make127052%_ make-__syntax))
          (__core-bind-syntax!__% _%id127049%_ _%e127050%_ _%make127052%_))))
    (define __core-bind-syntax!
      (lambda _g127294_
        (let ((_g127295_ (let () (declare (not safe)) (##length _g127294_))))
          (cond ((let () (declare (not safe)) (##fx= _g127295_ 2))
                 (apply __core-bind-syntax!__0 _g127294_))
                ((let () (declare (not safe)) (##fx= _g127295_ 3))
                 (apply __core-bind-syntax!__% _g127294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g127294_))))))
    (define __SRC__%
      (lambda (_%e127022%_ _%src-stx127023%_)
        (if (or (pair? _%e127022%_) (symbol? _%e127022%_))
            (let ((__tmp127296
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx127023%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx127023%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e127022%_ __tmp127296))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e127022%_ 'gerbil#AST::t))
                (let ((__tmp127298
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e127022%_ '1 '#f '#f)))
                      (__tmp127297
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e127022%_)))))
                  (declare (not safe))
                  (##make-source __tmp127298 __tmp127297))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e127022%_))))))
    (define __SRC__0
      (lambda (_%e127034%_)
        (let ((_%src-stx127036%_ '#f))
          (__SRC__% _%e127034%_ _%src-stx127036%_))))
    (define __SRC
      (lambda _g127299_
        (let ((_g127300_ (let () (declare (not safe)) (##length _g127299_))))
          (cond ((let () (declare (not safe)) (##fx= _g127300_ 1))
                 (apply __SRC__0 _g127299_))
                ((let () (declare (not safe)) (##fx= _g127300_ 2))
                 (apply __SRC__% _g127299_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g127299_))))))
    (define __locat
      (lambda (_%loc127019%_)
        (if (let () (declare (not safe)) (##locat? _%loc127019%_))
            _%loc127019%_
            '#f)))
    (define __check-values
      (lambda (_%obj127014%_ _%k127015%_)
        (let ((_%count127017%_
               (if (let () (declare (not safe)) (##values? _%obj127014%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj127014%_))
                   '1)))
          (if (fx= _%count127017%_ _%k127015%_)
              '#!void
              (let ((__tmp127302
                     (if (fx< _%count127017%_ _%k127015%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp127301
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj127014%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj127014%_))
                         _%obj127014%_)))
                (declare (not safe))
                (error __tmp127302 __tmp127301 _%k127015%_))))))
    (define __compile
      (lambda (_%stx126983%_)
        (let* ((_%$e126985%_ _%stx126983%_)
               (_%$E126987126993%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126985%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126985%_))
              (let* ((_%$tgt126988126996%_
                      (let () (declare (not safe)) (__AST-e _%$e126985%_)))
                     (_%$hd126989126999%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126988126996%_)))
                     (_%$tl126990127002%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126988126996%_)))
                     (_%form127006%_ _%$hd126989126999%_)
                     (_%$e127008%_ (__core-resolve _%form127006%_)))
                (if _%$e127008%_
                    ((lambda (_%bind127011%_)
                       ((##structure-ref _%bind127011%_ '1 __syntax::t '#f)
                        _%stx126983%_))
                     _%$e127008%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx126983%_
                       _%form127006%_))))
              (_%$E126987126993%_)))))
    (define __compile-error__%
      (lambda (_%stx126970%_ _%detail126971%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx126970%_
           _%detail126971%_))))
    (define __compile-error__0
      (lambda (_%stx126976%_)
        (let ((_%detail126978%_ '#f))
          (__compile-error__% _%stx126976%_ _%detail126978%_))))
    (define __compile-error
      (lambda _g127303_
        (let ((_g127304_ (let () (declare (not safe)) (##length _g127303_))))
          (cond ((let () (declare (not safe)) (##fx= _g127304_ 1))
                 (apply __compile-error__0 _g127303_))
                ((let () (declare (not safe)) (##fx= _g127304_ 2))
                 (apply __compile-error__% _g127303_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g127303_))))))
    (define __compile-ignore%
      (lambda (_%stx126967%_) (__SRC__% ''#!void _%stx126967%_)))
    (define __compile-begin%
      (lambda (_%stx126942%_)
        (let* ((_%$e126944%_ _%stx126942%_)
               (_%$E126946126952%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126944%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126944%_))
              (let* ((_%$tgt126947126955%_
                      (let () (declare (not safe)) (__AST-e _%$e126944%_)))
                     (_%$hd126948126958%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126947126955%_)))
                     (_%$tl126949126961%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126947126955%_)))
                     (_%body126965%_ _%$tl126949126961%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body126965%_))
                 _%stx126942%_))
              (_%$E126946126952%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx126917%_)
        (let* ((_%$e126919%_ _%stx126917%_)
               (_%$E126921126927%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126919%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126919%_))
              (let* ((_%$tgt126922126930%_
                      (let () (declare (not safe)) (__AST-e _%$e126919%_)))
                     (_%$hd126923126933%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126922126930%_)))
                     (_%$tl126924126936%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126922126930%_)))
                     (_%body126940%_ _%$tl126924126936%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body126940%_)))
                 _%stx126917%_))
              (_%$E126921126927%_)))))
    (define __compile-import%
      (lambda (_%stx126892%_)
        (let* ((_%$e126894%_ _%stx126892%_)
               (_%$E126896126902%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126894%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126894%_))
              (let* ((_%$tgt126897126905%_
                      (let () (declare (not safe)) (__AST-e _%$e126894%_)))
                     (_%$hd126898126908%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126897126905%_)))
                     (_%$tl126899126911%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126897126905%_)))
                     (_%body126915%_ _%$tl126899126911%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body126915%_ '())) '()))
                 _%stx126892%_))
              (_%$E126896126902%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx126839%_)
        (let* ((_%$e126841%_ _%stx126839%_)
               (_%$E126843126855%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126841%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126841%_))
              (let* ((_%$tgt126844126858%_
                      (let () (declare (not safe)) (__AST-e _%$e126841%_)))
                     (_%$hd126845126861%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126844126858%_)))
                     (_%$tl126846126864%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126844126858%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl126846126864%_))
                    (let* ((_%$tgt126847126868%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl126846126864%_)))
                           (_%$hd126848126871%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt126847126868%_)))
                           (_%$tl126849126874%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt126847126868%_)))
                           (_%ann126878%_ _%$hd126848126871%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl126849126874%_))
                          (let* ((_%$tgt126850126880%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl126849126874%_)))
                                 (_%$hd126851126883%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126850126880%_)))
                                 (_%$tl126852126886%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126850126880%_)))
                                 (_%expr126890%_ _%$hd126851126883%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl126852126886%_))
                                        '())
                                (__compile _%expr126890%_)
                                (_%$E126843126855%_)))
                          (_%$E126843126855%_)))
                    (_%$E126843126855%_)))
              (_%$E126843126855%_)))))
    (define __compile-define-values%
      (lambda (_%stx126730%_)
        (let* ((_%$e126732%_ _%stx126730%_)
               (_%$E126734126746%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126732%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126732%_))
              (let* ((_%$tgt126735126749%_
                      (let () (declare (not safe)) (__AST-e _%$e126732%_)))
                     (_%$hd126736126752%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126735126749%_)))
                     (_%$tl126737126755%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126735126749%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl126737126755%_))
                    (let* ((_%$tgt126738126759%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl126737126755%_)))
                           (_%$hd126739126762%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt126738126759%_)))
                           (_%$tl126740126765%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt126738126759%_)))
                           (_%hd126769%_ _%$hd126739126762%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl126740126765%_))
                          (let* ((_%$tgt126741126771%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl126740126765%_)))
                                 (_%$hd126742126774%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126741126771%_)))
                                 (_%$tl126743126777%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126741126771%_)))
                                 (_%expr126781%_ _%$hd126742126774%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl126743126777%_))
                                        '())
                                (let* ((_%$e126783%_ _%hd126769%_)
                                       (_%$E126785126826%_
                                        (lambda ()
                                          (let ((_%$E126786126811%_
                                                 (lambda ()
                                                   (let* ((_%$E126787126798%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e126783%_))))
                  (_%ids126801%_ _%hd126769%_)
                  (_%len126803%_ (length _%ids126801%_))
                  (_%tmp126805%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp126805%_
                                       (cons (__compile _%expr126781%_) '())))
                           _%stx126730%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp126805%_
                                             (cons _%len126803%_ '())))
                                 _%stx126730%_)
                                (let ((__tmp127305
                                       (let ((__tmp127307
                                              (lambda (_%id126808%_
                                                       _%k126809%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id126808%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id126808%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp126805%_
                                           (cons _%k126809%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx126730%_)
                                                    '#f)))
                                             (__tmp127306
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len126803%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp127307
                                          _%ids126801%_
                                          __tmp127306))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp127305)))))
              _%stx126730%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e126783%_))
                                                (let* ((_%$tgt126788126814%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e126783%_)))
                                                       (_%$hd126789126817%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt126788126814%_)))
                                                       (_%$tl126790126820%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt126788126814%_)))
                                                       (_%id126824%_
                                                        _%$hd126789126817%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl126790126820%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id126824%_)
                           (cons (__compile _%expr126781%_) '())))
               _%stx126730%_)
              (_%$E126786126811%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E126786126811%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e126783%_))
                                      (let* ((_%$tgt126791126829%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e126783%_)))
                                             (_%$hd126792126832%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt126791126829%_)))
                                             (_%$tl126793126835%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt126791126829%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd126792126832%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl126793126835%_))
                                                        '())
                                                (__compile _%expr126781%_)
                                                (_%$E126785126826%_))
                                            (_%$E126785126826%_)))
                                      (_%$E126785126826%_)))
                                (_%$E126734126746%_)))
                          (_%$E126734126746%_)))
                    (_%$E126734126746%_)))
              (_%$E126734126746%_)))))
    (define __compile-head-id
      (lambda (_%e126728%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e126728%_))
             _%e126728%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd126685%_)
        (let _%recur126687%_ ((_%rest126689%_ _%hd126685%_))
          (let* ((_%$e126691%_ _%rest126689%_)
                 (_%$E126693126711%_
                  (lambda ()
                    (let ((_%$E126694126708%_
                           (lambda ()
                             (let* ((_%$E126695126703%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e126691%_))))
                                    (_%tail126706%_ _%$e126691%_))
                               (__compile-head-id _%tail126706%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e126691%_))
                                  '())
                          '()
                          (_%$E126694126708%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e126691%_))
                (let* ((_%$tgt126696126714%_
                        (let () (declare (not safe)) (__AST-e _%$e126691%_)))
                       (_%$hd126697126717%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt126696126714%_)))
                       (_%$tl126698126720%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt126696126714%_)))
                       (_%hd126724%_ _%$hd126697126717%_)
                       (_%rest126726%_ _%$tl126698126720%_))
                  (cons (__compile-head-id _%hd126724%_)
                        (_%recur126687%_ _%rest126726%_)))
                (_%$E126693126711%_))))))
    (define __compile-lambda%
      (lambda (_%stx126632%_)
        (let* ((_%$e126634%_ _%stx126632%_)
               (_%$E126636126648%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e126634%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e126634%_))
              (let* ((_%$tgt126637126651%_
                      (let () (declare (not safe)) (__AST-e _%$e126634%_)))
                     (_%$hd126638126654%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt126637126651%_)))
                     (_%$tl126639126657%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt126637126651%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl126639126657%_))
                    (let* ((_%$tgt126640126661%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl126639126657%_)))
                           (_%$hd126641126664%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt126640126661%_)))
                           (_%$tl126642126667%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt126640126661%_)))
                           (_%hd126671%_ _%$hd126641126664%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl126642126667%_))
                          (let* ((_%$tgt126643126673%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl126642126667%_)))
                                 (_%$hd126644126676%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126643126673%_)))
                                 (_%$tl126645126679%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126643126673%_)))
                                 (_%body126683%_ _%$hd126644126676%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl126645126679%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd126671%_)
                                             (cons (__compile _%body126683%_)
                                                   '())))
                                 _%stx126632%_)
                                (_%$E126636126648%_)))
                          (_%$E126636126648%_)))
                    (_%$E126636126648%_)))
              (_%$E126636126648%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx126424%_)
        (letrec ((_%variadic?126426%_
                  (lambda (_%hd126597%_)
                    (let* ((_%$e126599%_ _%hd126597%_)
                           (_%$E126601126617%_
                            (lambda ()
                              (let ((_%$E126602126614%_
                                     (lambda ()
                                       (let ((_%$E126603126611%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e126599%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e126599%_))
                                            '())
                                    '#f
                                    (_%$E126602126614%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e126599%_))
                          (let* ((_%$tgt126604126620%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e126599%_)))
                                 (_%$hd126605126623%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126604126620%_)))
                                 (_%$tl126606126626%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126604126620%_)))
                                 (_%rest126630%_ _%$tl126606126626%_))
                            (_%variadic?126426%_ _%rest126630%_))
                          (_%$E126601126617%_)))))
                 (_%arity126427%_
                  (lambda (_%hd126562%_)
                    (let _%lp126564%_ ((_%rest126566%_ _%hd126562%_)
                                       (_%k126567%_ '0))
                      (let* ((_%$e126569%_ _%rest126566%_)
                             (_%$E126571126582%_
                              (lambda ()
                                (let ((_%$E126572126579%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e126569%_)))))
                                  _%k126567%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e126569%_))
                            (let* ((_%$tgt126573126585%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e126569%_)))
                                   (_%$hd126574126588%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt126573126585%_)))
                                   (_%$tl126575126591%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt126573126585%_)))
                                   (_%rest126595%_ _%$tl126575126591%_))
                              (_%lp126564%_
                               _%rest126595%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k126567%_ '1))))
                            (_%$E126571126582%_))))))
                 (_%generate126428%_
                  (lambda (_%rest126489%_ _%args126490%_ _%len126491%_)
                    (let* ((_%$e126493%_ _%rest126489%_)
                           (_%$E126495126506%_
                            (lambda ()
                              (let ((_%$E126496126503%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e126493%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args126490%_ '())))
                                 _%stx126424%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e126493%_))
                          (let* ((_%$tgt126497126509%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e126493%_)))
                                 (_%$hd126498126512%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126497126509%_)))
                                 (_%$tl126499126515%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126497126509%_)))
                                 (_%clause126519%_ _%$hd126498126512%_)
                                 (_%rest126521%_ _%$tl126499126515%_)
                                 (_%$e126523%_ _%clause126519%_)
                                 (_%$E126525126534%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e126523%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e126523%_))
                                (let* ((_%$tgt126526126537%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e126523%_)))
                                       (_%$hd126527126540%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt126526126537%_)))
                                       (_%$tl126528126543%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt126526126537%_)))
                                       (_%hd126547%_ _%$hd126527126540%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl126528126543%_))
                                      (let* ((_%$tgt126529126549%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl126528126543%_)))
                                             (_%$hd126530126552%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt126529126549%_)))
                                             (_%$tl126531126555%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt126529126549%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl126531126555%_))
                                                    '())
                                            (let ((_%clen126559%_
                                                   (_%arity126427%_
                                                    _%hd126547%_))
                                                  (_%cmp126560%_
                                                   (if (_%variadic?126426%_
                                                        _%hd126547%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp126560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len126491%_ (cons _%clen126559%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause126519%_))
                                      (cons _%args126490%_ '())))
                          _%stx126424%_)
                         (cons (_%generate126428%_
                                _%rest126521%_
                                _%args126490%_
                                _%len126491%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx126424%_))
                                            (_%$E126525126534%_)))
                                      (_%$E126525126534%_)))
                                (_%$E126525126534%_)))
                          (_%$E126495126506%_))))))
          (let* ((_%$e126430%_ _%stx126424%_)
                 (_%$E126432126464%_
                  (lambda ()
                    (let ((_%$E126433126446%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e126430%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e126430%_))
                          (let* ((_%$tgt126434126449%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e126430%_)))
                                 (_%$hd126435126452%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126434126449%_)))
                                 (_%$tl126436126455%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126434126449%_)))
                                 (_%clauses126459%_ _%$tl126436126455%_))
                            (let ((_%args126461%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx126424%_))
                                  (_%len126462%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx126424%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args126461%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len126462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args126461%_ '()))
                                         _%stx126424%_)
                                        '()))
                            '())
                      (cons (_%generate126428%_
                             _%clauses126459%_
                             _%args126461%_
                             _%len126462%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx126424%_)
                                                 '())))
                               _%stx126424%_)))
                          (_%$E126433126446%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e126430%_))
                (let* ((_%$tgt126437126467%_
                        (let () (declare (not safe)) (__AST-e _%$e126430%_)))
                       (_%$hd126438126470%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt126437126467%_)))
                       (_%$tl126439126473%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt126437126467%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl126439126473%_))
                      (let* ((_%$tgt126440126477%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl126439126473%_)))
                             (_%$hd126441126480%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt126440126477%_)))
                             (_%$tl126442126483%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt126440126477%_)))
                             (_%clause126487%_ _%$hd126441126480%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl126442126483%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause126487%_))
                            (_%$E126432126464%_)))
                      (_%$E126432126464%_)))
                (_%$E126432126464%_))))))
    (define __compile-let-form
      (lambda (_%stx126193%_ _%compile-simple126194%_ _%compile-values126195%_)
        (letrec ((_%simple-bind?126197%_
                  (lambda (_%hd126382%_)
                    (let* ((_%hd126383126393%_ _%hd126382%_)
                           (_%else126386126401%_ (lambda () '#f)))
                      (let ((_%K126389126414%_ (lambda (_%id126412%_) '#t))
                            (_%K126388126406%_ (lambda () '#t)))
                        (let ((_%try-match126385126409%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd126383126393%_ '#f))
                                     (_%K126388126406%_)
                                     (_%else126386126401%_)))))
                          (if (pair? _%hd126383126393%_)
                              (let ((_%tl126391126419%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd126383126393%_)))
                                    (_%hd126390126417%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd126383126393%_))))
                                (if (null? _%tl126391126419%_)
                                    (let ((_%id126422%_ _%hd126390126417%_))
                                      (_%K126389126414%_ _%id126422%_))
                                    (_%try-match126385126409%_)))
                              (_%try-match126385126409%_)))))))
                 (_%car-e126198%_
                  (lambda (_%hd126380%_)
                    (if (pair? _%hd126380%_)
                        (let () (declare (not safe)) (##car _%hd126380%_))
                        _%hd126380%_))))
          (let* ((_%$e126200%_ _%stx126193%_)
                 (_%$E126202126345%_
                  (lambda ()
                    (let ((_%$E126203126225%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e126200%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e126200%_))
                          (let* ((_%$tgt126204126228%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e126200%_)))
                                 (_%$hd126205126231%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt126204126228%_)))
                                 (_%$tl126206126234%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt126204126228%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl126206126234%_))
                                (let* ((_%$tgt126207126238%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl126206126234%_)))
                                       (_%$hd126208126241%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt126207126238%_)))
                                       (_%$tl126209126244%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt126207126238%_)))
                                       (_%hd126248%_ _%$hd126208126241%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl126209126244%_))
                                      (let* ((_%$tgt126210126250%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl126209126244%_)))
                                             (_%$hd126211126253%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt126210126250%_)))
                                             (_%$tl126212126256%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt126210126250%_)))
                                             (_%body126260%_
                                              _%$hd126211126253%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl126212126256%_))
                                                    '())
                                            (let* ((_%hd-ids126300%_
                                                    (map (lambda (_%bind126262%_)
                                                           (let* ((_%$e126264%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind126262%_)
                          (_%$E126266126275%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e126264%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e126264%_))
                         (let* ((_%$tgt126267126278%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e126264%_)))
                                (_%$hd126268126281%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt126267126278%_)))
                                (_%$tl126269126284%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt126267126278%_)))
                                (_%ids126288%_ _%$hd126268126281%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl126269126284%_))
                               (let* ((_%$tgt126270126290%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl126269126284%_)))
                                      (_%$hd126271126293%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt126270126290%_)))
                                      (_%$tl126272126296%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt126270126290%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl126272126296%_))
                                             '())
                                     _%ids126288%_
                                     (_%$E126266126275%_)))
                               (_%$E126266126275%_)))
                         (_%$E126266126275%_))))
                 _%hd126248%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs126340%_
                                                    (map (lambda (_%bind126302%_)
                                                           (let* ((_%$e126304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind126302%_)
                          (_%$E126306126315%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e126304%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e126304%_))
                         (let* ((_%$tgt126307126318%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e126304%_)))
                                (_%$hd126308126321%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt126307126318%_)))
                                (_%$tl126309126324%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt126307126318%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl126309126324%_))
                               (let* ((_%$tgt126310126328%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl126309126324%_)))
                                      (_%$hd126311126331%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt126310126328%_)))
                                      (_%$tl126312126334%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt126310126328%_)))
                                      (_%expr126338%_ _%$hd126311126331%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl126312126334%_))
                                             '())
                                     (__compile _%expr126338%_)
                                     (_%$E126306126315%_)))
                               (_%$E126306126315%_)))
                         (_%$E126306126315%_))))
                 _%hd126248%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body126342%_
                                                    (__compile
                                                     _%body126260%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?126197%_
                                                     _%hd-ids126300%_))
                                                  (_%compile-simple126194%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e126198%_
                                                            _%hd-ids126300%_))
                                                   _%exprs126340%_
                                                   _%body126342%_)
                                                  (_%compile-values126195%_
                                                   _%hd-ids126300%_
                                                   _%exprs126340%_
                                                   _%body126342%_)))
                                            (_%$E126203126225%_)))
                                      (_%$E126203126225%_)))
                                (_%$E126203126225%_)))
                          (_%$E126203126225%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e126200%_))
                (let* ((_%$tgt126213126348%_
                        (let () (declare (not safe)) (__AST-e _%$e126200%_)))
                       (_%$hd126214126351%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt126213126348%_)))
                       (_%$tl126215126354%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt126213126348%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl126215126354%_))
                      (let* ((_%$tgt126216126358%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl126215126354%_)))
                             (_%$hd126217126361%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt126216126358%_)))
                             (_%$tl126218126364%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt126216126358%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd126217126361%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl126218126364%_))
                                (let* ((_%$tgt126219126368%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl126218126364%_)))
                                       (_%$hd126220126371%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt126219126368%_)))
                                       (_%$tl126221126374%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt126219126368%_)))
                                       (_%body126378%_ _%$hd126220126371%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl126221126374%_))
                                              '())
                                      (__compile _%body126378%_)
                                      (_%$E126202126345%_)))
                                (_%$E126202126345%_))
                            (_%$E126202126345%_)))
                      (_%$E126202126345%_)))
                (_%$E126202126345%_))))))
    (define __compile-let-values%
      (lambda (_%stx126005%_)
        (letrec ((_%compile-simple126007%_
                  (lambda (_%hd-ids126189%_ _%exprs126190%_ _%body126191%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp127308
                                        (map __compile-head-id
                                             _%hd-ids126189%_)))
                                   (declare (not safe))
                                   (##map list __tmp127308 _%exprs126190%_))
                                 (cons _%body126191%_ '())))
                     _%stx126005%_)))
                 (_%compile-values126008%_
                  (lambda (_%hd-ids126104%_ _%exprs126105%_ _%body126106%_)
                    (let _%lp126108%_ ((_%rest126110%_ _%hd-ids126104%_)
                                       (_%exprs126111%_ _%exprs126105%_)
                                       (_%bind126112%_ '())
                                       (_%post126113%_ '()))
                      (let* ((_%rest126114126128%_ _%rest126110%_)
                             (_%else126117126136%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind126112%_)
                                             (cons (_%compile-post126009%_
                                                    _%post126113%_
                                                    _%body126106%_)
                                                   '())))
                                 _%stx126005%_))))
                        (let ((_%K126122126172%_
                               (lambda (_%rest126169%_ _%id126170%_)
                                 (_%lp126108%_
                                  _%rest126169%_
                                  (cdr _%exprs126111%_)
                                  (cons (cons (__compile-head-id _%id126170%_)
                                              (cons (car _%exprs126111%_) '()))
                                        _%bind126112%_)
                                  _%post126113%_)))
                              (_%K126119126154%_
                               (lambda (_%rest126140%_ _%hd126141%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd126141%_))
                                     (_%lp126108%_
                                      _%rest126140%_
                                      (cdr _%exprs126111%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd126141%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs126111%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind126112%_)
                                      _%post126113%_)
                                     (if (list? _%hd126141%_)
                                         (let* ((_%len126145%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd126141%_)))
                                                (_%tmp126147%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp126108%_
                                            _%rest126140%_
                                            (cdr _%exprs126111%_)
                                            (cons (cons _%tmp126147%_
                                                        (cons (car _%exprs126111%_)
                                                              '()))
                                                  _%bind126112%_)
                                            (cons (cons _%tmp126147%_
                                                        (cons _%len126145%_
                                                              (let ((__tmp127310
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id126150%_ _%k126151%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id126150%_))
                                   (cons (__SRC__0 _%id126150%_) _%k126151%_)
                                   '#f)))
                            (__tmp127309
                             (let ()
                               (declare (not safe))
                               (##iota _%len126145%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp127310 _%hd126141%_ __tmp127309))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post126113%_)))
                                         (__compile-error__%
                                          _%stx126005%_
                                          _%hd126141%_))))))
                          (if (pair? _%rest126114126128%_)
                              (let ((_%tl126124126177%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest126114126128%_)))
                                    (_%hd126123126175%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest126114126128%_))))
                                (if (pair? _%hd126123126175%_)
                                    (let ((_%tl126126126182%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd126123126175%_)))
                                          (_%hd126125126180%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd126123126175%_))))
                                      (if (null? _%tl126126126182%_)
                                          (let ((_%id126185%_
                                                 _%hd126125126180%_)
                                                (_%rest126187%_
                                                 _%tl126124126177%_))
                                            (_%K126122126172%_
                                             _%rest126187%_
                                             _%id126185%_))
                                          (let ((_%hd126162%_
                                                 _%hd126123126175%_)
                                                (_%rest126164%_
                                                 _%tl126124126177%_))
                                            (_%K126119126154%_
                                             _%rest126164%_
                                             _%hd126162%_))))
                                    (let ((_%hd126162%_ _%hd126123126175%_)
                                          (_%rest126164%_ _%tl126124126177%_))
                                      (_%K126119126154%_
                                       _%rest126164%_
                                       _%hd126162%_))))
                              (_%else126117126136%_)))))))
                 (_%compile-post126009%_
                  (lambda (_%post126011%_ _%body126012%_)
                    (let _%lp126014%_ ((_%rest126016%_ _%post126011%_)
                                       (_%check126017%_ '())
                                       (_%bind126018%_ '()))
                      (let* ((_%rest126019126031%_ _%rest126016%_)
                             (_%else126021126039%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp127311
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind126018%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body126012%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx126005%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp127311
                                          _%check126017%_)))
                                 _%stx126005%_)))
                             (_%K126023126078%_
                              (lambda (_%rest126042%_
                                       _%init126043%_
                                       _%len126044%_
                                       _%tmp126045%_)
                                (_%lp126014%_
                                 _%rest126042%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp126045%_
                                                    (cons _%len126044%_ '())))
                                        _%stx126005%_)
                                       _%check126017%_)
                                 (let ((__tmp127312
                                        (lambda (_%hd126047%_ _%r126048%_)
                                          (let* ((_%hd126049126056%_
                                                  _%hd126047%_)
                                                 (_%E126051126060%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd126049126056%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K126052126066%_
                                                  (lambda (_%k126063%_
                                                           _%id126064%_)
                                                    (cons (cons _%id126064%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp126045%_
                                          (cons _%k126063%_ '())))
                              '()))
                  _%r126048%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd126049126056%_)
                                                (let ((_%hd126053126069%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd126049126056%_)))
                                                      (_%tl126054126071%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd126049126056%_))))
                                                  (let* ((_%id126074%_
                                                          _%hd126053126069%_)
                                                         (_%k126076%_
                                                          _%tl126054126071%_))
                                                    (_%K126052126066%_
                                                     _%k126076%_
                                                     _%id126074%_)))
                                                (_%E126051126060%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp127312
                                    _%bind126018%_
                                    _%init126043%_))))))
                        (if (pair? _%rest126019126031%_)
                            (let ((_%hd126024126081%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest126019126031%_)))
                                  (_%tl126025126083%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest126019126031%_))))
                              (if (pair? _%hd126024126081%_)
                                  (let ((_%hd126026126086%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd126024126081%_)))
                                        (_%tl126027126088%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd126024126081%_))))
                                    (let ((_%tmp126091%_ _%hd126026126086%_))
                                      (if (pair? _%tl126027126088%_)
                                          (let ((_%hd126028126093%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl126027126088%_)))
                                                (_%tl126029126095%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl126027126088%_))))
                                            (let* ((_%len126098%_
                                                    _%hd126028126093%_)
                                                   (_%init126100%_
                                                    _%tl126029126095%_)
                                                   (_%rest126102%_
                                                    _%tl126025126083%_))
                                              (_%K126023126078%_
                                               _%rest126102%_
                                               _%init126100%_
                                               _%len126098%_
                                               _%tmp126091%_)))
                                          (_%else126021126039%_))))
                                  (_%else126021126039%_)))
                            (_%else126021126039%_)))))))
          (__compile-let-form
           _%stx126005%_
           _%compile-simple126007%_
           _%compile-values126008%_))))
    (define __compile-letrec-values%
      (lambda (_%stx125802%_)
        (letrec ((_%compile-simple125804%_
                  (lambda (_%hd-ids126001%_ _%exprs126002%_ _%body126003%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp127313
                                        (map __compile-head-id
                                             _%hd-ids126001%_)))
                                   (declare (not safe))
                                   (##map list __tmp127313 _%exprs126002%_))
                                 (cons _%body126003%_ '())))
                     _%stx125802%_)))
                 (_%compile-values125805%_
                  (lambda (_%hd-ids125912%_ _%exprs125913%_ _%body125914%_)
                    (let _%lp125916%_ ((_%rest125918%_ _%hd-ids125912%_)
                                       (_%exprs125919%_ _%exprs125913%_)
                                       (_%pre125920%_ '())
                                       (_%bind125921%_ '())
                                       (_%post125922%_ '()))
                      (let* ((_%rest125923125937%_ _%rest125918%_)
                             (_%else125926125945%_
                              (lambda ()
                                (_%compile-inner125806%_
                                 _%pre125920%_
                                 _%bind125921%_
                                 _%post125922%_
                                 _%body125914%_))))
                        (let ((_%K125931125984%_
                               (lambda (_%rest125981%_ _%id125982%_)
                                 (_%lp125916%_
                                  _%rest125981%_
                                  (cdr _%exprs125919%_)
                                  _%pre125920%_
                                  (cons (cons (__compile-head-id _%id125982%_)
                                              (cons (car _%exprs125919%_) '()))
                                        _%bind125921%_)
                                  _%post125922%_)))
                              (_%K125928125966%_
                               (lambda (_%rest125949%_ _%hd125950%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd125950%_))
                                     (_%lp125916%_
                                      _%rest125949%_
                                      (cdr _%exprs125919%_)
                                      _%pre125920%_
                                      (cons (cons (__compile-head-id
                                                   _%hd125950%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs125919%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind125921%_)
                                      _%post125922%_)
                                     (if (list? _%hd125950%_)
                                         (let* ((_%len125954%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd125950%_)))
                                                (_%tmp125956%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp125916%_
                                            _%rest125949%_
                                            (cdr _%exprs125919%_)
                                            (let ((__tmp127314
                                                   (lambda (_%id125959%_
                                                            _%r125960%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id125959%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id125959%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r125960%_)
                 _%r125960%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp127314
                                               _%pre125920%_
                                               _%hd125950%_))
                                            (cons (cons _%tmp125956%_
                                                        (cons (car _%exprs125919%_)
                                                              '()))
                                                  _%bind125921%_)
                                            (cons (cons _%tmp125956%_
                                                        (cons _%len125954%_
                                                              (let ((__tmp127316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id125962%_ _%k125963%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id125962%_))
                                   (cons (__SRC__0 _%id125962%_) _%k125963%_)
                                   '#f)))
                            (__tmp127315
                             (let ()
                               (declare (not safe))
                               (##iota _%len125954%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp127316 _%hd125950%_ __tmp127315))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post125922%_)))
                                         (__compile-error__%
                                          _%stx125802%_
                                          _%hd125950%_))))))
                          (if (pair? _%rest125923125937%_)
                              (let ((_%tl125933125989%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest125923125937%_)))
                                    (_%hd125932125987%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest125923125937%_))))
                                (if (pair? _%hd125932125987%_)
                                    (let ((_%tl125935125994%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd125932125987%_)))
                                          (_%hd125934125992%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd125932125987%_))))
                                      (if (null? _%tl125935125994%_)
                                          (let ((_%id125997%_
                                                 _%hd125934125992%_)
                                                (_%rest125999%_
                                                 _%tl125933125989%_))
                                            (_%K125931125984%_
                                             _%rest125999%_
                                             _%id125997%_))
                                          (let ((_%hd125974%_
                                                 _%hd125932125987%_)
                                                (_%rest125976%_
                                                 _%tl125933125989%_))
                                            (_%K125928125966%_
                                             _%rest125976%_
                                             _%hd125974%_))))
                                    (let ((_%hd125974%_ _%hd125932125987%_)
                                          (_%rest125976%_ _%tl125933125989%_))
                                      (_%K125928125966%_
                                       _%rest125976%_
                                       _%hd125974%_))))
                              (_%else125926125945%_)))))))
                 (_%compile-inner125806%_
                  (lambda (_%pre125907%_
                           _%bind125908%_
                           _%post125909%_
                           _%body125910%_)
                    (if (null? _%pre125907%_)
                        (_%compile-bind125807%_
                         _%bind125908%_
                         _%post125909%_
                         _%body125910%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre125907%_)
                                     (cons (_%compile-bind125807%_
                                            _%bind125908%_
                                            _%post125909%_
                                            _%body125910%_)
                                           '())))
                         _%stx125802%_))))
                 (_%compile-bind125807%_
                  (lambda (_%bind125903%_ _%post125904%_ _%body125905%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind125903%_)
                                 (cons (_%compile-post125808%_
                                        _%post125904%_
                                        _%body125905%_)
                                       '())))
                     _%stx125802%_)))
                 (_%compile-post125808%_
                  (lambda (_%post125810%_ _%body125811%_)
                    (let _%lp125813%_ ((_%rest125815%_ _%post125810%_)
                                       (_%check125816%_ '())
                                       (_%bind125817%_ '()))
                      (let* ((_%rest125818125830%_ _%rest125815%_)
                             (_%else125820125838%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp127317
                                              (let ((__tmp127318
                                                     (cons _%body125811%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp127318
                                                 _%bind125817%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp127317
                                          _%check125816%_)))
                                 _%stx125802%_)))
                             (_%K125822125877%_
                              (lambda (_%rest125841%_
                                       _%init125842%_
                                       _%len125843%_
                                       _%tmp125844%_)
                                (_%lp125813%_
                                 _%rest125841%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp125844%_
                                                    (cons _%len125843%_ '())))
                                        _%stx125802%_)
                                       _%check125816%_)
                                 (let ((__tmp127319
                                        (lambda (_%hd125846%_ _%r125847%_)
                                          (let* ((_%hd125848125855%_
                                                  _%hd125846%_)
                                                 (_%E125850125859%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd125848125855%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K125851125865%_
                                                  (lambda (_%k125862%_
                                                           _%id125863%_)
                                                    (cons (cons 'set!
                                                                (cons _%id125863%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp125844%_
                                                (cons _%k125862%_ '())))
                                    '())))
                  _%r125847%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd125848125855%_)
                                                (let ((_%hd125852125868%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd125848125855%_)))
                                                      (_%tl125853125870%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd125848125855%_))))
                                                  (let* ((_%id125873%_
                                                          _%hd125852125868%_)
                                                         (_%k125875%_
                                                          _%tl125853125870%_))
                                                    (_%K125851125865%_
                                                     _%k125875%_
                                                     _%id125873%_)))
                                                (_%E125850125859%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp127319
                                    _%bind125817%_
                                    _%init125842%_))))))
                        (if (pair? _%rest125818125830%_)
                            (let ((_%hd125823125880%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest125818125830%_)))
                                  (_%tl125824125882%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest125818125830%_))))
                              (if (pair? _%hd125823125880%_)
                                  (let ((_%hd125825125885%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd125823125880%_)))
                                        (_%tl125826125887%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd125823125880%_))))
                                    (let ((_%tmp125890%_ _%hd125825125885%_))
                                      (if (pair? _%tl125826125887%_)
                                          (let ((_%hd125827125892%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl125826125887%_)))
                                                (_%tl125828125894%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl125826125887%_))))
                                            (let* ((_%len125897%_
                                                    _%hd125827125892%_)
                                                   (_%init125899%_
                                                    _%tl125828125894%_)
                                                   (_%rest125901%_
                                                    _%tl125824125882%_))
                                              (_%K125822125877%_
                                               _%rest125901%_
                                               _%init125899%_
                                               _%len125897%_
                                               _%tmp125890%_)))
                                          (_%else125820125838%_))))
                                  (_%else125820125838%_)))
                            (_%else125820125838%_)))))))
          (__compile-let-form
           _%stx125802%_
           _%compile-simple125804%_
           _%compile-values125805%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx125553%_)
        (letrec ((_%compile-simple125555%_
                  (lambda (_%hd-ids125798%_ _%exprs125799%_ _%body125800%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp127320
                                        (map __compile-head-id
                                             _%hd-ids125798%_)))
                                   (declare (not safe))
                                   (##map list __tmp127320 _%exprs125799%_))
                                 (cons _%body125800%_ '())))
                     _%stx125553%_)))
                 (_%compile-values125556%_
                  (lambda (_%hd-ids125705%_ _%exprs125706%_ _%body125707%_)
                    (let _%lp125709%_ ((_%rest125711%_ _%hd-ids125705%_)
                                       (_%exprs125712%_ _%exprs125706%_)
                                       (_%bind125713%_ '())
                                       (_%post125714%_ '()))
                      (let* ((_%rest125715125729%_ _%rest125711%_)
                             (_%else125718125737%_
                              (lambda ()
                                (_%compile-bind125557%_
                                 _%bind125713%_
                                 _%post125714%_
                                 _%body125707%_))))
                        (let ((_%K125723125781%_
                               (lambda (_%rest125776%_ _%hd125777%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd125777%_))
                                     (let ((_%id125779%_
                                            (__SRC__0 _%hd125777%_)))
                                       (_%lp125709%_
                                        _%rest125776%_
                                        (cdr _%exprs125712%_)
                                        (cons (cons _%id125779%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind125713%_)
                                        (cons (cons _%id125779%_
                                                    (cons (car _%exprs125712%_)
                                                          '()))
                                              _%post125714%_)))
                                     (_%lp125709%_
                                      _%rest125776%_
                                      (cdr _%exprs125712%_)
                                      _%bind125713%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs125712%_)
                                                        '()))
                                            _%post125714%_)))))
                              (_%K125720125761%_
                               (lambda (_%rest125741%_ _%hd125742%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd125742%_))
                                     (let ((_%id125745%_
                                            (__SRC__0 _%hd125742%_)))
                                       (_%lp125709%_
                                        _%rest125741%_
                                        (cdr _%exprs125712%_)
                                        (cons (cons _%id125745%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind125713%_)
                                        (cons (cons _%id125745%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs125712%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post125714%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd125742%_))
                                         (if (list? _%hd125742%_)
                                             (let* ((_%len125749%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd125742%_)))
                                                    (_%tmp125751%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp125709%_
                                                _%rest125741%_
                                                (cdr _%exprs125712%_)
                                                (let ((__tmp127321
                                                       (lambda (_%id125754%_
                                                                _%r125755%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id125754%_))
                     (cons (cons (__SRC__0 _%id125754%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r125755%_)
                     _%r125755%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp127321
                                                   _%bind125713%_
                                                   _%hd125742%_))
                                                (cons (cons _%tmp125751%_
                                                            (cons (car _%exprs125712%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len125749%_
                                (let ((__tmp127323
                                       (lambda (_%id125757%_ _%k125758%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id125757%_))
                                             (cons (__SRC__0 _%id125757%_)
                                                   _%k125758%_)
                                             '#f)))
                                      (__tmp127322
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len125749%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp127323
                                   _%hd125742%_
                                   __tmp127322)))))
              _%post125714%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx125553%_
                                              _%hd125742%_))
                                         (_%lp125709%_
                                          _%rest125741%_
                                          (cdr _%exprs125712%_)
                                          _%bind125713%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs125712%_)
                                                            '()))
                                                _%post125714%_)))))))
                          (if (pair? _%rest125715125729%_)
                              (let ((_%tl125725125786%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest125715125729%_)))
                                    (_%hd125724125784%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest125715125729%_))))
                                (if (pair? _%hd125724125784%_)
                                    (let ((_%tl125727125791%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd125724125784%_)))
                                          (_%hd125726125789%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd125724125784%_))))
                                      (if (null? _%tl125727125791%_)
                                          (let ((_%hd125794%_
                                                 _%hd125726125789%_)
                                                (_%rest125796%_
                                                 _%tl125725125786%_))
                                            (_%K125723125781%_
                                             _%rest125796%_
                                             _%hd125794%_))
                                          (let ((_%hd125769%_
                                                 _%hd125724125784%_)
                                                (_%rest125771%_
                                                 _%tl125725125786%_))
                                            (_%K125720125761%_
                                             _%rest125771%_
                                             _%hd125769%_))))
                                    (let ((_%hd125769%_ _%hd125724125784%_)
                                          (_%rest125771%_ _%tl125725125786%_))
                                      (_%K125720125761%_
                                       _%rest125771%_
                                       _%hd125769%_))))
                              (_%else125718125737%_)))))))
                 (_%compile-bind125557%_
                  (lambda (_%bind125701%_ _%post125702%_ _%body125703%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind125701%_)
                                 (cons (_%compile-post125558%_
                                        _%post125702%_
                                        _%body125703%_)
                                       '())))
                     _%stx125553%_)))
                 (_%compile-post125558%_
                  (lambda (_%post125560%_ _%body125561%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp127324
                                  (let ((__tmp127326
                                         (lambda (_%hd125563%_ _%r125564%_)
                                           (let* ((_%hd125565125588%_
                                                   _%hd125563%_)
                                                  (_%E125569125592%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd125565125588%_
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
                                             (let ((_%K125582125686%_
                                                    (lambda (_%expr125684%_)
                                                      (cons _%expr125684%_
                                                            _%r125564%_)))
                                                   (_%K125577125664%_
                                                    (lambda (_%expr125661%_
                                                             _%id125662%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id125662%_ (cons _%expr125661%_ '())))
                     _%stx125553%_)
                    _%r125564%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K125570125631%_
                                                    (lambda (_%init125596%_
                                                             _%len125597%_
                                                             _%expr125598%_
                                                             _%tmp125599%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp125599%_
                                             (cons _%expr125598%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp125599%_
                                                    (cons _%len125597%_ '())))
                                        _%stx125553%_)
                                       (let ((__tmp127327
                                              (map (lambda (_%hd125601%_)
                                                     (let* ((_%hd125602125609%_
                                                             _%hd125601%_)
                                                            (_%E125604125613%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd125602125609%_
                                '([id . k])))
                       '#!void))
                    (_%K125605125619%_
                     (lambda (_%k125616%_ _%id125617%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id125617%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp125599%_
                                                      (cons _%k125616%_ '())))
                                          '())))
                        _%stx125553%_))))
               (if (pair? _%hd125602125609%_)
                   (let ((_%hd125606125622%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd125602125609%_)))
                         (_%tl125607125624%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd125602125609%_))))
                     (let* ((_%id125627%_ _%hd125606125622%_)
                            (_%k125629%_ _%tl125607125624%_))
                       (_%K125605125619%_ _%k125629%_ _%id125627%_)))
                   (_%E125604125613%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init125596%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp127327)))))
                     _%stx125553%_)
                    _%r125564%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match127180127181%_
                                                       (lambda (_%hd125571125634%_
                                                                _%tl125572125636%_
                                                                _%hd125573125641%_
                                                                _%tl125574125643%_)
                                                         (let ((_%tmp125639%_
                                                                _%hd125571125634%_)
                                                               (_%expr125646%_
                                                                _%hd125573125641%_))
                                                           (_%E125569125592%_))))
                                                      (_%__match127174127175%_
                                                       (lambda (_%hd125571125634%_
                                                                _%tl125572125636%_)
                                                         (let ((_%tmp125639%_
                                                                _%hd125571125634%_))
                                                           (_%E125569125592%_)))))
                                                 (if (pair? _%hd125565125588%_)
                                                     (let ((_%tl125584125691%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd125565125588%_)))
                                                           (_%hd125583125689%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd125565125588%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd125583125689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl125584125691%_)
                       (let ((_%tl125586125696%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl125584125691%_)))
                             (_%hd125585125694%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl125584125691%_))))
                         (if (null? _%tl125586125696%_)
                             (let ((_%expr125699%_ _%hd125585125694%_))
                               (_%K125582125686%_ _%expr125699%_))
                             (if (pair? _%tl125586125696%_)
                                 (let ((_%tl125576125650%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl125586125696%_)))
                                       (_%hd125575125648%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl125586125696%_))))
                                   (let ((_%tmp125639%_ _%hd125583125689%_)
                                         (_%expr125646%_ _%hd125585125694%_)
                                         (_%len125653%_ _%hd125575125648%_)
                                         (_%init125655%_ _%tl125576125650%_))
                                     (_%K125570125631%_
                                      _%init125655%_
                                      _%len125653%_
                                      _%expr125646%_
                                      _%tmp125639%_)))
                                 (_%__match127180127181%_
                                  _%hd125583125689%_
                                  _%tl125584125691%_
                                  _%hd125585125694%_
                                  _%tl125586125696%_))))
                       (_%__match127174127175%_
                        _%hd125583125689%_
                        _%tl125584125691%_))
                   (if (pair? _%tl125584125691%_)
                       (let ((_%tl125581125676%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl125584125691%_)))
                             (_%hd125580125674%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl125584125691%_))))
                         (if (null? _%tl125581125676%_)
                             (let ((_%id125672%_ _%hd125583125689%_)
                                   (_%expr125679%_ _%hd125580125674%_))
                               (_%K125577125664%_ _%expr125679%_ _%id125672%_))
                             (if (pair? _%tl125581125676%_)
                                 (let ((_%tl125576125650%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl125581125676%_)))
                                       (_%hd125575125648%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl125581125676%_))))
                                   (let ((_%tmp125639%_ _%hd125583125689%_)
                                         (_%expr125646%_ _%hd125580125674%_)
                                         (_%len125653%_ _%hd125575125648%_)
                                         (_%init125655%_ _%tl125576125650%_))
                                     (_%K125570125631%_
                                      _%init125655%_
                                      _%len125653%_
                                      _%expr125646%_
                                      _%tmp125639%_)))
                                 (_%__match127180127181%_
                                  _%hd125583125689%_
                                  _%tl125584125691%_
                                  _%hd125580125674%_
                                  _%tl125581125676%_))))
                       (_%__match127174127175%_
                        _%hd125583125689%_
                        _%tl125584125691%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E125569125592%_)))))))
                                        (__tmp127325 (list _%body125561%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp127326
                                     __tmp127325
                                     _%post125560%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp127324)))
                     _%stx125553%_))))
          (__compile-let-form
           _%stx125553%_
           _%compile-simple125555%_
           _%compile-values125556%_))))
    (define __compile-call%
      (lambda (_%stx125513%_)
        (let* ((_%$e125515%_ _%stx125513%_)
               (_%$E125517125526%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e125515%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e125515%_))
              (let* ((_%$tgt125518125529%_
                      (let () (declare (not safe)) (__AST-e _%$e125515%_)))
                     (_%$hd125519125532%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt125518125529%_)))
                     (_%$tl125520125535%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt125518125529%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl125520125535%_))
                    (let* ((_%$tgt125521125539%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl125520125535%_)))
                           (_%$hd125522125542%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt125521125539%_)))
                           (_%$tl125523125545%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt125521125539%_)))
                           (_%rator125549%_ _%$hd125522125542%_)
                           (_%rands125551%_ _%$tl125523125545%_))
                      (__SRC__%
                       (cons (__compile _%rator125549%_)
                             (map __compile _%rands125551%_))
                       _%stx125513%_))
                    (_%$E125517125526%_)))
              (_%$E125517125526%_)))))
    (define __compile-ref%
      (lambda (_%stx125475%_)
        (let* ((_%$e125477%_ _%stx125475%_)
               (_%$E125479125488%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e125477%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e125477%_))
              (let* ((_%$tgt125480125491%_
                      (let () (declare (not safe)) (__AST-e _%$e125477%_)))
                     (_%$hd125481125494%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt125480125491%_)))
                     (_%$tl125482125497%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt125480125491%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl125482125497%_))
                    (let* ((_%$tgt125483125501%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl125482125497%_)))
                           (_%$hd125484125504%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt125483125501%_)))
                           (_%$tl125485125507%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt125483125501%_)))
                           (_%id125511%_ _%$hd125484125504%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl125485125507%_))
                                  '())
                          (__SRC__% _%id125511%_ _%stx125475%_)
                          (_%$E125479125488%_)))
                    (_%$E125479125488%_)))
              (_%$E125479125488%_)))))
    (define __compile-setq%
      (lambda (_%stx125422%_)
        (let* ((_%$e125424%_ _%stx125422%_)
               (_%$E125426125438%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e125424%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e125424%_))
              (let* ((_%$tgt125427125441%_
                      (let () (declare (not safe)) (__AST-e _%$e125424%_)))
                     (_%$hd125428125444%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt125427125441%_)))
                     (_%$tl125429125447%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt125427125441%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl125429125447%_))
                    (let* ((_%$tgt125430125451%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl125429125447%_)))
                           (_%$hd125431125454%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt125430125451%_)))
                           (_%$tl125432125457%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt125430125451%_)))
                           (_%id125461%_ _%$hd125431125454%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl125432125457%_))
                          (let* ((_%$tgt125433125463%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl125432125457%_)))
                                 (_%$hd125434125466%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt125433125463%_)))
                                 (_%$tl125435125469%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt125433125463%_)))
                                 (_%expr125473%_ _%$hd125434125466%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl125435125469%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id125461%_
                                              _%stx125422%_)
                                             (cons (__compile _%expr125473%_)
                                                   '())))
                                 _%stx125422%_)
                                (_%$E125426125438%_)))
                          (_%$E125426125438%_)))
                    (_%$E125426125438%_)))
              (_%$E125426125438%_)))))
    (define __compile-if%
      (lambda (_%stx125354%_)
        (let* ((_%$e125356%_ _%stx125354%_)
               (_%$E125358125373%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e125356%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e125356%_))
              (let* ((_%$tgt125359125376%_
                      (let () (declare (not safe)) (__AST-e _%$e125356%_)))
                     (_%$hd125360125379%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt125359125376%_)))
                     (_%$tl125361125382%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt125359125376%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl125361125382%_))
                    (let* ((_%$tgt125362125386%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl125361125382%_)))
                           (_%$hd125363125389%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt125362125386%_)))
                           (_%$tl125364125392%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt125362125386%_)))
                           (_%p125396%_ _%$hd125363125389%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl125364125392%_))
                          (let* ((_%$tgt125365125398%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl125364125392%_)))
                                 (_%$hd125366125401%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt125365125398%_)))
                                 (_%$tl125367125404%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt125365125398%_)))
                                 (_%t125408%_ _%$hd125366125401%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl125367125404%_))
                                (let* ((_%$tgt125368125410%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl125367125404%_)))
                                       (_%$hd125369125413%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt125368125410%_)))
                                       (_%$tl125370125416%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt125368125410%_)))
                                       (_%f125420%_ _%$hd125369125413%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl125370125416%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p125396%_)
                                                   (cons (__compile
                                                          _%t125408%_)
                                                         (cons (__compile
                                                                _%f125420%_)
                                                               '()))))
                                       _%stx125354%_)
                                      (_%$E125358125373%_)))
                                (_%$E125358125373%_)))
                          (_%$E125358125373%_)))
                    (_%$E125358125373%_)))
              (_%$E125358125373%_)))))
    (define __compile-quote%
      (lambda (_%stx125316%_)
        (let* ((_%$e125318%_ _%stx125316%_)
               (_%$E125320125329%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e125318%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e125318%_))
              (let* ((_%$tgt125321125332%_
                      (let () (declare (not safe)) (__AST-e _%$e125318%_)))
                     (_%$hd125322125335%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt125321125332%_)))
                     (_%$tl125323125338%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt125321125332%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl125323125338%_))
                    (let* ((_%$tgt125324125342%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl125323125338%_)))
                           (_%$hd125325125345%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt125324125342%_)))
                           (_%$tl125326125348%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt125324125342%_)))
                           (_%e125352%_ _%$hd125325125345%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl125326125348%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e125352%_))
                                       '()))
                           _%stx125316%_)
                          (_%$E125320125329%_)))
                    (_%$E125320125329%_)))
              (_%$E125320125329%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx125278%_)
        (let* ((_%$e125280%_ _%stx125278%_)
               (_%$E125282125291%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e125280%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e125280%_))
              (let* ((_%$tgt125283125294%_
                      (let () (declare (not safe)) (__AST-e _%$e125280%_)))
                     (_%$hd125284125297%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt125283125294%_)))
                     (_%$tl125285125300%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt125283125294%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl125285125300%_))
                    (let* ((_%$tgt125286125304%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl125285125300%_)))
                           (_%$hd125287125307%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt125286125304%_)))
                           (_%$tl125288125310%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt125286125304%_)))
                           (_%e125314%_ _%$hd125287125307%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl125288125310%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e125314%_ '()))
                           _%stx125278%_)
                          (_%$E125282125291%_)))
                    (_%$E125282125291%_)))
              (_%$E125282125291%_)))))
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
