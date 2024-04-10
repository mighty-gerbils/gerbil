(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1712757954)
  (begin
    (define __syntax::t
      (let ((__tmp111549 (list)) (__tmp111548 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp111549
         '(e id)
         __tmp111548
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args111353%_
        (apply make-instance __syntax::t _%$args111353%_)))
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
      (let ((__tmp111551 (list __syntax::t))
            (__tmp111550 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp111551
         '()
         __tmp111550
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args111350%_
        (apply make-instance __core-form::t _%$args111350%_)))
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
      (let ((__tmp111553 (list __core-form::t))
            (__tmp111552 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp111553
         '()
         __tmp111552
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args111347%_
        (apply make-instance __core-expression::t _%$args111347%_)))
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
      (let ((__tmp111555 (list __core-form::t))
            (__tmp111554 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp111555
         '()
         __tmp111554
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args111344%_
        (apply make-instance __core-special-form::t _%$args111344%_)))
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
      (lambda (_%id111342%_)
        (let ((__tmp111556
               (let () (declare (not safe)) (__AST-e _%id111342%_))))
          (declare (not safe))
          (hash-get __core __tmp111556))))
    (define __core-bound-id?__%
      (lambda (_%id111325%_ _%is?111326%_)
        (let ((_%$e111328%_ (__core-resolve _%id111325%_)))
          (if _%$e111328%_ (_%is?111326%_ _%$e111328%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id111335%_)
        (let ((_%is?111337%_ true))
          (__core-bound-id?__% _%id111335%_ _%is?111337%_))))
    (define __core-bound-id?
      (lambda _g111558_
        (let ((_g111557_ (let () (declare (not safe)) (##length _g111558_))))
          (cond ((let () (declare (not safe)) (##fx= _g111557_ 1))
                 (apply __core-bound-id?__0 _g111558_))
                ((let () (declare (not safe)) (##fx= _g111557_ 2))
                 (apply __core-bound-id?__% _g111558_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g111558_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id111308%_ _%e111309%_ _%make111310%_)
        (let ((__tmp111559
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e111309%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e111309%_
                   (_%make111310%_ _%e111309%_ _%id111308%_))))
          (declare (not safe))
          (hash-put! __core _%id111308%_ __tmp111559))))
    (define __core-bind-syntax!__0
      (lambda (_%id111315%_ _%e111316%_)
        (let ((_%make111318%_ make-__syntax))
          (__core-bind-syntax!__% _%id111315%_ _%e111316%_ _%make111318%_))))
    (define __core-bind-syntax!
      (lambda _g111561_
        (let ((_g111560_ (let () (declare (not safe)) (##length _g111561_))))
          (cond ((let () (declare (not safe)) (##fx= _g111560_ 2))
                 (apply __core-bind-syntax!__0 _g111561_))
                ((let () (declare (not safe)) (##fx= _g111560_ 3))
                 (apply __core-bind-syntax!__% _g111561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g111561_))))))
    (define __SRC__%
      (lambda (_%e111288%_ _%src-stx111289%_)
        (if (or (pair? _%e111288%_) (symbol? _%e111288%_))
            (let ((__tmp111562
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx111289%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx111289%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e111288%_ __tmp111562))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e111288%_ 'gerbil#AST::t))
                (let ((__tmp111564
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e111288%_ '1 '#f '#f)))
                      (__tmp111563
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e111288%_)))))
                  (declare (not safe))
                  (##make-source __tmp111564 __tmp111563))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e111288%_))))))
    (define __SRC__0
      (lambda (_%e111300%_)
        (let ((_%src-stx111302%_ '#f))
          (__SRC__% _%e111300%_ _%src-stx111302%_))))
    (define __SRC
      (lambda _g111566_
        (let ((_g111565_ (let () (declare (not safe)) (##length _g111566_))))
          (cond ((let () (declare (not safe)) (##fx= _g111565_ 1))
                 (apply __SRC__0 _g111566_))
                ((let () (declare (not safe)) (##fx= _g111565_ 2))
                 (apply __SRC__% _g111566_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g111566_))))))
    (define __locat
      (lambda (_%loc111285%_)
        (if (let () (declare (not safe)) (##locat? _%loc111285%_))
            _%loc111285%_
            '#f)))
    (define __check-values
      (lambda (_%obj111280%_ _%k111281%_)
        (let ((_%count111283%_
               (if (let () (declare (not safe)) (##values? _%obj111280%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj111280%_))
                   '1)))
          (if (fx= _%count111283%_ _%k111281%_)
              '#!void
              (let ((__tmp111568
                     (if (fx< _%count111283%_ _%k111281%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp111567
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj111280%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj111280%_))
                         _%obj111280%_)))
                (declare (not safe))
                (error __tmp111568 __tmp111567 _%k111281%_))))))
    (define __compile
      (lambda (_%stx111249%_)
        (let* ((_%$e111251%_ _%stx111249%_)
               (_%$E111253111259%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111251%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111251%_))
              (let* ((_%$tgt111254111262%_
                      (let () (declare (not safe)) (__AST-e _%$e111251%_)))
                     (_%$hd111255111265%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111254111262%_)))
                     (_%$tl111256111268%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111254111262%_)))
                     (_%form111272%_ _%$hd111255111265%_)
                     (_%$e111274%_ (__core-resolve _%form111272%_)))
                (if _%$e111274%_
                    ((lambda (_%bind111277%_)
                       ((##structure-ref _%bind111277%_ '1 __syntax::t '#f)
                        _%stx111249%_))
                     _%$e111274%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx111249%_
                       _%form111272%_))))
              (_%$E111253111259%_)))))
    (define __compile-error__%
      (lambda (_%stx111236%_ _%detail111237%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx111236%_
           _%detail111237%_))))
    (define __compile-error__0
      (lambda (_%stx111242%_)
        (let ((_%detail111244%_ '#f))
          (__compile-error__% _%stx111242%_ _%detail111244%_))))
    (define __compile-error
      (lambda _g111570_
        (let ((_g111569_ (let () (declare (not safe)) (##length _g111570_))))
          (cond ((let () (declare (not safe)) (##fx= _g111569_ 1))
                 (apply __compile-error__0 _g111570_))
                ((let () (declare (not safe)) (##fx= _g111569_ 2))
                 (apply __compile-error__% _g111570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g111570_))))))
    (define __compile-ignore%
      (lambda (_%stx111233%_) (__SRC__% ''#!void _%stx111233%_)))
    (define __compile-begin%
      (lambda (_%stx111208%_)
        (let* ((_%$e111210%_ _%stx111208%_)
               (_%$E111212111218%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111210%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111210%_))
              (let* ((_%$tgt111213111221%_
                      (let () (declare (not safe)) (__AST-e _%$e111210%_)))
                     (_%$hd111214111224%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111213111221%_)))
                     (_%$tl111215111227%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111213111221%_)))
                     (_%body111231%_ _%$tl111215111227%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body111231%_))
                 _%stx111208%_))
              (_%$E111212111218%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx111183%_)
        (let* ((_%$e111185%_ _%stx111183%_)
               (_%$E111187111193%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111185%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111185%_))
              (let* ((_%$tgt111188111196%_
                      (let () (declare (not safe)) (__AST-e _%$e111185%_)))
                     (_%$hd111189111199%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111188111196%_)))
                     (_%$tl111190111202%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111188111196%_)))
                     (_%body111206%_ _%$tl111190111202%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body111206%_)))
                 _%stx111183%_))
              (_%$E111187111193%_)))))
    (define __compile-import%
      (lambda (_%stx111158%_)
        (let* ((_%$e111160%_ _%stx111158%_)
               (_%$E111162111168%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111160%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111160%_))
              (let* ((_%$tgt111163111171%_
                      (let () (declare (not safe)) (__AST-e _%$e111160%_)))
                     (_%$hd111164111174%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111163111171%_)))
                     (_%$tl111165111177%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111163111171%_)))
                     (_%body111181%_ _%$tl111165111177%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body111181%_ '())) '()))
                 _%stx111158%_))
              (_%$E111162111168%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx111105%_)
        (let* ((_%$e111107%_ _%stx111105%_)
               (_%$E111109111121%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111107%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111107%_))
              (let* ((_%$tgt111110111124%_
                      (let () (declare (not safe)) (__AST-e _%$e111107%_)))
                     (_%$hd111111111127%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111110111124%_)))
                     (_%$tl111112111130%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111110111124%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111112111130%_))
                    (let* ((_%$tgt111113111134%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111112111130%_)))
                           (_%$hd111114111137%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111113111134%_)))
                           (_%$tl111115111140%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111113111134%_)))
                           (_%ann111144%_ _%$hd111114111137%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111115111140%_))
                          (let* ((_%$tgt111116111146%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111115111140%_)))
                                 (_%$hd111117111149%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111116111146%_)))
                                 (_%$tl111118111152%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111116111146%_)))
                                 (_%expr111156%_ _%$hd111117111149%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111118111152%_))
                                        '())
                                (__compile _%expr111156%_)
                                (_%$E111109111121%_)))
                          (_%$E111109111121%_)))
                    (_%$E111109111121%_)))
              (_%$E111109111121%_)))))
    (define __compile-define-values%
      (lambda (_%stx110996%_)
        (let* ((_%$e110998%_ _%stx110996%_)
               (_%$E111000111012%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110998%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110998%_))
              (let* ((_%$tgt111001111015%_
                      (let () (declare (not safe)) (__AST-e _%$e110998%_)))
                     (_%$hd111002111018%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111001111015%_)))
                     (_%$tl111003111021%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111001111015%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111003111021%_))
                    (let* ((_%$tgt111004111025%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111003111021%_)))
                           (_%$hd111005111028%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111004111025%_)))
                           (_%$tl111006111031%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111004111025%_)))
                           (_%hd111035%_ _%$hd111005111028%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111006111031%_))
                          (let* ((_%$tgt111007111037%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111006111031%_)))
                                 (_%$hd111008111040%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111007111037%_)))
                                 (_%$tl111009111043%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111007111037%_)))
                                 (_%expr111047%_ _%$hd111008111040%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111009111043%_))
                                        '())
                                (let* ((_%$e111049%_ _%hd111035%_)
                                       (_%$E111051111092%_
                                        (lambda ()
                                          (let ((_%$E111052111077%_
                                                 (lambda ()
                                                   (let* ((_%$E111053111064%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e111049%_))))
                  (_%ids111067%_ _%hd111035%_)
                  (_%len111069%_ (length _%ids111067%_))
                  (_%tmp111071%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp111071%_
                                       (cons (__compile _%expr111047%_) '())))
                           _%stx110996%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp111071%_
                                             (cons _%len111069%_ '())))
                                 _%stx110996%_)
                                (let ((__tmp111571
                                       (let ((__tmp111573
                                              (lambda (_%id111074%_
                                                       _%k111075%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id111074%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id111074%_)
                         (cons (cons '##vector-ref
                                     (cons _%tmp111071%_
                                           (cons _%k111075%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx110996%_)
                                                    '#f)))
                                             (__tmp111572
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len111069%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp111573
                                          _%ids111067%_
                                          __tmp111572))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp111571)))))
              _%stx110996%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e111049%_))
                                                (let* ((_%$tgt111054111080%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e111049%_)))
                                                       (_%$hd111055111083%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt111054111080%_)))
                                                       (_%$tl111056111086%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt111054111080%_)))
                                                       (_%id111090%_
                                                        _%$hd111055111083%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl111056111086%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id111090%_)
                           (cons (__compile _%expr111047%_) '())))
               _%stx110996%_)
              (_%$E111052111077%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E111052111077%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e111049%_))
                                      (let* ((_%$tgt111057111095%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e111049%_)))
                                             (_%$hd111058111098%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt111057111095%_)))
                                             (_%$tl111059111101%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt111057111095%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd111058111098%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl111059111101%_))
                                                        '())
                                                (__compile _%expr111047%_)
                                                (_%$E111051111092%_))
                                            (_%$E111051111092%_)))
                                      (_%$E111051111092%_)))
                                (_%$E111000111012%_)))
                          (_%$E111000111012%_)))
                    (_%$E111000111012%_)))
              (_%$E111000111012%_)))))
    (define __compile-head-id
      (lambda (_%e110994%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e110994%_))
             _%e110994%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd110951%_)
        (let _%recur110953%_ ((_%rest110955%_ _%hd110951%_))
          (let* ((_%$e110957%_ _%rest110955%_)
                 (_%$E110959110977%_
                  (lambda ()
                    (let ((_%$E110960110974%_
                           (lambda ()
                             (let* ((_%$E110961110969%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e110957%_))))
                                    (_%tail110972%_ _%$e110957%_))
                               (__compile-head-id _%tail110972%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110957%_))
                                  '())
                          '()
                          (_%$E110960110974%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110957%_))
                (let* ((_%$tgt110962110980%_
                        (let () (declare (not safe)) (__AST-e _%$e110957%_)))
                       (_%$hd110963110983%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110962110980%_)))
                       (_%$tl110964110986%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110962110980%_)))
                       (_%hd110990%_ _%$hd110963110983%_)
                       (_%rest110992%_ _%$tl110964110986%_))
                  (cons (__compile-head-id _%hd110990%_)
                        (_%recur110953%_ _%rest110992%_)))
                (_%$E110959110977%_))))))
    (define __compile-lambda%
      (lambda (_%stx110898%_)
        (let* ((_%$e110900%_ _%stx110898%_)
               (_%$E110902110914%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110900%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110900%_))
              (let* ((_%$tgt110903110917%_
                      (let () (declare (not safe)) (__AST-e _%$e110900%_)))
                     (_%$hd110904110920%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110903110917%_)))
                     (_%$tl110905110923%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110903110917%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110905110923%_))
                    (let* ((_%$tgt110906110927%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110905110923%_)))
                           (_%$hd110907110930%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110906110927%_)))
                           (_%$tl110908110933%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110906110927%_)))
                           (_%hd110937%_ _%$hd110907110930%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl110908110933%_))
                          (let* ((_%$tgt110909110939%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl110908110933%_)))
                                 (_%$hd110910110942%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110909110939%_)))
                                 (_%$tl110911110945%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110909110939%_)))
                                 (_%body110949%_ _%$hd110910110942%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110911110945%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd110937%_)
                                             (cons (__compile _%body110949%_)
                                                   '())))
                                 _%stx110898%_)
                                (_%$E110902110914%_)))
                          (_%$E110902110914%_)))
                    (_%$E110902110914%_)))
              (_%$E110902110914%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx110690%_)
        (letrec ((_%variadic?110692%_
                  (lambda (_%hd110863%_)
                    (let* ((_%$e110865%_ _%hd110863%_)
                           (_%$E110867110883%_
                            (lambda ()
                              (let ((_%$E110868110880%_
                                     (lambda ()
                                       (let ((_%$E110869110877%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e110865%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e110865%_))
                                            '())
                                    '#f
                                    (_%$E110868110880%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110865%_))
                          (let* ((_%$tgt110870110886%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110865%_)))
                                 (_%$hd110871110889%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110870110886%_)))
                                 (_%$tl110872110892%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110870110886%_)))
                                 (_%rest110896%_ _%$tl110872110892%_))
                            (_%variadic?110692%_ _%rest110896%_))
                          (_%$E110867110883%_)))))
                 (_%arity110693%_
                  (lambda (_%hd110828%_)
                    (let _%lp110830%_ ((_%rest110832%_ _%hd110828%_)
                                       (_%k110833%_ '0))
                      (let* ((_%$e110835%_ _%rest110832%_)
                             (_%$E110837110848%_
                              (lambda ()
                                (let ((_%$E110838110845%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e110835%_)))))
                                  _%k110833%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e110835%_))
                            (let* ((_%$tgt110839110851%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e110835%_)))
                                   (_%$hd110840110854%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt110839110851%_)))
                                   (_%$tl110841110857%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt110839110851%_)))
                                   (_%rest110861%_ _%$tl110841110857%_))
                              (_%lp110830%_
                               _%rest110861%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k110833%_ '1))))
                            (_%$E110837110848%_))))))
                 (_%generate110694%_
                  (lambda (_%rest110755%_ _%args110756%_ _%len110757%_)
                    (let* ((_%$e110759%_ _%rest110755%_)
                           (_%$E110761110772%_
                            (lambda ()
                              (let ((_%$E110762110769%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e110759%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args110756%_ '())))
                                 _%stx110690%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110759%_))
                          (let* ((_%$tgt110763110775%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110759%_)))
                                 (_%$hd110764110778%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110763110775%_)))
                                 (_%$tl110765110781%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110763110775%_)))
                                 (_%clause110785%_ _%$hd110764110778%_)
                                 (_%rest110787%_ _%$tl110765110781%_)
                                 (_%$e110789%_ _%clause110785%_)
                                 (_%$E110791110800%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e110789%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e110789%_))
                                (let* ((_%$tgt110792110803%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e110789%_)))
                                       (_%$hd110793110806%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110792110803%_)))
                                       (_%$tl110794110809%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110792110803%_)))
                                       (_%hd110813%_ _%$hd110793110806%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl110794110809%_))
                                      (let* ((_%$tgt110795110815%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl110794110809%_)))
                                             (_%$hd110796110818%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt110795110815%_)))
                                             (_%$tl110797110821%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt110795110815%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl110797110821%_))
                                                    '())
                                            (let ((_%clen110825%_
                                                   (_%arity110693%_
                                                    _%hd110813%_))
                                                  (_%cmp110826%_
                                                   (if (_%variadic?110692%_
                                                        _%hd110813%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp110826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len110757%_ (cons _%clen110825%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause110785%_))
                                      (cons _%args110756%_ '())))
                          _%stx110690%_)
                         (cons (_%generate110694%_
                                _%rest110787%_
                                _%args110756%_
                                _%len110757%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx110690%_))
                                            (_%$E110791110800%_)))
                                      (_%$E110791110800%_)))
                                (_%$E110791110800%_)))
                          (_%$E110761110772%_))))))
          (let* ((_%$e110696%_ _%stx110690%_)
                 (_%$E110698110730%_
                  (lambda ()
                    (let ((_%$E110699110712%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110696%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110696%_))
                          (let* ((_%$tgt110700110715%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110696%_)))
                                 (_%$hd110701110718%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110700110715%_)))
                                 (_%$tl110702110721%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110700110715%_)))
                                 (_%clauses110725%_ _%$tl110702110721%_))
                            (let ((_%args110727%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx110690%_))
                                  (_%len110728%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx110690%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args110727%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len110728%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args110727%_ '()))
                                         _%stx110690%_)
                                        '()))
                            '())
                      (cons (_%generate110694%_
                             _%clauses110725%_
                             _%args110727%_
                             _%len110728%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx110690%_)
                                                 '())))
                               _%stx110690%_)))
                          (_%$E110699110712%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110696%_))
                (let* ((_%$tgt110703110733%_
                        (let () (declare (not safe)) (__AST-e _%$e110696%_)))
                       (_%$hd110704110736%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110703110733%_)))
                       (_%$tl110705110739%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110703110733%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110705110739%_))
                      (let* ((_%$tgt110706110743%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110705110739%_)))
                             (_%$hd110707110746%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110706110743%_)))
                             (_%$tl110708110749%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110706110743%_)))
                             (_%clause110753%_ _%$hd110707110746%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl110708110749%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause110753%_))
                            (_%$E110698110730%_)))
                      (_%$E110698110730%_)))
                (_%$E110698110730%_))))))
    (define __compile-let-form
      (lambda (_%stx110459%_ _%compile-simple110460%_ _%compile-values110461%_)
        (letrec ((_%simple-bind?110463%_
                  (lambda (_%hd110648%_)
                    (let* ((_%hd110649110659%_ _%hd110648%_)
                           (_%else110652110667%_ (lambda () '#f)))
                      (let ((_%K110655110680%_ (lambda (_%id110678%_) '#t))
                            (_%K110654110672%_ (lambda () '#t)))
                        (let ((_%try-match110651110675%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd110649110659%_ '#f))
                                     (_%K110654110672%_)
                                     (_%else110652110667%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd110649110659%_))
                              (let ((_%tl110657110685%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd110649110659%_)))
                                    (_%hd110656110683%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd110649110659%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl110657110685%_))
                                    (let ((_%id110688%_ _%hd110656110683%_))
                                      (_%K110655110680%_ _%id110688%_))
                                    (_%try-match110651110675%_)))
                              (_%try-match110651110675%_)))))))
                 (_%car-e110464%_
                  (lambda (_%hd110646%_)
                    (if (pair? _%hd110646%_)
                        (car _%hd110646%_)
                        _%hd110646%_))))
          (let* ((_%$e110466%_ _%stx110459%_)
                 (_%$E110468110611%_
                  (lambda ()
                    (let ((_%$E110469110491%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110466%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110466%_))
                          (let* ((_%$tgt110470110494%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110466%_)))
                                 (_%$hd110471110497%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110470110494%_)))
                                 (_%$tl110472110500%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110470110494%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110472110500%_))
                                (let* ((_%$tgt110473110504%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110472110500%_)))
                                       (_%$hd110474110507%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110473110504%_)))
                                       (_%$tl110475110510%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110473110504%_)))
                                       (_%hd110514%_ _%$hd110474110507%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl110475110510%_))
                                      (let* ((_%$tgt110476110516%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl110475110510%_)))
                                             (_%$hd110477110519%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt110476110516%_)))
                                             (_%$tl110478110522%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt110476110516%_)))
                                             (_%body110526%_
                                              _%$hd110477110519%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl110478110522%_))
                                                    '())
                                            (let* ((_%hd-ids110566%_
                                                    (map (lambda (_%bind110528%_)
                                                           (let* ((_%$e110530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind110528%_)
                          (_%$E110532110541%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110530%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e110530%_))
                         (let* ((_%$tgt110533110544%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e110530%_)))
                                (_%$hd110534110547%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt110533110544%_)))
                                (_%$tl110535110550%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt110533110544%_)))
                                (_%ids110554%_ _%$hd110534110547%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl110535110550%_))
                               (let* ((_%$tgt110536110556%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl110535110550%_)))
                                      (_%$hd110537110559%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt110536110556%_)))
                                      (_%$tl110538110562%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt110536110556%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110538110562%_))
                                             '())
                                     _%ids110554%_
                                     (_%$E110532110541%_)))
                               (_%$E110532110541%_)))
                         (_%$E110532110541%_))))
                 _%hd110514%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs110606%_
                                                    (map (lambda (_%bind110568%_)
                                                           (let* ((_%$e110570%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind110568%_)
                          (_%$E110572110581%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110570%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e110570%_))
                         (let* ((_%$tgt110573110584%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e110570%_)))
                                (_%$hd110574110587%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt110573110584%_)))
                                (_%$tl110575110590%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt110573110584%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl110575110590%_))
                               (let* ((_%$tgt110576110594%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl110575110590%_)))
                                      (_%$hd110577110597%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt110576110594%_)))
                                      (_%$tl110578110600%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt110576110594%_)))
                                      (_%expr110604%_ _%$hd110577110597%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110578110600%_))
                                             '())
                                     (__compile _%expr110604%_)
                                     (_%$E110572110581%_)))
                               (_%$E110572110581%_)))
                         (_%$E110572110581%_))))
                 _%hd110514%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body110608%_
                                                    (__compile
                                                     _%body110526%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?110463%_
                                                     _%hd-ids110566%_))
                                                  (_%compile-simple110460%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e110464%_
                                                            _%hd-ids110566%_))
                                                   _%exprs110606%_
                                                   _%body110608%_)
                                                  (_%compile-values110461%_
                                                   _%hd-ids110566%_
                                                   _%exprs110606%_
                                                   _%body110608%_)))
                                            (_%$E110469110491%_)))
                                      (_%$E110469110491%_)))
                                (_%$E110469110491%_)))
                          (_%$E110469110491%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110466%_))
                (let* ((_%$tgt110479110614%_
                        (let () (declare (not safe)) (__AST-e _%$e110466%_)))
                       (_%$hd110480110617%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110479110614%_)))
                       (_%$tl110481110620%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110479110614%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110481110620%_))
                      (let* ((_%$tgt110482110624%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110481110620%_)))
                             (_%$hd110483110627%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110482110624%_)))
                             (_%$tl110484110630%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110482110624%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd110483110627%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110484110630%_))
                                (let* ((_%$tgt110485110634%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110484110630%_)))
                                       (_%$hd110486110637%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110485110634%_)))
                                       (_%$tl110487110640%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110485110634%_)))
                                       (_%body110644%_ _%$hd110486110637%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl110487110640%_))
                                              '())
                                      (__compile _%body110644%_)
                                      (_%$E110468110611%_)))
                                (_%$E110468110611%_))
                            (_%$E110468110611%_)))
                      (_%$E110468110611%_)))
                (_%$E110468110611%_))))))
    (define __compile-let-values%
      (lambda (_%stx110271%_)
        (letrec ((_%compile-simple110273%_
                  (lambda (_%hd-ids110455%_ _%exprs110456%_ _%body110457%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp111574
                                        (map __compile-head-id
                                             _%hd-ids110455%_)))
                                   (declare (not safe))
                                   (##map list __tmp111574 _%exprs110456%_))
                                 (cons _%body110457%_ '())))
                     _%stx110271%_)))
                 (_%compile-values110274%_
                  (lambda (_%hd-ids110370%_ _%exprs110371%_ _%body110372%_)
                    (let _%lp110374%_ ((_%rest110376%_ _%hd-ids110370%_)
                                       (_%exprs110377%_ _%exprs110371%_)
                                       (_%bind110378%_ '())
                                       (_%post110379%_ '()))
                      (let* ((_%rest110380110394%_ _%rest110376%_)
                             (_%else110383110402%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind110378%_)
                                             (cons (_%compile-post110275%_
                                                    _%post110379%_
                                                    _%body110372%_)
                                                   '())))
                                 _%stx110271%_))))
                        (let ((_%K110388110438%_
                               (lambda (_%rest110435%_ _%id110436%_)
                                 (_%lp110374%_
                                  _%rest110435%_
                                  (cdr _%exprs110377%_)
                                  (cons (cons (__compile-head-id _%id110436%_)
                                              (cons (car _%exprs110377%_) '()))
                                        _%bind110378%_)
                                  _%post110379%_)))
                              (_%K110385110420%_
                               (lambda (_%rest110406%_ _%hd110407%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110407%_))
                                     (_%lp110374%_
                                      _%rest110406%_
                                      (cdr _%exprs110377%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd110407%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs110377%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind110378%_)
                                      _%post110379%_)
                                     (if (list? _%hd110407%_)
                                         (let* ((_%len110411%_
                                                 (length _%hd110407%_))
                                                (_%tmp110413%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp110374%_
                                            _%rest110406%_
                                            (cdr _%exprs110377%_)
                                            (cons (cons _%tmp110413%_
                                                        (cons (car _%exprs110377%_)
                                                              '()))
                                                  _%bind110378%_)
                                            (cons (cons _%tmp110413%_
                                                        (cons _%len110411%_
                                                              (let ((__tmp111576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id110416%_ _%k110417%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id110416%_))
                                   (cons (__SRC__0 _%id110416%_) _%k110417%_)
                                   '#f)))
                            (__tmp111575
                             (let ()
                               (declare (not safe))
                               (##iota _%len110411%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp111576 _%hd110407%_ __tmp111575))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post110379%_)))
                                         (__compile-error__%
                                          _%stx110271%_
                                          _%hd110407%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110380110394%_))
                              (let ((_%tl110390110443%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110380110394%_)))
                                    (_%hd110389110441%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110380110394%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110389110441%_))
                                    (let ((_%tl110392110448%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110389110441%_)))
                                          (_%hd110391110446%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110389110441%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110392110448%_))
                                          (let ((_%id110451%_
                                                 _%hd110391110446%_)
                                                (_%rest110453%_
                                                 _%tl110390110443%_))
                                            (_%K110388110438%_
                                             _%rest110453%_
                                             _%id110451%_))
                                          (let ((_%hd110428%_
                                                 _%hd110389110441%_)
                                                (_%rest110430%_
                                                 _%tl110390110443%_))
                                            (_%K110385110420%_
                                             _%rest110430%_
                                             _%hd110428%_))))
                                    (let ((_%hd110428%_ _%hd110389110441%_)
                                          (_%rest110430%_ _%tl110390110443%_))
                                      (_%K110385110420%_
                                       _%rest110430%_
                                       _%hd110428%_))))
                              (_%else110383110402%_)))))))
                 (_%compile-post110275%_
                  (lambda (_%post110277%_ _%body110278%_)
                    (let _%lp110280%_ ((_%rest110282%_ _%post110277%_)
                                       (_%check110283%_ '())
                                       (_%bind110284%_ '()))
                      (let* ((_%rest110285110297%_ _%rest110282%_)
                             (_%else110287110305%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp111577
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind110284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body110278%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx110271%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp111577
                                          _%check110283%_)))
                                 _%stx110271%_)))
                             (_%K110289110344%_
                              (lambda (_%rest110308%_
                                       _%init110309%_
                                       _%len110310%_
                                       _%tmp110311%_)
                                (_%lp110280%_
                                 _%rest110308%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp110311%_
                                                    (cons _%len110310%_ '())))
                                        _%stx110271%_)
                                       _%check110283%_)
                                 (let ((__tmp111578
                                        (lambda (_%hd110313%_ _%r110314%_)
                                          (let* ((_%hd110315110322%_
                                                  _%hd110313%_)
                                                 (_%E110317110326%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd110315110322%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K110318110332%_
                                                  (lambda (_%k110329%_
                                                           _%id110330%_)
                                                    (cons (cons _%id110330%_
                                                                (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp110311%_
                                          (cons _%k110329%_ '())))
                              '()))
                  _%r110314%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd110315110322%_))
                                                (let ((_%hd110319110335%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd110315110322%_)))
                                                      (_%tl110320110337%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd110315110322%_))))
                                                  (let* ((_%id110340%_
                                                          _%hd110319110335%_)
                                                         (_%k110342%_
                                                          _%tl110320110337%_))
                                                    (_%K110318110332%_
                                                     _%k110342%_
                                                     _%id110340%_)))
                                                (_%E110317110326%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp111578
                                    _%bind110284%_
                                    _%init110309%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest110285110297%_))
                            (let ((_%hd110290110347%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest110285110297%_)))
                                  (_%tl110291110349%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest110285110297%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd110290110347%_))
                                  (let ((_%hd110292110352%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd110290110347%_)))
                                        (_%tl110293110354%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd110290110347%_))))
                                    (let ((_%tmp110357%_ _%hd110292110352%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl110293110354%_))
                                          (let ((_%hd110294110359%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl110293110354%_)))
                                                (_%tl110295110361%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl110293110354%_))))
                                            (let* ((_%len110364%_
                                                    _%hd110294110359%_)
                                                   (_%init110366%_
                                                    _%tl110295110361%_)
                                                   (_%rest110368%_
                                                    _%tl110291110349%_))
                                              (_%K110289110344%_
                                               _%rest110368%_
                                               _%init110366%_
                                               _%len110364%_
                                               _%tmp110357%_)))
                                          (_%else110287110305%_))))
                                  (_%else110287110305%_)))
                            (_%else110287110305%_)))))))
          (__compile-let-form
           _%stx110271%_
           _%compile-simple110273%_
           _%compile-values110274%_))))
    (define __compile-letrec-values%
      (lambda (_%stx110068%_)
        (letrec ((_%compile-simple110070%_
                  (lambda (_%hd-ids110267%_ _%exprs110268%_ _%body110269%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp111579
                                        (map __compile-head-id
                                             _%hd-ids110267%_)))
                                   (declare (not safe))
                                   (##map list __tmp111579 _%exprs110268%_))
                                 (cons _%body110269%_ '())))
                     _%stx110068%_)))
                 (_%compile-values110071%_
                  (lambda (_%hd-ids110178%_ _%exprs110179%_ _%body110180%_)
                    (let _%lp110182%_ ((_%rest110184%_ _%hd-ids110178%_)
                                       (_%exprs110185%_ _%exprs110179%_)
                                       (_%pre110186%_ '())
                                       (_%bind110187%_ '())
                                       (_%post110188%_ '()))
                      (let* ((_%rest110189110203%_ _%rest110184%_)
                             (_%else110192110211%_
                              (lambda ()
                                (_%compile-inner110072%_
                                 _%pre110186%_
                                 _%bind110187%_
                                 _%post110188%_
                                 _%body110180%_))))
                        (let ((_%K110197110250%_
                               (lambda (_%rest110247%_ _%id110248%_)
                                 (_%lp110182%_
                                  _%rest110247%_
                                  (cdr _%exprs110185%_)
                                  _%pre110186%_
                                  (cons (cons (__compile-head-id _%id110248%_)
                                              (cons (car _%exprs110185%_) '()))
                                        _%bind110187%_)
                                  _%post110188%_)))
                              (_%K110194110232%_
                               (lambda (_%rest110215%_ _%hd110216%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110216%_))
                                     (_%lp110182%_
                                      _%rest110215%_
                                      (cdr _%exprs110185%_)
                                      _%pre110186%_
                                      (cons (cons (__compile-head-id
                                                   _%hd110216%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs110185%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind110187%_)
                                      _%post110188%_)
                                     (if (list? _%hd110216%_)
                                         (let* ((_%len110220%_
                                                 (length _%hd110216%_))
                                                (_%tmp110222%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp110182%_
                                            _%rest110215%_
                                            (cdr _%exprs110185%_)
                                            (let ((__tmp111580
                                                   (lambda (_%id110225%_
                                                            _%r110226%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id110225%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id110225%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r110226%_)
                 _%r110226%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp111580
                                               _%pre110186%_
                                               _%hd110216%_))
                                            (cons (cons _%tmp110222%_
                                                        (cons (car _%exprs110185%_)
                                                              '()))
                                                  _%bind110187%_)
                                            (cons (cons _%tmp110222%_
                                                        (cons _%len110220%_
                                                              (let ((__tmp111582
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id110228%_ _%k110229%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id110228%_))
                                   (cons (__SRC__0 _%id110228%_) _%k110229%_)
                                   '#f)))
                            (__tmp111581
                             (let ()
                               (declare (not safe))
                               (##iota _%len110220%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp111582 _%hd110216%_ __tmp111581))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post110188%_)))
                                         (__compile-error__%
                                          _%stx110068%_
                                          _%hd110216%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110189110203%_))
                              (let ((_%tl110199110255%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110189110203%_)))
                                    (_%hd110198110253%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110189110203%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110198110253%_))
                                    (let ((_%tl110201110260%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110198110253%_)))
                                          (_%hd110200110258%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110198110253%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110201110260%_))
                                          (let ((_%id110263%_
                                                 _%hd110200110258%_)
                                                (_%rest110265%_
                                                 _%tl110199110255%_))
                                            (_%K110197110250%_
                                             _%rest110265%_
                                             _%id110263%_))
                                          (let ((_%hd110240%_
                                                 _%hd110198110253%_)
                                                (_%rest110242%_
                                                 _%tl110199110255%_))
                                            (_%K110194110232%_
                                             _%rest110242%_
                                             _%hd110240%_))))
                                    (let ((_%hd110240%_ _%hd110198110253%_)
                                          (_%rest110242%_ _%tl110199110255%_))
                                      (_%K110194110232%_
                                       _%rest110242%_
                                       _%hd110240%_))))
                              (_%else110192110211%_)))))))
                 (_%compile-inner110072%_
                  (lambda (_%pre110173%_
                           _%bind110174%_
                           _%post110175%_
                           _%body110176%_)
                    (if (null? _%pre110173%_)
                        (_%compile-bind110073%_
                         _%bind110174%_
                         _%post110175%_
                         _%body110176%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre110173%_)
                                     (cons (_%compile-bind110073%_
                                            _%bind110174%_
                                            _%post110175%_
                                            _%body110176%_)
                                           '())))
                         _%stx110068%_))))
                 (_%compile-bind110073%_
                  (lambda (_%bind110169%_ _%post110170%_ _%body110171%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind110169%_)
                                 (cons (_%compile-post110074%_
                                        _%post110170%_
                                        _%body110171%_)
                                       '())))
                     _%stx110068%_)))
                 (_%compile-post110074%_
                  (lambda (_%post110076%_ _%body110077%_)
                    (let _%lp110079%_ ((_%rest110081%_ _%post110076%_)
                                       (_%check110082%_ '())
                                       (_%bind110083%_ '()))
                      (let* ((_%rest110084110096%_ _%rest110081%_)
                             (_%else110086110104%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp111583
                                              (let ((__tmp111584
                                                     (cons _%body110077%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp111584
                                                 _%bind110083%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp111583
                                          _%check110082%_)))
                                 _%stx110068%_)))
                             (_%K110088110143%_
                              (lambda (_%rest110107%_
                                       _%init110108%_
                                       _%len110109%_
                                       _%tmp110110%_)
                                (_%lp110079%_
                                 _%rest110107%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp110110%_
                                                    (cons _%len110109%_ '())))
                                        _%stx110068%_)
                                       _%check110082%_)
                                 (let ((__tmp111585
                                        (lambda (_%hd110112%_ _%r110113%_)
                                          (let* ((_%hd110114110121%_
                                                  _%hd110112%_)
                                                 (_%E110116110125%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd110114110121%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K110117110131%_
                                                  (lambda (_%k110128%_
                                                           _%id110129%_)
                                                    (cons (cons 'set!
                                                                (cons _%id110129%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##vector-ref
                                          (cons _%tmp110110%_
                                                (cons _%k110128%_ '())))
                                    '())))
                  _%r110113%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd110114110121%_))
                                                (let ((_%hd110118110134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd110114110121%_)))
                                                      (_%tl110119110136%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd110114110121%_))))
                                                  (let* ((_%id110139%_
                                                          _%hd110118110134%_)
                                                         (_%k110141%_
                                                          _%tl110119110136%_))
                                                    (_%K110117110131%_
                                                     _%k110141%_
                                                     _%id110139%_)))
                                                (_%E110116110125%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp111585
                                    _%bind110083%_
                                    _%init110108%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest110084110096%_))
                            (let ((_%hd110089110146%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest110084110096%_)))
                                  (_%tl110090110148%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest110084110096%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd110089110146%_))
                                  (let ((_%hd110091110151%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd110089110146%_)))
                                        (_%tl110092110153%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd110089110146%_))))
                                    (let ((_%tmp110156%_ _%hd110091110151%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl110092110153%_))
                                          (let ((_%hd110093110158%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl110092110153%_)))
                                                (_%tl110094110160%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl110092110153%_))))
                                            (let* ((_%len110163%_
                                                    _%hd110093110158%_)
                                                   (_%init110165%_
                                                    _%tl110094110160%_)
                                                   (_%rest110167%_
                                                    _%tl110090110148%_))
                                              (_%K110088110143%_
                                               _%rest110167%_
                                               _%init110165%_
                                               _%len110163%_
                                               _%tmp110156%_)))
                                          (_%else110086110104%_))))
                                  (_%else110086110104%_)))
                            (_%else110086110104%_)))))))
          (__compile-let-form
           _%stx110068%_
           _%compile-simple110070%_
           _%compile-values110071%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx109819%_)
        (letrec ((_%compile-simple109821%_
                  (lambda (_%hd-ids110064%_ _%exprs110065%_ _%body110066%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp111586
                                        (map __compile-head-id
                                             _%hd-ids110064%_)))
                                   (declare (not safe))
                                   (##map list __tmp111586 _%exprs110065%_))
                                 (cons _%body110066%_ '())))
                     _%stx109819%_)))
                 (_%compile-values109822%_
                  (lambda (_%hd-ids109971%_ _%exprs109972%_ _%body109973%_)
                    (let _%lp109975%_ ((_%rest109977%_ _%hd-ids109971%_)
                                       (_%exprs109978%_ _%exprs109972%_)
                                       (_%bind109979%_ '())
                                       (_%post109980%_ '()))
                      (let* ((_%rest109981109995%_ _%rest109977%_)
                             (_%else109984110003%_
                              (lambda ()
                                (_%compile-bind109823%_
                                 _%bind109979%_
                                 _%post109980%_
                                 _%body109973%_))))
                        (let ((_%K109989110047%_
                               (lambda (_%rest110042%_ _%hd110043%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110043%_))
                                     (let ((_%id110045%_
                                            (__SRC__0 _%hd110043%_)))
                                       (_%lp109975%_
                                        _%rest110042%_
                                        (cdr _%exprs109978%_)
                                        (cons (cons _%id110045%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind109979%_)
                                        (cons (cons _%id110045%_
                                                    (cons (car _%exprs109978%_)
                                                          '()))
                                              _%post109980%_)))
                                     (_%lp109975%_
                                      _%rest110042%_
                                      (cdr _%exprs109978%_)
                                      _%bind109979%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs109978%_)
                                                        '()))
                                            _%post109980%_)))))
                              (_%K109986110027%_
                               (lambda (_%rest110007%_ _%hd110008%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110008%_))
                                     (let ((_%id110011%_
                                            (__SRC__0 _%hd110008%_)))
                                       (_%lp109975%_
                                        _%rest110007%_
                                        (cdr _%exprs109978%_)
                                        (cons (cons _%id110011%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind109979%_)
                                        (cons (cons _%id110011%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs109978%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post109980%_)))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (__AST-e _%hd110008%_)))
                                         (_%lp109975%_
                                          _%rest110007%_
                                          (cdr _%exprs109978%_)
                                          _%bind109979%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs109978%_)
                                                            '()))
                                                _%post109980%_))
                                         (if (list? _%hd110008%_)
                                             (let* ((_%len110015%_
                                                     (length _%hd110008%_))
                                                    (_%tmp110017%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp109975%_
                                                _%rest110007%_
                                                (cdr _%exprs109978%_)
                                                (let ((__tmp111587
                                                       (lambda (_%id110020%_
                                                                _%r110021%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id110020%_))
                     (cons (cons (__SRC__0 _%id110020%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r110021%_)
                     _%r110021%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp111587
                                                   _%bind109979%_
                                                   _%hd110008%_))
                                                (cons (cons _%tmp110017%_
                                                            (cons (car _%exprs109978%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len110015%_
                                (let ((__tmp111589
                                       (lambda (_%id110023%_ _%k110024%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id110023%_))
                                             (cons (__SRC__0 _%id110023%_)
                                                   _%k110024%_)
                                             '#f)))
                                      (__tmp111588
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len110015%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111589
                                   _%hd110008%_
                                   __tmp111588)))))
              _%post109980%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx109819%_
                                              _%hd110008%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest109981109995%_))
                              (let ((_%tl109991110052%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest109981109995%_)))
                                    (_%hd109990110050%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest109981109995%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd109990110050%_))
                                    (let ((_%tl109993110057%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd109990110050%_)))
                                          (_%hd109992110055%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd109990110050%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl109993110057%_))
                                          (let ((_%hd110060%_
                                                 _%hd109992110055%_)
                                                (_%rest110062%_
                                                 _%tl109991110052%_))
                                            (_%K109989110047%_
                                             _%rest110062%_
                                             _%hd110060%_))
                                          (let ((_%hd110035%_
                                                 _%hd109990110050%_)
                                                (_%rest110037%_
                                                 _%tl109991110052%_))
                                            (_%K109986110027%_
                                             _%rest110037%_
                                             _%hd110035%_))))
                                    (let ((_%hd110035%_ _%hd109990110050%_)
                                          (_%rest110037%_ _%tl109991110052%_))
                                      (_%K109986110027%_
                                       _%rest110037%_
                                       _%hd110035%_))))
                              (_%else109984110003%_)))))))
                 (_%compile-bind109823%_
                  (lambda (_%bind109967%_ _%post109968%_ _%body109969%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind109967%_)
                                 (cons (_%compile-post109824%_
                                        _%post109968%_
                                        _%body109969%_)
                                       '())))
                     _%stx109819%_)))
                 (_%compile-post109824%_
                  (lambda (_%post109826%_ _%body109827%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp111590
                                  (let ((__tmp111592
                                         (lambda (_%hd109829%_ _%r109830%_)
                                           (let* ((_%hd109831109854%_
                                                   _%hd109829%_)
                                                  (_%E109835109858%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd109831109854%_
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
                                             (let ((_%K109848109952%_
                                                    (lambda (_%expr109950%_)
                                                      (cons _%expr109950%_
                                                            _%r109830%_)))
                                                   (_%K109843109930%_
                                                    (lambda (_%expr109927%_
                                                             _%id109928%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id109928%_ (cons _%expr109927%_ '())))
                     _%stx109819%_)
                    _%r109830%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K109836109897%_
                                                    (lambda (_%init109862%_
                                                             _%len109863%_
                                                             _%expr109864%_
                                                             _%tmp109865%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp109865%_
                                             (cons _%expr109864%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp109865%_
                                                    (cons _%len109863%_ '())))
                                        _%stx109819%_)
                                       (let ((__tmp111593
                                              (map (lambda (_%hd109867%_)
                                                     (let* ((_%hd109868109875%_
                                                             _%hd109867%_)
                                                            (_%E109870109879%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd109868109875%_
                                '([id . k])))
                       '#!void))
                    (_%K109871109885%_
                     (lambda (_%k109882%_ _%id109883%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id109883%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp109865%_
                                                      (cons _%k109882%_ '())))
                                          '())))
                        _%stx109819%_))))
               (if (let () (declare (not safe)) (##pair? _%hd109868109875%_))
                   (let ((_%hd109872109888%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd109868109875%_)))
                         (_%tl109873109890%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd109868109875%_))))
                     (let* ((_%id109893%_ _%hd109872109888%_)
                            (_%k109895%_ _%tl109873109890%_))
                       (_%K109871109885%_ _%k109895%_ _%id109893%_)))
                   (_%E109870109879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init109862%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp111593)))))
                     _%stx109819%_)
                    _%r109830%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match111446111447%_
                                                       (lambda (_%hd109837109900%_
                                                                _%tl109838109902%_
                                                                _%hd109839109907%_
                                                                _%tl109840109909%_)
                                                         (let ((_%tmp109905%_
                                                                _%hd109837109900%_)
                                                               (_%expr109912%_
                                                                _%hd109839109907%_))
                                                           (_%E109835109858%_))))
                                                      (_%__match111440111441%_
                                                       (lambda (_%hd109837109900%_
                                                                _%tl109838109902%_)
                                                         (let ((_%tmp109905%_
                                                                _%hd109837109900%_))
                                                           (_%E109835109858%_)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##pair? _%hd109831109854%_))
                                                     (let ((_%tl109850109957%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd109831109854%_)))
                                                           (_%hd109849109955%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd109831109854%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd109849109955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl109850109957%_))
                       (let ((_%tl109852109962%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl109850109957%_)))
                             (_%hd109851109960%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl109850109957%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl109852109962%_))
                             (let ((_%expr109965%_ _%hd109851109960%_))
                               (_%K109848109952%_ _%expr109965%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl109852109962%_))
                                 (let ((_%tl109842109916%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl109852109962%_)))
                                       (_%hd109841109914%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl109852109962%_))))
                                   (let ((_%tmp109905%_ _%hd109849109955%_)
                                         (_%expr109912%_ _%hd109851109960%_)
                                         (_%len109919%_ _%hd109841109914%_)
                                         (_%init109921%_ _%tl109842109916%_))
                                     (_%K109836109897%_
                                      _%init109921%_
                                      _%len109919%_
                                      _%expr109912%_
                                      _%tmp109905%_)))
                                 (_%__match111446111447%_
                                  _%hd109849109955%_
                                  _%tl109850109957%_
                                  _%hd109851109960%_
                                  _%tl109852109962%_))))
                       (_%__match111440111441%_
                        _%hd109849109955%_
                        _%tl109850109957%_))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl109850109957%_))
                       (let ((_%tl109847109942%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl109850109957%_)))
                             (_%hd109846109940%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl109850109957%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl109847109942%_))
                             (let ((_%id109938%_ _%hd109849109955%_)
                                   (_%expr109945%_ _%hd109846109940%_))
                               (_%K109843109930%_ _%expr109945%_ _%id109938%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl109847109942%_))
                                 (let ((_%tl109842109916%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl109847109942%_)))
                                       (_%hd109841109914%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl109847109942%_))))
                                   (let ((_%tmp109905%_ _%hd109849109955%_)
                                         (_%expr109912%_ _%hd109846109940%_)
                                         (_%len109919%_ _%hd109841109914%_)
                                         (_%init109921%_ _%tl109842109916%_))
                                     (_%K109836109897%_
                                      _%init109921%_
                                      _%len109919%_
                                      _%expr109912%_
                                      _%tmp109905%_)))
                                 (_%__match111446111447%_
                                  _%hd109849109955%_
                                  _%tl109850109957%_
                                  _%hd109846109940%_
                                  _%tl109847109942%_))))
                       (_%__match111440111441%_
                        _%hd109849109955%_
                        _%tl109850109957%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E109835109858%_)))))))
                                        (__tmp111591 (list _%body109827%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp111592
                                     __tmp111591
                                     _%post109826%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp111590)))
                     _%stx109819%_))))
          (__compile-let-form
           _%stx109819%_
           _%compile-simple109821%_
           _%compile-values109822%_))))
    (define __compile-call%
      (lambda (_%stx109779%_)
        (let* ((_%$e109781%_ _%stx109779%_)
               (_%$E109783109792%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109781%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109781%_))
              (let* ((_%$tgt109784109795%_
                      (let () (declare (not safe)) (__AST-e _%$e109781%_)))
                     (_%$hd109785109798%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109784109795%_)))
                     (_%$tl109786109801%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109784109795%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109786109801%_))
                    (let* ((_%$tgt109787109805%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109786109801%_)))
                           (_%$hd109788109808%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109787109805%_)))
                           (_%$tl109789109811%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109787109805%_)))
                           (_%rator109815%_ _%$hd109788109808%_)
                           (_%rands109817%_ _%$tl109789109811%_))
                      (__SRC__%
                       (cons (__compile _%rator109815%_)
                             (map __compile _%rands109817%_))
                       _%stx109779%_))
                    (_%$E109783109792%_)))
              (_%$E109783109792%_)))))
    (define __compile-ref%
      (lambda (_%stx109741%_)
        (let* ((_%$e109743%_ _%stx109741%_)
               (_%$E109745109754%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109743%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109743%_))
              (let* ((_%$tgt109746109757%_
                      (let () (declare (not safe)) (__AST-e _%$e109743%_)))
                     (_%$hd109747109760%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109746109757%_)))
                     (_%$tl109748109763%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109746109757%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109748109763%_))
                    (let* ((_%$tgt109749109767%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109748109763%_)))
                           (_%$hd109750109770%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109749109767%_)))
                           (_%$tl109751109773%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109749109767%_)))
                           (_%id109777%_ _%$hd109750109770%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109751109773%_))
                                  '())
                          (__SRC__% _%id109777%_ _%stx109741%_)
                          (_%$E109745109754%_)))
                    (_%$E109745109754%_)))
              (_%$E109745109754%_)))))
    (define __compile-setq%
      (lambda (_%stx109688%_)
        (let* ((_%$e109690%_ _%stx109688%_)
               (_%$E109692109704%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109690%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109690%_))
              (let* ((_%$tgt109693109707%_
                      (let () (declare (not safe)) (__AST-e _%$e109690%_)))
                     (_%$hd109694109710%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109693109707%_)))
                     (_%$tl109695109713%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109693109707%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109695109713%_))
                    (let* ((_%$tgt109696109717%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109695109713%_)))
                           (_%$hd109697109720%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109696109717%_)))
                           (_%$tl109698109723%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109696109717%_)))
                           (_%id109727%_ _%$hd109697109720%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl109698109723%_))
                          (let* ((_%$tgt109699109729%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109698109723%_)))
                                 (_%$hd109700109732%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt109699109729%_)))
                                 (_%$tl109701109735%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt109699109729%_)))
                                 (_%expr109739%_ _%$hd109700109732%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl109701109735%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id109727%_
                                              _%stx109688%_)
                                             (cons (__compile _%expr109739%_)
                                                   '())))
                                 _%stx109688%_)
                                (_%$E109692109704%_)))
                          (_%$E109692109704%_)))
                    (_%$E109692109704%_)))
              (_%$E109692109704%_)))))
    (define __compile-if%
      (lambda (_%stx109620%_)
        (let* ((_%$e109622%_ _%stx109620%_)
               (_%$E109624109639%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109622%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109622%_))
              (let* ((_%$tgt109625109642%_
                      (let () (declare (not safe)) (__AST-e _%$e109622%_)))
                     (_%$hd109626109645%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109625109642%_)))
                     (_%$tl109627109648%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109625109642%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109627109648%_))
                    (let* ((_%$tgt109628109652%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109627109648%_)))
                           (_%$hd109629109655%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109628109652%_)))
                           (_%$tl109630109658%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109628109652%_)))
                           (_%p109662%_ _%$hd109629109655%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl109630109658%_))
                          (let* ((_%$tgt109631109664%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109630109658%_)))
                                 (_%$hd109632109667%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt109631109664%_)))
                                 (_%$tl109633109670%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt109631109664%_)))
                                 (_%t109674%_ _%$hd109632109667%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl109633109670%_))
                                (let* ((_%$tgt109634109676%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl109633109670%_)))
                                       (_%$hd109635109679%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt109634109676%_)))
                                       (_%$tl109636109682%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt109634109676%_)))
                                       (_%f109686%_ _%$hd109635109679%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl109636109682%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p109662%_)
                                                   (cons (__compile
                                                          _%t109674%_)
                                                         (cons (__compile
                                                                _%f109686%_)
                                                               '()))))
                                       _%stx109620%_)
                                      (_%$E109624109639%_)))
                                (_%$E109624109639%_)))
                          (_%$E109624109639%_)))
                    (_%$E109624109639%_)))
              (_%$E109624109639%_)))))
    (define __compile-quote%
      (lambda (_%stx109582%_)
        (let* ((_%$e109584%_ _%stx109582%_)
               (_%$E109586109595%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109584%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109584%_))
              (let* ((_%$tgt109587109598%_
                      (let () (declare (not safe)) (__AST-e _%$e109584%_)))
                     (_%$hd109588109601%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109587109598%_)))
                     (_%$tl109589109604%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109587109598%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109589109604%_))
                    (let* ((_%$tgt109590109608%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109589109604%_)))
                           (_%$hd109591109611%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109590109608%_)))
                           (_%$tl109592109614%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109590109608%_)))
                           (_%e109618%_ _%$hd109591109611%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109592109614%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e109618%_))
                                       '()))
                           _%stx109582%_)
                          (_%$E109586109595%_)))
                    (_%$E109586109595%_)))
              (_%$E109586109595%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx109544%_)
        (let* ((_%$e109546%_ _%stx109544%_)
               (_%$E109548109557%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109546%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109546%_))
              (let* ((_%$tgt109549109560%_
                      (let () (declare (not safe)) (__AST-e _%$e109546%_)))
                     (_%$hd109550109563%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109549109560%_)))
                     (_%$tl109551109566%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109549109560%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109551109566%_))
                    (let* ((_%$tgt109552109570%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109551109566%_)))
                           (_%$hd109553109573%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109552109570%_)))
                           (_%$tl109554109576%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109552109570%_)))
                           (_%e109580%_ _%$hd109553109573%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109554109576%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e109580%_ '()))
                           _%stx109544%_)
                          (_%$E109548109557%_)))
                    (_%$E109548109557%_)))
              (_%$E109548109557%_)))))
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
