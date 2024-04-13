(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1712991652)
  (begin
    (define __syntax::t
      (let ((__tmp113092 (list)) (__tmp113091 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp113092
         '(e id)
         __tmp113091
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args112896%_
        (apply make-instance __syntax::t _%$args112896%_)))
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
      (let ((__tmp113094 (list __syntax::t))
            (__tmp113093 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp113094
         '()
         __tmp113093
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args112893%_
        (apply make-instance __core-form::t _%$args112893%_)))
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
      (let ((__tmp113096 (list __core-form::t))
            (__tmp113095 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp113096
         '()
         __tmp113095
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args112890%_
        (apply make-instance __core-expression::t _%$args112890%_)))
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
      (let ((__tmp113098 (list __core-form::t))
            (__tmp113097 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp113098
         '()
         __tmp113097
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args112887%_
        (apply make-instance __core-special-form::t _%$args112887%_)))
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
      (lambda (_%id112885%_)
        (let ((__tmp113099
               (let () (declare (not safe)) (__AST-e _%id112885%_))))
          (declare (not safe))
          (__hash-get __core __tmp113099))))
    (define __core-bound-id?__%
      (lambda (_%id112868%_ _%is?112869%_)
        (let ((_%$e112871%_ (__core-resolve _%id112868%_)))
          (if _%$e112871%_ (_%is?112869%_ _%$e112871%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id112878%_)
        (let ((_%is?112880%_ true))
          (__core-bound-id?__% _%id112878%_ _%is?112880%_))))
    (define __core-bound-id?
      (lambda _g113101_
        (let ((_g113100_ (let () (declare (not safe)) (##length _g113101_))))
          (cond ((let () (declare (not safe)) (##fx= _g113100_ 1))
                 (apply __core-bound-id?__0 _g113101_))
                ((let () (declare (not safe)) (##fx= _g113100_ 2))
                 (apply __core-bound-id?__% _g113101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g113101_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id112851%_ _%e112852%_ _%make112853%_)
        (let ((__tmp113102
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e112852%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e112852%_
                   (_%make112853%_ _%e112852%_ _%id112851%_))))
          (declare (not safe))
          (__hash-put! __core _%id112851%_ __tmp113102))))
    (define __core-bind-syntax!__0
      (lambda (_%id112858%_ _%e112859%_)
        (let ((_%make112861%_ make-__syntax))
          (__core-bind-syntax!__% _%id112858%_ _%e112859%_ _%make112861%_))))
    (define __core-bind-syntax!
      (lambda _g113104_
        (let ((_g113103_ (let () (declare (not safe)) (##length _g113104_))))
          (cond ((let () (declare (not safe)) (##fx= _g113103_ 2))
                 (apply __core-bind-syntax!__0 _g113104_))
                ((let () (declare (not safe)) (##fx= _g113103_ 3))
                 (apply __core-bind-syntax!__% _g113104_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g113104_))))))
    (define __SRC__%
      (lambda (_%e112831%_ _%src-stx112832%_)
        (if (or (pair? _%e112831%_) (symbol? _%e112831%_))
            (let ((__tmp113105
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx112832%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx112832%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e112831%_ __tmp113105))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e112831%_ 'gerbil#AST::t))
                (let ((__tmp113107
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e112831%_ '1 '#f '#f)))
                      (__tmp113106
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e112831%_)))))
                  (declare (not safe))
                  (##make-source __tmp113107 __tmp113106))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e112831%_))))))
    (define __SRC__0
      (lambda (_%e112843%_)
        (let ((_%src-stx112845%_ '#f))
          (__SRC__% _%e112843%_ _%src-stx112845%_))))
    (define __SRC
      (lambda _g113109_
        (let ((_g113108_ (let () (declare (not safe)) (##length _g113109_))))
          (cond ((let () (declare (not safe)) (##fx= _g113108_ 1))
                 (apply __SRC__0 _g113109_))
                ((let () (declare (not safe)) (##fx= _g113108_ 2))
                 (apply __SRC__% _g113109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g113109_))))))
    (define __locat
      (lambda (_%loc112828%_)
        (if (let () (declare (not safe)) (##locat? _%loc112828%_))
            _%loc112828%_
            '#f)))
    (define __check-values
      (lambda (_%obj112823%_ _%k112824%_)
        (let ((_%count112826%_
               (if (let () (declare (not safe)) (##values? _%obj112823%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj112823%_))
                   '1)))
          (if (fx= _%count112826%_ _%k112824%_)
              '#!void
              (let ((__tmp113111
                     (if (fx< _%count112826%_ _%k112824%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp113110
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj112823%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj112823%_))
                         _%obj112823%_)))
                (declare (not safe))
                (error __tmp113111 __tmp113110 _%k112824%_))))))
    (define __compile
      (lambda (_%stx112792%_)
        (let* ((_%$e112794%_ _%stx112792%_)
               (_%$E112796112802%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112794%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112794%_))
              (let* ((_%$tgt112797112805%_
                      (let () (declare (not safe)) (__AST-e _%$e112794%_)))
                     (_%$hd112798112808%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112797112805%_)))
                     (_%$tl112799112811%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112797112805%_)))
                     (_%form112815%_ _%$hd112798112808%_)
                     (_%$e112817%_ (__core-resolve _%form112815%_)))
                (if _%$e112817%_
                    ((lambda (_%bind112820%_)
                       ((##structure-ref _%bind112820%_ '1 __syntax::t '#f)
                        _%stx112792%_))
                     _%$e112817%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx112792%_
                       _%form112815%_))))
              (_%$E112796112802%_)))))
    (define __compile-error__%
      (lambda (_%stx112779%_ _%detail112780%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx112779%_
           _%detail112780%_))))
    (define __compile-error__0
      (lambda (_%stx112785%_)
        (let ((_%detail112787%_ '#f))
          (__compile-error__% _%stx112785%_ _%detail112787%_))))
    (define __compile-error
      (lambda _g113113_
        (let ((_g113112_ (let () (declare (not safe)) (##length _g113113_))))
          (cond ((let () (declare (not safe)) (##fx= _g113112_ 1))
                 (apply __compile-error__0 _g113113_))
                ((let () (declare (not safe)) (##fx= _g113112_ 2))
                 (apply __compile-error__% _g113113_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g113113_))))))
    (define __compile-ignore%
      (lambda (_%stx112776%_) (__SRC__% ''#!void _%stx112776%_)))
    (define __compile-begin%
      (lambda (_%stx112751%_)
        (let* ((_%$e112753%_ _%stx112751%_)
               (_%$E112755112761%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112753%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112753%_))
              (let* ((_%$tgt112756112764%_
                      (let () (declare (not safe)) (__AST-e _%$e112753%_)))
                     (_%$hd112757112767%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112756112764%_)))
                     (_%$tl112758112770%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112756112764%_)))
                     (_%body112774%_ _%$tl112758112770%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body112774%_))
                 _%stx112751%_))
              (_%$E112755112761%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx112726%_)
        (let* ((_%$e112728%_ _%stx112726%_)
               (_%$E112730112736%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112728%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112728%_))
              (let* ((_%$tgt112731112739%_
                      (let () (declare (not safe)) (__AST-e _%$e112728%_)))
                     (_%$hd112732112742%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112731112739%_)))
                     (_%$tl112733112745%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112731112739%_)))
                     (_%body112749%_ _%$tl112733112745%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body112749%_)))
                 _%stx112726%_))
              (_%$E112730112736%_)))))
    (define __compile-import%
      (lambda (_%stx112701%_)
        (let* ((_%$e112703%_ _%stx112701%_)
               (_%$E112705112711%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112703%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112703%_))
              (let* ((_%$tgt112706112714%_
                      (let () (declare (not safe)) (__AST-e _%$e112703%_)))
                     (_%$hd112707112717%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112706112714%_)))
                     (_%$tl112708112720%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112706112714%_)))
                     (_%body112724%_ _%$tl112708112720%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body112724%_ '())) '()))
                 _%stx112701%_))
              (_%$E112705112711%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx112648%_)
        (let* ((_%$e112650%_ _%stx112648%_)
               (_%$E112652112664%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112650%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112650%_))
              (let* ((_%$tgt112653112667%_
                      (let () (declare (not safe)) (__AST-e _%$e112650%_)))
                     (_%$hd112654112670%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112653112667%_)))
                     (_%$tl112655112673%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112653112667%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112655112673%_))
                    (let* ((_%$tgt112656112677%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112655112673%_)))
                           (_%$hd112657112680%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112656112677%_)))
                           (_%$tl112658112683%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112656112677%_)))
                           (_%ann112687%_ _%$hd112657112680%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl112658112683%_))
                          (let* ((_%$tgt112659112689%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112658112683%_)))
                                 (_%$hd112660112692%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112659112689%_)))
                                 (_%$tl112661112695%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112659112689%_)))
                                 (_%expr112699%_ _%$hd112660112692%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112661112695%_))
                                        '())
                                (__compile _%expr112699%_)
                                (_%$E112652112664%_)))
                          (_%$E112652112664%_)))
                    (_%$E112652112664%_)))
              (_%$E112652112664%_)))))
    (define __compile-define-values%
      (lambda (_%stx112539%_)
        (let* ((_%$e112541%_ _%stx112539%_)
               (_%$E112543112555%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112541%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112541%_))
              (let* ((_%$tgt112544112558%_
                      (let () (declare (not safe)) (__AST-e _%$e112541%_)))
                     (_%$hd112545112561%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112544112558%_)))
                     (_%$tl112546112564%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112544112558%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112546112564%_))
                    (let* ((_%$tgt112547112568%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112546112564%_)))
                           (_%$hd112548112571%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112547112568%_)))
                           (_%$tl112549112574%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112547112568%_)))
                           (_%hd112578%_ _%$hd112548112571%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl112549112574%_))
                          (let* ((_%$tgt112550112580%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112549112574%_)))
                                 (_%$hd112551112583%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112550112580%_)))
                                 (_%$tl112552112586%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112550112580%_)))
                                 (_%expr112590%_ _%$hd112551112583%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112552112586%_))
                                        '())
                                (let* ((_%$e112592%_ _%hd112578%_)
                                       (_%$E112594112635%_
                                        (lambda ()
                                          (let ((_%$E112595112620%_
                                                 (lambda ()
                                                   (let* ((_%$E112596112607%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e112592%_))))
                  (_%ids112610%_ _%hd112578%_)
                  (_%len112612%_ (length _%ids112610%_))
                  (_%tmp112614%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp112614%_
                                       (cons (__compile _%expr112590%_) '())))
                           _%stx112539%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp112614%_
                                             (cons _%len112612%_ '())))
                                 _%stx112539%_)
                                (let ((__tmp113114
                                       (let ((__tmp113116
                                              (lambda (_%id112617%_
                                                       _%k112618%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id112617%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id112617%_)
                         (cons (cons '##vector-ref
                                     (cons _%tmp112614%_
                                           (cons _%k112618%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx112539%_)
                                                    '#f)))
                                             (__tmp113115
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len112612%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp113116
                                          _%ids112610%_
                                          __tmp113115))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp113114)))))
              _%stx112539%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e112592%_))
                                                (let* ((_%$tgt112597112623%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e112592%_)))
                                                       (_%$hd112598112626%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt112597112623%_)))
                                                       (_%$tl112599112629%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt112597112623%_)))
                                                       (_%id112633%_
                                                        _%$hd112598112626%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl112599112629%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id112633%_)
                           (cons (__compile _%expr112590%_) '())))
               _%stx112539%_)
              (_%$E112595112620%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E112595112620%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e112592%_))
                                      (let* ((_%$tgt112600112638%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e112592%_)))
                                             (_%$hd112601112641%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt112600112638%_)))
                                             (_%$tl112602112644%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt112600112638%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd112601112641%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl112602112644%_))
                                                        '())
                                                (__compile _%expr112590%_)
                                                (_%$E112594112635%_))
                                            (_%$E112594112635%_)))
                                      (_%$E112594112635%_)))
                                (_%$E112543112555%_)))
                          (_%$E112543112555%_)))
                    (_%$E112543112555%_)))
              (_%$E112543112555%_)))))
    (define __compile-head-id
      (lambda (_%e112537%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e112537%_))
             _%e112537%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd112494%_)
        (let _%recur112496%_ ((_%rest112498%_ _%hd112494%_))
          (let* ((_%$e112500%_ _%rest112498%_)
                 (_%$E112502112520%_
                  (lambda ()
                    (let ((_%$E112503112517%_
                           (lambda ()
                             (let* ((_%$E112504112512%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e112500%_))))
                                    (_%tail112515%_ _%$e112500%_))
                               (__compile-head-id _%tail112515%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112500%_))
                                  '())
                          '()
                          (_%$E112503112517%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e112500%_))
                (let* ((_%$tgt112505112523%_
                        (let () (declare (not safe)) (__AST-e _%$e112500%_)))
                       (_%$hd112506112526%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt112505112523%_)))
                       (_%$tl112507112529%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt112505112523%_)))
                       (_%hd112533%_ _%$hd112506112526%_)
                       (_%rest112535%_ _%$tl112507112529%_))
                  (cons (__compile-head-id _%hd112533%_)
                        (_%recur112496%_ _%rest112535%_)))
                (_%$E112502112520%_))))))
    (define __compile-lambda%
      (lambda (_%stx112441%_)
        (let* ((_%$e112443%_ _%stx112441%_)
               (_%$E112445112457%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112443%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112443%_))
              (let* ((_%$tgt112446112460%_
                      (let () (declare (not safe)) (__AST-e _%$e112443%_)))
                     (_%$hd112447112463%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112446112460%_)))
                     (_%$tl112448112466%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112446112460%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112448112466%_))
                    (let* ((_%$tgt112449112470%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112448112466%_)))
                           (_%$hd112450112473%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112449112470%_)))
                           (_%$tl112451112476%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112449112470%_)))
                           (_%hd112480%_ _%$hd112450112473%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl112451112476%_))
                          (let* ((_%$tgt112452112482%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112451112476%_)))
                                 (_%$hd112453112485%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112452112482%_)))
                                 (_%$tl112454112488%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112452112482%_)))
                                 (_%body112492%_ _%$hd112453112485%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112454112488%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd112480%_)
                                             (cons (__compile _%body112492%_)
                                                   '())))
                                 _%stx112441%_)
                                (_%$E112445112457%_)))
                          (_%$E112445112457%_)))
                    (_%$E112445112457%_)))
              (_%$E112445112457%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx112233%_)
        (letrec ((_%variadic?112235%_
                  (lambda (_%hd112406%_)
                    (let* ((_%$e112408%_ _%hd112406%_)
                           (_%$E112410112426%_
                            (lambda ()
                              (let ((_%$E112411112423%_
                                     (lambda ()
                                       (let ((_%$E112412112420%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e112408%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e112408%_))
                                            '())
                                    '#f
                                    (_%$E112411112423%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112408%_))
                          (let* ((_%$tgt112413112429%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112408%_)))
                                 (_%$hd112414112432%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112413112429%_)))
                                 (_%$tl112415112435%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112413112429%_)))
                                 (_%rest112439%_ _%$tl112415112435%_))
                            (_%variadic?112235%_ _%rest112439%_))
                          (_%$E112410112426%_)))))
                 (_%arity112236%_
                  (lambda (_%hd112371%_)
                    (let _%lp112373%_ ((_%rest112375%_ _%hd112371%_)
                                       (_%k112376%_ '0))
                      (let* ((_%$e112378%_ _%rest112375%_)
                             (_%$E112380112391%_
                              (lambda ()
                                (let ((_%$E112381112388%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e112378%_)))))
                                  _%k112376%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e112378%_))
                            (let* ((_%$tgt112382112394%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e112378%_)))
                                   (_%$hd112383112397%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt112382112394%_)))
                                   (_%$tl112384112400%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt112382112394%_)))
                                   (_%rest112404%_ _%$tl112384112400%_))
                              (_%lp112373%_
                               _%rest112404%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k112376%_ '1))))
                            (_%$E112380112391%_))))))
                 (_%generate112237%_
                  (lambda (_%rest112298%_ _%args112299%_ _%len112300%_)
                    (let* ((_%$e112302%_ _%rest112298%_)
                           (_%$E112304112315%_
                            (lambda ()
                              (let ((_%$E112305112312%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e112302%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args112299%_ '())))
                                 _%stx112233%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112302%_))
                          (let* ((_%$tgt112306112318%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112302%_)))
                                 (_%$hd112307112321%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112306112318%_)))
                                 (_%$tl112308112324%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112306112318%_)))
                                 (_%clause112328%_ _%$hd112307112321%_)
                                 (_%rest112330%_ _%$tl112308112324%_)
                                 (_%$e112332%_ _%clause112328%_)
                                 (_%$E112334112343%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e112332%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e112332%_))
                                (let* ((_%$tgt112335112346%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e112332%_)))
                                       (_%$hd112336112349%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt112335112346%_)))
                                       (_%$tl112337112352%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt112335112346%_)))
                                       (_%hd112356%_ _%$hd112336112349%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl112337112352%_))
                                      (let* ((_%$tgt112338112358%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl112337112352%_)))
                                             (_%$hd112339112361%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt112338112358%_)))
                                             (_%$tl112340112364%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt112338112358%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl112340112364%_))
                                                    '())
                                            (let ((_%clen112368%_
                                                   (_%arity112236%_
                                                    _%hd112356%_))
                                                  (_%cmp112369%_
                                                   (if (_%variadic?112235%_
                                                        _%hd112356%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp112369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len112300%_ (cons _%clen112368%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause112328%_))
                                      (cons _%args112299%_ '())))
                          _%stx112233%_)
                         (cons (_%generate112237%_
                                _%rest112330%_
                                _%args112299%_
                                _%len112300%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx112233%_))
                                            (_%$E112334112343%_)))
                                      (_%$E112334112343%_)))
                                (_%$E112334112343%_)))
                          (_%$E112304112315%_))))))
          (let* ((_%$e112239%_ _%stx112233%_)
                 (_%$E112241112273%_
                  (lambda ()
                    (let ((_%$E112242112255%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112239%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112239%_))
                          (let* ((_%$tgt112243112258%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112239%_)))
                                 (_%$hd112244112261%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112243112258%_)))
                                 (_%$tl112245112264%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112243112258%_)))
                                 (_%clauses112268%_ _%$tl112245112264%_))
                            (let ((_%args112270%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx112233%_))
                                  (_%len112271%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx112233%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args112270%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len112271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args112270%_ '()))
                                         _%stx112233%_)
                                        '()))
                            '())
                      (cons (_%generate112237%_
                             _%clauses112268%_
                             _%args112270%_
                             _%len112271%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx112233%_)
                                                 '())))
                               _%stx112233%_)))
                          (_%$E112242112255%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e112239%_))
                (let* ((_%$tgt112246112276%_
                        (let () (declare (not safe)) (__AST-e _%$e112239%_)))
                       (_%$hd112247112279%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt112246112276%_)))
                       (_%$tl112248112282%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt112246112276%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl112248112282%_))
                      (let* ((_%$tgt112249112286%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl112248112282%_)))
                             (_%$hd112250112289%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt112249112286%_)))
                             (_%$tl112251112292%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt112249112286%_)))
                             (_%clause112296%_ _%$hd112250112289%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl112251112292%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause112296%_))
                            (_%$E112241112273%_)))
                      (_%$E112241112273%_)))
                (_%$E112241112273%_))))))
    (define __compile-let-form
      (lambda (_%stx112002%_ _%compile-simple112003%_ _%compile-values112004%_)
        (letrec ((_%simple-bind?112006%_
                  (lambda (_%hd112191%_)
                    (let* ((_%hd112192112202%_ _%hd112191%_)
                           (_%else112195112210%_ (lambda () '#f)))
                      (let ((_%K112198112223%_ (lambda (_%id112221%_) '#t))
                            (_%K112197112215%_ (lambda () '#t)))
                        (let ((_%try-match112194112218%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd112192112202%_ '#f))
                                     (_%K112197112215%_)
                                     (_%else112195112210%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd112192112202%_))
                              (let ((_%tl112200112228%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd112192112202%_)))
                                    (_%hd112199112226%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd112192112202%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl112200112228%_))
                                    (let ((_%id112231%_ _%hd112199112226%_))
                                      (_%K112198112223%_ _%id112231%_))
                                    (_%try-match112194112218%_)))
                              (_%try-match112194112218%_)))))))
                 (_%car-e112007%_
                  (lambda (_%hd112189%_)
                    (if (pair? _%hd112189%_)
                        (let () (declare (not safe)) (##car _%hd112189%_))
                        _%hd112189%_))))
          (let* ((_%$e112009%_ _%stx112002%_)
                 (_%$E112011112154%_
                  (lambda ()
                    (let ((_%$E112012112034%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112009%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112009%_))
                          (let* ((_%$tgt112013112037%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112009%_)))
                                 (_%$hd112014112040%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112013112037%_)))
                                 (_%$tl112015112043%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112013112037%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl112015112043%_))
                                (let* ((_%$tgt112016112047%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112015112043%_)))
                                       (_%$hd112017112050%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt112016112047%_)))
                                       (_%$tl112018112053%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt112016112047%_)))
                                       (_%hd112057%_ _%$hd112017112050%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl112018112053%_))
                                      (let* ((_%$tgt112019112059%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl112018112053%_)))
                                             (_%$hd112020112062%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt112019112059%_)))
                                             (_%$tl112021112065%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt112019112059%_)))
                                             (_%body112069%_
                                              _%$hd112020112062%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl112021112065%_))
                                                    '())
                                            (let* ((_%hd-ids112109%_
                                                    (map (lambda (_%bind112071%_)
                                                           (let* ((_%$e112073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind112071%_)
                          (_%$E112075112084%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112073%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e112073%_))
                         (let* ((_%$tgt112076112087%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e112073%_)))
                                (_%$hd112077112090%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt112076112087%_)))
                                (_%$tl112078112093%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt112076112087%_)))
                                (_%ids112097%_ _%$hd112077112090%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl112078112093%_))
                               (let* ((_%$tgt112079112099%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl112078112093%_)))
                                      (_%$hd112080112102%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt112079112099%_)))
                                      (_%$tl112081112105%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt112079112099%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl112081112105%_))
                                             '())
                                     _%ids112097%_
                                     (_%$E112075112084%_)))
                               (_%$E112075112084%_)))
                         (_%$E112075112084%_))))
                 _%hd112057%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs112149%_
                                                    (map (lambda (_%bind112111%_)
                                                           (let* ((_%$e112113%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind112111%_)
                          (_%$E112115112124%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112113%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e112113%_))
                         (let* ((_%$tgt112116112127%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e112113%_)))
                                (_%$hd112117112130%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt112116112127%_)))
                                (_%$tl112118112133%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt112116112127%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl112118112133%_))
                               (let* ((_%$tgt112119112137%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl112118112133%_)))
                                      (_%$hd112120112140%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt112119112137%_)))
                                      (_%$tl112121112143%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt112119112137%_)))
                                      (_%expr112147%_ _%$hd112120112140%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl112121112143%_))
                                             '())
                                     (__compile _%expr112147%_)
                                     (_%$E112115112124%_)))
                               (_%$E112115112124%_)))
                         (_%$E112115112124%_))))
                 _%hd112057%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body112151%_
                                                    (__compile
                                                     _%body112069%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?112006%_
                                                     _%hd-ids112109%_))
                                                  (_%compile-simple112003%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e112007%_
                                                            _%hd-ids112109%_))
                                                   _%exprs112149%_
                                                   _%body112151%_)
                                                  (_%compile-values112004%_
                                                   _%hd-ids112109%_
                                                   _%exprs112149%_
                                                   _%body112151%_)))
                                            (_%$E112012112034%_)))
                                      (_%$E112012112034%_)))
                                (_%$E112012112034%_)))
                          (_%$E112012112034%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e112009%_))
                (let* ((_%$tgt112022112157%_
                        (let () (declare (not safe)) (__AST-e _%$e112009%_)))
                       (_%$hd112023112160%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt112022112157%_)))
                       (_%$tl112024112163%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt112022112157%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl112024112163%_))
                      (let* ((_%$tgt112025112167%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl112024112163%_)))
                             (_%$hd112026112170%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt112025112167%_)))
                             (_%$tl112027112173%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt112025112167%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd112026112170%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl112027112173%_))
                                (let* ((_%$tgt112028112177%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112027112173%_)))
                                       (_%$hd112029112180%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt112028112177%_)))
                                       (_%$tl112030112183%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt112028112177%_)))
                                       (_%body112187%_ _%$hd112029112180%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl112030112183%_))
                                              '())
                                      (__compile _%body112187%_)
                                      (_%$E112011112154%_)))
                                (_%$E112011112154%_))
                            (_%$E112011112154%_)))
                      (_%$E112011112154%_)))
                (_%$E112011112154%_))))))
    (define __compile-let-values%
      (lambda (_%stx111814%_)
        (letrec ((_%compile-simple111816%_
                  (lambda (_%hd-ids111998%_ _%exprs111999%_ _%body112000%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp113117
                                        (map __compile-head-id
                                             _%hd-ids111998%_)))
                                   (declare (not safe))
                                   (##map list __tmp113117 _%exprs111999%_))
                                 (cons _%body112000%_ '())))
                     _%stx111814%_)))
                 (_%compile-values111817%_
                  (lambda (_%hd-ids111913%_ _%exprs111914%_ _%body111915%_)
                    (let _%lp111917%_ ((_%rest111919%_ _%hd-ids111913%_)
                                       (_%exprs111920%_ _%exprs111914%_)
                                       (_%bind111921%_ '())
                                       (_%post111922%_ '()))
                      (let* ((_%rest111923111937%_ _%rest111919%_)
                             (_%else111926111945%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind111921%_)
                                             (cons (_%compile-post111818%_
                                                    _%post111922%_
                                                    _%body111915%_)
                                                   '())))
                                 _%stx111814%_))))
                        (let ((_%K111931111981%_
                               (lambda (_%rest111978%_ _%id111979%_)
                                 (_%lp111917%_
                                  _%rest111978%_
                                  (cdr _%exprs111920%_)
                                  (cons (cons (__compile-head-id _%id111979%_)
                                              (cons (car _%exprs111920%_) '()))
                                        _%bind111921%_)
                                  _%post111922%_)))
                              (_%K111928111963%_
                               (lambda (_%rest111949%_ _%hd111950%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd111950%_))
                                     (_%lp111917%_
                                      _%rest111949%_
                                      (cdr _%exprs111920%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd111950%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs111920%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind111921%_)
                                      _%post111922%_)
                                     (if (list? _%hd111950%_)
                                         (let* ((_%len111954%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd111950%_)))
                                                (_%tmp111956%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp111917%_
                                            _%rest111949%_
                                            (cdr _%exprs111920%_)
                                            (cons (cons _%tmp111956%_
                                                        (cons (car _%exprs111920%_)
                                                              '()))
                                                  _%bind111921%_)
                                            (cons (cons _%tmp111956%_
                                                        (cons _%len111954%_
                                                              (let ((__tmp113119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id111959%_ _%k111960%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id111959%_))
                                   (cons (__SRC__0 _%id111959%_) _%k111960%_)
                                   '#f)))
                            (__tmp113118
                             (let ()
                               (declare (not safe))
                               (##iota _%len111954%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp113119 _%hd111950%_ __tmp113118))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post111922%_)))
                                         (__compile-error__%
                                          _%stx111814%_
                                          _%hd111950%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest111923111937%_))
                              (let ((_%tl111933111986%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest111923111937%_)))
                                    (_%hd111932111984%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest111923111937%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd111932111984%_))
                                    (let ((_%tl111935111991%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd111932111984%_)))
                                          (_%hd111934111989%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd111932111984%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl111935111991%_))
                                          (let ((_%id111994%_
                                                 _%hd111934111989%_)
                                                (_%rest111996%_
                                                 _%tl111933111986%_))
                                            (_%K111931111981%_
                                             _%rest111996%_
                                             _%id111994%_))
                                          (let ((_%hd111971%_
                                                 _%hd111932111984%_)
                                                (_%rest111973%_
                                                 _%tl111933111986%_))
                                            (_%K111928111963%_
                                             _%rest111973%_
                                             _%hd111971%_))))
                                    (let ((_%hd111971%_ _%hd111932111984%_)
                                          (_%rest111973%_ _%tl111933111986%_))
                                      (_%K111928111963%_
                                       _%rest111973%_
                                       _%hd111971%_))))
                              (_%else111926111945%_)))))))
                 (_%compile-post111818%_
                  (lambda (_%post111820%_ _%body111821%_)
                    (let _%lp111823%_ ((_%rest111825%_ _%post111820%_)
                                       (_%check111826%_ '())
                                       (_%bind111827%_ '()))
                      (let* ((_%rest111828111840%_ _%rest111825%_)
                             (_%else111830111848%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp113120
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind111827%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body111821%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx111814%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp113120
                                          _%check111826%_)))
                                 _%stx111814%_)))
                             (_%K111832111887%_
                              (lambda (_%rest111851%_
                                       _%init111852%_
                                       _%len111853%_
                                       _%tmp111854%_)
                                (_%lp111823%_
                                 _%rest111851%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp111854%_
                                                    (cons _%len111853%_ '())))
                                        _%stx111814%_)
                                       _%check111826%_)
                                 (let ((__tmp113121
                                        (lambda (_%hd111856%_ _%r111857%_)
                                          (let* ((_%hd111858111865%_
                                                  _%hd111856%_)
                                                 (_%E111860111869%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd111858111865%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K111861111875%_
                                                  (lambda (_%k111872%_
                                                           _%id111873%_)
                                                    (cons (cons _%id111873%_
                                                                (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp111854%_
                                          (cons _%k111872%_ '())))
                              '()))
                  _%r111857%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd111858111865%_))
                                                (let ((_%hd111862111878%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd111858111865%_)))
                                                      (_%tl111863111880%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd111858111865%_))))
                                                  (let* ((_%id111883%_
                                                          _%hd111862111878%_)
                                                         (_%k111885%_
                                                          _%tl111863111880%_))
                                                    (_%K111861111875%_
                                                     _%k111885%_
                                                     _%id111883%_)))
                                                (_%E111860111869%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp113121
                                    _%bind111827%_
                                    _%init111852%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest111828111840%_))
                            (let ((_%hd111833111890%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest111828111840%_)))
                                  (_%tl111834111892%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest111828111840%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd111833111890%_))
                                  (let ((_%hd111835111895%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd111833111890%_)))
                                        (_%tl111836111897%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd111833111890%_))))
                                    (let ((_%tmp111900%_ _%hd111835111895%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl111836111897%_))
                                          (let ((_%hd111837111902%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl111836111897%_)))
                                                (_%tl111838111904%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl111836111897%_))))
                                            (let* ((_%len111907%_
                                                    _%hd111837111902%_)
                                                   (_%init111909%_
                                                    _%tl111838111904%_)
                                                   (_%rest111911%_
                                                    _%tl111834111892%_))
                                              (_%K111832111887%_
                                               _%rest111911%_
                                               _%init111909%_
                                               _%len111907%_
                                               _%tmp111900%_)))
                                          (_%else111830111848%_))))
                                  (_%else111830111848%_)))
                            (_%else111830111848%_)))))))
          (__compile-let-form
           _%stx111814%_
           _%compile-simple111816%_
           _%compile-values111817%_))))
    (define __compile-letrec-values%
      (lambda (_%stx111611%_)
        (letrec ((_%compile-simple111613%_
                  (lambda (_%hd-ids111810%_ _%exprs111811%_ _%body111812%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp113122
                                        (map __compile-head-id
                                             _%hd-ids111810%_)))
                                   (declare (not safe))
                                   (##map list __tmp113122 _%exprs111811%_))
                                 (cons _%body111812%_ '())))
                     _%stx111611%_)))
                 (_%compile-values111614%_
                  (lambda (_%hd-ids111721%_ _%exprs111722%_ _%body111723%_)
                    (let _%lp111725%_ ((_%rest111727%_ _%hd-ids111721%_)
                                       (_%exprs111728%_ _%exprs111722%_)
                                       (_%pre111729%_ '())
                                       (_%bind111730%_ '())
                                       (_%post111731%_ '()))
                      (let* ((_%rest111732111746%_ _%rest111727%_)
                             (_%else111735111754%_
                              (lambda ()
                                (_%compile-inner111615%_
                                 _%pre111729%_
                                 _%bind111730%_
                                 _%post111731%_
                                 _%body111723%_))))
                        (let ((_%K111740111793%_
                               (lambda (_%rest111790%_ _%id111791%_)
                                 (_%lp111725%_
                                  _%rest111790%_
                                  (cdr _%exprs111728%_)
                                  _%pre111729%_
                                  (cons (cons (__compile-head-id _%id111791%_)
                                              (cons (car _%exprs111728%_) '()))
                                        _%bind111730%_)
                                  _%post111731%_)))
                              (_%K111737111775%_
                               (lambda (_%rest111758%_ _%hd111759%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd111759%_))
                                     (_%lp111725%_
                                      _%rest111758%_
                                      (cdr _%exprs111728%_)
                                      _%pre111729%_
                                      (cons (cons (__compile-head-id
                                                   _%hd111759%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs111728%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind111730%_)
                                      _%post111731%_)
                                     (if (list? _%hd111759%_)
                                         (let* ((_%len111763%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd111759%_)))
                                                (_%tmp111765%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp111725%_
                                            _%rest111758%_
                                            (cdr _%exprs111728%_)
                                            (let ((__tmp113123
                                                   (lambda (_%id111768%_
                                                            _%r111769%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id111768%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id111768%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r111769%_)
                 _%r111769%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp113123
                                               _%pre111729%_
                                               _%hd111759%_))
                                            (cons (cons _%tmp111765%_
                                                        (cons (car _%exprs111728%_)
                                                              '()))
                                                  _%bind111730%_)
                                            (cons (cons _%tmp111765%_
                                                        (cons _%len111763%_
                                                              (let ((__tmp113125
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id111771%_ _%k111772%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id111771%_))
                                   (cons (__SRC__0 _%id111771%_) _%k111772%_)
                                   '#f)))
                            (__tmp113124
                             (let ()
                               (declare (not safe))
                               (##iota _%len111763%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp113125 _%hd111759%_ __tmp113124))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post111731%_)))
                                         (__compile-error__%
                                          _%stx111611%_
                                          _%hd111759%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest111732111746%_))
                              (let ((_%tl111742111798%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest111732111746%_)))
                                    (_%hd111741111796%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest111732111746%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd111741111796%_))
                                    (let ((_%tl111744111803%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd111741111796%_)))
                                          (_%hd111743111801%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd111741111796%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl111744111803%_))
                                          (let ((_%id111806%_
                                                 _%hd111743111801%_)
                                                (_%rest111808%_
                                                 _%tl111742111798%_))
                                            (_%K111740111793%_
                                             _%rest111808%_
                                             _%id111806%_))
                                          (let ((_%hd111783%_
                                                 _%hd111741111796%_)
                                                (_%rest111785%_
                                                 _%tl111742111798%_))
                                            (_%K111737111775%_
                                             _%rest111785%_
                                             _%hd111783%_))))
                                    (let ((_%hd111783%_ _%hd111741111796%_)
                                          (_%rest111785%_ _%tl111742111798%_))
                                      (_%K111737111775%_
                                       _%rest111785%_
                                       _%hd111783%_))))
                              (_%else111735111754%_)))))))
                 (_%compile-inner111615%_
                  (lambda (_%pre111716%_
                           _%bind111717%_
                           _%post111718%_
                           _%body111719%_)
                    (if (null? _%pre111716%_)
                        (_%compile-bind111616%_
                         _%bind111717%_
                         _%post111718%_
                         _%body111719%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre111716%_)
                                     (cons (_%compile-bind111616%_
                                            _%bind111717%_
                                            _%post111718%_
                                            _%body111719%_)
                                           '())))
                         _%stx111611%_))))
                 (_%compile-bind111616%_
                  (lambda (_%bind111712%_ _%post111713%_ _%body111714%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind111712%_)
                                 (cons (_%compile-post111617%_
                                        _%post111713%_
                                        _%body111714%_)
                                       '())))
                     _%stx111611%_)))
                 (_%compile-post111617%_
                  (lambda (_%post111619%_ _%body111620%_)
                    (let _%lp111622%_ ((_%rest111624%_ _%post111619%_)
                                       (_%check111625%_ '())
                                       (_%bind111626%_ '()))
                      (let* ((_%rest111627111639%_ _%rest111624%_)
                             (_%else111629111647%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp113126
                                              (let ((__tmp113127
                                                     (cons _%body111620%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp113127
                                                 _%bind111626%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp113126
                                          _%check111625%_)))
                                 _%stx111611%_)))
                             (_%K111631111686%_
                              (lambda (_%rest111650%_
                                       _%init111651%_
                                       _%len111652%_
                                       _%tmp111653%_)
                                (_%lp111622%_
                                 _%rest111650%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp111653%_
                                                    (cons _%len111652%_ '())))
                                        _%stx111611%_)
                                       _%check111625%_)
                                 (let ((__tmp113128
                                        (lambda (_%hd111655%_ _%r111656%_)
                                          (let* ((_%hd111657111664%_
                                                  _%hd111655%_)
                                                 (_%E111659111668%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd111657111664%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K111660111674%_
                                                  (lambda (_%k111671%_
                                                           _%id111672%_)
                                                    (cons (cons 'set!
                                                                (cons _%id111672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##vector-ref
                                          (cons _%tmp111653%_
                                                (cons _%k111671%_ '())))
                                    '())))
                  _%r111656%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd111657111664%_))
                                                (let ((_%hd111661111677%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd111657111664%_)))
                                                      (_%tl111662111679%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd111657111664%_))))
                                                  (let* ((_%id111682%_
                                                          _%hd111661111677%_)
                                                         (_%k111684%_
                                                          _%tl111662111679%_))
                                                    (_%K111660111674%_
                                                     _%k111684%_
                                                     _%id111682%_)))
                                                (_%E111659111668%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp113128
                                    _%bind111626%_
                                    _%init111651%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest111627111639%_))
                            (let ((_%hd111632111689%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest111627111639%_)))
                                  (_%tl111633111691%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest111627111639%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd111632111689%_))
                                  (let ((_%hd111634111694%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd111632111689%_)))
                                        (_%tl111635111696%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd111632111689%_))))
                                    (let ((_%tmp111699%_ _%hd111634111694%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl111635111696%_))
                                          (let ((_%hd111636111701%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl111635111696%_)))
                                                (_%tl111637111703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl111635111696%_))))
                                            (let* ((_%len111706%_
                                                    _%hd111636111701%_)
                                                   (_%init111708%_
                                                    _%tl111637111703%_)
                                                   (_%rest111710%_
                                                    _%tl111633111691%_))
                                              (_%K111631111686%_
                                               _%rest111710%_
                                               _%init111708%_
                                               _%len111706%_
                                               _%tmp111699%_)))
                                          (_%else111629111647%_))))
                                  (_%else111629111647%_)))
                            (_%else111629111647%_)))))))
          (__compile-let-form
           _%stx111611%_
           _%compile-simple111613%_
           _%compile-values111614%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx111362%_)
        (letrec ((_%compile-simple111364%_
                  (lambda (_%hd-ids111607%_ _%exprs111608%_ _%body111609%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp113129
                                        (map __compile-head-id
                                             _%hd-ids111607%_)))
                                   (declare (not safe))
                                   (##map list __tmp113129 _%exprs111608%_))
                                 (cons _%body111609%_ '())))
                     _%stx111362%_)))
                 (_%compile-values111365%_
                  (lambda (_%hd-ids111514%_ _%exprs111515%_ _%body111516%_)
                    (let _%lp111518%_ ((_%rest111520%_ _%hd-ids111514%_)
                                       (_%exprs111521%_ _%exprs111515%_)
                                       (_%bind111522%_ '())
                                       (_%post111523%_ '()))
                      (let* ((_%rest111524111538%_ _%rest111520%_)
                             (_%else111527111546%_
                              (lambda ()
                                (_%compile-bind111366%_
                                 _%bind111522%_
                                 _%post111523%_
                                 _%body111516%_))))
                        (let ((_%K111532111590%_
                               (lambda (_%rest111585%_ _%hd111586%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd111586%_))
                                     (let ((_%id111588%_
                                            (__SRC__0 _%hd111586%_)))
                                       (_%lp111518%_
                                        _%rest111585%_
                                        (cdr _%exprs111521%_)
                                        (cons (cons _%id111588%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind111522%_)
                                        (cons (cons _%id111588%_
                                                    (cons (car _%exprs111521%_)
                                                          '()))
                                              _%post111523%_)))
                                     (_%lp111518%_
                                      _%rest111585%_
                                      (cdr _%exprs111521%_)
                                      _%bind111522%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs111521%_)
                                                        '()))
                                            _%post111523%_)))))
                              (_%K111529111570%_
                               (lambda (_%rest111550%_ _%hd111551%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd111551%_))
                                     (let ((_%id111554%_
                                            (__SRC__0 _%hd111551%_)))
                                       (_%lp111518%_
                                        _%rest111550%_
                                        (cdr _%exprs111521%_)
                                        (cons (cons _%id111554%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind111522%_)
                                        (cons (cons _%id111554%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs111521%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post111523%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd111551%_))
                                         (if (list? _%hd111551%_)
                                             (let* ((_%len111558%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd111551%_)))
                                                    (_%tmp111560%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp111518%_
                                                _%rest111550%_
                                                (cdr _%exprs111521%_)
                                                (let ((__tmp113130
                                                       (lambda (_%id111563%_
                                                                _%r111564%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id111563%_))
                     (cons (cons (__SRC__0 _%id111563%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r111564%_)
                     _%r111564%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp113130
                                                   _%bind111522%_
                                                   _%hd111551%_))
                                                (cons (cons _%tmp111560%_
                                                            (cons (car _%exprs111521%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len111558%_
                                (let ((__tmp113132
                                       (lambda (_%id111566%_ _%k111567%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id111566%_))
                                             (cons (__SRC__0 _%id111566%_)
                                                   _%k111567%_)
                                             '#f)))
                                      (__tmp113131
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len111558%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp113132
                                   _%hd111551%_
                                   __tmp113131)))))
              _%post111523%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx111362%_
                                              _%hd111551%_))
                                         (_%lp111518%_
                                          _%rest111550%_
                                          (cdr _%exprs111521%_)
                                          _%bind111522%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs111521%_)
                                                            '()))
                                                _%post111523%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest111524111538%_))
                              (let ((_%tl111534111595%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest111524111538%_)))
                                    (_%hd111533111593%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest111524111538%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd111533111593%_))
                                    (let ((_%tl111536111600%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd111533111593%_)))
                                          (_%hd111535111598%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd111533111593%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl111536111600%_))
                                          (let ((_%hd111603%_
                                                 _%hd111535111598%_)
                                                (_%rest111605%_
                                                 _%tl111534111595%_))
                                            (_%K111532111590%_
                                             _%rest111605%_
                                             _%hd111603%_))
                                          (let ((_%hd111578%_
                                                 _%hd111533111593%_)
                                                (_%rest111580%_
                                                 _%tl111534111595%_))
                                            (_%K111529111570%_
                                             _%rest111580%_
                                             _%hd111578%_))))
                                    (let ((_%hd111578%_ _%hd111533111593%_)
                                          (_%rest111580%_ _%tl111534111595%_))
                                      (_%K111529111570%_
                                       _%rest111580%_
                                       _%hd111578%_))))
                              (_%else111527111546%_)))))))
                 (_%compile-bind111366%_
                  (lambda (_%bind111510%_ _%post111511%_ _%body111512%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind111510%_)
                                 (cons (_%compile-post111367%_
                                        _%post111511%_
                                        _%body111512%_)
                                       '())))
                     _%stx111362%_)))
                 (_%compile-post111367%_
                  (lambda (_%post111369%_ _%body111370%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp113133
                                  (let ((__tmp113135
                                         (lambda (_%hd111372%_ _%r111373%_)
                                           (let* ((_%hd111374111397%_
                                                   _%hd111372%_)
                                                  (_%E111378111401%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd111374111397%_
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
                                             (let ((_%K111391111495%_
                                                    (lambda (_%expr111493%_)
                                                      (cons _%expr111493%_
                                                            _%r111373%_)))
                                                   (_%K111386111473%_
                                                    (lambda (_%expr111470%_
                                                             _%id111471%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id111471%_ (cons _%expr111470%_ '())))
                     _%stx111362%_)
                    _%r111373%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K111379111440%_
                                                    (lambda (_%init111405%_
                                                             _%len111406%_
                                                             _%expr111407%_
                                                             _%tmp111408%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp111408%_
                                             (cons _%expr111407%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp111408%_
                                                    (cons _%len111406%_ '())))
                                        _%stx111362%_)
                                       (let ((__tmp113136
                                              (map (lambda (_%hd111410%_)
                                                     (let* ((_%hd111411111418%_
                                                             _%hd111410%_)
                                                            (_%E111413111422%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd111411111418%_
                                '([id . k])))
                       '#!void))
                    (_%K111414111428%_
                     (lambda (_%k111425%_ _%id111426%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id111426%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp111408%_
                                                      (cons _%k111425%_ '())))
                                          '())))
                        _%stx111362%_))))
               (if (let () (declare (not safe)) (##pair? _%hd111411111418%_))
                   (let ((_%hd111415111431%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd111411111418%_)))
                         (_%tl111416111433%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd111411111418%_))))
                     (let* ((_%id111436%_ _%hd111415111431%_)
                            (_%k111438%_ _%tl111416111433%_))
                       (_%K111414111428%_ _%k111438%_ _%id111436%_)))
                   (_%E111413111422%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init111405%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp113136)))))
                     _%stx111362%_)
                    _%r111373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match112989112990%_
                                                       (lambda (_%hd111380111443%_
                                                                _%tl111381111445%_
                                                                _%hd111382111450%_
                                                                _%tl111383111452%_)
                                                         (let ((_%tmp111448%_
                                                                _%hd111380111443%_)
                                                               (_%expr111455%_
                                                                _%hd111382111450%_))
                                                           (_%E111378111401%_))))
                                                      (_%__match112983112984%_
                                                       (lambda (_%hd111380111443%_
                                                                _%tl111381111445%_)
                                                         (let ((_%tmp111448%_
                                                                _%hd111380111443%_))
                                                           (_%E111378111401%_)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##pair? _%hd111374111397%_))
                                                     (let ((_%tl111393111500%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd111374111397%_)))
                                                           (_%hd111392111498%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd111374111397%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd111392111498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl111393111500%_))
                       (let ((_%tl111395111505%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl111393111500%_)))
                             (_%hd111394111503%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl111393111500%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl111395111505%_))
                             (let ((_%expr111508%_ _%hd111394111503%_))
                               (_%K111391111495%_ _%expr111508%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl111395111505%_))
                                 (let ((_%tl111385111459%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl111395111505%_)))
                                       (_%hd111384111457%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl111395111505%_))))
                                   (let ((_%tmp111448%_ _%hd111392111498%_)
                                         (_%expr111455%_ _%hd111394111503%_)
                                         (_%len111462%_ _%hd111384111457%_)
                                         (_%init111464%_ _%tl111385111459%_))
                                     (_%K111379111440%_
                                      _%init111464%_
                                      _%len111462%_
                                      _%expr111455%_
                                      _%tmp111448%_)))
                                 (_%__match112989112990%_
                                  _%hd111392111498%_
                                  _%tl111393111500%_
                                  _%hd111394111503%_
                                  _%tl111395111505%_))))
                       (_%__match112983112984%_
                        _%hd111392111498%_
                        _%tl111393111500%_))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl111393111500%_))
                       (let ((_%tl111390111485%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl111393111500%_)))
                             (_%hd111389111483%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl111393111500%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl111390111485%_))
                             (let ((_%id111481%_ _%hd111392111498%_)
                                   (_%expr111488%_ _%hd111389111483%_))
                               (_%K111386111473%_ _%expr111488%_ _%id111481%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl111390111485%_))
                                 (let ((_%tl111385111459%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl111390111485%_)))
                                       (_%hd111384111457%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl111390111485%_))))
                                   (let ((_%tmp111448%_ _%hd111392111498%_)
                                         (_%expr111455%_ _%hd111389111483%_)
                                         (_%len111462%_ _%hd111384111457%_)
                                         (_%init111464%_ _%tl111385111459%_))
                                     (_%K111379111440%_
                                      _%init111464%_
                                      _%len111462%_
                                      _%expr111455%_
                                      _%tmp111448%_)))
                                 (_%__match112989112990%_
                                  _%hd111392111498%_
                                  _%tl111393111500%_
                                  _%hd111389111483%_
                                  _%tl111390111485%_))))
                       (_%__match112983112984%_
                        _%hd111392111498%_
                        _%tl111393111500%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E111378111401%_)))))))
                                        (__tmp113134 (list _%body111370%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp113135
                                     __tmp113134
                                     _%post111369%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp113133)))
                     _%stx111362%_))))
          (__compile-let-form
           _%stx111362%_
           _%compile-simple111364%_
           _%compile-values111365%_))))
    (define __compile-call%
      (lambda (_%stx111322%_)
        (let* ((_%$e111324%_ _%stx111322%_)
               (_%$E111326111335%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111324%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111324%_))
              (let* ((_%$tgt111327111338%_
                      (let () (declare (not safe)) (__AST-e _%$e111324%_)))
                     (_%$hd111328111341%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111327111338%_)))
                     (_%$tl111329111344%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111327111338%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111329111344%_))
                    (let* ((_%$tgt111330111348%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111329111344%_)))
                           (_%$hd111331111351%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111330111348%_)))
                           (_%$tl111332111354%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111330111348%_)))
                           (_%rator111358%_ _%$hd111331111351%_)
                           (_%rands111360%_ _%$tl111332111354%_))
                      (__SRC__%
                       (cons (__compile _%rator111358%_)
                             (map __compile _%rands111360%_))
                       _%stx111322%_))
                    (_%$E111326111335%_)))
              (_%$E111326111335%_)))))
    (define __compile-ref%
      (lambda (_%stx111284%_)
        (let* ((_%$e111286%_ _%stx111284%_)
               (_%$E111288111297%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111286%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111286%_))
              (let* ((_%$tgt111289111300%_
                      (let () (declare (not safe)) (__AST-e _%$e111286%_)))
                     (_%$hd111290111303%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111289111300%_)))
                     (_%$tl111291111306%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111289111300%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111291111306%_))
                    (let* ((_%$tgt111292111310%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111291111306%_)))
                           (_%$hd111293111313%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111292111310%_)))
                           (_%$tl111294111316%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111292111310%_)))
                           (_%id111320%_ _%$hd111293111313%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111294111316%_))
                                  '())
                          (__SRC__% _%id111320%_ _%stx111284%_)
                          (_%$E111288111297%_)))
                    (_%$E111288111297%_)))
              (_%$E111288111297%_)))))
    (define __compile-setq%
      (lambda (_%stx111231%_)
        (let* ((_%$e111233%_ _%stx111231%_)
               (_%$E111235111247%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111233%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111233%_))
              (let* ((_%$tgt111236111250%_
                      (let () (declare (not safe)) (__AST-e _%$e111233%_)))
                     (_%$hd111237111253%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111236111250%_)))
                     (_%$tl111238111256%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111236111250%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111238111256%_))
                    (let* ((_%$tgt111239111260%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111238111256%_)))
                           (_%$hd111240111263%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111239111260%_)))
                           (_%$tl111241111266%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111239111260%_)))
                           (_%id111270%_ _%$hd111240111263%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111241111266%_))
                          (let* ((_%$tgt111242111272%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111241111266%_)))
                                 (_%$hd111243111275%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111242111272%_)))
                                 (_%$tl111244111278%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111242111272%_)))
                                 (_%expr111282%_ _%$hd111243111275%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111244111278%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id111270%_
                                              _%stx111231%_)
                                             (cons (__compile _%expr111282%_)
                                                   '())))
                                 _%stx111231%_)
                                (_%$E111235111247%_)))
                          (_%$E111235111247%_)))
                    (_%$E111235111247%_)))
              (_%$E111235111247%_)))))
    (define __compile-if%
      (lambda (_%stx111163%_)
        (let* ((_%$e111165%_ _%stx111163%_)
               (_%$E111167111182%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111165%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111165%_))
              (let* ((_%$tgt111168111185%_
                      (let () (declare (not safe)) (__AST-e _%$e111165%_)))
                     (_%$hd111169111188%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111168111185%_)))
                     (_%$tl111170111191%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111168111185%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111170111191%_))
                    (let* ((_%$tgt111171111195%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111170111191%_)))
                           (_%$hd111172111198%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111171111195%_)))
                           (_%$tl111173111201%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111171111195%_)))
                           (_%p111205%_ _%$hd111172111198%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111173111201%_))
                          (let* ((_%$tgt111174111207%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111173111201%_)))
                                 (_%$hd111175111210%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111174111207%_)))
                                 (_%$tl111176111213%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111174111207%_)))
                                 (_%t111217%_ _%$hd111175111210%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl111176111213%_))
                                (let* ((_%$tgt111177111219%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111176111213%_)))
                                       (_%$hd111178111222%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt111177111219%_)))
                                       (_%$tl111179111225%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt111177111219%_)))
                                       (_%f111229%_ _%$hd111178111222%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl111179111225%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p111205%_)
                                                   (cons (__compile
                                                          _%t111217%_)
                                                         (cons (__compile
                                                                _%f111229%_)
                                                               '()))))
                                       _%stx111163%_)
                                      (_%$E111167111182%_)))
                                (_%$E111167111182%_)))
                          (_%$E111167111182%_)))
                    (_%$E111167111182%_)))
              (_%$E111167111182%_)))))
    (define __compile-quote%
      (lambda (_%stx111125%_)
        (let* ((_%$e111127%_ _%stx111125%_)
               (_%$E111129111138%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111127%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111127%_))
              (let* ((_%$tgt111130111141%_
                      (let () (declare (not safe)) (__AST-e _%$e111127%_)))
                     (_%$hd111131111144%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111130111141%_)))
                     (_%$tl111132111147%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111130111141%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111132111147%_))
                    (let* ((_%$tgt111133111151%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111132111147%_)))
                           (_%$hd111134111154%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111133111151%_)))
                           (_%$tl111135111157%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111133111151%_)))
                           (_%e111161%_ _%$hd111134111154%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111135111157%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e111161%_))
                                       '()))
                           _%stx111125%_)
                          (_%$E111129111138%_)))
                    (_%$E111129111138%_)))
              (_%$E111129111138%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx111087%_)
        (let* ((_%$e111089%_ _%stx111087%_)
               (_%$E111091111100%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111089%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111089%_))
              (let* ((_%$tgt111092111103%_
                      (let () (declare (not safe)) (__AST-e _%$e111089%_)))
                     (_%$hd111093111106%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111092111103%_)))
                     (_%$tl111094111109%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111092111103%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111094111109%_))
                    (let* ((_%$tgt111095111113%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111094111109%_)))
                           (_%$hd111096111116%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111095111113%_)))
                           (_%$tl111097111119%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111095111113%_)))
                           (_%e111123%_ _%$hd111096111116%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111097111119%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e111123%_ '()))
                           _%stx111087%_)
                          (_%$E111091111100%_)))
                    (_%$E111091111100%_)))
              (_%$E111091111100%_)))))
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
