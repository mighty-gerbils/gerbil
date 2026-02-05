(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1770334639)
  (begin
    (define __syntax::t
      (let ((__tmp137270 (list)) (__tmp137269 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp137270
         '(e id)
         __tmp137269
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args137074%_
        (apply make-instance __syntax::t _%$args137074%_)))
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
      (let ((__tmp137272 (list __syntax::t))
            (__tmp137271 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp137272
         '()
         __tmp137271
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args137071%_
        (apply make-instance __core-form::t _%$args137071%_)))
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
      (let ((__tmp137274 (list __core-form::t))
            (__tmp137273 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp137274
         '()
         __tmp137273
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args137068%_
        (apply make-instance __core-expression::t _%$args137068%_)))
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
      (let ((__tmp137276 (list __core-form::t))
            (__tmp137275 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp137276
         '()
         __tmp137275
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args137065%_
        (apply make-instance __core-special-form::t _%$args137065%_)))
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
      (lambda (_%id137063%_)
        (let ((__tmp137277
               (let () (declare (not safe)) (__AST-e _%id137063%_))))
          (declare (not safe))
          (__hash-get __core __tmp137277))))
    (define __core-bound-id?__%
      (lambda (_%id137046%_ _%is?137047%_)
        (let ((_%$e137049%_ (__core-resolve _%id137046%_)))
          (if _%$e137049%_ (_%is?137047%_ _%$e137049%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id137056%_)
        (let ((_%is?137058%_ true))
          (__core-bound-id?__% _%id137056%_ _%is?137058%_))))
    (define __core-bound-id?
      (lambda _g137278_
        (let ((_g137279_ (let () (declare (not safe)) (##length _g137278_))))
          (cond ((let () (declare (not safe)) (##fx= _g137279_ 1))
                 (apply __core-bound-id?__0 _g137278_))
                ((let () (declare (not safe)) (##fx= _g137279_ 2))
                 (apply __core-bound-id?__% _g137278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g137278_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id137029%_ _%e137030%_ _%make137031%_)
        (let ((__tmp137280
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e137030%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e137030%_
                   (_%make137031%_ _%e137030%_ _%id137029%_))))
          (declare (not safe))
          (__hash-put! __core _%id137029%_ __tmp137280))))
    (define __core-bind-syntax!__0
      (lambda (_%id137036%_ _%e137037%_)
        (let ((_%make137039%_ make-__syntax))
          (__core-bind-syntax!__% _%id137036%_ _%e137037%_ _%make137039%_))))
    (define __core-bind-syntax!
      (lambda _g137281_
        (let ((_g137282_ (let () (declare (not safe)) (##length _g137281_))))
          (cond ((let () (declare (not safe)) (##fx= _g137282_ 2))
                 (apply __core-bind-syntax!__0 _g137281_))
                ((let () (declare (not safe)) (##fx= _g137282_ 3))
                 (apply __core-bind-syntax!__% _g137281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g137281_))))))
    (define __SRC__%
      (lambda (_%e137009%_ _%src-stx137010%_)
        (if (or (pair? _%e137009%_) (symbol? _%e137009%_))
            (let ((__tmp137283
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx137010%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx137010%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e137009%_ __tmp137283))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e137009%_ 'gerbil#AST::t))
                (let ((__tmp137285
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e137009%_ '1 '#f '#f)))
                      (__tmp137284
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e137009%_)))))
                  (declare (not safe))
                  (##make-source __tmp137285 __tmp137284))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e137009%_))))))
    (define __SRC__0
      (lambda (_%e137021%_)
        (let ((_%src-stx137023%_ '#f))
          (__SRC__% _%e137021%_ _%src-stx137023%_))))
    (define __SRC
      (lambda _g137286_
        (let ((_g137287_ (let () (declare (not safe)) (##length _g137286_))))
          (cond ((let () (declare (not safe)) (##fx= _g137287_ 1))
                 (apply __SRC__0 _g137286_))
                ((let () (declare (not safe)) (##fx= _g137287_ 2))
                 (apply __SRC__% _g137286_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g137286_))))))
    (define __locat
      (lambda (_%loc137006%_)
        (if (let () (declare (not safe)) (##locat? _%loc137006%_))
            _%loc137006%_
            '#f)))
    (define __check-values
      (lambda (_%obj137001%_ _%k137002%_)
        (let ((_%count137004%_
               (if (let () (declare (not safe)) (##values? _%obj137001%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj137001%_))
                   '1)))
          (if (fx= _%count137004%_ _%k137002%_)
              '#!void
              (let ((__tmp137289
                     (if (fx< _%count137004%_ _%k137002%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp137288
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj137001%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj137001%_))
                         _%obj137001%_)))
                (declare (not safe))
                (error __tmp137289 __tmp137288 _%k137002%_))))))
    (define __compile
      (lambda (_%stx136970%_)
        (let* ((_%$e136972%_ _%stx136970%_)
               (_%$E136974136980%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e136972%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e136972%_))
              (let* ((_%$tgt136975136983%_
                      (let () (declare (not safe)) (__AST-e _%$e136972%_)))
                     (_%$hd136976136986%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt136975136983%_)))
                     (_%$tl136977136989%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt136975136983%_)))
                     (_%form136993%_ _%$hd136976136986%_)
                     (_%$e136995%_ (__core-resolve _%form136993%_)))
                (if _%$e136995%_
                    ((lambda (_%bind136998%_)
                       ((##structure-ref _%bind136998%_ '1 __syntax::t '#f)
                        _%stx136970%_))
                     _%$e136995%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx136970%_
                       _%form136993%_))))
              (_%$E136974136980%_)))))
    (define __compile-error__%
      (lambda (_%stx136957%_ _%detail136958%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx136957%_
           _%detail136958%_))))
    (define __compile-error__0
      (lambda (_%stx136963%_)
        (let ((_%detail136965%_ '#f))
          (__compile-error__% _%stx136963%_ _%detail136965%_))))
    (define __compile-error
      (lambda _g137290_
        (let ((_g137291_ (let () (declare (not safe)) (##length _g137290_))))
          (cond ((let () (declare (not safe)) (##fx= _g137291_ 1))
                 (apply __compile-error__0 _g137290_))
                ((let () (declare (not safe)) (##fx= _g137291_ 2))
                 (apply __compile-error__% _g137290_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g137290_))))))
    (define __compile-ignore%
      (lambda (_%stx136954%_) (__SRC__% ''#!void _%stx136954%_)))
    (define __compile-begin%
      (lambda (_%stx136929%_)
        (let* ((_%$e136931%_ _%stx136929%_)
               (_%$E136933136939%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e136931%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e136931%_))
              (let* ((_%$tgt136934136942%_
                      (let () (declare (not safe)) (__AST-e _%$e136931%_)))
                     (_%$hd136935136945%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt136934136942%_)))
                     (_%$tl136936136948%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt136934136942%_)))
                     (_%body136952%_ _%$tl136936136948%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body136952%_))
                 _%stx136929%_))
              (_%$E136933136939%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx136904%_)
        (let* ((_%$e136906%_ _%stx136904%_)
               (_%$E136908136914%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e136906%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e136906%_))
              (let* ((_%$tgt136909136917%_
                      (let () (declare (not safe)) (__AST-e _%$e136906%_)))
                     (_%$hd136910136920%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt136909136917%_)))
                     (_%$tl136911136923%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt136909136917%_)))
                     (_%body136927%_ _%$tl136911136923%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body136927%_)))
                 _%stx136904%_))
              (_%$E136908136914%_)))))
    (define __compile-import%
      (lambda (_%stx136879%_)
        (let* ((_%$e136881%_ _%stx136879%_)
               (_%$E136883136889%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e136881%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e136881%_))
              (let* ((_%$tgt136884136892%_
                      (let () (declare (not safe)) (__AST-e _%$e136881%_)))
                     (_%$hd136885136895%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt136884136892%_)))
                     (_%$tl136886136898%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt136884136892%_)))
                     (_%body136902%_ _%$tl136886136898%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body136902%_ '())) '()))
                 _%stx136879%_))
              (_%$E136883136889%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx136826%_)
        (let* ((_%$e136828%_ _%stx136826%_)
               (_%$E136830136842%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e136828%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e136828%_))
              (let* ((_%$tgt136831136845%_
                      (let () (declare (not safe)) (__AST-e _%$e136828%_)))
                     (_%$hd136832136848%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt136831136845%_)))
                     (_%$tl136833136851%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt136831136845%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl136833136851%_))
                    (let* ((_%$tgt136834136855%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl136833136851%_)))
                           (_%$hd136835136858%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt136834136855%_)))
                           (_%$tl136836136861%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt136834136855%_)))
                           (_%ann136865%_ _%$hd136835136858%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl136836136861%_))
                          (let* ((_%$tgt136837136867%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl136836136861%_)))
                                 (_%$hd136838136870%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt136837136867%_)))
                                 (_%$tl136839136873%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt136837136867%_)))
                                 (_%expr136877%_ _%$hd136838136870%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl136839136873%_))
                                        '())
                                (__compile _%expr136877%_)
                                (_%$E136830136842%_)))
                          (_%$E136830136842%_)))
                    (_%$E136830136842%_)))
              (_%$E136830136842%_)))))
    (define __compile-define-values%
      (lambda (_%stx136717%_)
        (let* ((_%$e136719%_ _%stx136717%_)
               (_%$E136721136733%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e136719%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e136719%_))
              (let* ((_%$tgt136722136736%_
                      (let () (declare (not safe)) (__AST-e _%$e136719%_)))
                     (_%$hd136723136739%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt136722136736%_)))
                     (_%$tl136724136742%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt136722136736%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl136724136742%_))
                    (let* ((_%$tgt136725136746%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl136724136742%_)))
                           (_%$hd136726136749%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt136725136746%_)))
                           (_%$tl136727136752%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt136725136746%_)))
                           (_%hd136756%_ _%$hd136726136749%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl136727136752%_))
                          (let* ((_%$tgt136728136758%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl136727136752%_)))
                                 (_%$hd136729136761%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt136728136758%_)))
                                 (_%$tl136730136764%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt136728136758%_)))
                                 (_%expr136768%_ _%$hd136729136761%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl136730136764%_))
                                        '())
                                (let* ((_%$e136770%_ _%hd136756%_)
                                       (_%$E136772136813%_
                                        (lambda ()
                                          (let ((_%$E136773136798%_
                                                 (lambda ()
                                                   (let* ((_%$E136774136785%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e136770%_))))
                  (_%ids136788%_ _%hd136756%_)
                  (_%len136790%_ (length _%ids136788%_))
                  (_%tmp136792%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp136792%_
                                       (cons (__compile _%expr136768%_) '())))
                           _%stx136717%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp136792%_
                                             (cons _%len136790%_ '())))
                                 _%stx136717%_)
                                (let ((__tmp137292
                                       (let ((__tmp137294
                                              (lambda (_%id136795%_
                                                       _%k136796%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id136795%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id136795%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp136792%_
                                           (cons _%k136796%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx136717%_)
                                                    '#f)))
                                             (__tmp137293
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len136790%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp137294
                                          _%ids136788%_
                                          __tmp137293))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp137292)))))
              _%stx136717%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e136770%_))
                                                (let* ((_%$tgt136775136801%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e136770%_)))
                                                       (_%$hd136776136804%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt136775136801%_)))
                                                       (_%$tl136777136807%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt136775136801%_)))
                                                       (_%id136811%_
                                                        _%$hd136776136804%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl136777136807%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id136811%_)
                           (cons (__compile _%expr136768%_) '())))
               _%stx136717%_)
              (_%$E136773136798%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E136773136798%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e136770%_))
                                      (let* ((_%$tgt136778136816%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e136770%_)))
                                             (_%$hd136779136819%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt136778136816%_)))
                                             (_%$tl136780136822%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt136778136816%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd136779136819%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl136780136822%_))
                                                        '())
                                                (__compile _%expr136768%_)
                                                (_%$E136772136813%_))
                                            (_%$E136772136813%_)))
                                      (_%$E136772136813%_)))
                                (_%$E136721136733%_)))
                          (_%$E136721136733%_)))
                    (_%$E136721136733%_)))
              (_%$E136721136733%_)))))
    (define __compile-head-id
      (lambda (_%e136715%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e136715%_))
             _%e136715%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd136672%_)
        (let _%recur136674%_ ((_%rest136676%_ _%hd136672%_))
          (let* ((_%$e136678%_ _%rest136676%_)
                 (_%$E136680136698%_
                  (lambda ()
                    (let ((_%$E136681136695%_
                           (lambda ()
                             (let* ((_%$E136682136690%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e136678%_))))
                                    (_%tail136693%_ _%$e136678%_))
                               (__compile-head-id _%tail136693%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e136678%_))
                                  '())
                          '()
                          (_%$E136681136695%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e136678%_))
                (let* ((_%$tgt136683136701%_
                        (let () (declare (not safe)) (__AST-e _%$e136678%_)))
                       (_%$hd136684136704%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt136683136701%_)))
                       (_%$tl136685136707%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt136683136701%_)))
                       (_%hd136711%_ _%$hd136684136704%_)
                       (_%rest136713%_ _%$tl136685136707%_))
                  (cons (__compile-head-id _%hd136711%_)
                        (_%recur136674%_ _%rest136713%_)))
                (_%$E136680136698%_))))))
    (define __compile-lambda%
      (lambda (_%stx136619%_)
        (let* ((_%$e136621%_ _%stx136619%_)
               (_%$E136623136635%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e136621%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e136621%_))
              (let* ((_%$tgt136624136638%_
                      (let () (declare (not safe)) (__AST-e _%$e136621%_)))
                     (_%$hd136625136641%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt136624136638%_)))
                     (_%$tl136626136644%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt136624136638%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl136626136644%_))
                    (let* ((_%$tgt136627136648%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl136626136644%_)))
                           (_%$hd136628136651%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt136627136648%_)))
                           (_%$tl136629136654%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt136627136648%_)))
                           (_%hd136658%_ _%$hd136628136651%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl136629136654%_))
                          (let* ((_%$tgt136630136660%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl136629136654%_)))
                                 (_%$hd136631136663%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt136630136660%_)))
                                 (_%$tl136632136666%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt136630136660%_)))
                                 (_%body136670%_ _%$hd136631136663%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl136632136666%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd136658%_)
                                             (cons (__compile _%body136670%_)
                                                   '())))
                                 _%stx136619%_)
                                (_%$E136623136635%_)))
                          (_%$E136623136635%_)))
                    (_%$E136623136635%_)))
              (_%$E136623136635%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx136411%_)
        (letrec ((_%variadic?136413%_
                  (lambda (_%hd136584%_)
                    (let* ((_%$e136586%_ _%hd136584%_)
                           (_%$E136588136604%_
                            (lambda ()
                              (let ((_%$E136589136601%_
                                     (lambda ()
                                       (let ((_%$E136590136598%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e136586%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e136586%_))
                                            '())
                                    '#f
                                    (_%$E136589136601%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e136586%_))
                          (let* ((_%$tgt136591136607%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e136586%_)))
                                 (_%$hd136592136610%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt136591136607%_)))
                                 (_%$tl136593136613%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt136591136607%_)))
                                 (_%rest136617%_ _%$tl136593136613%_))
                            (_%variadic?136413%_ _%rest136617%_))
                          (_%$E136588136604%_)))))
                 (_%arity136414%_
                  (lambda (_%hd136549%_)
                    (let _%lp136551%_ ((_%rest136553%_ _%hd136549%_)
                                       (_%k136554%_ '0))
                      (let* ((_%$e136556%_ _%rest136553%_)
                             (_%$E136558136569%_
                              (lambda ()
                                (let ((_%$E136559136566%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e136556%_)))))
                                  _%k136554%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e136556%_))
                            (let* ((_%$tgt136560136572%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e136556%_)))
                                   (_%$hd136561136575%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt136560136572%_)))
                                   (_%$tl136562136578%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt136560136572%_)))
                                   (_%rest136582%_ _%$tl136562136578%_))
                              (_%lp136551%_
                               _%rest136582%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k136554%_ '1))))
                            (_%$E136558136569%_))))))
                 (_%generate136415%_
                  (lambda (_%rest136476%_ _%args136477%_ _%len136478%_)
                    (let* ((_%$e136480%_ _%rest136476%_)
                           (_%$E136482136493%_
                            (lambda ()
                              (let ((_%$E136483136490%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e136480%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args136477%_ '())))
                                 _%stx136411%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e136480%_))
                          (let* ((_%$tgt136484136496%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e136480%_)))
                                 (_%$hd136485136499%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt136484136496%_)))
                                 (_%$tl136486136502%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt136484136496%_)))
                                 (_%clause136506%_ _%$hd136485136499%_)
                                 (_%rest136508%_ _%$tl136486136502%_)
                                 (_%$e136510%_ _%clause136506%_)
                                 (_%$E136512136521%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e136510%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e136510%_))
                                (let* ((_%$tgt136513136524%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e136510%_)))
                                       (_%$hd136514136527%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt136513136524%_)))
                                       (_%$tl136515136530%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt136513136524%_)))
                                       (_%hd136534%_ _%$hd136514136527%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl136515136530%_))
                                      (let* ((_%$tgt136516136536%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl136515136530%_)))
                                             (_%$hd136517136539%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt136516136536%_)))
                                             (_%$tl136518136542%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt136516136536%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl136518136542%_))
                                                    '())
                                            (let ((_%clen136546%_
                                                   (_%arity136414%_
                                                    _%hd136534%_))
                                                  (_%cmp136547%_
                                                   (if (_%variadic?136413%_
                                                        _%hd136534%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp136547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len136478%_ (cons _%clen136546%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause136506%_))
                                      (cons _%args136477%_ '())))
                          _%stx136411%_)
                         (cons (_%generate136415%_
                                _%rest136508%_
                                _%args136477%_
                                _%len136478%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx136411%_))
                                            (_%$E136512136521%_)))
                                      (_%$E136512136521%_)))
                                (_%$E136512136521%_)))
                          (_%$E136482136493%_))))))
          (let* ((_%$e136417%_ _%stx136411%_)
                 (_%$E136419136451%_
                  (lambda ()
                    (let ((_%$E136420136433%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e136417%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e136417%_))
                          (let* ((_%$tgt136421136436%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e136417%_)))
                                 (_%$hd136422136439%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt136421136436%_)))
                                 (_%$tl136423136442%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt136421136436%_)))
                                 (_%clauses136446%_ _%$tl136423136442%_))
                            (let ((_%args136448%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx136411%_))
                                  (_%len136449%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx136411%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args136448%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len136449%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args136448%_ '()))
                                         _%stx136411%_)
                                        '()))
                            '())
                      (cons (_%generate136415%_
                             _%clauses136446%_
                             _%args136448%_
                             _%len136449%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx136411%_)
                                                 '())))
                               _%stx136411%_)))
                          (_%$E136420136433%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e136417%_))
                (let* ((_%$tgt136424136454%_
                        (let () (declare (not safe)) (__AST-e _%$e136417%_)))
                       (_%$hd136425136457%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt136424136454%_)))
                       (_%$tl136426136460%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt136424136454%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl136426136460%_))
                      (let* ((_%$tgt136427136464%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl136426136460%_)))
                             (_%$hd136428136467%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt136427136464%_)))
                             (_%$tl136429136470%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt136427136464%_)))
                             (_%clause136474%_ _%$hd136428136467%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl136429136470%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause136474%_))
                            (_%$E136419136451%_)))
                      (_%$E136419136451%_)))
                (_%$E136419136451%_))))))
    (define __compile-let-form
      (lambda (_%stx136180%_ _%compile-simple136181%_ _%compile-values136182%_)
        (letrec ((_%simple-bind?136184%_
                  (lambda (_%hd136369%_)
                    (let* ((_%hd136370136380%_ _%hd136369%_)
                           (_%else136373136388%_ (lambda () '#f)))
                      (let ((_%K136376136401%_ (lambda (_%id136399%_) '#t))
                            (_%K136375136393%_ (lambda () '#t)))
                        (let ((_%try-match136372136396%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd136370136380%_ '#f))
                                     (_%K136375136393%_)
                                     (_%else136373136388%_)))))
                          (if (pair? _%hd136370136380%_)
                              (let ((_%tl136378136406%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd136370136380%_)))
                                    (_%hd136377136404%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd136370136380%_))))
                                (if (null? _%tl136378136406%_)
                                    (let ((_%id136409%_ _%hd136377136404%_))
                                      (_%K136376136401%_ _%id136409%_))
                                    (_%try-match136372136396%_)))
                              (_%try-match136372136396%_)))))))
                 (_%car-e136185%_
                  (lambda (_%hd136367%_)
                    (if (pair? _%hd136367%_)
                        (let () (declare (not safe)) (##car _%hd136367%_))
                        _%hd136367%_))))
          (let* ((_%$e136187%_ _%stx136180%_)
                 (_%$E136189136332%_
                  (lambda ()
                    (let ((_%$E136190136212%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e136187%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e136187%_))
                          (let* ((_%$tgt136191136215%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e136187%_)))
                                 (_%$hd136192136218%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt136191136215%_)))
                                 (_%$tl136193136221%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt136191136215%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl136193136221%_))
                                (let* ((_%$tgt136194136225%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl136193136221%_)))
                                       (_%$hd136195136228%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt136194136225%_)))
                                       (_%$tl136196136231%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt136194136225%_)))
                                       (_%hd136235%_ _%$hd136195136228%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl136196136231%_))
                                      (let* ((_%$tgt136197136237%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl136196136231%_)))
                                             (_%$hd136198136240%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt136197136237%_)))
                                             (_%$tl136199136243%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt136197136237%_)))
                                             (_%body136247%_
                                              _%$hd136198136240%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl136199136243%_))
                                                    '())
                                            (let* ((_%hd-ids136287%_
                                                    (map (lambda (_%bind136249%_)
                                                           (let* ((_%$e136251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind136249%_)
                          (_%$E136253136262%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e136251%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e136251%_))
                         (let* ((_%$tgt136254136265%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e136251%_)))
                                (_%$hd136255136268%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt136254136265%_)))
                                (_%$tl136256136271%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt136254136265%_)))
                                (_%ids136275%_ _%$hd136255136268%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl136256136271%_))
                               (let* ((_%$tgt136257136277%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl136256136271%_)))
                                      (_%$hd136258136280%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt136257136277%_)))
                                      (_%$tl136259136283%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt136257136277%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl136259136283%_))
                                             '())
                                     _%ids136275%_
                                     (_%$E136253136262%_)))
                               (_%$E136253136262%_)))
                         (_%$E136253136262%_))))
                 _%hd136235%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs136327%_
                                                    (map (lambda (_%bind136289%_)
                                                           (let* ((_%$e136291%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind136289%_)
                          (_%$E136293136302%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e136291%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e136291%_))
                         (let* ((_%$tgt136294136305%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e136291%_)))
                                (_%$hd136295136308%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt136294136305%_)))
                                (_%$tl136296136311%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt136294136305%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl136296136311%_))
                               (let* ((_%$tgt136297136315%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl136296136311%_)))
                                      (_%$hd136298136318%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt136297136315%_)))
                                      (_%$tl136299136321%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt136297136315%_)))
                                      (_%expr136325%_ _%$hd136298136318%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl136299136321%_))
                                             '())
                                     (__compile _%expr136325%_)
                                     (_%$E136293136302%_)))
                               (_%$E136293136302%_)))
                         (_%$E136293136302%_))))
                 _%hd136235%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body136329%_
                                                    (__compile
                                                     _%body136247%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?136184%_
                                                     _%hd-ids136287%_))
                                                  (_%compile-simple136181%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e136185%_
                                                            _%hd-ids136287%_))
                                                   _%exprs136327%_
                                                   _%body136329%_)
                                                  (_%compile-values136182%_
                                                   _%hd-ids136287%_
                                                   _%exprs136327%_
                                                   _%body136329%_)))
                                            (_%$E136190136212%_)))
                                      (_%$E136190136212%_)))
                                (_%$E136190136212%_)))
                          (_%$E136190136212%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e136187%_))
                (let* ((_%$tgt136200136335%_
                        (let () (declare (not safe)) (__AST-e _%$e136187%_)))
                       (_%$hd136201136338%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt136200136335%_)))
                       (_%$tl136202136341%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt136200136335%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl136202136341%_))
                      (let* ((_%$tgt136203136345%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl136202136341%_)))
                             (_%$hd136204136348%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt136203136345%_)))
                             (_%$tl136205136351%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt136203136345%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd136204136348%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl136205136351%_))
                                (let* ((_%$tgt136206136355%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl136205136351%_)))
                                       (_%$hd136207136358%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt136206136355%_)))
                                       (_%$tl136208136361%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt136206136355%_)))
                                       (_%body136365%_ _%$hd136207136358%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl136208136361%_))
                                              '())
                                      (__compile _%body136365%_)
                                      (_%$E136189136332%_)))
                                (_%$E136189136332%_))
                            (_%$E136189136332%_)))
                      (_%$E136189136332%_)))
                (_%$E136189136332%_))))))
    (define __compile-let-values%
      (lambda (_%stx135992%_)
        (letrec ((_%compile-simple135994%_
                  (lambda (_%hd-ids136176%_ _%exprs136177%_ _%body136178%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp137295
                                        (map __compile-head-id
                                             _%hd-ids136176%_)))
                                   (declare (not safe))
                                   (##map list __tmp137295 _%exprs136177%_))
                                 (cons _%body136178%_ '())))
                     _%stx135992%_)))
                 (_%compile-values135995%_
                  (lambda (_%hd-ids136091%_ _%exprs136092%_ _%body136093%_)
                    (let _%lp136095%_ ((_%rest136097%_ _%hd-ids136091%_)
                                       (_%exprs136098%_ _%exprs136092%_)
                                       (_%bind136099%_ '())
                                       (_%post136100%_ '()))
                      (let* ((_%rest136101136115%_ _%rest136097%_)
                             (_%else136104136123%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind136099%_)
                                             (cons (_%compile-post135996%_
                                                    _%post136100%_
                                                    _%body136093%_)
                                                   '())))
                                 _%stx135992%_))))
                        (let ((_%K136109136159%_
                               (lambda (_%rest136156%_ _%id136157%_)
                                 (_%lp136095%_
                                  _%rest136156%_
                                  (cdr _%exprs136098%_)
                                  (cons (cons (__compile-head-id _%id136157%_)
                                              (cons (car _%exprs136098%_) '()))
                                        _%bind136099%_)
                                  _%post136100%_)))
                              (_%K136106136141%_
                               (lambda (_%rest136127%_ _%hd136128%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd136128%_))
                                     (_%lp136095%_
                                      _%rest136127%_
                                      (cdr _%exprs136098%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd136128%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs136098%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind136099%_)
                                      _%post136100%_)
                                     (if (list? _%hd136128%_)
                                         (let* ((_%len136132%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd136128%_)))
                                                (_%tmp136134%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp136095%_
                                            _%rest136127%_
                                            (cdr _%exprs136098%_)
                                            (cons (cons _%tmp136134%_
                                                        (cons (car _%exprs136098%_)
                                                              '()))
                                                  _%bind136099%_)
                                            (cons (cons _%tmp136134%_
                                                        (cons _%len136132%_
                                                              (let ((__tmp137297
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id136137%_ _%k136138%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id136137%_))
                                   (cons (__SRC__0 _%id136137%_) _%k136138%_)
                                   '#f)))
                            (__tmp137296
                             (let ()
                               (declare (not safe))
                               (##iota _%len136132%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp137297 _%hd136128%_ __tmp137296))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post136100%_)))
                                         (__compile-error__%
                                          _%stx135992%_
                                          _%hd136128%_))))))
                          (if (pair? _%rest136101136115%_)
                              (let ((_%tl136111136164%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest136101136115%_)))
                                    (_%hd136110136162%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest136101136115%_))))
                                (if (pair? _%hd136110136162%_)
                                    (let ((_%tl136113136169%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd136110136162%_)))
                                          (_%hd136112136167%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd136110136162%_))))
                                      (if (null? _%tl136113136169%_)
                                          (let ((_%id136172%_
                                                 _%hd136112136167%_)
                                                (_%rest136174%_
                                                 _%tl136111136164%_))
                                            (_%K136109136159%_
                                             _%rest136174%_
                                             _%id136172%_))
                                          (let ((_%hd136149%_
                                                 _%hd136110136162%_)
                                                (_%rest136151%_
                                                 _%tl136111136164%_))
                                            (_%K136106136141%_
                                             _%rest136151%_
                                             _%hd136149%_))))
                                    (let ((_%hd136149%_ _%hd136110136162%_)
                                          (_%rest136151%_ _%tl136111136164%_))
                                      (_%K136106136141%_
                                       _%rest136151%_
                                       _%hd136149%_))))
                              (_%else136104136123%_)))))))
                 (_%compile-post135996%_
                  (lambda (_%post135998%_ _%body135999%_)
                    (let _%lp136001%_ ((_%rest136003%_ _%post135998%_)
                                       (_%check136004%_ '())
                                       (_%bind136005%_ '()))
                      (let* ((_%rest136006136018%_ _%rest136003%_)
                             (_%else136008136026%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp137298
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind136005%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body135999%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx135992%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp137298
                                          _%check136004%_)))
                                 _%stx135992%_)))
                             (_%K136010136065%_
                              (lambda (_%rest136029%_
                                       _%init136030%_
                                       _%len136031%_
                                       _%tmp136032%_)
                                (_%lp136001%_
                                 _%rest136029%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp136032%_
                                                    (cons _%len136031%_ '())))
                                        _%stx135992%_)
                                       _%check136004%_)
                                 (let ((__tmp137299
                                        (lambda (_%hd136034%_ _%r136035%_)
                                          (let* ((_%hd136036136043%_
                                                  _%hd136034%_)
                                                 (_%E136038136047%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd136036136043%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K136039136053%_
                                                  (lambda (_%k136050%_
                                                           _%id136051%_)
                                                    (cons (cons _%id136051%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp136032%_
                                          (cons _%k136050%_ '())))
                              '()))
                  _%r136035%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd136036136043%_)
                                                (let ((_%hd136040136056%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd136036136043%_)))
                                                      (_%tl136041136058%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd136036136043%_))))
                                                  (let* ((_%id136061%_
                                                          _%hd136040136056%_)
                                                         (_%k136063%_
                                                          _%tl136041136058%_))
                                                    (_%K136039136053%_
                                                     _%k136063%_
                                                     _%id136061%_)))
                                                (_%E136038136047%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp137299
                                    _%bind136005%_
                                    _%init136030%_))))))
                        (if (pair? _%rest136006136018%_)
                            (let ((_%hd136011136068%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest136006136018%_)))
                                  (_%tl136012136070%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest136006136018%_))))
                              (if (pair? _%hd136011136068%_)
                                  (let ((_%hd136013136073%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd136011136068%_)))
                                        (_%tl136014136075%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd136011136068%_))))
                                    (let ((_%tmp136078%_ _%hd136013136073%_))
                                      (if (pair? _%tl136014136075%_)
                                          (let ((_%hd136015136080%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl136014136075%_)))
                                                (_%tl136016136082%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl136014136075%_))))
                                            (let* ((_%len136085%_
                                                    _%hd136015136080%_)
                                                   (_%init136087%_
                                                    _%tl136016136082%_)
                                                   (_%rest136089%_
                                                    _%tl136012136070%_))
                                              (_%K136010136065%_
                                               _%rest136089%_
                                               _%init136087%_
                                               _%len136085%_
                                               _%tmp136078%_)))
                                          (_%else136008136026%_))))
                                  (_%else136008136026%_)))
                            (_%else136008136026%_)))))))
          (__compile-let-form
           _%stx135992%_
           _%compile-simple135994%_
           _%compile-values135995%_))))
    (define __compile-letrec-values%
      (lambda (_%stx135789%_)
        (letrec ((_%compile-simple135791%_
                  (lambda (_%hd-ids135988%_ _%exprs135989%_ _%body135990%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp137300
                                        (map __compile-head-id
                                             _%hd-ids135988%_)))
                                   (declare (not safe))
                                   (##map list __tmp137300 _%exprs135989%_))
                                 (cons _%body135990%_ '())))
                     _%stx135789%_)))
                 (_%compile-values135792%_
                  (lambda (_%hd-ids135899%_ _%exprs135900%_ _%body135901%_)
                    (let _%lp135903%_ ((_%rest135905%_ _%hd-ids135899%_)
                                       (_%exprs135906%_ _%exprs135900%_)
                                       (_%pre135907%_ '())
                                       (_%bind135908%_ '())
                                       (_%post135909%_ '()))
                      (let* ((_%rest135910135924%_ _%rest135905%_)
                             (_%else135913135932%_
                              (lambda ()
                                (_%compile-inner135793%_
                                 _%pre135907%_
                                 _%bind135908%_
                                 _%post135909%_
                                 _%body135901%_))))
                        (let ((_%K135918135971%_
                               (lambda (_%rest135968%_ _%id135969%_)
                                 (_%lp135903%_
                                  _%rest135968%_
                                  (cdr _%exprs135906%_)
                                  _%pre135907%_
                                  (cons (cons (__compile-head-id _%id135969%_)
                                              (cons (car _%exprs135906%_) '()))
                                        _%bind135908%_)
                                  _%post135909%_)))
                              (_%K135915135953%_
                               (lambda (_%rest135936%_ _%hd135937%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd135937%_))
                                     (_%lp135903%_
                                      _%rest135936%_
                                      (cdr _%exprs135906%_)
                                      _%pre135907%_
                                      (cons (cons (__compile-head-id
                                                   _%hd135937%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs135906%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind135908%_)
                                      _%post135909%_)
                                     (if (list? _%hd135937%_)
                                         (let* ((_%len135941%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd135937%_)))
                                                (_%tmp135943%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp135903%_
                                            _%rest135936%_
                                            (cdr _%exprs135906%_)
                                            (let ((__tmp137301
                                                   (lambda (_%id135946%_
                                                            _%r135947%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id135946%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id135946%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r135947%_)
                 _%r135947%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp137301
                                               _%pre135907%_
                                               _%hd135937%_))
                                            (cons (cons _%tmp135943%_
                                                        (cons (car _%exprs135906%_)
                                                              '()))
                                                  _%bind135908%_)
                                            (cons (cons _%tmp135943%_
                                                        (cons _%len135941%_
                                                              (let ((__tmp137303
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id135949%_ _%k135950%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id135949%_))
                                   (cons (__SRC__0 _%id135949%_) _%k135950%_)
                                   '#f)))
                            (__tmp137302
                             (let ()
                               (declare (not safe))
                               (##iota _%len135941%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp137303 _%hd135937%_ __tmp137302))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post135909%_)))
                                         (__compile-error__%
                                          _%stx135789%_
                                          _%hd135937%_))))))
                          (if (pair? _%rest135910135924%_)
                              (let ((_%tl135920135976%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest135910135924%_)))
                                    (_%hd135919135974%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest135910135924%_))))
                                (if (pair? _%hd135919135974%_)
                                    (let ((_%tl135922135981%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd135919135974%_)))
                                          (_%hd135921135979%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd135919135974%_))))
                                      (if (null? _%tl135922135981%_)
                                          (let ((_%id135984%_
                                                 _%hd135921135979%_)
                                                (_%rest135986%_
                                                 _%tl135920135976%_))
                                            (_%K135918135971%_
                                             _%rest135986%_
                                             _%id135984%_))
                                          (let ((_%hd135961%_
                                                 _%hd135919135974%_)
                                                (_%rest135963%_
                                                 _%tl135920135976%_))
                                            (_%K135915135953%_
                                             _%rest135963%_
                                             _%hd135961%_))))
                                    (let ((_%hd135961%_ _%hd135919135974%_)
                                          (_%rest135963%_ _%tl135920135976%_))
                                      (_%K135915135953%_
                                       _%rest135963%_
                                       _%hd135961%_))))
                              (_%else135913135932%_)))))))
                 (_%compile-inner135793%_
                  (lambda (_%pre135894%_
                           _%bind135895%_
                           _%post135896%_
                           _%body135897%_)
                    (if (null? _%pre135894%_)
                        (_%compile-bind135794%_
                         _%bind135895%_
                         _%post135896%_
                         _%body135897%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre135894%_)
                                     (cons (_%compile-bind135794%_
                                            _%bind135895%_
                                            _%post135896%_
                                            _%body135897%_)
                                           '())))
                         _%stx135789%_))))
                 (_%compile-bind135794%_
                  (lambda (_%bind135890%_ _%post135891%_ _%body135892%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind135890%_)
                                 (cons (_%compile-post135795%_
                                        _%post135891%_
                                        _%body135892%_)
                                       '())))
                     _%stx135789%_)))
                 (_%compile-post135795%_
                  (lambda (_%post135797%_ _%body135798%_)
                    (let _%lp135800%_ ((_%rest135802%_ _%post135797%_)
                                       (_%check135803%_ '())
                                       (_%bind135804%_ '()))
                      (let* ((_%rest135805135817%_ _%rest135802%_)
                             (_%else135807135825%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp137304
                                              (let ((__tmp137305
                                                     (cons _%body135798%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp137305
                                                 _%bind135804%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp137304
                                          _%check135803%_)))
                                 _%stx135789%_)))
                             (_%K135809135864%_
                              (lambda (_%rest135828%_
                                       _%init135829%_
                                       _%len135830%_
                                       _%tmp135831%_)
                                (_%lp135800%_
                                 _%rest135828%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp135831%_
                                                    (cons _%len135830%_ '())))
                                        _%stx135789%_)
                                       _%check135803%_)
                                 (let ((__tmp137306
                                        (lambda (_%hd135833%_ _%r135834%_)
                                          (let* ((_%hd135835135842%_
                                                  _%hd135833%_)
                                                 (_%E135837135846%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd135835135842%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K135838135852%_
                                                  (lambda (_%k135849%_
                                                           _%id135850%_)
                                                    (cons (cons 'set!
                                                                (cons _%id135850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp135831%_
                                                (cons _%k135849%_ '())))
                                    '())))
                  _%r135834%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd135835135842%_)
                                                (let ((_%hd135839135855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd135835135842%_)))
                                                      (_%tl135840135857%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd135835135842%_))))
                                                  (let* ((_%id135860%_
                                                          _%hd135839135855%_)
                                                         (_%k135862%_
                                                          _%tl135840135857%_))
                                                    (_%K135838135852%_
                                                     _%k135862%_
                                                     _%id135860%_)))
                                                (_%E135837135846%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp137306
                                    _%bind135804%_
                                    _%init135829%_))))))
                        (if (pair? _%rest135805135817%_)
                            (let ((_%hd135810135867%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest135805135817%_)))
                                  (_%tl135811135869%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest135805135817%_))))
                              (if (pair? _%hd135810135867%_)
                                  (let ((_%hd135812135872%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd135810135867%_)))
                                        (_%tl135813135874%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd135810135867%_))))
                                    (let ((_%tmp135877%_ _%hd135812135872%_))
                                      (if (pair? _%tl135813135874%_)
                                          (let ((_%hd135814135879%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl135813135874%_)))
                                                (_%tl135815135881%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl135813135874%_))))
                                            (let* ((_%len135884%_
                                                    _%hd135814135879%_)
                                                   (_%init135886%_
                                                    _%tl135815135881%_)
                                                   (_%rest135888%_
                                                    _%tl135811135869%_))
                                              (_%K135809135864%_
                                               _%rest135888%_
                                               _%init135886%_
                                               _%len135884%_
                                               _%tmp135877%_)))
                                          (_%else135807135825%_))))
                                  (_%else135807135825%_)))
                            (_%else135807135825%_)))))))
          (__compile-let-form
           _%stx135789%_
           _%compile-simple135791%_
           _%compile-values135792%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx135540%_)
        (letrec ((_%compile-simple135542%_
                  (lambda (_%hd-ids135785%_ _%exprs135786%_ _%body135787%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp137307
                                        (map __compile-head-id
                                             _%hd-ids135785%_)))
                                   (declare (not safe))
                                   (##map list __tmp137307 _%exprs135786%_))
                                 (cons _%body135787%_ '())))
                     _%stx135540%_)))
                 (_%compile-values135543%_
                  (lambda (_%hd-ids135692%_ _%exprs135693%_ _%body135694%_)
                    (let _%lp135696%_ ((_%rest135698%_ _%hd-ids135692%_)
                                       (_%exprs135699%_ _%exprs135693%_)
                                       (_%bind135700%_ '())
                                       (_%post135701%_ '()))
                      (let* ((_%rest135702135716%_ _%rest135698%_)
                             (_%else135705135724%_
                              (lambda ()
                                (_%compile-bind135544%_
                                 _%bind135700%_
                                 _%post135701%_
                                 _%body135694%_))))
                        (let ((_%K135710135768%_
                               (lambda (_%rest135763%_ _%hd135764%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd135764%_))
                                     (let ((_%id135766%_
                                            (__SRC__0 _%hd135764%_)))
                                       (_%lp135696%_
                                        _%rest135763%_
                                        (cdr _%exprs135699%_)
                                        (cons (cons _%id135766%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind135700%_)
                                        (cons (cons _%id135766%_
                                                    (cons (car _%exprs135699%_)
                                                          '()))
                                              _%post135701%_)))
                                     (_%lp135696%_
                                      _%rest135763%_
                                      (cdr _%exprs135699%_)
                                      _%bind135700%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs135699%_)
                                                        '()))
                                            _%post135701%_)))))
                              (_%K135707135748%_
                               (lambda (_%rest135728%_ _%hd135729%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd135729%_))
                                     (let ((_%id135732%_
                                            (__SRC__0 _%hd135729%_)))
                                       (_%lp135696%_
                                        _%rest135728%_
                                        (cdr _%exprs135699%_)
                                        (cons (cons _%id135732%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind135700%_)
                                        (cons (cons _%id135732%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs135699%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post135701%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd135729%_))
                                         (if (list? _%hd135729%_)
                                             (let* ((_%len135736%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd135729%_)))
                                                    (_%tmp135738%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp135696%_
                                                _%rest135728%_
                                                (cdr _%exprs135699%_)
                                                (let ((__tmp137308
                                                       (lambda (_%id135741%_
                                                                _%r135742%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id135741%_))
                     (cons (cons (__SRC__0 _%id135741%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r135742%_)
                     _%r135742%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp137308
                                                   _%bind135700%_
                                                   _%hd135729%_))
                                                (cons (cons _%tmp135738%_
                                                            (cons (car _%exprs135699%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len135736%_
                                (let ((__tmp137310
                                       (lambda (_%id135744%_ _%k135745%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id135744%_))
                                             (cons (__SRC__0 _%id135744%_)
                                                   _%k135745%_)
                                             '#f)))
                                      (__tmp137309
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len135736%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp137310
                                   _%hd135729%_
                                   __tmp137309)))))
              _%post135701%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx135540%_
                                              _%hd135729%_))
                                         (_%lp135696%_
                                          _%rest135728%_
                                          (cdr _%exprs135699%_)
                                          _%bind135700%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs135699%_)
                                                            '()))
                                                _%post135701%_)))))))
                          (if (pair? _%rest135702135716%_)
                              (let ((_%tl135712135773%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest135702135716%_)))
                                    (_%hd135711135771%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest135702135716%_))))
                                (if (pair? _%hd135711135771%_)
                                    (let ((_%tl135714135778%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd135711135771%_)))
                                          (_%hd135713135776%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd135711135771%_))))
                                      (if (null? _%tl135714135778%_)
                                          (let ((_%hd135781%_
                                                 _%hd135713135776%_)
                                                (_%rest135783%_
                                                 _%tl135712135773%_))
                                            (_%K135710135768%_
                                             _%rest135783%_
                                             _%hd135781%_))
                                          (let ((_%hd135756%_
                                                 _%hd135711135771%_)
                                                (_%rest135758%_
                                                 _%tl135712135773%_))
                                            (_%K135707135748%_
                                             _%rest135758%_
                                             _%hd135756%_))))
                                    (let ((_%hd135756%_ _%hd135711135771%_)
                                          (_%rest135758%_ _%tl135712135773%_))
                                      (_%K135707135748%_
                                       _%rest135758%_
                                       _%hd135756%_))))
                              (_%else135705135724%_)))))))
                 (_%compile-bind135544%_
                  (lambda (_%bind135688%_ _%post135689%_ _%body135690%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind135688%_)
                                 (cons (_%compile-post135545%_
                                        _%post135689%_
                                        _%body135690%_)
                                       '())))
                     _%stx135540%_)))
                 (_%compile-post135545%_
                  (lambda (_%post135547%_ _%body135548%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp137311
                                  (let ((__tmp137313
                                         (lambda (_%hd135550%_ _%r135551%_)
                                           (let* ((_%hd135552135575%_
                                                   _%hd135550%_)
                                                  (_%E135556135579%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd135552135575%_
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
                                             (let ((_%K135569135673%_
                                                    (lambda (_%expr135671%_)
                                                      (cons _%expr135671%_
                                                            _%r135551%_)))
                                                   (_%K135564135651%_
                                                    (lambda (_%expr135648%_
                                                             _%id135649%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id135649%_ (cons _%expr135648%_ '())))
                     _%stx135540%_)
                    _%r135551%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K135557135618%_
                                                    (lambda (_%init135583%_
                                                             _%len135584%_
                                                             _%expr135585%_
                                                             _%tmp135586%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp135586%_
                                             (cons _%expr135585%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp135586%_
                                                    (cons _%len135584%_ '())))
                                        _%stx135540%_)
                                       (let ((__tmp137314
                                              (map (lambda (_%hd135588%_)
                                                     (let* ((_%hd135589135596%_
                                                             _%hd135588%_)
                                                            (_%E135591135600%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd135589135596%_
                                '([id . k])))
                       '#!void))
                    (_%K135592135606%_
                     (lambda (_%k135603%_ _%id135604%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id135604%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp135586%_
                                                      (cons _%k135603%_ '())))
                                          '())))
                        _%stx135540%_))))
               (if (pair? _%hd135589135596%_)
                   (let ((_%hd135593135609%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd135589135596%_)))
                         (_%tl135594135611%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd135589135596%_))))
                     (let* ((_%id135614%_ _%hd135593135609%_)
                            (_%k135616%_ _%tl135594135611%_))
                       (_%K135592135606%_ _%k135616%_ _%id135614%_)))
                   (_%E135591135600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init135583%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp137314)))))
                     _%stx135540%_)
                    _%r135551%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match137167137168%_
                                                       (lambda (_%hd135558135621%_
                                                                _%tl135559135623%_
                                                                _%hd135560135628%_
                                                                _%tl135561135630%_)
                                                         (let ((_%tmp135626%_
                                                                _%hd135558135621%_)
                                                               (_%expr135633%_
                                                                _%hd135560135628%_))
                                                           (_%E135556135579%_))))
                                                      (_%__match137161137162%_
                                                       (lambda (_%hd135558135621%_
                                                                _%tl135559135623%_)
                                                         (let ((_%tmp135626%_
                                                                _%hd135558135621%_))
                                                           (_%E135556135579%_)))))
                                                 (if (pair? _%hd135552135575%_)
                                                     (let ((_%tl135571135678%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd135552135575%_)))
                                                           (_%hd135570135676%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd135552135575%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd135570135676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl135571135678%_)
                       (let ((_%tl135573135683%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl135571135678%_)))
                             (_%hd135572135681%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl135571135678%_))))
                         (if (null? _%tl135573135683%_)
                             (let ((_%expr135686%_ _%hd135572135681%_))
                               (_%K135569135673%_ _%expr135686%_))
                             (if (pair? _%tl135573135683%_)
                                 (let ((_%tl135563135637%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl135573135683%_)))
                                       (_%hd135562135635%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl135573135683%_))))
                                   (let ((_%tmp135626%_ _%hd135570135676%_)
                                         (_%expr135633%_ _%hd135572135681%_)
                                         (_%len135640%_ _%hd135562135635%_)
                                         (_%init135642%_ _%tl135563135637%_))
                                     (_%K135557135618%_
                                      _%init135642%_
                                      _%len135640%_
                                      _%expr135633%_
                                      _%tmp135626%_)))
                                 (_%__match137167137168%_
                                  _%hd135570135676%_
                                  _%tl135571135678%_
                                  _%hd135572135681%_
                                  _%tl135573135683%_))))
                       (_%__match137161137162%_
                        _%hd135570135676%_
                        _%tl135571135678%_))
                   (if (pair? _%tl135571135678%_)
                       (let ((_%tl135568135663%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl135571135678%_)))
                             (_%hd135567135661%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl135571135678%_))))
                         (if (null? _%tl135568135663%_)
                             (let ((_%id135659%_ _%hd135570135676%_)
                                   (_%expr135666%_ _%hd135567135661%_))
                               (_%K135564135651%_ _%expr135666%_ _%id135659%_))
                             (if (pair? _%tl135568135663%_)
                                 (let ((_%tl135563135637%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl135568135663%_)))
                                       (_%hd135562135635%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl135568135663%_))))
                                   (let ((_%tmp135626%_ _%hd135570135676%_)
                                         (_%expr135633%_ _%hd135567135661%_)
                                         (_%len135640%_ _%hd135562135635%_)
                                         (_%init135642%_ _%tl135563135637%_))
                                     (_%K135557135618%_
                                      _%init135642%_
                                      _%len135640%_
                                      _%expr135633%_
                                      _%tmp135626%_)))
                                 (_%__match137167137168%_
                                  _%hd135570135676%_
                                  _%tl135571135678%_
                                  _%hd135567135661%_
                                  _%tl135568135663%_))))
                       (_%__match137161137162%_
                        _%hd135570135676%_
                        _%tl135571135678%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E135556135579%_)))))))
                                        (__tmp137312 (list _%body135548%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp137313
                                     __tmp137312
                                     _%post135547%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp137311)))
                     _%stx135540%_))))
          (__compile-let-form
           _%stx135540%_
           _%compile-simple135542%_
           _%compile-values135543%_))))
    (define __compile-call%
      (lambda (_%stx135500%_)
        (let* ((_%$e135502%_ _%stx135500%_)
               (_%$E135504135513%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e135502%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e135502%_))
              (let* ((_%$tgt135505135516%_
                      (let () (declare (not safe)) (__AST-e _%$e135502%_)))
                     (_%$hd135506135519%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt135505135516%_)))
                     (_%$tl135507135522%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt135505135516%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl135507135522%_))
                    (let* ((_%$tgt135508135526%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl135507135522%_)))
                           (_%$hd135509135529%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt135508135526%_)))
                           (_%$tl135510135532%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt135508135526%_)))
                           (_%rator135536%_ _%$hd135509135529%_)
                           (_%rands135538%_ _%$tl135510135532%_))
                      (__SRC__%
                       (cons (__compile _%rator135536%_)
                             (map __compile _%rands135538%_))
                       _%stx135500%_))
                    (_%$E135504135513%_)))
              (_%$E135504135513%_)))))
    (define __compile-ref%
      (lambda (_%stx135462%_)
        (let* ((_%$e135464%_ _%stx135462%_)
               (_%$E135466135475%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e135464%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e135464%_))
              (let* ((_%$tgt135467135478%_
                      (let () (declare (not safe)) (__AST-e _%$e135464%_)))
                     (_%$hd135468135481%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt135467135478%_)))
                     (_%$tl135469135484%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt135467135478%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl135469135484%_))
                    (let* ((_%$tgt135470135488%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl135469135484%_)))
                           (_%$hd135471135491%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt135470135488%_)))
                           (_%$tl135472135494%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt135470135488%_)))
                           (_%id135498%_ _%$hd135471135491%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl135472135494%_))
                                  '())
                          (__SRC__% _%id135498%_ _%stx135462%_)
                          (_%$E135466135475%_)))
                    (_%$E135466135475%_)))
              (_%$E135466135475%_)))))
    (define __compile-setq%
      (lambda (_%stx135409%_)
        (let* ((_%$e135411%_ _%stx135409%_)
               (_%$E135413135425%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e135411%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e135411%_))
              (let* ((_%$tgt135414135428%_
                      (let () (declare (not safe)) (__AST-e _%$e135411%_)))
                     (_%$hd135415135431%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt135414135428%_)))
                     (_%$tl135416135434%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt135414135428%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl135416135434%_))
                    (let* ((_%$tgt135417135438%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl135416135434%_)))
                           (_%$hd135418135441%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt135417135438%_)))
                           (_%$tl135419135444%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt135417135438%_)))
                           (_%id135448%_ _%$hd135418135441%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl135419135444%_))
                          (let* ((_%$tgt135420135450%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl135419135444%_)))
                                 (_%$hd135421135453%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt135420135450%_)))
                                 (_%$tl135422135456%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt135420135450%_)))
                                 (_%expr135460%_ _%$hd135421135453%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl135422135456%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id135448%_
                                              _%stx135409%_)
                                             (cons (__compile _%expr135460%_)
                                                   '())))
                                 _%stx135409%_)
                                (_%$E135413135425%_)))
                          (_%$E135413135425%_)))
                    (_%$E135413135425%_)))
              (_%$E135413135425%_)))))
    (define __compile-if%
      (lambda (_%stx135341%_)
        (let* ((_%$e135343%_ _%stx135341%_)
               (_%$E135345135360%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e135343%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e135343%_))
              (let* ((_%$tgt135346135363%_
                      (let () (declare (not safe)) (__AST-e _%$e135343%_)))
                     (_%$hd135347135366%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt135346135363%_)))
                     (_%$tl135348135369%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt135346135363%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl135348135369%_))
                    (let* ((_%$tgt135349135373%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl135348135369%_)))
                           (_%$hd135350135376%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt135349135373%_)))
                           (_%$tl135351135379%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt135349135373%_)))
                           (_%p135383%_ _%$hd135350135376%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl135351135379%_))
                          (let* ((_%$tgt135352135385%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl135351135379%_)))
                                 (_%$hd135353135388%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt135352135385%_)))
                                 (_%$tl135354135391%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt135352135385%_)))
                                 (_%t135395%_ _%$hd135353135388%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl135354135391%_))
                                (let* ((_%$tgt135355135397%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl135354135391%_)))
                                       (_%$hd135356135400%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt135355135397%_)))
                                       (_%$tl135357135403%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt135355135397%_)))
                                       (_%f135407%_ _%$hd135356135400%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl135357135403%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p135383%_)
                                                   (cons (__compile
                                                          _%t135395%_)
                                                         (cons (__compile
                                                                _%f135407%_)
                                                               '()))))
                                       _%stx135341%_)
                                      (_%$E135345135360%_)))
                                (_%$E135345135360%_)))
                          (_%$E135345135360%_)))
                    (_%$E135345135360%_)))
              (_%$E135345135360%_)))))
    (define __compile-quote%
      (lambda (_%stx135303%_)
        (let* ((_%$e135305%_ _%stx135303%_)
               (_%$E135307135316%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e135305%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e135305%_))
              (let* ((_%$tgt135308135319%_
                      (let () (declare (not safe)) (__AST-e _%$e135305%_)))
                     (_%$hd135309135322%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt135308135319%_)))
                     (_%$tl135310135325%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt135308135319%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl135310135325%_))
                    (let* ((_%$tgt135311135329%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl135310135325%_)))
                           (_%$hd135312135332%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt135311135329%_)))
                           (_%$tl135313135335%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt135311135329%_)))
                           (_%e135339%_ _%$hd135312135332%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl135313135335%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e135339%_))
                                       '()))
                           _%stx135303%_)
                          (_%$E135307135316%_)))
                    (_%$E135307135316%_)))
              (_%$E135307135316%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx135265%_)
        (let* ((_%$e135267%_ _%stx135265%_)
               (_%$E135269135278%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e135267%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e135267%_))
              (let* ((_%$tgt135270135281%_
                      (let () (declare (not safe)) (__AST-e _%$e135267%_)))
                     (_%$hd135271135284%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt135270135281%_)))
                     (_%$tl135272135287%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt135270135281%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl135272135287%_))
                    (let* ((_%$tgt135273135291%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl135272135287%_)))
                           (_%$hd135274135294%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt135273135291%_)))
                           (_%$tl135275135297%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt135273135291%_)))
                           (_%e135301%_ _%$hd135274135294%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl135275135297%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e135301%_ '()))
                           _%stx135265%_)
                          (_%$E135269135278%_)))
                    (_%$E135269135278%_)))
              (_%$E135269135278%_)))))
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
