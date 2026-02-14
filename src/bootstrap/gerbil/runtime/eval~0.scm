(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1771104506)
  (begin
    (define __syntax::t
      (let ((__tmp169308 (list)) (__tmp169307 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp169308
         '(e id)
         __tmp169307
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args169112%_
        (apply make-instance __syntax::t _%$args169112%_)))
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
      (let ((__tmp169310 (list __syntax::t))
            (__tmp169309 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp169310
         '()
         __tmp169309
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args169109%_
        (apply make-instance __core-form::t _%$args169109%_)))
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
      (let ((__tmp169312 (list __core-form::t))
            (__tmp169311 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp169312
         '()
         __tmp169311
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args169106%_
        (apply make-instance __core-expression::t _%$args169106%_)))
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
      (let ((__tmp169314 (list __core-form::t))
            (__tmp169313 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp169314
         '()
         __tmp169313
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args169103%_
        (apply make-instance __core-special-form::t _%$args169103%_)))
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
      (lambda (_%id169077%_)
        (let* ((_%h169079%_ __core)
               (_%key169082%_
                (let () (declare (not safe)) (__AST-e _%id169077%_)))
               (_%h169089%_
                (let ((_%$obj169086%_ _%h169079%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj169086%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj169086%_)))
                           '#t)
                      _%$obj169086%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj169086%_)))))
               (_%h169091%_ _%h169089%_))
          (declare (not safe))
          (__hash-get _%h169091%_ _%key169082%_))))
    (define __core-bound-id?__%
      (lambda (_%id169060%_ _%is?169061%_)
        (let ((_%$e169063%_ (__core-resolve _%id169060%_)))
          (if _%$e169063%_ (_%is?169061%_ _%$e169063%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id169070%_)
        (let ((_%is?169072%_ true))
          (__core-bound-id?__% _%id169070%_ _%is?169072%_))))
    (define __core-bound-id?
      (lambda _g169315_
        (let ((_g169316_ (let () (declare (not safe)) (##length _g169315_))))
          (cond ((let () (declare (not safe)) (##fx= _g169316_ 1))
                 (apply __core-bound-id?__0 _g169315_))
                ((let () (declare (not safe)) (##fx= _g169316_ 2))
                 (apply __core-bound-id?__% _g169315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g169315_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id169015%_ _%e169016%_ _%make169017%_)
        (let* ((_%h169019%_ __core)
               (_%key169022%_ _%id169015%_)
               (_%value169025%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%e169016%_
                       'gerbil/runtime/eval#__syntax::t))
                    _%e169016%_
                    (_%make169017%_ _%e169016%_ _%id169015%_)))
               (_%h169032%_
                (let ((_%$obj169029%_ _%h169019%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj169029%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj169029%_)))
                           '#t)
                      _%$obj169029%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj169029%_)))))
               (_%h169034%_ _%h169032%_))
          (declare (not safe))
          (__hash-put! _%h169034%_ _%key169022%_ _%value169025%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id169050%_ _%e169051%_)
        (let ((_%make169053%_ make-__syntax))
          (__core-bind-syntax!__% _%id169050%_ _%e169051%_ _%make169053%_))))
    (define __core-bind-syntax!
      (lambda _g169317_
        (let ((_g169318_ (let () (declare (not safe)) (##length _g169317_))))
          (cond ((let () (declare (not safe)) (##fx= _g169318_ 2))
                 (apply __core-bind-syntax!__0 _g169317_))
                ((let () (declare (not safe)) (##fx= _g169318_ 3))
                 (apply __core-bind-syntax!__% _g169317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g169317_))))))
    (define __SRC__%
      (lambda (_%e168995%_ _%src-stx168996%_)
        (if (or (pair? _%e168995%_) (symbol? _%e168995%_))
            (let ((__tmp169319
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx168996%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx168996%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e168995%_ __tmp169319))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e168995%_ 'gerbil#AST::t))
                (let ((__tmp169321
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e168995%_ '1 '#f '#f)))
                      (__tmp169320
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e168995%_)))))
                  (declare (not safe))
                  (##make-source __tmp169321 __tmp169320))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e168995%_))))))
    (define __SRC__0
      (lambda (_%e169007%_)
        (let ((_%src-stx169009%_ '#f))
          (__SRC__% _%e169007%_ _%src-stx169009%_))))
    (define __SRC
      (lambda _g169322_
        (let ((_g169323_ (let () (declare (not safe)) (##length _g169322_))))
          (cond ((let () (declare (not safe)) (##fx= _g169323_ 1))
                 (apply __SRC__0 _g169322_))
                ((let () (declare (not safe)) (##fx= _g169323_ 2))
                 (apply __SRC__% _g169322_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g169322_))))))
    (define __locat
      (lambda (_%loc168992%_)
        (if (let () (declare (not safe)) (##locat? _%loc168992%_))
            _%loc168992%_
            '#f)))
    (define __check-values
      (lambda (_%obj168987%_ _%k168988%_)
        (let ((_%count168990%_
               (if (let () (declare (not safe)) (##values? _%obj168987%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj168987%_))
                   '1)))
          (if (fx= _%count168990%_ _%k168988%_)
              '#!void
              (let ((__tmp169325
                     (if (fx< _%count168990%_ _%k168988%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp169324
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj168987%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj168987%_))
                         _%obj168987%_)))
                (declare (not safe))
                (error __tmp169325 __tmp169324 _%k168988%_))))))
    (define __compile
      (lambda (_%stx168956%_)
        (let* ((_%$e168958%_ _%stx168956%_)
               (_%$E168960168966%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168958%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168958%_))
              (let* ((_%$tgt168961168969%_
                      (let () (declare (not safe)) (__AST-e _%$e168958%_)))
                     (_%$hd168962168972%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168961168969%_)))
                     (_%$tl168963168975%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168961168969%_)))
                     (_%form168979%_ _%$hd168962168972%_)
                     (_%$e168981%_ (__core-resolve _%form168979%_)))
                (if _%$e168981%_
                    ((lambda (_%bind168984%_)
                       ((##structure-ref _%bind168984%_ '1 __syntax::t '#f)
                        _%stx168956%_))
                     _%$e168981%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx168956%_
                       _%form168979%_))))
              (_%$E168960168966%_)))))
    (define __compile-error__%
      (lambda (_%stx168943%_ _%detail168944%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx168943%_
           _%detail168944%_))))
    (define __compile-error__0
      (lambda (_%stx168949%_)
        (let ((_%detail168951%_ '#f))
          (__compile-error__% _%stx168949%_ _%detail168951%_))))
    (define __compile-error
      (lambda _g169326_
        (let ((_g169327_ (let () (declare (not safe)) (##length _g169326_))))
          (cond ((let () (declare (not safe)) (##fx= _g169327_ 1))
                 (apply __compile-error__0 _g169326_))
                ((let () (declare (not safe)) (##fx= _g169327_ 2))
                 (apply __compile-error__% _g169326_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g169326_))))))
    (define __compile-ignore%
      (lambda (_%stx168940%_) (__SRC__% ''#!void _%stx168940%_)))
    (define __compile-begin%
      (lambda (_%stx168915%_)
        (let* ((_%$e168917%_ _%stx168915%_)
               (_%$E168919168925%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168917%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168917%_))
              (let* ((_%$tgt168920168928%_
                      (let () (declare (not safe)) (__AST-e _%$e168917%_)))
                     (_%$hd168921168931%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168920168928%_)))
                     (_%$tl168922168934%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168920168928%_)))
                     (_%body168938%_ _%$tl168922168934%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body168938%_))
                 _%stx168915%_))
              (_%$E168919168925%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx168890%_)
        (let* ((_%$e168892%_ _%stx168890%_)
               (_%$E168894168900%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168892%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168892%_))
              (let* ((_%$tgt168895168903%_
                      (let () (declare (not safe)) (__AST-e _%$e168892%_)))
                     (_%$hd168896168906%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168895168903%_)))
                     (_%$tl168897168909%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168895168903%_)))
                     (_%body168913%_ _%$tl168897168909%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body168913%_)))
                 _%stx168890%_))
              (_%$E168894168900%_)))))
    (define __compile-import%
      (lambda (_%stx168865%_)
        (let* ((_%$e168867%_ _%stx168865%_)
               (_%$E168869168875%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168867%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168867%_))
              (let* ((_%$tgt168870168878%_
                      (let () (declare (not safe)) (__AST-e _%$e168867%_)))
                     (_%$hd168871168881%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168870168878%_)))
                     (_%$tl168872168884%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168870168878%_)))
                     (_%body168888%_ _%$tl168872168884%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body168888%_ '())) '()))
                 _%stx168865%_))
              (_%$E168869168875%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx168812%_)
        (let* ((_%$e168814%_ _%stx168812%_)
               (_%$E168816168828%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168814%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168814%_))
              (let* ((_%$tgt168817168831%_
                      (let () (declare (not safe)) (__AST-e _%$e168814%_)))
                     (_%$hd168818168834%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168817168831%_)))
                     (_%$tl168819168837%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168817168831%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168819168837%_))
                    (let* ((_%$tgt168820168841%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168819168837%_)))
                           (_%$hd168821168844%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168820168841%_)))
                           (_%$tl168822168847%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168820168841%_)))
                           (_%ann168851%_ _%$hd168821168844%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168822168847%_))
                          (let* ((_%$tgt168823168853%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168822168847%_)))
                                 (_%$hd168824168856%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168823168853%_)))
                                 (_%$tl168825168859%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168823168853%_)))
                                 (_%expr168863%_ _%$hd168824168856%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168825168859%_))
                                        '())
                                (__compile _%expr168863%_)
                                (_%$E168816168828%_)))
                          (_%$E168816168828%_)))
                    (_%$E168816168828%_)))
              (_%$E168816168828%_)))))
    (define __compile-define-values%
      (lambda (_%stx168703%_)
        (let* ((_%$e168705%_ _%stx168703%_)
               (_%$E168707168719%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168705%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168705%_))
              (let* ((_%$tgt168708168722%_
                      (let () (declare (not safe)) (__AST-e _%$e168705%_)))
                     (_%$hd168709168725%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168708168722%_)))
                     (_%$tl168710168728%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168708168722%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168710168728%_))
                    (let* ((_%$tgt168711168732%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168710168728%_)))
                           (_%$hd168712168735%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168711168732%_)))
                           (_%$tl168713168738%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168711168732%_)))
                           (_%hd168742%_ _%$hd168712168735%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168713168738%_))
                          (let* ((_%$tgt168714168744%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168713168738%_)))
                                 (_%$hd168715168747%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168714168744%_)))
                                 (_%$tl168716168750%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168714168744%_)))
                                 (_%expr168754%_ _%$hd168715168747%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168716168750%_))
                                        '())
                                (let* ((_%$e168756%_ _%hd168742%_)
                                       (_%$E168758168799%_
                                        (lambda ()
                                          (let ((_%$E168759168784%_
                                                 (lambda ()
                                                   (let* ((_%$E168760168771%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e168756%_))))
                  (_%ids168774%_ _%hd168742%_)
                  (_%len168776%_ (length _%ids168774%_))
                  (_%tmp168778%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp168778%_
                                       (cons (__compile _%expr168754%_) '())))
                           _%stx168703%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp168778%_
                                             (cons _%len168776%_ '())))
                                 _%stx168703%_)
                                (let ((__tmp169328
                                       (let ((__tmp169330
                                              (lambda (_%id168781%_
                                                       _%k168782%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id168781%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id168781%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp168778%_
                                           (cons _%k168782%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx168703%_)
                                                    '#f)))
                                             (__tmp169329
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len168776%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp169330
                                          _%ids168774%_
                                          __tmp169329))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp169328)))))
              _%stx168703%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e168756%_))
                                                (let* ((_%$tgt168761168787%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e168756%_)))
                                                       (_%$hd168762168790%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt168761168787%_)))
                                                       (_%$tl168763168793%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt168761168787%_)))
                                                       (_%id168797%_
                                                        _%$hd168762168790%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl168763168793%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id168797%_)
                           (cons (__compile _%expr168754%_) '())))
               _%stx168703%_)
              (_%$E168759168784%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E168759168784%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e168756%_))
                                      (let* ((_%$tgt168764168802%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e168756%_)))
                                             (_%$hd168765168805%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt168764168802%_)))
                                             (_%$tl168766168808%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt168764168802%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd168765168805%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl168766168808%_))
                                                        '())
                                                (__compile _%expr168754%_)
                                                (_%$E168758168799%_))
                                            (_%$E168758168799%_)))
                                      (_%$E168758168799%_)))
                                (_%$E168707168719%_)))
                          (_%$E168707168719%_)))
                    (_%$E168707168719%_)))
              (_%$E168707168719%_)))))
    (define __compile-head-id
      (lambda (_%e168701%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e168701%_))
             _%e168701%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd168658%_)
        (let _%recur168660%_ ((_%rest168662%_ _%hd168658%_))
          (let* ((_%$e168664%_ _%rest168662%_)
                 (_%$E168666168684%_
                  (lambda ()
                    (let ((_%$E168667168681%_
                           (lambda ()
                             (let* ((_%$E168668168676%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e168664%_))))
                                    (_%tail168679%_ _%$e168664%_))
                               (__compile-head-id _%tail168679%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168664%_))
                                  '())
                          '()
                          (_%$E168667168681%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e168664%_))
                (let* ((_%$tgt168669168687%_
                        (let () (declare (not safe)) (__AST-e _%$e168664%_)))
                       (_%$hd168670168690%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt168669168687%_)))
                       (_%$tl168671168693%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt168669168687%_)))
                       (_%hd168697%_ _%$hd168670168690%_)
                       (_%rest168699%_ _%$tl168671168693%_))
                  (cons (__compile-head-id _%hd168697%_)
                        (_%recur168660%_ _%rest168699%_)))
                (_%$E168666168684%_))))))
    (define __compile-lambda%
      (lambda (_%stx168605%_)
        (let* ((_%$e168607%_ _%stx168605%_)
               (_%$E168609168621%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168607%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168607%_))
              (let* ((_%$tgt168610168624%_
                      (let () (declare (not safe)) (__AST-e _%$e168607%_)))
                     (_%$hd168611168627%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168610168624%_)))
                     (_%$tl168612168630%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168610168624%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168612168630%_))
                    (let* ((_%$tgt168613168634%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168612168630%_)))
                           (_%$hd168614168637%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168613168634%_)))
                           (_%$tl168615168640%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168613168634%_)))
                           (_%hd168644%_ _%$hd168614168637%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168615168640%_))
                          (let* ((_%$tgt168616168646%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168615168640%_)))
                                 (_%$hd168617168649%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168616168646%_)))
                                 (_%$tl168618168652%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168616168646%_)))
                                 (_%body168656%_ _%$hd168617168649%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168618168652%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd168644%_)
                                             (cons (__compile _%body168656%_)
                                                   '())))
                                 _%stx168605%_)
                                (_%$E168609168621%_)))
                          (_%$E168609168621%_)))
                    (_%$E168609168621%_)))
              (_%$E168609168621%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx168370%_)
        (letrec ((_%variadic?168372%_
                  (lambda (_%hd168570%_)
                    (let* ((_%$e168572%_ _%hd168570%_)
                           (_%$E168574168590%_
                            (lambda ()
                              (let ((_%$E168575168587%_
                                     (lambda ()
                                       (let ((_%$E168576168584%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e168572%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e168572%_))
                                            '())
                                    '#f
                                    (_%$E168575168587%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168572%_))
                          (let* ((_%$tgt168577168593%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168572%_)))
                                 (_%$hd168578168596%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168577168593%_)))
                                 (_%$tl168579168599%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168577168593%_)))
                                 (_%rest168603%_ _%$tl168579168599%_))
                            (_%variadic?168372%_ _%rest168603%_))
                          (_%$E168574168590%_)))))
                 (_%arity168373%_
                  (lambda (_%hd168508%_)
                    (let _%lp168510%_ ((_%rest168512%_ _%hd168508%_)
                                       (_%k168513%_ '0))
                      (let* ((_%$e168515%_ _%rest168512%_)
                             (_%$E168517168528%_
                              (lambda ()
                                (let ((_%$E168518168525%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e168515%_)))))
                                  _%k168513%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e168515%_))
                            (let* ((_%$tgt168519168531%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e168515%_)))
                                   (_%$hd168520168534%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt168519168531%_)))
                                   (_%$tl168521168537%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt168519168531%_)))
                                   (_%rest168541%_ _%$tl168521168537%_))
                              (_%lp168510%_
                               _%rest168541%_
                               (let ((_%x168543%_ _%k168513%_))
                                 (if (fixnum? _%x168543%_)
                                     (let ((_%x168548%_ _%x168543%_))
                                       (declare (not safe))
                                       (__fx1+ _%x168548%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x168543%_)
                                       '#!void)))))
                            (_%$E168517168528%_))))))
                 (_%generate168374%_
                  (lambda (_%rest168435%_ _%args168436%_ _%len168437%_)
                    (let* ((_%$e168439%_ _%rest168435%_)
                           (_%$E168441168452%_
                            (lambda ()
                              (let ((_%$E168442168449%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e168439%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args168436%_ '())))
                                 _%stx168370%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168439%_))
                          (let* ((_%$tgt168443168455%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168439%_)))
                                 (_%$hd168444168458%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168443168455%_)))
                                 (_%$tl168445168461%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168443168455%_)))
                                 (_%clause168465%_ _%$hd168444168458%_)
                                 (_%rest168467%_ _%$tl168445168461%_)
                                 (_%$e168469%_ _%clause168465%_)
                                 (_%$E168471168480%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e168469%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e168469%_))
                                (let* ((_%$tgt168472168483%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e168469%_)))
                                       (_%$hd168473168486%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt168472168483%_)))
                                       (_%$tl168474168489%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt168472168483%_)))
                                       (_%hd168493%_ _%$hd168473168486%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl168474168489%_))
                                      (let* ((_%$tgt168475168495%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl168474168489%_)))
                                             (_%$hd168476168498%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt168475168495%_)))
                                             (_%$tl168477168501%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt168475168495%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl168477168501%_))
                                                    '())
                                            (let ((_%clen168505%_
                                                   (_%arity168373%_
                                                    _%hd168493%_))
                                                  (_%cmp168506%_
                                                   (if (_%variadic?168372%_
                                                        _%hd168493%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp168506%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len168437%_ (cons _%clen168505%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause168465%_))
                                      (cons _%args168436%_ '())))
                          _%stx168370%_)
                         (cons (_%generate168374%_
                                _%rest168467%_
                                _%args168436%_
                                _%len168437%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx168370%_))
                                            (_%$E168471168480%_)))
                                      (_%$E168471168480%_)))
                                (_%$E168471168480%_)))
                          (_%$E168441168452%_))))))
          (let* ((_%$e168376%_ _%stx168370%_)
                 (_%$E168378168410%_
                  (lambda ()
                    (let ((_%$E168379168392%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168376%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168376%_))
                          (let* ((_%$tgt168380168395%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168376%_)))
                                 (_%$hd168381168398%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168380168395%_)))
                                 (_%$tl168382168401%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168380168395%_)))
                                 (_%clauses168405%_ _%$tl168382168401%_))
                            (let ((_%args168407%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx168370%_))
                                  (_%len168408%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx168370%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args168407%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len168408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args168407%_ '()))
                                         _%stx168370%_)
                                        '()))
                            '())
                      (cons (_%generate168374%_
                             _%clauses168405%_
                             _%args168407%_
                             _%len168408%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx168370%_)
                                                 '())))
                               _%stx168370%_)))
                          (_%$E168379168392%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e168376%_))
                (let* ((_%$tgt168383168413%_
                        (let () (declare (not safe)) (__AST-e _%$e168376%_)))
                       (_%$hd168384168416%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt168383168413%_)))
                       (_%$tl168385168419%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt168383168413%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl168385168419%_))
                      (let* ((_%$tgt168386168423%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl168385168419%_)))
                             (_%$hd168387168426%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt168386168423%_)))
                             (_%$tl168388168429%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt168386168423%_)))
                             (_%clause168433%_ _%$hd168387168426%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl168388168429%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause168433%_))
                            (_%$E168378168410%_)))
                      (_%$E168378168410%_)))
                (_%$E168378168410%_))))))
    (define __compile-let-form
      (lambda (_%stx168139%_ _%compile-simple168140%_ _%compile-values168141%_)
        (letrec ((_%simple-bind?168143%_
                  (lambda (_%hd168328%_)
                    (let* ((_%hd168329168339%_ _%hd168328%_)
                           (_%else168332168347%_ (lambda () '#f)))
                      (let ((_%K168335168360%_ (lambda (_%id168358%_) '#t))
                            (_%K168334168352%_ (lambda () '#t)))
                        (let ((_%try-match168331168355%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd168329168339%_ '#f))
                                     (_%K168334168352%_)
                                     (_%else168332168347%_)))))
                          (if (pair? _%hd168329168339%_)
                              (let ((_%tl168337168365%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd168329168339%_)))
                                    (_%hd168336168363%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd168329168339%_))))
                                (if (null? _%tl168337168365%_)
                                    (let ((_%id168368%_ _%hd168336168363%_))
                                      (_%K168335168360%_ _%id168368%_))
                                    (_%try-match168331168355%_)))
                              (_%try-match168331168355%_)))))))
                 (_%car-e168144%_
                  (lambda (_%hd168326%_)
                    (if (pair? _%hd168326%_)
                        (let () (declare (not safe)) (##car _%hd168326%_))
                        _%hd168326%_))))
          (let* ((_%$e168146%_ _%stx168139%_)
                 (_%$E168148168291%_
                  (lambda ()
                    (let ((_%$E168149168171%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168146%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168146%_))
                          (let* ((_%$tgt168150168174%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168146%_)))
                                 (_%$hd168151168177%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168150168174%_)))
                                 (_%$tl168152168180%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168150168174%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl168152168180%_))
                                (let* ((_%$tgt168153168184%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168152168180%_)))
                                       (_%$hd168154168187%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt168153168184%_)))
                                       (_%$tl168155168190%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt168153168184%_)))
                                       (_%hd168194%_ _%$hd168154168187%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl168155168190%_))
                                      (let* ((_%$tgt168156168196%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl168155168190%_)))
                                             (_%$hd168157168199%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt168156168196%_)))
                                             (_%$tl168158168202%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt168156168196%_)))
                                             (_%body168206%_
                                              _%$hd168157168199%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl168158168202%_))
                                                    '())
                                            (let* ((_%hd-ids168246%_
                                                    (map (lambda (_%bind168208%_)
                                                           (let* ((_%$e168210%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind168208%_)
                          (_%$E168212168221%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168210%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e168210%_))
                         (let* ((_%$tgt168213168224%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e168210%_)))
                                (_%$hd168214168227%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt168213168224%_)))
                                (_%$tl168215168230%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt168213168224%_)))
                                (_%ids168234%_ _%$hd168214168227%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl168215168230%_))
                               (let* ((_%$tgt168216168236%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl168215168230%_)))
                                      (_%$hd168217168239%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt168216168236%_)))
                                      (_%$tl168218168242%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt168216168236%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl168218168242%_))
                                             '())
                                     _%ids168234%_
                                     (_%$E168212168221%_)))
                               (_%$E168212168221%_)))
                         (_%$E168212168221%_))))
                 _%hd168194%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs168286%_
                                                    (map (lambda (_%bind168248%_)
                                                           (let* ((_%$e168250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind168248%_)
                          (_%$E168252168261%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168250%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e168250%_))
                         (let* ((_%$tgt168253168264%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e168250%_)))
                                (_%$hd168254168267%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt168253168264%_)))
                                (_%$tl168255168270%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt168253168264%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl168255168270%_))
                               (let* ((_%$tgt168256168274%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl168255168270%_)))
                                      (_%$hd168257168277%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt168256168274%_)))
                                      (_%$tl168258168280%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt168256168274%_)))
                                      (_%expr168284%_ _%$hd168257168277%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl168258168280%_))
                                             '())
                                     (__compile _%expr168284%_)
                                     (_%$E168252168261%_)))
                               (_%$E168252168261%_)))
                         (_%$E168252168261%_))))
                 _%hd168194%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body168288%_
                                                    (__compile
                                                     _%body168206%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?168143%_
                                                     _%hd-ids168246%_))
                                                  (_%compile-simple168140%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e168144%_
                                                            _%hd-ids168246%_))
                                                   _%exprs168286%_
                                                   _%body168288%_)
                                                  (_%compile-values168141%_
                                                   _%hd-ids168246%_
                                                   _%exprs168286%_
                                                   _%body168288%_)))
                                            (_%$E168149168171%_)))
                                      (_%$E168149168171%_)))
                                (_%$E168149168171%_)))
                          (_%$E168149168171%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e168146%_))
                (let* ((_%$tgt168159168294%_
                        (let () (declare (not safe)) (__AST-e _%$e168146%_)))
                       (_%$hd168160168297%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt168159168294%_)))
                       (_%$tl168161168300%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt168159168294%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl168161168300%_))
                      (let* ((_%$tgt168162168304%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl168161168300%_)))
                             (_%$hd168163168307%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt168162168304%_)))
                             (_%$tl168164168310%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt168162168304%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd168163168307%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl168164168310%_))
                                (let* ((_%$tgt168165168314%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168164168310%_)))
                                       (_%$hd168166168317%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt168165168314%_)))
                                       (_%$tl168167168320%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt168165168314%_)))
                                       (_%body168324%_ _%$hd168166168317%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl168167168320%_))
                                              '())
                                      (__compile _%body168324%_)
                                      (_%$E168148168291%_)))
                                (_%$E168148168291%_))
                            (_%$E168148168291%_)))
                      (_%$E168148168291%_)))
                (_%$E168148168291%_))))))
    (define __compile-let-values%
      (lambda (_%stx167951%_)
        (letrec ((_%compile-simple167953%_
                  (lambda (_%hd-ids168135%_ _%exprs168136%_ _%body168137%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp169331
                                        (map __compile-head-id
                                             _%hd-ids168135%_)))
                                   (declare (not safe))
                                   (##map list __tmp169331 _%exprs168136%_))
                                 (cons _%body168137%_ '())))
                     _%stx167951%_)))
                 (_%compile-values167954%_
                  (lambda (_%hd-ids168050%_ _%exprs168051%_ _%body168052%_)
                    (let _%lp168054%_ ((_%rest168056%_ _%hd-ids168050%_)
                                       (_%exprs168057%_ _%exprs168051%_)
                                       (_%bind168058%_ '())
                                       (_%post168059%_ '()))
                      (let* ((_%rest168060168074%_ _%rest168056%_)
                             (_%else168063168082%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind168058%_)
                                             (cons (_%compile-post167955%_
                                                    _%post168059%_
                                                    _%body168052%_)
                                                   '())))
                                 _%stx167951%_))))
                        (let ((_%K168068168118%_
                               (lambda (_%rest168115%_ _%id168116%_)
                                 (_%lp168054%_
                                  _%rest168115%_
                                  (cdr _%exprs168057%_)
                                  (cons (cons (__compile-head-id _%id168116%_)
                                              (cons (car _%exprs168057%_) '()))
                                        _%bind168058%_)
                                  _%post168059%_)))
                              (_%K168065168100%_
                               (lambda (_%rest168086%_ _%hd168087%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd168087%_))
                                     (_%lp168054%_
                                      _%rest168086%_
                                      (cdr _%exprs168057%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd168087%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs168057%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind168058%_)
                                      _%post168059%_)
                                     (if (list? _%hd168087%_)
                                         (let* ((_%len168091%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd168087%_)))
                                                (_%tmp168093%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp168054%_
                                            _%rest168086%_
                                            (cdr _%exprs168057%_)
                                            (cons (cons _%tmp168093%_
                                                        (cons (car _%exprs168057%_)
                                                              '()))
                                                  _%bind168058%_)
                                            (cons (cons _%tmp168093%_
                                                        (cons _%len168091%_
                                                              (let ((__tmp169333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id168096%_ _%k168097%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id168096%_))
                                   (cons (__SRC__0 _%id168096%_) _%k168097%_)
                                   '#f)))
                            (__tmp169332
                             (let ()
                               (declare (not safe))
                               (##iota _%len168091%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp169333 _%hd168087%_ __tmp169332))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post168059%_)))
                                         (__compile-error__%
                                          _%stx167951%_
                                          _%hd168087%_))))))
                          (if (pair? _%rest168060168074%_)
                              (let ((_%tl168070168123%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest168060168074%_)))
                                    (_%hd168069168121%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest168060168074%_))))
                                (if (pair? _%hd168069168121%_)
                                    (let ((_%tl168072168128%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd168069168121%_)))
                                          (_%hd168071168126%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd168069168121%_))))
                                      (if (null? _%tl168072168128%_)
                                          (let ((_%id168131%_
                                                 _%hd168071168126%_)
                                                (_%rest168133%_
                                                 _%tl168070168123%_))
                                            (_%K168068168118%_
                                             _%rest168133%_
                                             _%id168131%_))
                                          (let ((_%hd168108%_
                                                 _%hd168069168121%_)
                                                (_%rest168110%_
                                                 _%tl168070168123%_))
                                            (_%K168065168100%_
                                             _%rest168110%_
                                             _%hd168108%_))))
                                    (let ((_%hd168108%_ _%hd168069168121%_)
                                          (_%rest168110%_ _%tl168070168123%_))
                                      (_%K168065168100%_
                                       _%rest168110%_
                                       _%hd168108%_))))
                              (_%else168063168082%_)))))))
                 (_%compile-post167955%_
                  (lambda (_%post167957%_ _%body167958%_)
                    (let _%lp167960%_ ((_%rest167962%_ _%post167957%_)
                                       (_%check167963%_ '())
                                       (_%bind167964%_ '()))
                      (let* ((_%rest167965167977%_ _%rest167962%_)
                             (_%else167967167985%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp169334
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind167964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body167958%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx167951%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp169334
                                          _%check167963%_)))
                                 _%stx167951%_)))
                             (_%K167969168024%_
                              (lambda (_%rest167988%_
                                       _%init167989%_
                                       _%len167990%_
                                       _%tmp167991%_)
                                (_%lp167960%_
                                 _%rest167988%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp167991%_
                                                    (cons _%len167990%_ '())))
                                        _%stx167951%_)
                                       _%check167963%_)
                                 (let ((__tmp169335
                                        (lambda (_%hd167993%_ _%r167994%_)
                                          (let* ((_%hd167995168002%_
                                                  _%hd167993%_)
                                                 (_%E167997168006%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd167995168002%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K167998168012%_
                                                  (lambda (_%k168009%_
                                                           _%id168010%_)
                                                    (cons (cons _%id168010%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp167991%_
                                          (cons _%k168009%_ '())))
                              '()))
                  _%r167994%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd167995168002%_)
                                                (let ((_%hd167999168015%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd167995168002%_)))
                                                      (_%tl168000168017%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd167995168002%_))))
                                                  (let* ((_%id168020%_
                                                          _%hd167999168015%_)
                                                         (_%k168022%_
                                                          _%tl168000168017%_))
                                                    (_%K167998168012%_
                                                     _%k168022%_
                                                     _%id168020%_)))
                                                (_%E167997168006%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp169335
                                    _%bind167964%_
                                    _%init167989%_))))))
                        (if (pair? _%rest167965167977%_)
                            (let ((_%hd167970168027%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167965167977%_)))
                                  (_%tl167971168029%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167965167977%_))))
                              (if (pair? _%hd167970168027%_)
                                  (let ((_%hd167972168032%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd167970168027%_)))
                                        (_%tl167973168034%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd167970168027%_))))
                                    (let ((_%tmp168037%_ _%hd167972168032%_))
                                      (if (pair? _%tl167973168034%_)
                                          (let ((_%hd167974168039%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl167973168034%_)))
                                                (_%tl167975168041%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl167973168034%_))))
                                            (let* ((_%len168044%_
                                                    _%hd167974168039%_)
                                                   (_%init168046%_
                                                    _%tl167975168041%_)
                                                   (_%rest168048%_
                                                    _%tl167971168029%_))
                                              (_%K167969168024%_
                                               _%rest168048%_
                                               _%init168046%_
                                               _%len168044%_
                                               _%tmp168037%_)))
                                          (_%else167967167985%_))))
                                  (_%else167967167985%_)))
                            (_%else167967167985%_)))))))
          (__compile-let-form
           _%stx167951%_
           _%compile-simple167953%_
           _%compile-values167954%_))))
    (define __compile-letrec-values%
      (lambda (_%stx167748%_)
        (letrec ((_%compile-simple167750%_
                  (lambda (_%hd-ids167947%_ _%exprs167948%_ _%body167949%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp169336
                                        (map __compile-head-id
                                             _%hd-ids167947%_)))
                                   (declare (not safe))
                                   (##map list __tmp169336 _%exprs167948%_))
                                 (cons _%body167949%_ '())))
                     _%stx167748%_)))
                 (_%compile-values167751%_
                  (lambda (_%hd-ids167858%_ _%exprs167859%_ _%body167860%_)
                    (let _%lp167862%_ ((_%rest167864%_ _%hd-ids167858%_)
                                       (_%exprs167865%_ _%exprs167859%_)
                                       (_%pre167866%_ '())
                                       (_%bind167867%_ '())
                                       (_%post167868%_ '()))
                      (let* ((_%rest167869167883%_ _%rest167864%_)
                             (_%else167872167891%_
                              (lambda ()
                                (_%compile-inner167752%_
                                 _%pre167866%_
                                 _%bind167867%_
                                 _%post167868%_
                                 _%body167860%_))))
                        (let ((_%K167877167930%_
                               (lambda (_%rest167927%_ _%id167928%_)
                                 (_%lp167862%_
                                  _%rest167927%_
                                  (cdr _%exprs167865%_)
                                  _%pre167866%_
                                  (cons (cons (__compile-head-id _%id167928%_)
                                              (cons (car _%exprs167865%_) '()))
                                        _%bind167867%_)
                                  _%post167868%_)))
                              (_%K167874167912%_
                               (lambda (_%rest167895%_ _%hd167896%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd167896%_))
                                     (_%lp167862%_
                                      _%rest167895%_
                                      (cdr _%exprs167865%_)
                                      _%pre167866%_
                                      (cons (cons (__compile-head-id
                                                   _%hd167896%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs167865%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind167867%_)
                                      _%post167868%_)
                                     (if (list? _%hd167896%_)
                                         (let* ((_%len167900%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd167896%_)))
                                                (_%tmp167902%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp167862%_
                                            _%rest167895%_
                                            (cdr _%exprs167865%_)
                                            (let ((__tmp169337
                                                   (lambda (_%id167905%_
                                                            _%r167906%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id167905%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id167905%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r167906%_)
                 _%r167906%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp169337
                                               _%pre167866%_
                                               _%hd167896%_))
                                            (cons (cons _%tmp167902%_
                                                        (cons (car _%exprs167865%_)
                                                              '()))
                                                  _%bind167867%_)
                                            (cons (cons _%tmp167902%_
                                                        (cons _%len167900%_
                                                              (let ((__tmp169339
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id167908%_ _%k167909%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id167908%_))
                                   (cons (__SRC__0 _%id167908%_) _%k167909%_)
                                   '#f)))
                            (__tmp169338
                             (let ()
                               (declare (not safe))
                               (##iota _%len167900%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp169339 _%hd167896%_ __tmp169338))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post167868%_)))
                                         (__compile-error__%
                                          _%stx167748%_
                                          _%hd167896%_))))))
                          (if (pair? _%rest167869167883%_)
                              (let ((_%tl167879167935%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest167869167883%_)))
                                    (_%hd167878167933%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest167869167883%_))))
                                (if (pair? _%hd167878167933%_)
                                    (let ((_%tl167881167940%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd167878167933%_)))
                                          (_%hd167880167938%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd167878167933%_))))
                                      (if (null? _%tl167881167940%_)
                                          (let ((_%id167943%_
                                                 _%hd167880167938%_)
                                                (_%rest167945%_
                                                 _%tl167879167935%_))
                                            (_%K167877167930%_
                                             _%rest167945%_
                                             _%id167943%_))
                                          (let ((_%hd167920%_
                                                 _%hd167878167933%_)
                                                (_%rest167922%_
                                                 _%tl167879167935%_))
                                            (_%K167874167912%_
                                             _%rest167922%_
                                             _%hd167920%_))))
                                    (let ((_%hd167920%_ _%hd167878167933%_)
                                          (_%rest167922%_ _%tl167879167935%_))
                                      (_%K167874167912%_
                                       _%rest167922%_
                                       _%hd167920%_))))
                              (_%else167872167891%_)))))))
                 (_%compile-inner167752%_
                  (lambda (_%pre167853%_
                           _%bind167854%_
                           _%post167855%_
                           _%body167856%_)
                    (if (null? _%pre167853%_)
                        (_%compile-bind167753%_
                         _%bind167854%_
                         _%post167855%_
                         _%body167856%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre167853%_)
                                     (cons (_%compile-bind167753%_
                                            _%bind167854%_
                                            _%post167855%_
                                            _%body167856%_)
                                           '())))
                         _%stx167748%_))))
                 (_%compile-bind167753%_
                  (lambda (_%bind167849%_ _%post167850%_ _%body167851%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind167849%_)
                                 (cons (_%compile-post167754%_
                                        _%post167850%_
                                        _%body167851%_)
                                       '())))
                     _%stx167748%_)))
                 (_%compile-post167754%_
                  (lambda (_%post167756%_ _%body167757%_)
                    (let _%lp167759%_ ((_%rest167761%_ _%post167756%_)
                                       (_%check167762%_ '())
                                       (_%bind167763%_ '()))
                      (let* ((_%rest167764167776%_ _%rest167761%_)
                             (_%else167766167784%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp169340
                                              (let ((__tmp169341
                                                     (cons _%body167757%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp169341
                                                 _%bind167763%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp169340
                                          _%check167762%_)))
                                 _%stx167748%_)))
                             (_%K167768167823%_
                              (lambda (_%rest167787%_
                                       _%init167788%_
                                       _%len167789%_
                                       _%tmp167790%_)
                                (_%lp167759%_
                                 _%rest167787%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp167790%_
                                                    (cons _%len167789%_ '())))
                                        _%stx167748%_)
                                       _%check167762%_)
                                 (let ((__tmp169342
                                        (lambda (_%hd167792%_ _%r167793%_)
                                          (let* ((_%hd167794167801%_
                                                  _%hd167792%_)
                                                 (_%E167796167805%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd167794167801%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K167797167811%_
                                                  (lambda (_%k167808%_
                                                           _%id167809%_)
                                                    (cons (cons 'set!
                                                                (cons _%id167809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp167790%_
                                                (cons _%k167808%_ '())))
                                    '())))
                  _%r167793%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd167794167801%_)
                                                (let ((_%hd167798167814%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd167794167801%_)))
                                                      (_%tl167799167816%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd167794167801%_))))
                                                  (let* ((_%id167819%_
                                                          _%hd167798167814%_)
                                                         (_%k167821%_
                                                          _%tl167799167816%_))
                                                    (_%K167797167811%_
                                                     _%k167821%_
                                                     _%id167819%_)))
                                                (_%E167796167805%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp169342
                                    _%bind167763%_
                                    _%init167788%_))))))
                        (if (pair? _%rest167764167776%_)
                            (let ((_%hd167769167826%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167764167776%_)))
                                  (_%tl167770167828%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167764167776%_))))
                              (if (pair? _%hd167769167826%_)
                                  (let ((_%hd167771167831%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd167769167826%_)))
                                        (_%tl167772167833%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd167769167826%_))))
                                    (let ((_%tmp167836%_ _%hd167771167831%_))
                                      (if (pair? _%tl167772167833%_)
                                          (let ((_%hd167773167838%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl167772167833%_)))
                                                (_%tl167774167840%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl167772167833%_))))
                                            (let* ((_%len167843%_
                                                    _%hd167773167838%_)
                                                   (_%init167845%_
                                                    _%tl167774167840%_)
                                                   (_%rest167847%_
                                                    _%tl167770167828%_))
                                              (_%K167768167823%_
                                               _%rest167847%_
                                               _%init167845%_
                                               _%len167843%_
                                               _%tmp167836%_)))
                                          (_%else167766167784%_))))
                                  (_%else167766167784%_)))
                            (_%else167766167784%_)))))))
          (__compile-let-form
           _%stx167748%_
           _%compile-simple167750%_
           _%compile-values167751%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx167499%_)
        (letrec ((_%compile-simple167501%_
                  (lambda (_%hd-ids167744%_ _%exprs167745%_ _%body167746%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp169343
                                        (map __compile-head-id
                                             _%hd-ids167744%_)))
                                   (declare (not safe))
                                   (##map list __tmp169343 _%exprs167745%_))
                                 (cons _%body167746%_ '())))
                     _%stx167499%_)))
                 (_%compile-values167502%_
                  (lambda (_%hd-ids167651%_ _%exprs167652%_ _%body167653%_)
                    (let _%lp167655%_ ((_%rest167657%_ _%hd-ids167651%_)
                                       (_%exprs167658%_ _%exprs167652%_)
                                       (_%bind167659%_ '())
                                       (_%post167660%_ '()))
                      (let* ((_%rest167661167675%_ _%rest167657%_)
                             (_%else167664167683%_
                              (lambda ()
                                (_%compile-bind167503%_
                                 _%bind167659%_
                                 _%post167660%_
                                 _%body167653%_))))
                        (let ((_%K167669167727%_
                               (lambda (_%rest167722%_ _%hd167723%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd167723%_))
                                     (let ((_%id167725%_
                                            (__SRC__0 _%hd167723%_)))
                                       (_%lp167655%_
                                        _%rest167722%_
                                        (cdr _%exprs167658%_)
                                        (cons (cons _%id167725%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind167659%_)
                                        (cons (cons _%id167725%_
                                                    (cons (car _%exprs167658%_)
                                                          '()))
                                              _%post167660%_)))
                                     (_%lp167655%_
                                      _%rest167722%_
                                      (cdr _%exprs167658%_)
                                      _%bind167659%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs167658%_)
                                                        '()))
                                            _%post167660%_)))))
                              (_%K167666167707%_
                               (lambda (_%rest167687%_ _%hd167688%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd167688%_))
                                     (let ((_%id167691%_
                                            (__SRC__0 _%hd167688%_)))
                                       (_%lp167655%_
                                        _%rest167687%_
                                        (cdr _%exprs167658%_)
                                        (cons (cons _%id167691%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind167659%_)
                                        (cons (cons _%id167691%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs167658%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post167660%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd167688%_))
                                         (if (list? _%hd167688%_)
                                             (let* ((_%len167695%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd167688%_)))
                                                    (_%tmp167697%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp167655%_
                                                _%rest167687%_
                                                (cdr _%exprs167658%_)
                                                (let ((__tmp169344
                                                       (lambda (_%id167700%_
                                                                _%r167701%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id167700%_))
                     (cons (cons (__SRC__0 _%id167700%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r167701%_)
                     _%r167701%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp169344
                                                   _%bind167659%_
                                                   _%hd167688%_))
                                                (cons (cons _%tmp167697%_
                                                            (cons (car _%exprs167658%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len167695%_
                                (let ((__tmp169346
                                       (lambda (_%id167703%_ _%k167704%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id167703%_))
                                             (cons (__SRC__0 _%id167703%_)
                                                   _%k167704%_)
                                             '#f)))
                                      (__tmp169345
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len167695%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp169346
                                   _%hd167688%_
                                   __tmp169345)))))
              _%post167660%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx167499%_
                                              _%hd167688%_))
                                         (_%lp167655%_
                                          _%rest167687%_
                                          (cdr _%exprs167658%_)
                                          _%bind167659%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs167658%_)
                                                            '()))
                                                _%post167660%_)))))))
                          (if (pair? _%rest167661167675%_)
                              (let ((_%tl167671167732%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest167661167675%_)))
                                    (_%hd167670167730%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest167661167675%_))))
                                (if (pair? _%hd167670167730%_)
                                    (let ((_%tl167673167737%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd167670167730%_)))
                                          (_%hd167672167735%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd167670167730%_))))
                                      (if (null? _%tl167673167737%_)
                                          (let ((_%hd167740%_
                                                 _%hd167672167735%_)
                                                (_%rest167742%_
                                                 _%tl167671167732%_))
                                            (_%K167669167727%_
                                             _%rest167742%_
                                             _%hd167740%_))
                                          (let ((_%hd167715%_
                                                 _%hd167670167730%_)
                                                (_%rest167717%_
                                                 _%tl167671167732%_))
                                            (_%K167666167707%_
                                             _%rest167717%_
                                             _%hd167715%_))))
                                    (let ((_%hd167715%_ _%hd167670167730%_)
                                          (_%rest167717%_ _%tl167671167732%_))
                                      (_%K167666167707%_
                                       _%rest167717%_
                                       _%hd167715%_))))
                              (_%else167664167683%_)))))))
                 (_%compile-bind167503%_
                  (lambda (_%bind167647%_ _%post167648%_ _%body167649%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind167647%_)
                                 (cons (_%compile-post167504%_
                                        _%post167648%_
                                        _%body167649%_)
                                       '())))
                     _%stx167499%_)))
                 (_%compile-post167504%_
                  (lambda (_%post167506%_ _%body167507%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp169347
                                  (let ((__tmp169349
                                         (lambda (_%hd167509%_ _%r167510%_)
                                           (let* ((_%hd167511167534%_
                                                   _%hd167509%_)
                                                  (_%E167515167538%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd167511167534%_
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
                                             (let ((_%K167528167632%_
                                                    (lambda (_%expr167630%_)
                                                      (cons _%expr167630%_
                                                            _%r167510%_)))
                                                   (_%K167523167610%_
                                                    (lambda (_%expr167607%_
                                                             _%id167608%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id167608%_ (cons _%expr167607%_ '())))
                     _%stx167499%_)
                    _%r167510%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K167516167577%_
                                                    (lambda (_%init167542%_
                                                             _%len167543%_
                                                             _%expr167544%_
                                                             _%tmp167545%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp167545%_
                                             (cons _%expr167544%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp167545%_
                                                    (cons _%len167543%_ '())))
                                        _%stx167499%_)
                                       (let ((__tmp169350
                                              (map (lambda (_%hd167547%_)
                                                     (let* ((_%hd167548167555%_
                                                             _%hd167547%_)
                                                            (_%E167550167559%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd167548167555%_
                                '([id . k])))
                       '#!void))
                    (_%K167551167565%_
                     (lambda (_%k167562%_ _%id167563%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id167563%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp167545%_
                                                      (cons _%k167562%_ '())))
                                          '())))
                        _%stx167499%_))))
               (if (pair? _%hd167548167555%_)
                   (let ((_%hd167552167568%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd167548167555%_)))
                         (_%tl167553167570%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd167548167555%_))))
                     (let* ((_%id167573%_ _%hd167552167568%_)
                            (_%k167575%_ _%tl167553167570%_))
                       (_%K167551167565%_ _%k167575%_ _%id167573%_)))
                   (_%E167550167559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init167542%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp169350)))))
                     _%stx167499%_)
                    _%r167510%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match169205169206%_
                                                       (lambda (_%hd167517167580%_
                                                                _%tl167518167582%_
                                                                _%hd167519167587%_
                                                                _%tl167520167589%_)
                                                         (let ((_%tmp167585%_
                                                                _%hd167517167580%_)
                                                               (_%expr167592%_
                                                                _%hd167519167587%_))
                                                           (_%E167515167538%_))))
                                                      (_%__match169199169200%_
                                                       (lambda (_%hd167517167580%_
                                                                _%tl167518167582%_)
                                                         (let ((_%tmp167585%_
                                                                _%hd167517167580%_))
                                                           (_%E167515167538%_)))))
                                                 (if (pair? _%hd167511167534%_)
                                                     (let ((_%tl167530167637%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd167511167534%_)))
                                                           (_%hd167529167635%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd167511167534%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd167529167635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl167530167637%_)
                       (let ((_%tl167532167642%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl167530167637%_)))
                             (_%hd167531167640%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl167530167637%_))))
                         (if (null? _%tl167532167642%_)
                             (let ((_%expr167645%_ _%hd167531167640%_))
                               (_%K167528167632%_ _%expr167645%_))
                             (if (pair? _%tl167532167642%_)
                                 (let ((_%tl167522167596%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl167532167642%_)))
                                       (_%hd167521167594%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl167532167642%_))))
                                   (let ((_%tmp167585%_ _%hd167529167635%_)
                                         (_%expr167592%_ _%hd167531167640%_)
                                         (_%len167599%_ _%hd167521167594%_)
                                         (_%init167601%_ _%tl167522167596%_))
                                     (_%K167516167577%_
                                      _%init167601%_
                                      _%len167599%_
                                      _%expr167592%_
                                      _%tmp167585%_)))
                                 (_%__match169205169206%_
                                  _%hd167529167635%_
                                  _%tl167530167637%_
                                  _%hd167531167640%_
                                  _%tl167532167642%_))))
                       (_%__match169199169200%_
                        _%hd167529167635%_
                        _%tl167530167637%_))
                   (if (pair? _%tl167530167637%_)
                       (let ((_%tl167527167622%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl167530167637%_)))
                             (_%hd167526167620%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl167530167637%_))))
                         (if (null? _%tl167527167622%_)
                             (let ((_%id167618%_ _%hd167529167635%_)
                                   (_%expr167625%_ _%hd167526167620%_))
                               (_%K167523167610%_ _%expr167625%_ _%id167618%_))
                             (if (pair? _%tl167527167622%_)
                                 (let ((_%tl167522167596%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl167527167622%_)))
                                       (_%hd167521167594%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl167527167622%_))))
                                   (let ((_%tmp167585%_ _%hd167529167635%_)
                                         (_%expr167592%_ _%hd167526167620%_)
                                         (_%len167599%_ _%hd167521167594%_)
                                         (_%init167601%_ _%tl167522167596%_))
                                     (_%K167516167577%_
                                      _%init167601%_
                                      _%len167599%_
                                      _%expr167592%_
                                      _%tmp167585%_)))
                                 (_%__match169205169206%_
                                  _%hd167529167635%_
                                  _%tl167530167637%_
                                  _%hd167526167620%_
                                  _%tl167527167622%_))))
                       (_%__match169199169200%_
                        _%hd167529167635%_
                        _%tl167530167637%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E167515167538%_)))))))
                                        (__tmp169348 (list _%body167507%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp169349
                                     __tmp169348
                                     _%post167506%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp169347)))
                     _%stx167499%_))))
          (__compile-let-form
           _%stx167499%_
           _%compile-simple167501%_
           _%compile-values167502%_))))
    (define __compile-call%
      (lambda (_%stx167459%_)
        (let* ((_%$e167461%_ _%stx167459%_)
               (_%$E167463167472%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167461%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167461%_))
              (let* ((_%$tgt167464167475%_
                      (let () (declare (not safe)) (__AST-e _%$e167461%_)))
                     (_%$hd167465167478%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167464167475%_)))
                     (_%$tl167466167481%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167464167475%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167466167481%_))
                    (let* ((_%$tgt167467167485%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167466167481%_)))
                           (_%$hd167468167488%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167467167485%_)))
                           (_%$tl167469167491%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167467167485%_)))
                           (_%rator167495%_ _%$hd167468167488%_)
                           (_%rands167497%_ _%$tl167469167491%_))
                      (__SRC__%
                       (cons (__compile _%rator167495%_)
                             (map __compile _%rands167497%_))
                       _%stx167459%_))
                    (_%$E167463167472%_)))
              (_%$E167463167472%_)))))
    (define __compile-ref%
      (lambda (_%stx167421%_)
        (let* ((_%$e167423%_ _%stx167421%_)
               (_%$E167425167434%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167423%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167423%_))
              (let* ((_%$tgt167426167437%_
                      (let () (declare (not safe)) (__AST-e _%$e167423%_)))
                     (_%$hd167427167440%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167426167437%_)))
                     (_%$tl167428167443%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167426167437%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167428167443%_))
                    (let* ((_%$tgt167429167447%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167428167443%_)))
                           (_%$hd167430167450%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167429167447%_)))
                           (_%$tl167431167453%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167429167447%_)))
                           (_%id167457%_ _%$hd167430167450%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167431167453%_))
                                  '())
                          (__SRC__% _%id167457%_ _%stx167421%_)
                          (_%$E167425167434%_)))
                    (_%$E167425167434%_)))
              (_%$E167425167434%_)))))
    (define __compile-setq%
      (lambda (_%stx167368%_)
        (let* ((_%$e167370%_ _%stx167368%_)
               (_%$E167372167384%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167370%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167370%_))
              (let* ((_%$tgt167373167387%_
                      (let () (declare (not safe)) (__AST-e _%$e167370%_)))
                     (_%$hd167374167390%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167373167387%_)))
                     (_%$tl167375167393%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167373167387%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167375167393%_))
                    (let* ((_%$tgt167376167397%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167375167393%_)))
                           (_%$hd167377167400%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167376167397%_)))
                           (_%$tl167378167403%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167376167397%_)))
                           (_%id167407%_ _%$hd167377167400%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl167378167403%_))
                          (let* ((_%$tgt167379167409%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167378167403%_)))
                                 (_%$hd167380167412%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167379167409%_)))
                                 (_%$tl167381167415%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167379167409%_)))
                                 (_%expr167419%_ _%$hd167380167412%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl167381167415%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id167407%_
                                              _%stx167368%_)
                                             (cons (__compile _%expr167419%_)
                                                   '())))
                                 _%stx167368%_)
                                (_%$E167372167384%_)))
                          (_%$E167372167384%_)))
                    (_%$E167372167384%_)))
              (_%$E167372167384%_)))))
    (define __compile-if%
      (lambda (_%stx167300%_)
        (let* ((_%$e167302%_ _%stx167300%_)
               (_%$E167304167319%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167302%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167302%_))
              (let* ((_%$tgt167305167322%_
                      (let () (declare (not safe)) (__AST-e _%$e167302%_)))
                     (_%$hd167306167325%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167305167322%_)))
                     (_%$tl167307167328%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167305167322%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167307167328%_))
                    (let* ((_%$tgt167308167332%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167307167328%_)))
                           (_%$hd167309167335%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167308167332%_)))
                           (_%$tl167310167338%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167308167332%_)))
                           (_%p167342%_ _%$hd167309167335%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl167310167338%_))
                          (let* ((_%$tgt167311167344%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167310167338%_)))
                                 (_%$hd167312167347%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167311167344%_)))
                                 (_%$tl167313167350%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167311167344%_)))
                                 (_%t167354%_ _%$hd167312167347%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl167313167350%_))
                                (let* ((_%$tgt167314167356%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl167313167350%_)))
                                       (_%$hd167315167359%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt167314167356%_)))
                                       (_%$tl167316167362%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt167314167356%_)))
                                       (_%f167366%_ _%$hd167315167359%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl167316167362%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p167342%_)
                                                   (cons (__compile
                                                          _%t167354%_)
                                                         (cons (__compile
                                                                _%f167366%_)
                                                               '()))))
                                       _%stx167300%_)
                                      (_%$E167304167319%_)))
                                (_%$E167304167319%_)))
                          (_%$E167304167319%_)))
                    (_%$E167304167319%_)))
              (_%$E167304167319%_)))))
    (define __compile-quote%
      (lambda (_%stx167262%_)
        (let* ((_%$e167264%_ _%stx167262%_)
               (_%$E167266167275%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167264%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167264%_))
              (let* ((_%$tgt167267167278%_
                      (let () (declare (not safe)) (__AST-e _%$e167264%_)))
                     (_%$hd167268167281%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167267167278%_)))
                     (_%$tl167269167284%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167267167278%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167269167284%_))
                    (let* ((_%$tgt167270167288%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167269167284%_)))
                           (_%$hd167271167291%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167270167288%_)))
                           (_%$tl167272167294%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167270167288%_)))
                           (_%e167298%_ _%$hd167271167291%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167272167294%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e167298%_))
                                       '()))
                           _%stx167262%_)
                          (_%$E167266167275%_)))
                    (_%$E167266167275%_)))
              (_%$E167266167275%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx167224%_)
        (let* ((_%$e167226%_ _%stx167224%_)
               (_%$E167228167237%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167226%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167226%_))
              (let* ((_%$tgt167229167240%_
                      (let () (declare (not safe)) (__AST-e _%$e167226%_)))
                     (_%$hd167230167243%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167229167240%_)))
                     (_%$tl167231167246%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167229167240%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167231167246%_))
                    (let* ((_%$tgt167232167250%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167231167246%_)))
                           (_%$hd167233167253%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167232167250%_)))
                           (_%$tl167234167256%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167232167250%_)))
                           (_%e167260%_ _%$hd167233167253%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167234167256%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e167260%_ '()))
                           _%stx167224%_)
                          (_%$E167228167237%_)))
                    (_%$E167228167237%_)))
              (_%$E167228167237%_)))))
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
