(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1712836657)
  (begin
    (define __syntax::t
      (let ((__tmp113034 (list)) (__tmp113033 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp113034
         '(e id)
         __tmp113033
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args112838%_
        (apply make-instance __syntax::t _%$args112838%_)))
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
      (let ((__tmp113036 (list __syntax::t))
            (__tmp113035 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp113036
         '()
         __tmp113035
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args112835%_
        (apply make-instance __core-form::t _%$args112835%_)))
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
      (let ((__tmp113038 (list __core-form::t))
            (__tmp113037 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp113038
         '()
         __tmp113037
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args112832%_
        (apply make-instance __core-expression::t _%$args112832%_)))
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
      (let ((__tmp113040 (list __core-form::t))
            (__tmp113039 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp113040
         '()
         __tmp113039
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args112829%_
        (apply make-instance __core-special-form::t _%$args112829%_)))
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
      (lambda (_%id112827%_)
        (let ((__tmp113041
               (let () (declare (not safe)) (__AST-e _%id112827%_))))
          (declare (not safe))
          (hash-get __core __tmp113041))))
    (define __core-bound-id?__%
      (lambda (_%id112810%_ _%is?112811%_)
        (let ((_%$e112813%_ (__core-resolve _%id112810%_)))
          (if _%$e112813%_ (_%is?112811%_ _%$e112813%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id112820%_)
        (let ((_%is?112822%_ true))
          (__core-bound-id?__% _%id112820%_ _%is?112822%_))))
    (define __core-bound-id?
      (lambda _g113043_
        (let ((_g113042_ (let () (declare (not safe)) (##length _g113043_))))
          (cond ((let () (declare (not safe)) (##fx= _g113042_ 1))
                 (apply __core-bound-id?__0 _g113043_))
                ((let () (declare (not safe)) (##fx= _g113042_ 2))
                 (apply __core-bound-id?__% _g113043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g113043_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id112793%_ _%e112794%_ _%make112795%_)
        (let ((__tmp113044
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e112794%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e112794%_
                   (_%make112795%_ _%e112794%_ _%id112793%_))))
          (declare (not safe))
          (hash-put! __core _%id112793%_ __tmp113044))))
    (define __core-bind-syntax!__0
      (lambda (_%id112800%_ _%e112801%_)
        (let ((_%make112803%_ make-__syntax))
          (__core-bind-syntax!__% _%id112800%_ _%e112801%_ _%make112803%_))))
    (define __core-bind-syntax!
      (lambda _g113046_
        (let ((_g113045_ (let () (declare (not safe)) (##length _g113046_))))
          (cond ((let () (declare (not safe)) (##fx= _g113045_ 2))
                 (apply __core-bind-syntax!__0 _g113046_))
                ((let () (declare (not safe)) (##fx= _g113045_ 3))
                 (apply __core-bind-syntax!__% _g113046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g113046_))))))
    (define __SRC__%
      (lambda (_%e112773%_ _%src-stx112774%_)
        (if (or (pair? _%e112773%_) (symbol? _%e112773%_))
            (let ((__tmp113047
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx112774%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx112774%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e112773%_ __tmp113047))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e112773%_ 'gerbil#AST::t))
                (let ((__tmp113049
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e112773%_ '1 '#f '#f)))
                      (__tmp113048
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e112773%_)))))
                  (declare (not safe))
                  (##make-source __tmp113049 __tmp113048))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e112773%_))))))
    (define __SRC__0
      (lambda (_%e112785%_)
        (let ((_%src-stx112787%_ '#f))
          (__SRC__% _%e112785%_ _%src-stx112787%_))))
    (define __SRC
      (lambda _g113051_
        (let ((_g113050_ (let () (declare (not safe)) (##length _g113051_))))
          (cond ((let () (declare (not safe)) (##fx= _g113050_ 1))
                 (apply __SRC__0 _g113051_))
                ((let () (declare (not safe)) (##fx= _g113050_ 2))
                 (apply __SRC__% _g113051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g113051_))))))
    (define __locat
      (lambda (_%loc112770%_)
        (if (let () (declare (not safe)) (##locat? _%loc112770%_))
            _%loc112770%_
            '#f)))
    (define __check-values
      (lambda (_%obj112765%_ _%k112766%_)
        (let ((_%count112768%_
               (if (let () (declare (not safe)) (##values? _%obj112765%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj112765%_))
                   '1)))
          (if (fx= _%count112768%_ _%k112766%_)
              '#!void
              (let ((__tmp113053
                     (if (fx< _%count112768%_ _%k112766%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp113052
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj112765%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj112765%_))
                         _%obj112765%_)))
                (declare (not safe))
                (error __tmp113053 __tmp113052 _%k112766%_))))))
    (define __compile
      (lambda (_%stx112734%_)
        (let* ((_%$e112736%_ _%stx112734%_)
               (_%$E112738112744%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112736%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112736%_))
              (let* ((_%$tgt112739112747%_
                      (let () (declare (not safe)) (__AST-e _%$e112736%_)))
                     (_%$hd112740112750%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112739112747%_)))
                     (_%$tl112741112753%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112739112747%_)))
                     (_%form112757%_ _%$hd112740112750%_)
                     (_%$e112759%_ (__core-resolve _%form112757%_)))
                (if _%$e112759%_
                    ((lambda (_%bind112762%_)
                       ((##structure-ref _%bind112762%_ '1 __syntax::t '#f)
                        _%stx112734%_))
                     _%$e112759%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx112734%_
                       _%form112757%_))))
              (_%$E112738112744%_)))))
    (define __compile-error__%
      (lambda (_%stx112721%_ _%detail112722%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx112721%_
           _%detail112722%_))))
    (define __compile-error__0
      (lambda (_%stx112727%_)
        (let ((_%detail112729%_ '#f))
          (__compile-error__% _%stx112727%_ _%detail112729%_))))
    (define __compile-error
      (lambda _g113055_
        (let ((_g113054_ (let () (declare (not safe)) (##length _g113055_))))
          (cond ((let () (declare (not safe)) (##fx= _g113054_ 1))
                 (apply __compile-error__0 _g113055_))
                ((let () (declare (not safe)) (##fx= _g113054_ 2))
                 (apply __compile-error__% _g113055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g113055_))))))
    (define __compile-ignore%
      (lambda (_%stx112718%_) (__SRC__% ''#!void _%stx112718%_)))
    (define __compile-begin%
      (lambda (_%stx112693%_)
        (let* ((_%$e112695%_ _%stx112693%_)
               (_%$E112697112703%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112695%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112695%_))
              (let* ((_%$tgt112698112706%_
                      (let () (declare (not safe)) (__AST-e _%$e112695%_)))
                     (_%$hd112699112709%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112698112706%_)))
                     (_%$tl112700112712%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112698112706%_)))
                     (_%body112716%_ _%$tl112700112712%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body112716%_))
                 _%stx112693%_))
              (_%$E112697112703%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx112668%_)
        (let* ((_%$e112670%_ _%stx112668%_)
               (_%$E112672112678%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112670%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112670%_))
              (let* ((_%$tgt112673112681%_
                      (let () (declare (not safe)) (__AST-e _%$e112670%_)))
                     (_%$hd112674112684%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112673112681%_)))
                     (_%$tl112675112687%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112673112681%_)))
                     (_%body112691%_ _%$tl112675112687%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body112691%_)))
                 _%stx112668%_))
              (_%$E112672112678%_)))))
    (define __compile-import%
      (lambda (_%stx112643%_)
        (let* ((_%$e112645%_ _%stx112643%_)
               (_%$E112647112653%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112645%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112645%_))
              (let* ((_%$tgt112648112656%_
                      (let () (declare (not safe)) (__AST-e _%$e112645%_)))
                     (_%$hd112649112659%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112648112656%_)))
                     (_%$tl112650112662%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112648112656%_)))
                     (_%body112666%_ _%$tl112650112662%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body112666%_ '())) '()))
                 _%stx112643%_))
              (_%$E112647112653%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx112590%_)
        (let* ((_%$e112592%_ _%stx112590%_)
               (_%$E112594112606%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112592%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112592%_))
              (let* ((_%$tgt112595112609%_
                      (let () (declare (not safe)) (__AST-e _%$e112592%_)))
                     (_%$hd112596112612%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112595112609%_)))
                     (_%$tl112597112615%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112595112609%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112597112615%_))
                    (let* ((_%$tgt112598112619%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112597112615%_)))
                           (_%$hd112599112622%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112598112619%_)))
                           (_%$tl112600112625%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112598112619%_)))
                           (_%ann112629%_ _%$hd112599112622%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl112600112625%_))
                          (let* ((_%$tgt112601112631%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112600112625%_)))
                                 (_%$hd112602112634%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112601112631%_)))
                                 (_%$tl112603112637%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112601112631%_)))
                                 (_%expr112641%_ _%$hd112602112634%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112603112637%_))
                                        '())
                                (__compile _%expr112641%_)
                                (_%$E112594112606%_)))
                          (_%$E112594112606%_)))
                    (_%$E112594112606%_)))
              (_%$E112594112606%_)))))
    (define __compile-define-values%
      (lambda (_%stx112481%_)
        (let* ((_%$e112483%_ _%stx112481%_)
               (_%$E112485112497%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112483%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112483%_))
              (let* ((_%$tgt112486112500%_
                      (let () (declare (not safe)) (__AST-e _%$e112483%_)))
                     (_%$hd112487112503%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112486112500%_)))
                     (_%$tl112488112506%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112486112500%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112488112506%_))
                    (let* ((_%$tgt112489112510%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112488112506%_)))
                           (_%$hd112490112513%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112489112510%_)))
                           (_%$tl112491112516%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112489112510%_)))
                           (_%hd112520%_ _%$hd112490112513%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl112491112516%_))
                          (let* ((_%$tgt112492112522%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112491112516%_)))
                                 (_%$hd112493112525%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112492112522%_)))
                                 (_%$tl112494112528%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112492112522%_)))
                                 (_%expr112532%_ _%$hd112493112525%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112494112528%_))
                                        '())
                                (let* ((_%$e112534%_ _%hd112520%_)
                                       (_%$E112536112577%_
                                        (lambda ()
                                          (let ((_%$E112537112562%_
                                                 (lambda ()
                                                   (let* ((_%$E112538112549%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e112534%_))))
                  (_%ids112552%_ _%hd112520%_)
                  (_%len112554%_ (length _%ids112552%_))
                  (_%tmp112556%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp112556%_
                                       (cons (__compile _%expr112532%_) '())))
                           _%stx112481%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp112556%_
                                             (cons _%len112554%_ '())))
                                 _%stx112481%_)
                                (let ((__tmp113056
                                       (let ((__tmp113058
                                              (lambda (_%id112559%_
                                                       _%k112560%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id112559%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id112559%_)
                         (cons (cons '##vector-ref
                                     (cons _%tmp112556%_
                                           (cons _%k112560%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx112481%_)
                                                    '#f)))
                                             (__tmp113057
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len112554%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp113058
                                          _%ids112552%_
                                          __tmp113057))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp113056)))))
              _%stx112481%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e112534%_))
                                                (let* ((_%$tgt112539112565%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e112534%_)))
                                                       (_%$hd112540112568%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt112539112565%_)))
                                                       (_%$tl112541112571%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt112539112565%_)))
                                                       (_%id112575%_
                                                        _%$hd112540112568%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl112541112571%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id112575%_)
                           (cons (__compile _%expr112532%_) '())))
               _%stx112481%_)
              (_%$E112537112562%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E112537112562%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e112534%_))
                                      (let* ((_%$tgt112542112580%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e112534%_)))
                                             (_%$hd112543112583%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt112542112580%_)))
                                             (_%$tl112544112586%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt112542112580%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd112543112583%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl112544112586%_))
                                                        '())
                                                (__compile _%expr112532%_)
                                                (_%$E112536112577%_))
                                            (_%$E112536112577%_)))
                                      (_%$E112536112577%_)))
                                (_%$E112485112497%_)))
                          (_%$E112485112497%_)))
                    (_%$E112485112497%_)))
              (_%$E112485112497%_)))))
    (define __compile-head-id
      (lambda (_%e112479%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e112479%_))
             _%e112479%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd112436%_)
        (let _%recur112438%_ ((_%rest112440%_ _%hd112436%_))
          (let* ((_%$e112442%_ _%rest112440%_)
                 (_%$E112444112462%_
                  (lambda ()
                    (let ((_%$E112445112459%_
                           (lambda ()
                             (let* ((_%$E112446112454%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e112442%_))))
                                    (_%tail112457%_ _%$e112442%_))
                               (__compile-head-id _%tail112457%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112442%_))
                                  '())
                          '()
                          (_%$E112445112459%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e112442%_))
                (let* ((_%$tgt112447112465%_
                        (let () (declare (not safe)) (__AST-e _%$e112442%_)))
                       (_%$hd112448112468%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt112447112465%_)))
                       (_%$tl112449112471%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt112447112465%_)))
                       (_%hd112475%_ _%$hd112448112468%_)
                       (_%rest112477%_ _%$tl112449112471%_))
                  (cons (__compile-head-id _%hd112475%_)
                        (_%recur112438%_ _%rest112477%_)))
                (_%$E112444112462%_))))))
    (define __compile-lambda%
      (lambda (_%stx112383%_)
        (let* ((_%$e112385%_ _%stx112383%_)
               (_%$E112387112399%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e112385%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e112385%_))
              (let* ((_%$tgt112388112402%_
                      (let () (declare (not safe)) (__AST-e _%$e112385%_)))
                     (_%$hd112389112405%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt112388112402%_)))
                     (_%$tl112390112408%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt112388112402%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl112390112408%_))
                    (let* ((_%$tgt112391112412%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl112390112408%_)))
                           (_%$hd112392112415%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt112391112412%_)))
                           (_%$tl112393112418%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt112391112412%_)))
                           (_%hd112422%_ _%$hd112392112415%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl112393112418%_))
                          (let* ((_%$tgt112394112424%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl112393112418%_)))
                                 (_%$hd112395112427%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112394112424%_)))
                                 (_%$tl112396112430%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112394112424%_)))
                                 (_%body112434%_ _%$hd112395112427%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl112396112430%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd112422%_)
                                             (cons (__compile _%body112434%_)
                                                   '())))
                                 _%stx112383%_)
                                (_%$E112387112399%_)))
                          (_%$E112387112399%_)))
                    (_%$E112387112399%_)))
              (_%$E112387112399%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx112175%_)
        (letrec ((_%variadic?112177%_
                  (lambda (_%hd112348%_)
                    (let* ((_%$e112350%_ _%hd112348%_)
                           (_%$E112352112368%_
                            (lambda ()
                              (let ((_%$E112353112365%_
                                     (lambda ()
                                       (let ((_%$E112354112362%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e112350%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e112350%_))
                                            '())
                                    '#f
                                    (_%$E112353112365%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112350%_))
                          (let* ((_%$tgt112355112371%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112350%_)))
                                 (_%$hd112356112374%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112355112371%_)))
                                 (_%$tl112357112377%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112355112371%_)))
                                 (_%rest112381%_ _%$tl112357112377%_))
                            (_%variadic?112177%_ _%rest112381%_))
                          (_%$E112352112368%_)))))
                 (_%arity112178%_
                  (lambda (_%hd112313%_)
                    (let _%lp112315%_ ((_%rest112317%_ _%hd112313%_)
                                       (_%k112318%_ '0))
                      (let* ((_%$e112320%_ _%rest112317%_)
                             (_%$E112322112333%_
                              (lambda ()
                                (let ((_%$E112323112330%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e112320%_)))))
                                  _%k112318%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e112320%_))
                            (let* ((_%$tgt112324112336%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e112320%_)))
                                   (_%$hd112325112339%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt112324112336%_)))
                                   (_%$tl112326112342%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt112324112336%_)))
                                   (_%rest112346%_ _%$tl112326112342%_))
                              (_%lp112315%_
                               _%rest112346%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k112318%_ '1))))
                            (_%$E112322112333%_))))))
                 (_%generate112179%_
                  (lambda (_%rest112240%_ _%args112241%_ _%len112242%_)
                    (let* ((_%$e112244%_ _%rest112240%_)
                           (_%$E112246112257%_
                            (lambda ()
                              (let ((_%$E112247112254%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e112244%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args112241%_ '())))
                                 _%stx112175%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112244%_))
                          (let* ((_%$tgt112248112260%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112244%_)))
                                 (_%$hd112249112263%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112248112260%_)))
                                 (_%$tl112250112266%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112248112260%_)))
                                 (_%clause112270%_ _%$hd112249112263%_)
                                 (_%rest112272%_ _%$tl112250112266%_)
                                 (_%$e112274%_ _%clause112270%_)
                                 (_%$E112276112285%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e112274%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e112274%_))
                                (let* ((_%$tgt112277112288%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e112274%_)))
                                       (_%$hd112278112291%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt112277112288%_)))
                                       (_%$tl112279112294%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt112277112288%_)))
                                       (_%hd112298%_ _%$hd112278112291%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl112279112294%_))
                                      (let* ((_%$tgt112280112300%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl112279112294%_)))
                                             (_%$hd112281112303%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt112280112300%_)))
                                             (_%$tl112282112306%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt112280112300%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl112282112306%_))
                                                    '())
                                            (let ((_%clen112310%_
                                                   (_%arity112178%_
                                                    _%hd112298%_))
                                                  (_%cmp112311%_
                                                   (if (_%variadic?112177%_
                                                        _%hd112298%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp112311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len112242%_ (cons _%clen112310%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause112270%_))
                                      (cons _%args112241%_ '())))
                          _%stx112175%_)
                         (cons (_%generate112179%_
                                _%rest112272%_
                                _%args112241%_
                                _%len112242%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx112175%_))
                                            (_%$E112276112285%_)))
                                      (_%$E112276112285%_)))
                                (_%$E112276112285%_)))
                          (_%$E112246112257%_))))))
          (let* ((_%$e112181%_ _%stx112175%_)
                 (_%$E112183112215%_
                  (lambda ()
                    (let ((_%$E112184112197%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112181%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e112181%_))
                          (let* ((_%$tgt112185112200%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e112181%_)))
                                 (_%$hd112186112203%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt112185112200%_)))
                                 (_%$tl112187112206%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt112185112200%_)))
                                 (_%clauses112210%_ _%$tl112187112206%_))
                            (let ((_%args112212%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx112175%_))
                                  (_%len112213%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx112175%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args112212%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len112213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args112212%_ '()))
                                         _%stx112175%_)
                                        '()))
                            '())
                      (cons (_%generate112179%_
                             _%clauses112210%_
                             _%args112212%_
                             _%len112213%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx112175%_)
                                                 '())))
                               _%stx112175%_)))
                          (_%$E112184112197%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e112181%_))
                (let* ((_%$tgt112188112218%_
                        (let () (declare (not safe)) (__AST-e _%$e112181%_)))
                       (_%$hd112189112221%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt112188112218%_)))
                       (_%$tl112190112224%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt112188112218%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl112190112224%_))
                      (let* ((_%$tgt112191112228%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl112190112224%_)))
                             (_%$hd112192112231%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt112191112228%_)))
                             (_%$tl112193112234%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt112191112228%_)))
                             (_%clause112238%_ _%$hd112192112231%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl112193112234%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause112238%_))
                            (_%$E112183112215%_)))
                      (_%$E112183112215%_)))
                (_%$E112183112215%_))))))
    (define __compile-let-form
      (lambda (_%stx111944%_ _%compile-simple111945%_ _%compile-values111946%_)
        (letrec ((_%simple-bind?111948%_
                  (lambda (_%hd112133%_)
                    (let* ((_%hd112134112144%_ _%hd112133%_)
                           (_%else112137112152%_ (lambda () '#f)))
                      (let ((_%K112140112165%_ (lambda (_%id112163%_) '#t))
                            (_%K112139112157%_ (lambda () '#t)))
                        (let ((_%try-match112136112160%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd112134112144%_ '#f))
                                     (_%K112139112157%_)
                                     (_%else112137112152%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd112134112144%_))
                              (let ((_%tl112142112170%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd112134112144%_)))
                                    (_%hd112141112168%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd112134112144%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl112142112170%_))
                                    (let ((_%id112173%_ _%hd112141112168%_))
                                      (_%K112140112165%_ _%id112173%_))
                                    (_%try-match112136112160%_)))
                              (_%try-match112136112160%_)))))))
                 (_%car-e111949%_
                  (lambda (_%hd112131%_)
                    (if (pair? _%hd112131%_)
                        (let () (declare (not safe)) (##car _%hd112131%_))
                        _%hd112131%_))))
          (let* ((_%$e111951%_ _%stx111944%_)
                 (_%$E111953112096%_
                  (lambda ()
                    (let ((_%$E111954111976%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e111951%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e111951%_))
                          (let* ((_%$tgt111955111979%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111951%_)))
                                 (_%$hd111956111982%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111955111979%_)))
                                 (_%$tl111957111985%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111955111979%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl111957111985%_))
                                (let* ((_%$tgt111958111989%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111957111985%_)))
                                       (_%$hd111959111992%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt111958111989%_)))
                                       (_%$tl111960111995%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt111958111989%_)))
                                       (_%hd111999%_ _%$hd111959111992%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl111960111995%_))
                                      (let* ((_%$tgt111961112001%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl111960111995%_)))
                                             (_%$hd111962112004%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt111961112001%_)))
                                             (_%$tl111963112007%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt111961112001%_)))
                                             (_%body112011%_
                                              _%$hd111962112004%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl111963112007%_))
                                                    '())
                                            (let* ((_%hd-ids112051%_
                                                    (map (lambda (_%bind112013%_)
                                                           (let* ((_%$e112015%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind112013%_)
                          (_%$E112017112026%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112015%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e112015%_))
                         (let* ((_%$tgt112018112029%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e112015%_)))
                                (_%$hd112019112032%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt112018112029%_)))
                                (_%$tl112020112035%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt112018112029%_)))
                                (_%ids112039%_ _%$hd112019112032%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl112020112035%_))
                               (let* ((_%$tgt112021112041%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl112020112035%_)))
                                      (_%$hd112022112044%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt112021112041%_)))
                                      (_%$tl112023112047%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt112021112041%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl112023112047%_))
                                             '())
                                     _%ids112039%_
                                     (_%$E112017112026%_)))
                               (_%$E112017112026%_)))
                         (_%$E112017112026%_))))
                 _%hd111999%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs112091%_
                                                    (map (lambda (_%bind112053%_)
                                                           (let* ((_%$e112055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind112053%_)
                          (_%$E112057112066%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e112055%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e112055%_))
                         (let* ((_%$tgt112058112069%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e112055%_)))
                                (_%$hd112059112072%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt112058112069%_)))
                                (_%$tl112060112075%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt112058112069%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl112060112075%_))
                               (let* ((_%$tgt112061112079%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl112060112075%_)))
                                      (_%$hd112062112082%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt112061112079%_)))
                                      (_%$tl112063112085%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt112061112079%_)))
                                      (_%expr112089%_ _%$hd112062112082%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl112063112085%_))
                                             '())
                                     (__compile _%expr112089%_)
                                     (_%$E112057112066%_)))
                               (_%$E112057112066%_)))
                         (_%$E112057112066%_))))
                 _%hd111999%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body112093%_
                                                    (__compile
                                                     _%body112011%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?111948%_
                                                     _%hd-ids112051%_))
                                                  (_%compile-simple111945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e111949%_
                                                            _%hd-ids112051%_))
                                                   _%exprs112091%_
                                                   _%body112093%_)
                                                  (_%compile-values111946%_
                                                   _%hd-ids112051%_
                                                   _%exprs112091%_
                                                   _%body112093%_)))
                                            (_%$E111954111976%_)))
                                      (_%$E111954111976%_)))
                                (_%$E111954111976%_)))
                          (_%$E111954111976%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e111951%_))
                (let* ((_%$tgt111964112099%_
                        (let () (declare (not safe)) (__AST-e _%$e111951%_)))
                       (_%$hd111965112102%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt111964112099%_)))
                       (_%$tl111966112105%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt111964112099%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl111966112105%_))
                      (let* ((_%$tgt111967112109%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl111966112105%_)))
                             (_%$hd111968112112%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt111967112109%_)))
                             (_%$tl111969112115%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt111967112109%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd111968112112%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl111969112115%_))
                                (let* ((_%$tgt111970112119%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111969112115%_)))
                                       (_%$hd111971112122%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt111970112119%_)))
                                       (_%$tl111972112125%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt111970112119%_)))
                                       (_%body112129%_ _%$hd111971112122%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl111972112125%_))
                                              '())
                                      (__compile _%body112129%_)
                                      (_%$E111953112096%_)))
                                (_%$E111953112096%_))
                            (_%$E111953112096%_)))
                      (_%$E111953112096%_)))
                (_%$E111953112096%_))))))
    (define __compile-let-values%
      (lambda (_%stx111756%_)
        (letrec ((_%compile-simple111758%_
                  (lambda (_%hd-ids111940%_ _%exprs111941%_ _%body111942%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp113059
                                        (map __compile-head-id
                                             _%hd-ids111940%_)))
                                   (declare (not safe))
                                   (##map list __tmp113059 _%exprs111941%_))
                                 (cons _%body111942%_ '())))
                     _%stx111756%_)))
                 (_%compile-values111759%_
                  (lambda (_%hd-ids111855%_ _%exprs111856%_ _%body111857%_)
                    (let _%lp111859%_ ((_%rest111861%_ _%hd-ids111855%_)
                                       (_%exprs111862%_ _%exprs111856%_)
                                       (_%bind111863%_ '())
                                       (_%post111864%_ '()))
                      (let* ((_%rest111865111879%_ _%rest111861%_)
                             (_%else111868111887%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind111863%_)
                                             (cons (_%compile-post111760%_
                                                    _%post111864%_
                                                    _%body111857%_)
                                                   '())))
                                 _%stx111756%_))))
                        (let ((_%K111873111923%_
                               (lambda (_%rest111920%_ _%id111921%_)
                                 (_%lp111859%_
                                  _%rest111920%_
                                  (cdr _%exprs111862%_)
                                  (cons (cons (__compile-head-id _%id111921%_)
                                              (cons (car _%exprs111862%_) '()))
                                        _%bind111863%_)
                                  _%post111864%_)))
                              (_%K111870111905%_
                               (lambda (_%rest111891%_ _%hd111892%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd111892%_))
                                     (_%lp111859%_
                                      _%rest111891%_
                                      (cdr _%exprs111862%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd111892%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs111862%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind111863%_)
                                      _%post111864%_)
                                     (if (list? _%hd111892%_)
                                         (let* ((_%len111896%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd111892%_)))
                                                (_%tmp111898%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp111859%_
                                            _%rest111891%_
                                            (cdr _%exprs111862%_)
                                            (cons (cons _%tmp111898%_
                                                        (cons (car _%exprs111862%_)
                                                              '()))
                                                  _%bind111863%_)
                                            (cons (cons _%tmp111898%_
                                                        (cons _%len111896%_
                                                              (let ((__tmp113061
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id111901%_ _%k111902%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id111901%_))
                                   (cons (__SRC__0 _%id111901%_) _%k111902%_)
                                   '#f)))
                            (__tmp113060
                             (let ()
                               (declare (not safe))
                               (##iota _%len111896%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp113061 _%hd111892%_ __tmp113060))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post111864%_)))
                                         (__compile-error__%
                                          _%stx111756%_
                                          _%hd111892%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest111865111879%_))
                              (let ((_%tl111875111928%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest111865111879%_)))
                                    (_%hd111874111926%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest111865111879%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd111874111926%_))
                                    (let ((_%tl111877111933%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd111874111926%_)))
                                          (_%hd111876111931%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd111874111926%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl111877111933%_))
                                          (let ((_%id111936%_
                                                 _%hd111876111931%_)
                                                (_%rest111938%_
                                                 _%tl111875111928%_))
                                            (_%K111873111923%_
                                             _%rest111938%_
                                             _%id111936%_))
                                          (let ((_%hd111913%_
                                                 _%hd111874111926%_)
                                                (_%rest111915%_
                                                 _%tl111875111928%_))
                                            (_%K111870111905%_
                                             _%rest111915%_
                                             _%hd111913%_))))
                                    (let ((_%hd111913%_ _%hd111874111926%_)
                                          (_%rest111915%_ _%tl111875111928%_))
                                      (_%K111870111905%_
                                       _%rest111915%_
                                       _%hd111913%_))))
                              (_%else111868111887%_)))))))
                 (_%compile-post111760%_
                  (lambda (_%post111762%_ _%body111763%_)
                    (let _%lp111765%_ ((_%rest111767%_ _%post111762%_)
                                       (_%check111768%_ '())
                                       (_%bind111769%_ '()))
                      (let* ((_%rest111770111782%_ _%rest111767%_)
                             (_%else111772111790%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp113062
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind111769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body111763%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx111756%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp113062
                                          _%check111768%_)))
                                 _%stx111756%_)))
                             (_%K111774111829%_
                              (lambda (_%rest111793%_
                                       _%init111794%_
                                       _%len111795%_
                                       _%tmp111796%_)
                                (_%lp111765%_
                                 _%rest111793%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp111796%_
                                                    (cons _%len111795%_ '())))
                                        _%stx111756%_)
                                       _%check111768%_)
                                 (let ((__tmp113063
                                        (lambda (_%hd111798%_ _%r111799%_)
                                          (let* ((_%hd111800111807%_
                                                  _%hd111798%_)
                                                 (_%E111802111811%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd111800111807%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K111803111817%_
                                                  (lambda (_%k111814%_
                                                           _%id111815%_)
                                                    (cons (cons _%id111815%_
                                                                (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp111796%_
                                          (cons _%k111814%_ '())))
                              '()))
                  _%r111799%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd111800111807%_))
                                                (let ((_%hd111804111820%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd111800111807%_)))
                                                      (_%tl111805111822%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd111800111807%_))))
                                                  (let* ((_%id111825%_
                                                          _%hd111804111820%_)
                                                         (_%k111827%_
                                                          _%tl111805111822%_))
                                                    (_%K111803111817%_
                                                     _%k111827%_
                                                     _%id111825%_)))
                                                (_%E111802111811%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp113063
                                    _%bind111769%_
                                    _%init111794%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest111770111782%_))
                            (let ((_%hd111775111832%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest111770111782%_)))
                                  (_%tl111776111834%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest111770111782%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd111775111832%_))
                                  (let ((_%hd111777111837%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd111775111832%_)))
                                        (_%tl111778111839%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd111775111832%_))))
                                    (let ((_%tmp111842%_ _%hd111777111837%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl111778111839%_))
                                          (let ((_%hd111779111844%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl111778111839%_)))
                                                (_%tl111780111846%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl111778111839%_))))
                                            (let* ((_%len111849%_
                                                    _%hd111779111844%_)
                                                   (_%init111851%_
                                                    _%tl111780111846%_)
                                                   (_%rest111853%_
                                                    _%tl111776111834%_))
                                              (_%K111774111829%_
                                               _%rest111853%_
                                               _%init111851%_
                                               _%len111849%_
                                               _%tmp111842%_)))
                                          (_%else111772111790%_))))
                                  (_%else111772111790%_)))
                            (_%else111772111790%_)))))))
          (__compile-let-form
           _%stx111756%_
           _%compile-simple111758%_
           _%compile-values111759%_))))
    (define __compile-letrec-values%
      (lambda (_%stx111553%_)
        (letrec ((_%compile-simple111555%_
                  (lambda (_%hd-ids111752%_ _%exprs111753%_ _%body111754%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp113064
                                        (map __compile-head-id
                                             _%hd-ids111752%_)))
                                   (declare (not safe))
                                   (##map list __tmp113064 _%exprs111753%_))
                                 (cons _%body111754%_ '())))
                     _%stx111553%_)))
                 (_%compile-values111556%_
                  (lambda (_%hd-ids111663%_ _%exprs111664%_ _%body111665%_)
                    (let _%lp111667%_ ((_%rest111669%_ _%hd-ids111663%_)
                                       (_%exprs111670%_ _%exprs111664%_)
                                       (_%pre111671%_ '())
                                       (_%bind111672%_ '())
                                       (_%post111673%_ '()))
                      (let* ((_%rest111674111688%_ _%rest111669%_)
                             (_%else111677111696%_
                              (lambda ()
                                (_%compile-inner111557%_
                                 _%pre111671%_
                                 _%bind111672%_
                                 _%post111673%_
                                 _%body111665%_))))
                        (let ((_%K111682111735%_
                               (lambda (_%rest111732%_ _%id111733%_)
                                 (_%lp111667%_
                                  _%rest111732%_
                                  (cdr _%exprs111670%_)
                                  _%pre111671%_
                                  (cons (cons (__compile-head-id _%id111733%_)
                                              (cons (car _%exprs111670%_) '()))
                                        _%bind111672%_)
                                  _%post111673%_)))
                              (_%K111679111717%_
                               (lambda (_%rest111700%_ _%hd111701%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd111701%_))
                                     (_%lp111667%_
                                      _%rest111700%_
                                      (cdr _%exprs111670%_)
                                      _%pre111671%_
                                      (cons (cons (__compile-head-id
                                                   _%hd111701%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs111670%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind111672%_)
                                      _%post111673%_)
                                     (if (list? _%hd111701%_)
                                         (let* ((_%len111705%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd111701%_)))
                                                (_%tmp111707%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp111667%_
                                            _%rest111700%_
                                            (cdr _%exprs111670%_)
                                            (let ((__tmp113065
                                                   (lambda (_%id111710%_
                                                            _%r111711%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id111710%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id111710%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r111711%_)
                 _%r111711%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp113065
                                               _%pre111671%_
                                               _%hd111701%_))
                                            (cons (cons _%tmp111707%_
                                                        (cons (car _%exprs111670%_)
                                                              '()))
                                                  _%bind111672%_)
                                            (cons (cons _%tmp111707%_
                                                        (cons _%len111705%_
                                                              (let ((__tmp113067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id111713%_ _%k111714%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id111713%_))
                                   (cons (__SRC__0 _%id111713%_) _%k111714%_)
                                   '#f)))
                            (__tmp113066
                             (let ()
                               (declare (not safe))
                               (##iota _%len111705%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp113067 _%hd111701%_ __tmp113066))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post111673%_)))
                                         (__compile-error__%
                                          _%stx111553%_
                                          _%hd111701%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest111674111688%_))
                              (let ((_%tl111684111740%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest111674111688%_)))
                                    (_%hd111683111738%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest111674111688%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd111683111738%_))
                                    (let ((_%tl111686111745%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd111683111738%_)))
                                          (_%hd111685111743%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd111683111738%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl111686111745%_))
                                          (let ((_%id111748%_
                                                 _%hd111685111743%_)
                                                (_%rest111750%_
                                                 _%tl111684111740%_))
                                            (_%K111682111735%_
                                             _%rest111750%_
                                             _%id111748%_))
                                          (let ((_%hd111725%_
                                                 _%hd111683111738%_)
                                                (_%rest111727%_
                                                 _%tl111684111740%_))
                                            (_%K111679111717%_
                                             _%rest111727%_
                                             _%hd111725%_))))
                                    (let ((_%hd111725%_ _%hd111683111738%_)
                                          (_%rest111727%_ _%tl111684111740%_))
                                      (_%K111679111717%_
                                       _%rest111727%_
                                       _%hd111725%_))))
                              (_%else111677111696%_)))))))
                 (_%compile-inner111557%_
                  (lambda (_%pre111658%_
                           _%bind111659%_
                           _%post111660%_
                           _%body111661%_)
                    (if (null? _%pre111658%_)
                        (_%compile-bind111558%_
                         _%bind111659%_
                         _%post111660%_
                         _%body111661%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre111658%_)
                                     (cons (_%compile-bind111558%_
                                            _%bind111659%_
                                            _%post111660%_
                                            _%body111661%_)
                                           '())))
                         _%stx111553%_))))
                 (_%compile-bind111558%_
                  (lambda (_%bind111654%_ _%post111655%_ _%body111656%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind111654%_)
                                 (cons (_%compile-post111559%_
                                        _%post111655%_
                                        _%body111656%_)
                                       '())))
                     _%stx111553%_)))
                 (_%compile-post111559%_
                  (lambda (_%post111561%_ _%body111562%_)
                    (let _%lp111564%_ ((_%rest111566%_ _%post111561%_)
                                       (_%check111567%_ '())
                                       (_%bind111568%_ '()))
                      (let* ((_%rest111569111581%_ _%rest111566%_)
                             (_%else111571111589%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp113068
                                              (let ((__tmp113069
                                                     (cons _%body111562%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp113069
                                                 _%bind111568%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp113068
                                          _%check111567%_)))
                                 _%stx111553%_)))
                             (_%K111573111628%_
                              (lambda (_%rest111592%_
                                       _%init111593%_
                                       _%len111594%_
                                       _%tmp111595%_)
                                (_%lp111564%_
                                 _%rest111592%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp111595%_
                                                    (cons _%len111594%_ '())))
                                        _%stx111553%_)
                                       _%check111567%_)
                                 (let ((__tmp113070
                                        (lambda (_%hd111597%_ _%r111598%_)
                                          (let* ((_%hd111599111606%_
                                                  _%hd111597%_)
                                                 (_%E111601111610%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd111599111606%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K111602111616%_
                                                  (lambda (_%k111613%_
                                                           _%id111614%_)
                                                    (cons (cons 'set!
                                                                (cons _%id111614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##vector-ref
                                          (cons _%tmp111595%_
                                                (cons _%k111613%_ '())))
                                    '())))
                  _%r111598%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd111599111606%_))
                                                (let ((_%hd111603111619%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd111599111606%_)))
                                                      (_%tl111604111621%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd111599111606%_))))
                                                  (let* ((_%id111624%_
                                                          _%hd111603111619%_)
                                                         (_%k111626%_
                                                          _%tl111604111621%_))
                                                    (_%K111602111616%_
                                                     _%k111626%_
                                                     _%id111624%_)))
                                                (_%E111601111610%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp113070
                                    _%bind111568%_
                                    _%init111593%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest111569111581%_))
                            (let ((_%hd111574111631%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest111569111581%_)))
                                  (_%tl111575111633%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest111569111581%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd111574111631%_))
                                  (let ((_%hd111576111636%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd111574111631%_)))
                                        (_%tl111577111638%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd111574111631%_))))
                                    (let ((_%tmp111641%_ _%hd111576111636%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl111577111638%_))
                                          (let ((_%hd111578111643%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl111577111638%_)))
                                                (_%tl111579111645%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl111577111638%_))))
                                            (let* ((_%len111648%_
                                                    _%hd111578111643%_)
                                                   (_%init111650%_
                                                    _%tl111579111645%_)
                                                   (_%rest111652%_
                                                    _%tl111575111633%_))
                                              (_%K111573111628%_
                                               _%rest111652%_
                                               _%init111650%_
                                               _%len111648%_
                                               _%tmp111641%_)))
                                          (_%else111571111589%_))))
                                  (_%else111571111589%_)))
                            (_%else111571111589%_)))))))
          (__compile-let-form
           _%stx111553%_
           _%compile-simple111555%_
           _%compile-values111556%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx111304%_)
        (letrec ((_%compile-simple111306%_
                  (lambda (_%hd-ids111549%_ _%exprs111550%_ _%body111551%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp113071
                                        (map __compile-head-id
                                             _%hd-ids111549%_)))
                                   (declare (not safe))
                                   (##map list __tmp113071 _%exprs111550%_))
                                 (cons _%body111551%_ '())))
                     _%stx111304%_)))
                 (_%compile-values111307%_
                  (lambda (_%hd-ids111456%_ _%exprs111457%_ _%body111458%_)
                    (let _%lp111460%_ ((_%rest111462%_ _%hd-ids111456%_)
                                       (_%exprs111463%_ _%exprs111457%_)
                                       (_%bind111464%_ '())
                                       (_%post111465%_ '()))
                      (let* ((_%rest111466111480%_ _%rest111462%_)
                             (_%else111469111488%_
                              (lambda ()
                                (_%compile-bind111308%_
                                 _%bind111464%_
                                 _%post111465%_
                                 _%body111458%_))))
                        (let ((_%K111474111532%_
                               (lambda (_%rest111527%_ _%hd111528%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd111528%_))
                                     (let ((_%id111530%_
                                            (__SRC__0 _%hd111528%_)))
                                       (_%lp111460%_
                                        _%rest111527%_
                                        (cdr _%exprs111463%_)
                                        (cons (cons _%id111530%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind111464%_)
                                        (cons (cons _%id111530%_
                                                    (cons (car _%exprs111463%_)
                                                          '()))
                                              _%post111465%_)))
                                     (_%lp111460%_
                                      _%rest111527%_
                                      (cdr _%exprs111463%_)
                                      _%bind111464%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs111463%_)
                                                        '()))
                                            _%post111465%_)))))
                              (_%K111471111512%_
                               (lambda (_%rest111492%_ _%hd111493%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd111493%_))
                                     (let ((_%id111496%_
                                            (__SRC__0 _%hd111493%_)))
                                       (_%lp111460%_
                                        _%rest111492%_
                                        (cdr _%exprs111463%_)
                                        (cons (cons _%id111496%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind111464%_)
                                        (cons (cons _%id111496%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs111463%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post111465%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd111493%_))
                                         (if (list? _%hd111493%_)
                                             (let* ((_%len111500%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd111493%_)))
                                                    (_%tmp111502%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp111460%_
                                                _%rest111492%_
                                                (cdr _%exprs111463%_)
                                                (let ((__tmp113072
                                                       (lambda (_%id111505%_
                                                                _%r111506%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id111505%_))
                     (cons (cons (__SRC__0 _%id111505%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r111506%_)
                     _%r111506%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp113072
                                                   _%bind111464%_
                                                   _%hd111493%_))
                                                (cons (cons _%tmp111502%_
                                                            (cons (car _%exprs111463%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len111500%_
                                (let ((__tmp113074
                                       (lambda (_%id111508%_ _%k111509%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id111508%_))
                                             (cons (__SRC__0 _%id111508%_)
                                                   _%k111509%_)
                                             '#f)))
                                      (__tmp113073
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len111500%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp113074
                                   _%hd111493%_
                                   __tmp113073)))))
              _%post111465%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx111304%_
                                              _%hd111493%_))
                                         (_%lp111460%_
                                          _%rest111492%_
                                          (cdr _%exprs111463%_)
                                          _%bind111464%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs111463%_)
                                                            '()))
                                                _%post111465%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest111466111480%_))
                              (let ((_%tl111476111537%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest111466111480%_)))
                                    (_%hd111475111535%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest111466111480%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd111475111535%_))
                                    (let ((_%tl111478111542%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd111475111535%_)))
                                          (_%hd111477111540%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd111475111535%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl111478111542%_))
                                          (let ((_%hd111545%_
                                                 _%hd111477111540%_)
                                                (_%rest111547%_
                                                 _%tl111476111537%_))
                                            (_%K111474111532%_
                                             _%rest111547%_
                                             _%hd111545%_))
                                          (let ((_%hd111520%_
                                                 _%hd111475111535%_)
                                                (_%rest111522%_
                                                 _%tl111476111537%_))
                                            (_%K111471111512%_
                                             _%rest111522%_
                                             _%hd111520%_))))
                                    (let ((_%hd111520%_ _%hd111475111535%_)
                                          (_%rest111522%_ _%tl111476111537%_))
                                      (_%K111471111512%_
                                       _%rest111522%_
                                       _%hd111520%_))))
                              (_%else111469111488%_)))))))
                 (_%compile-bind111308%_
                  (lambda (_%bind111452%_ _%post111453%_ _%body111454%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind111452%_)
                                 (cons (_%compile-post111309%_
                                        _%post111453%_
                                        _%body111454%_)
                                       '())))
                     _%stx111304%_)))
                 (_%compile-post111309%_
                  (lambda (_%post111311%_ _%body111312%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp113075
                                  (let ((__tmp113077
                                         (lambda (_%hd111314%_ _%r111315%_)
                                           (let* ((_%hd111316111339%_
                                                   _%hd111314%_)
                                                  (_%E111320111343%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd111316111339%_
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
                                             (let ((_%K111333111437%_
                                                    (lambda (_%expr111435%_)
                                                      (cons _%expr111435%_
                                                            _%r111315%_)))
                                                   (_%K111328111415%_
                                                    (lambda (_%expr111412%_
                                                             _%id111413%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id111413%_ (cons _%expr111412%_ '())))
                     _%stx111304%_)
                    _%r111315%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K111321111382%_
                                                    (lambda (_%init111347%_
                                                             _%len111348%_
                                                             _%expr111349%_
                                                             _%tmp111350%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp111350%_
                                             (cons _%expr111349%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp111350%_
                                                    (cons _%len111348%_ '())))
                                        _%stx111304%_)
                                       (let ((__tmp113078
                                              (map (lambda (_%hd111352%_)
                                                     (let* ((_%hd111353111360%_
                                                             _%hd111352%_)
                                                            (_%E111355111364%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd111353111360%_
                                '([id . k])))
                       '#!void))
                    (_%K111356111370%_
                     (lambda (_%k111367%_ _%id111368%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id111368%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp111350%_
                                                      (cons _%k111367%_ '())))
                                          '())))
                        _%stx111304%_))))
               (if (let () (declare (not safe)) (##pair? _%hd111353111360%_))
                   (let ((_%hd111357111373%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd111353111360%_)))
                         (_%tl111358111375%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd111353111360%_))))
                     (let* ((_%id111378%_ _%hd111357111373%_)
                            (_%k111380%_ _%tl111358111375%_))
                       (_%K111356111370%_ _%k111380%_ _%id111378%_)))
                   (_%E111355111364%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init111347%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp113078)))))
                     _%stx111304%_)
                    _%r111315%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match112931112932%_
                                                       (lambda (_%hd111322111385%_
                                                                _%tl111323111387%_
                                                                _%hd111324111392%_
                                                                _%tl111325111394%_)
                                                         (let ((_%tmp111390%_
                                                                _%hd111322111385%_)
                                                               (_%expr111397%_
                                                                _%hd111324111392%_))
                                                           (_%E111320111343%_))))
                                                      (_%__match112925112926%_
                                                       (lambda (_%hd111322111385%_
                                                                _%tl111323111387%_)
                                                         (let ((_%tmp111390%_
                                                                _%hd111322111385%_))
                                                           (_%E111320111343%_)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##pair? _%hd111316111339%_))
                                                     (let ((_%tl111335111442%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd111316111339%_)))
                                                           (_%hd111334111440%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd111316111339%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd111334111440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl111335111442%_))
                       (let ((_%tl111337111447%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl111335111442%_)))
                             (_%hd111336111445%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl111335111442%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl111337111447%_))
                             (let ((_%expr111450%_ _%hd111336111445%_))
                               (_%K111333111437%_ _%expr111450%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl111337111447%_))
                                 (let ((_%tl111327111401%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl111337111447%_)))
                                       (_%hd111326111399%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl111337111447%_))))
                                   (let ((_%tmp111390%_ _%hd111334111440%_)
                                         (_%expr111397%_ _%hd111336111445%_)
                                         (_%len111404%_ _%hd111326111399%_)
                                         (_%init111406%_ _%tl111327111401%_))
                                     (_%K111321111382%_
                                      _%init111406%_
                                      _%len111404%_
                                      _%expr111397%_
                                      _%tmp111390%_)))
                                 (_%__match112931112932%_
                                  _%hd111334111440%_
                                  _%tl111335111442%_
                                  _%hd111336111445%_
                                  _%tl111337111447%_))))
                       (_%__match112925112926%_
                        _%hd111334111440%_
                        _%tl111335111442%_))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl111335111442%_))
                       (let ((_%tl111332111427%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl111335111442%_)))
                             (_%hd111331111425%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl111335111442%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl111332111427%_))
                             (let ((_%id111423%_ _%hd111334111440%_)
                                   (_%expr111430%_ _%hd111331111425%_))
                               (_%K111328111415%_ _%expr111430%_ _%id111423%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl111332111427%_))
                                 (let ((_%tl111327111401%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl111332111427%_)))
                                       (_%hd111326111399%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl111332111427%_))))
                                   (let ((_%tmp111390%_ _%hd111334111440%_)
                                         (_%expr111397%_ _%hd111331111425%_)
                                         (_%len111404%_ _%hd111326111399%_)
                                         (_%init111406%_ _%tl111327111401%_))
                                     (_%K111321111382%_
                                      _%init111406%_
                                      _%len111404%_
                                      _%expr111397%_
                                      _%tmp111390%_)))
                                 (_%__match112931112932%_
                                  _%hd111334111440%_
                                  _%tl111335111442%_
                                  _%hd111331111425%_
                                  _%tl111332111427%_))))
                       (_%__match112925112926%_
                        _%hd111334111440%_
                        _%tl111335111442%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E111320111343%_)))))))
                                        (__tmp113076 (list _%body111312%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp113077
                                     __tmp113076
                                     _%post111311%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp113075)))
                     _%stx111304%_))))
          (__compile-let-form
           _%stx111304%_
           _%compile-simple111306%_
           _%compile-values111307%_))))
    (define __compile-call%
      (lambda (_%stx111264%_)
        (let* ((_%$e111266%_ _%stx111264%_)
               (_%$E111268111277%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111266%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111266%_))
              (let* ((_%$tgt111269111280%_
                      (let () (declare (not safe)) (__AST-e _%$e111266%_)))
                     (_%$hd111270111283%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111269111280%_)))
                     (_%$tl111271111286%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111269111280%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111271111286%_))
                    (let* ((_%$tgt111272111290%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111271111286%_)))
                           (_%$hd111273111293%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111272111290%_)))
                           (_%$tl111274111296%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111272111290%_)))
                           (_%rator111300%_ _%$hd111273111293%_)
                           (_%rands111302%_ _%$tl111274111296%_))
                      (__SRC__%
                       (cons (__compile _%rator111300%_)
                             (map __compile _%rands111302%_))
                       _%stx111264%_))
                    (_%$E111268111277%_)))
              (_%$E111268111277%_)))))
    (define __compile-ref%
      (lambda (_%stx111226%_)
        (let* ((_%$e111228%_ _%stx111226%_)
               (_%$E111230111239%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111228%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111228%_))
              (let* ((_%$tgt111231111242%_
                      (let () (declare (not safe)) (__AST-e _%$e111228%_)))
                     (_%$hd111232111245%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111231111242%_)))
                     (_%$tl111233111248%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111231111242%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111233111248%_))
                    (let* ((_%$tgt111234111252%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111233111248%_)))
                           (_%$hd111235111255%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111234111252%_)))
                           (_%$tl111236111258%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111234111252%_)))
                           (_%id111262%_ _%$hd111235111255%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111236111258%_))
                                  '())
                          (__SRC__% _%id111262%_ _%stx111226%_)
                          (_%$E111230111239%_)))
                    (_%$E111230111239%_)))
              (_%$E111230111239%_)))))
    (define __compile-setq%
      (lambda (_%stx111173%_)
        (let* ((_%$e111175%_ _%stx111173%_)
               (_%$E111177111189%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111175%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111175%_))
              (let* ((_%$tgt111178111192%_
                      (let () (declare (not safe)) (__AST-e _%$e111175%_)))
                     (_%$hd111179111195%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111178111192%_)))
                     (_%$tl111180111198%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111178111192%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111180111198%_))
                    (let* ((_%$tgt111181111202%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111180111198%_)))
                           (_%$hd111182111205%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111181111202%_)))
                           (_%$tl111183111208%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111181111202%_)))
                           (_%id111212%_ _%$hd111182111205%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111183111208%_))
                          (let* ((_%$tgt111184111214%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111183111208%_)))
                                 (_%$hd111185111217%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111184111214%_)))
                                 (_%$tl111186111220%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111184111214%_)))
                                 (_%expr111224%_ _%$hd111185111217%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111186111220%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id111212%_
                                              _%stx111173%_)
                                             (cons (__compile _%expr111224%_)
                                                   '())))
                                 _%stx111173%_)
                                (_%$E111177111189%_)))
                          (_%$E111177111189%_)))
                    (_%$E111177111189%_)))
              (_%$E111177111189%_)))))
    (define __compile-if%
      (lambda (_%stx111105%_)
        (let* ((_%$e111107%_ _%stx111105%_)
               (_%$E111109111124%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111107%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111107%_))
              (let* ((_%$tgt111110111127%_
                      (let () (declare (not safe)) (__AST-e _%$e111107%_)))
                     (_%$hd111111111130%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111110111127%_)))
                     (_%$tl111112111133%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111110111127%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111112111133%_))
                    (let* ((_%$tgt111113111137%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111112111133%_)))
                           (_%$hd111114111140%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111113111137%_)))
                           (_%$tl111115111143%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111113111137%_)))
                           (_%p111147%_ _%$hd111114111140%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111115111143%_))
                          (let* ((_%$tgt111116111149%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111115111143%_)))
                                 (_%$hd111117111152%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111116111149%_)))
                                 (_%$tl111118111155%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111116111149%_)))
                                 (_%t111159%_ _%$hd111117111152%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl111118111155%_))
                                (let* ((_%$tgt111119111161%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111118111155%_)))
                                       (_%$hd111120111164%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt111119111161%_)))
                                       (_%$tl111121111167%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt111119111161%_)))
                                       (_%f111171%_ _%$hd111120111164%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl111121111167%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p111147%_)
                                                   (cons (__compile
                                                          _%t111159%_)
                                                         (cons (__compile
                                                                _%f111171%_)
                                                               '()))))
                                       _%stx111105%_)
                                      (_%$E111109111124%_)))
                                (_%$E111109111124%_)))
                          (_%$E111109111124%_)))
                    (_%$E111109111124%_)))
              (_%$E111109111124%_)))))
    (define __compile-quote%
      (lambda (_%stx111067%_)
        (let* ((_%$e111069%_ _%stx111067%_)
               (_%$E111071111080%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111069%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111069%_))
              (let* ((_%$tgt111072111083%_
                      (let () (declare (not safe)) (__AST-e _%$e111069%_)))
                     (_%$hd111073111086%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111072111083%_)))
                     (_%$tl111074111089%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111072111083%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111074111089%_))
                    (let* ((_%$tgt111075111093%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111074111089%_)))
                           (_%$hd111076111096%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111075111093%_)))
                           (_%$tl111077111099%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111075111093%_)))
                           (_%e111103%_ _%$hd111076111096%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111077111099%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e111103%_))
                                       '()))
                           _%stx111067%_)
                          (_%$E111071111080%_)))
                    (_%$E111071111080%_)))
              (_%$E111071111080%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx111029%_)
        (let* ((_%$e111031%_ _%stx111029%_)
               (_%$E111033111042%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111031%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111031%_))
              (let* ((_%$tgt111034111045%_
                      (let () (declare (not safe)) (__AST-e _%$e111031%_)))
                     (_%$hd111035111048%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111034111045%_)))
                     (_%$tl111036111051%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111034111045%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111036111051%_))
                    (let* ((_%$tgt111037111055%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111036111051%_)))
                           (_%$hd111038111058%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111037111055%_)))
                           (_%$tl111039111061%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111037111055%_)))
                           (_%e111065%_ _%$hd111038111058%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111039111061%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e111065%_ '()))
                           _%stx111029%_)
                          (_%$E111033111042%_)))
                    (_%$E111033111042%_)))
              (_%$E111033111042%_)))))
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
