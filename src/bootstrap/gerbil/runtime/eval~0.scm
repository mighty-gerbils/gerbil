(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1779967242)
  (begin
    (define __syntax::t
      (let ((__tmp170913 (list)) (__tmp170912 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__syntax::t
         '__syntax
         __tmp170913
         '(e id)
         __tmp170912
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args170717%_
        (apply make-instance __syntax::t _%$args170717%_)))
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
      (let ((__tmp170915 (list __syntax::t))
            (__tmp170914 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-form::t
         '__core-form
         __tmp170915
         '()
         __tmp170914
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args170714%_
        (apply make-instance __core-form::t _%$args170714%_)))
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
      (let ((__tmp170917 (list __core-form::t))
            (__tmp170916 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-expression::t
         '__core-expression
         __tmp170917
         '()
         __tmp170916
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args170711%_
        (apply make-instance __core-expression::t _%$args170711%_)))
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
      (let ((__tmp170919 (list __core-form::t))
            (__tmp170918 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-special-form::t
         '__core-special-form
         __tmp170919
         '()
         __tmp170918
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args170708%_
        (apply make-instance __core-special-form::t _%$args170708%_)))
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
      (lambda (_%id170682%_)
        (let* ((_%h170684%_ __core)
               (_%key170687%_
                (let () (declare (not safe)) (__AST-e _%id170682%_)))
               (_%h170694%_
                (let ((_%$obj170691%_ _%h170684%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj170691%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj170691%_)))
                           '#t)
                      _%$obj170691%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj170691%_)))))
               (_%h170696%_ _%h170694%_))
          (declare (not safe))
          (__hash-get _%h170696%_ _%key170687%_))))
    (define __core-bound-id?__%
      (lambda (_%id170665%_ _%is?170666%_)
        (let ((_%$e170668%_ (__core-resolve _%id170665%_)))
          (if _%$e170668%_ (_%is?170666%_ _%$e170668%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id170675%_)
        (let ((_%is?170677%_ true))
          (__core-bound-id?__% _%id170675%_ _%is?170677%_))))
    (define __core-bound-id?
      (lambda _g170920_
        (let ((_g170921_ (let () (declare (not safe)) (##length _g170920_))))
          (cond ((let () (declare (not safe)) (##fx= _g170921_ 1))
                 (apply __core-bound-id?__0 _g170920_))
                ((let () (declare (not safe)) (##fx= _g170921_ 2))
                 (apply __core-bound-id?__% _g170920_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g170920_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id170620%_ _%e170621%_ _%make170622%_)
        (let* ((_%h170624%_ __core)
               (_%key170627%_ _%id170620%_)
               (_%value170630%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%e170621%_ '__syntax::t))
                    _%e170621%_
                    (_%make170622%_ _%e170621%_ _%id170620%_)))
               (_%h170637%_
                (let ((_%$obj170634%_ _%h170624%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj170634%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj170634%_)))
                           '#t)
                      _%$obj170634%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj170634%_)))))
               (_%h170639%_ _%h170637%_))
          (declare (not safe))
          (__hash-put! _%h170639%_ _%key170627%_ _%value170630%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id170655%_ _%e170656%_)
        (let ((_%make170658%_ make-__syntax))
          (__core-bind-syntax!__% _%id170655%_ _%e170656%_ _%make170658%_))))
    (define __core-bind-syntax!
      (lambda _g170922_
        (let ((_g170923_ (let () (declare (not safe)) (##length _g170922_))))
          (cond ((let () (declare (not safe)) (##fx= _g170923_ 2))
                 (apply __core-bind-syntax!__0 _g170922_))
                ((let () (declare (not safe)) (##fx= _g170923_ 3))
                 (apply __core-bind-syntax!__% _g170922_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g170922_))))))
    (define __SRC__%
      (lambda (_%e170600%_ _%src-stx170601%_)
        (if (or (pair? _%e170600%_) (symbol? _%e170600%_))
            (let ((__tmp170924
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx170601%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx170601%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e170600%_ __tmp170924))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e170600%_ 'gerbil#AST::t))
                (let ((__tmp170926
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e170600%_ '1 '#f '#f)))
                      (__tmp170925
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e170600%_)))))
                  (declare (not safe))
                  (##make-source __tmp170926 __tmp170925))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e170600%_))))))
    (define __SRC__0
      (lambda (_%e170612%_)
        (let ((_%src-stx170614%_ '#f))
          (__SRC__% _%e170612%_ _%src-stx170614%_))))
    (define __SRC
      (lambda _g170927_
        (let ((_g170928_ (let () (declare (not safe)) (##length _g170927_))))
          (cond ((let () (declare (not safe)) (##fx= _g170928_ 1))
                 (apply __SRC__0 _g170927_))
                ((let () (declare (not safe)) (##fx= _g170928_ 2))
                 (apply __SRC__% _g170927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g170927_))))))
    (define __locat
      (lambda (_%loc170597%_)
        (if (let () (declare (not safe)) (##locat? _%loc170597%_))
            _%loc170597%_
            '#f)))
    (define __check-values
      (lambda (_%obj170592%_ _%k170593%_)
        (let ((_%count170595%_
               (if (let () (declare (not safe)) (##values? _%obj170592%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj170592%_))
                   '1)))
          (if (fx= _%count170595%_ _%k170593%_)
              '#!void
              (let ((__tmp170930
                     (if (fx< _%count170595%_ _%k170593%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp170929
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj170592%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj170592%_))
                         _%obj170592%_)))
                (declare (not safe))
                (error __tmp170930 __tmp170929 _%k170593%_))))))
    (define __compile
      (lambda (_%stx170561%_)
        (let* ((_%$e170563%_ _%stx170561%_)
               (_%$E170565170571%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e170563%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e170563%_))
              (let* ((_%$tgt170566170574%_
                      (let () (declare (not safe)) (__AST-e _%$e170563%_)))
                     (_%$hd170567170577%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt170566170574%_)))
                     (_%$tl170568170580%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt170566170574%_)))
                     (_%form170584%_ _%$hd170567170577%_)
                     (_%$e170586%_ (__core-resolve _%form170584%_)))
                (if _%$e170586%_
                    ((##structure-ref _%$e170586%_ '1 __syntax::t '#f)
                     _%stx170561%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx170561%_
                       _%form170584%_))))
              (_%$E170565170571%_)))))
    (define __compile-error__%
      (lambda (_%stx170548%_ _%detail170549%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx170548%_
           _%detail170549%_))))
    (define __compile-error__0
      (lambda (_%stx170554%_)
        (let ((_%detail170556%_ '#f))
          (__compile-error__% _%stx170554%_ _%detail170556%_))))
    (define __compile-error
      (lambda _g170931_
        (let ((_g170932_ (let () (declare (not safe)) (##length _g170931_))))
          (cond ((let () (declare (not safe)) (##fx= _g170932_ 1))
                 (apply __compile-error__0 _g170931_))
                ((let () (declare (not safe)) (##fx= _g170932_ 2))
                 (apply __compile-error__% _g170931_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g170931_))))))
    (define __compile-ignore%
      (lambda (_%stx170545%_) (__SRC__% ''#!void _%stx170545%_)))
    (define __compile-begin%
      (lambda (_%stx170520%_)
        (let* ((_%$e170522%_ _%stx170520%_)
               (_%$E170524170530%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e170522%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e170522%_))
              (let* ((_%$tgt170525170533%_
                      (let () (declare (not safe)) (__AST-e _%$e170522%_)))
                     (_%$hd170526170536%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt170525170533%_)))
                     (_%$tl170527170539%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt170525170533%_)))
                     (_%body170543%_ _%$tl170527170539%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body170543%_))
                 _%stx170520%_))
              (_%$E170524170530%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx170495%_)
        (let* ((_%$e170497%_ _%stx170495%_)
               (_%$E170499170505%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e170497%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e170497%_))
              (let* ((_%$tgt170500170508%_
                      (let () (declare (not safe)) (__AST-e _%$e170497%_)))
                     (_%$hd170501170511%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt170500170508%_)))
                     (_%$tl170502170514%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt170500170508%_)))
                     (_%body170518%_ _%$tl170502170514%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body170518%_)))
                 _%stx170495%_))
              (_%$E170499170505%_)))))
    (define __compile-import%
      (lambda (_%stx170470%_)
        (let* ((_%$e170472%_ _%stx170470%_)
               (_%$E170474170480%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e170472%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e170472%_))
              (let* ((_%$tgt170475170483%_
                      (let () (declare (not safe)) (__AST-e _%$e170472%_)))
                     (_%$hd170476170486%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt170475170483%_)))
                     (_%$tl170477170489%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt170475170483%_)))
                     (_%body170493%_ _%$tl170477170489%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body170493%_ '())) '()))
                 _%stx170470%_))
              (_%$E170474170480%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx170417%_)
        (let* ((_%$e170419%_ _%stx170417%_)
               (_%$E170421170433%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e170419%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e170419%_))
              (let* ((_%$tgt170422170436%_
                      (let () (declare (not safe)) (__AST-e _%$e170419%_)))
                     (_%$hd170423170439%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt170422170436%_)))
                     (_%$tl170424170442%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt170422170436%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl170424170442%_))
                    (let* ((_%$tgt170425170446%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl170424170442%_)))
                           (_%$hd170426170449%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt170425170446%_)))
                           (_%$tl170427170452%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt170425170446%_)))
                           (_%ann170456%_ _%$hd170426170449%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl170427170452%_))
                          (let* ((_%$tgt170428170458%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl170427170452%_)))
                                 (_%$hd170429170461%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt170428170458%_)))
                                 (_%$tl170430170464%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt170428170458%_)))
                                 (_%expr170468%_ _%$hd170429170461%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl170430170464%_))
                                        '())
                                (__compile _%expr170468%_)
                                (_%$E170421170433%_)))
                          (_%$E170421170433%_)))
                    (_%$E170421170433%_)))
              (_%$E170421170433%_)))))
    (define __compile-define-values%
      (lambda (_%stx170308%_)
        (let* ((_%$e170310%_ _%stx170308%_)
               (_%$E170312170324%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e170310%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e170310%_))
              (let* ((_%$tgt170313170327%_
                      (let () (declare (not safe)) (__AST-e _%$e170310%_)))
                     (_%$hd170314170330%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt170313170327%_)))
                     (_%$tl170315170333%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt170313170327%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl170315170333%_))
                    (let* ((_%$tgt170316170337%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl170315170333%_)))
                           (_%$hd170317170340%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt170316170337%_)))
                           (_%$tl170318170343%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt170316170337%_)))
                           (_%hd170347%_ _%$hd170317170340%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl170318170343%_))
                          (let* ((_%$tgt170319170349%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl170318170343%_)))
                                 (_%$hd170320170352%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt170319170349%_)))
                                 (_%$tl170321170355%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt170319170349%_)))
                                 (_%expr170359%_ _%$hd170320170352%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl170321170355%_))
                                        '())
                                (let* ((_%$e170361%_ _%hd170347%_)
                                       (_%$E170363170404%_
                                        (lambda ()
                                          (let ((_%$E170364170389%_
                                                 (lambda ()
                                                   (let* ((_%$E170365170376%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e170361%_))))
                  (_%ids170379%_ _%hd170347%_)
                  (_%len170381%_ (length _%ids170379%_))
                  (_%tmp170383%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp170383%_
                                       (cons (__compile _%expr170359%_) '())))
                           _%stx170308%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp170383%_
                                             (cons _%len170381%_ '())))
                                 _%stx170308%_)
                                (let ((__tmp170933
                                       (let ((__tmp170935
                                              (lambda (_%id170386%_
                                                       _%k170387%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id170386%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id170386%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp170383%_
                                           (cons _%k170387%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx170308%_)
                                                    '#f)))
                                             (__tmp170934
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len170381%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp170935
                                          _%ids170379%_
                                          __tmp170934))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp170933)))))
              _%stx170308%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e170361%_))
                                                (let* ((_%$tgt170366170392%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e170361%_)))
                                                       (_%$hd170367170395%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt170366170392%_)))
                                                       (_%$tl170368170398%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt170366170392%_)))
                                                       (_%id170402%_
                                                        _%$hd170367170395%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl170368170398%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id170402%_)
                           (cons (__compile _%expr170359%_) '())))
               _%stx170308%_)
              (_%$E170364170389%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E170364170389%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e170361%_))
                                      (let* ((_%$tgt170369170407%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e170361%_)))
                                             (_%$hd170370170410%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt170369170407%_)))
                                             (_%$tl170371170413%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt170369170407%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd170370170410%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl170371170413%_))
                                                        '())
                                                (__compile _%expr170359%_)
                                                (_%$E170363170404%_))
                                            (_%$E170363170404%_)))
                                      (_%$E170363170404%_)))
                                (_%$E170312170324%_)))
                          (_%$E170312170324%_)))
                    (_%$E170312170324%_)))
              (_%$E170312170324%_)))))
    (define __compile-head-id
      (lambda (_%e170306%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e170306%_))
             _%e170306%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd170263%_)
        (let _%recur170265%_ ((_%rest170267%_ _%hd170263%_))
          (let* ((_%$e170269%_ _%rest170267%_)
                 (_%$E170271170289%_
                  (lambda ()
                    (let ((_%$E170272170286%_
                           (lambda ()
                             (let* ((_%$E170273170281%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e170269%_))))
                                    (_%tail170284%_ _%$e170269%_))
                               (__compile-head-id _%tail170284%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e170269%_))
                                  '())
                          '()
                          (_%$E170272170286%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e170269%_))
                (let* ((_%$tgt170274170292%_
                        (let () (declare (not safe)) (__AST-e _%$e170269%_)))
                       (_%$hd170275170295%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt170274170292%_)))
                       (_%$tl170276170298%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt170274170292%_)))
                       (_%hd170302%_ _%$hd170275170295%_)
                       (_%rest170304%_ _%$tl170276170298%_))
                  (cons (__compile-head-id _%hd170302%_)
                        (_%recur170265%_ _%rest170304%_)))
                (_%$E170271170289%_))))))
    (define __compile-lambda%
      (lambda (_%stx170210%_)
        (let* ((_%$e170212%_ _%stx170210%_)
               (_%$E170214170226%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e170212%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e170212%_))
              (let* ((_%$tgt170215170229%_
                      (let () (declare (not safe)) (__AST-e _%$e170212%_)))
                     (_%$hd170216170232%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt170215170229%_)))
                     (_%$tl170217170235%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt170215170229%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl170217170235%_))
                    (let* ((_%$tgt170218170239%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl170217170235%_)))
                           (_%$hd170219170242%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt170218170239%_)))
                           (_%$tl170220170245%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt170218170239%_)))
                           (_%hd170249%_ _%$hd170219170242%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl170220170245%_))
                          (let* ((_%$tgt170221170251%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl170220170245%_)))
                                 (_%$hd170222170254%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt170221170251%_)))
                                 (_%$tl170223170257%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt170221170251%_)))
                                 (_%body170261%_ _%$hd170222170254%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl170223170257%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd170249%_)
                                             (cons (__compile _%body170261%_)
                                                   '())))
                                 _%stx170210%_)
                                (_%$E170214170226%_)))
                          (_%$E170214170226%_)))
                    (_%$E170214170226%_)))
              (_%$E170214170226%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx169975%_)
        (letrec ((_%variadic?169977%_
                  (lambda (_%hd170175%_)
                    (let* ((_%$e170177%_ _%hd170175%_)
                           (_%$E170179170195%_
                            (lambda ()
                              (let ((_%$E170180170192%_
                                     (lambda ()
                                       (let ((_%$E170181170189%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e170177%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e170177%_))
                                            '())
                                    '#f
                                    (_%$E170180170192%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e170177%_))
                          (let* ((_%$tgt170182170198%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e170177%_)))
                                 (_%$hd170183170201%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt170182170198%_)))
                                 (_%$tl170184170204%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt170182170198%_)))
                                 (_%rest170208%_ _%$tl170184170204%_))
                            (_%variadic?169977%_ _%rest170208%_))
                          (_%$E170179170195%_)))))
                 (_%arity169978%_
                  (lambda (_%hd170113%_)
                    (let _%lp170115%_ ((_%rest170117%_ _%hd170113%_)
                                       (_%k170118%_ '0))
                      (let* ((_%$e170120%_ _%rest170117%_)
                             (_%$E170122170133%_
                              (lambda ()
                                (let ((_%$E170123170130%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e170120%_)))))
                                  _%k170118%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e170120%_))
                            (let* ((_%$tgt170124170136%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e170120%_)))
                                   (_%$hd170125170139%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt170124170136%_)))
                                   (_%$tl170126170142%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt170124170136%_)))
                                   (_%rest170146%_ _%$tl170126170142%_))
                              (_%lp170115%_
                               _%rest170146%_
                               (let ((_%x170148%_ _%k170118%_))
                                 (if (fixnum? _%x170148%_)
                                     (let ((_%x170153%_ _%x170148%_))
                                       (declare (not safe))
                                       (__fx1+ _%x170153%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x170148%_)
                                       '#!void)))))
                            (_%$E170122170133%_))))))
                 (_%generate169979%_
                  (lambda (_%rest170040%_ _%args170041%_ _%len170042%_)
                    (let* ((_%$e170044%_ _%rest170040%_)
                           (_%$E170046170057%_
                            (lambda ()
                              (let ((_%$E170047170054%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e170044%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args170041%_ '())))
                                 _%stx169975%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e170044%_))
                          (let* ((_%$tgt170048170060%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e170044%_)))
                                 (_%$hd170049170063%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt170048170060%_)))
                                 (_%$tl170050170066%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt170048170060%_)))
                                 (_%clause170070%_ _%$hd170049170063%_)
                                 (_%rest170072%_ _%$tl170050170066%_)
                                 (_%$e170074%_ _%clause170070%_)
                                 (_%$E170076170085%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e170074%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e170074%_))
                                (let* ((_%$tgt170077170088%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e170074%_)))
                                       (_%$hd170078170091%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt170077170088%_)))
                                       (_%$tl170079170094%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt170077170088%_)))
                                       (_%hd170098%_ _%$hd170078170091%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl170079170094%_))
                                      (let* ((_%$tgt170080170100%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl170079170094%_)))
                                             (_%$hd170081170103%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt170080170100%_)))
                                             (_%$tl170082170106%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt170080170100%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl170082170106%_))
                                                    '())
                                            (let ((_%clen170110%_
                                                   (_%arity169978%_
                                                    _%hd170098%_))
                                                  (_%cmp170111%_
                                                   (if (_%variadic?169977%_
                                                        _%hd170098%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp170111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len170042%_ (cons _%clen170110%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause170070%_))
                                      (cons _%args170041%_ '())))
                          _%stx169975%_)
                         (cons (_%generate169979%_
                                _%rest170072%_
                                _%args170041%_
                                _%len170042%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx169975%_))
                                            (_%$E170076170085%_)))
                                      (_%$E170076170085%_)))
                                (_%$E170076170085%_)))
                          (_%$E170046170057%_))))))
          (let* ((_%$e169981%_ _%stx169975%_)
                 (_%$E169983170015%_
                  (lambda ()
                    (let ((_%$E169984169997%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e169981%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e169981%_))
                          (let* ((_%$tgt169985170000%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e169981%_)))
                                 (_%$hd169986170003%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169985170000%_)))
                                 (_%$tl169987170006%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169985170000%_)))
                                 (_%clauses170010%_ _%$tl169987170006%_))
                            (let ((_%args170012%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx169975%_))
                                  (_%len170013%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx169975%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args170012%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len170013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args170012%_ '()))
                                         _%stx169975%_)
                                        '()))
                            '())
                      (cons (_%generate169979%_
                             _%clauses170010%_
                             _%args170012%_
                             _%len170013%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx169975%_)
                                                 '())))
                               _%stx169975%_)))
                          (_%$E169984169997%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e169981%_))
                (let* ((_%$tgt169988170018%_
                        (let () (declare (not safe)) (__AST-e _%$e169981%_)))
                       (_%$hd169989170021%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt169988170018%_)))
                       (_%$tl169990170024%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt169988170018%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl169990170024%_))
                      (let* ((_%$tgt169991170028%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl169990170024%_)))
                             (_%$hd169992170031%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt169991170028%_)))
                             (_%$tl169993170034%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt169991170028%_)))
                             (_%clause170038%_ _%$hd169992170031%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl169993170034%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause170038%_))
                            (_%$E169983170015%_)))
                      (_%$E169983170015%_)))
                (_%$E169983170015%_))))))
    (define __compile-let-form
      (lambda (_%stx169744%_ _%compile-simple169745%_ _%compile-values169746%_)
        (letrec ((_%simple-bind?169748%_
                  (lambda (_%hd169933%_)
                    (let* ((_%hd169934169944%_ _%hd169933%_)
                           (_%else169937169952%_ (lambda () '#f)))
                      (let ((_%K169940169965%_ (lambda (_%id169963%_) '#t))
                            (_%K169939169957%_ (lambda () '#t)))
                        (let ((_%try-match169936169960%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd169934169944%_ '#f))
                                     (_%K169939169957%_)
                                     (_%else169937169952%_)))))
                          (if (pair? _%hd169934169944%_)
                              (let ((_%tl169942169970%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd169934169944%_)))
                                    (_%hd169941169968%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd169934169944%_))))
                                (if (null? _%tl169942169970%_)
                                    (let ((_%id169973%_ _%hd169941169968%_))
                                      (_%K169940169965%_ _%id169973%_))
                                    (_%try-match169936169960%_)))
                              (_%try-match169936169960%_)))))))
                 (_%car-e169749%_
                  (lambda (_%hd169931%_)
                    (if (pair? _%hd169931%_)
                        (let () (declare (not safe)) (##car _%hd169931%_))
                        _%hd169931%_))))
          (let* ((_%$e169751%_ _%stx169744%_)
                 (_%$E169753169896%_
                  (lambda ()
                    (let ((_%$E169754169776%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e169751%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e169751%_))
                          (let* ((_%$tgt169755169779%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e169751%_)))
                                 (_%$hd169756169782%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169755169779%_)))
                                 (_%$tl169757169785%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169755169779%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl169757169785%_))
                                (let* ((_%$tgt169758169789%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl169757169785%_)))
                                       (_%$hd169759169792%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt169758169789%_)))
                                       (_%$tl169760169795%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt169758169789%_)))
                                       (_%hd169799%_ _%$hd169759169792%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl169760169795%_))
                                      (let* ((_%$tgt169761169801%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl169760169795%_)))
                                             (_%$hd169762169804%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt169761169801%_)))
                                             (_%$tl169763169807%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt169761169801%_)))
                                             (_%body169811%_
                                              _%$hd169762169804%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl169763169807%_))
                                                    '())
                                            (let* ((_%hd-ids169851%_
                                                    (map (lambda (_%bind169813%_)
                                                           (let* ((_%$e169815%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind169813%_)
                          (_%$E169817169826%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e169815%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e169815%_))
                         (let* ((_%$tgt169818169829%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e169815%_)))
                                (_%$hd169819169832%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt169818169829%_)))
                                (_%$tl169820169835%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt169818169829%_)))
                                (_%ids169839%_ _%$hd169819169832%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl169820169835%_))
                               (let* ((_%$tgt169821169841%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl169820169835%_)))
                                      (_%$hd169822169844%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt169821169841%_)))
                                      (_%$tl169823169847%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt169821169841%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl169823169847%_))
                                             '())
                                     _%ids169839%_
                                     (_%$E169817169826%_)))
                               (_%$E169817169826%_)))
                         (_%$E169817169826%_))))
                 _%hd169799%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs169891%_
                                                    (map (lambda (_%bind169853%_)
                                                           (let* ((_%$e169855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind169853%_)
                          (_%$E169857169866%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e169855%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e169855%_))
                         (let* ((_%$tgt169858169869%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e169855%_)))
                                (_%$hd169859169872%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt169858169869%_)))
                                (_%$tl169860169875%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt169858169869%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl169860169875%_))
                               (let* ((_%$tgt169861169879%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl169860169875%_)))
                                      (_%$hd169862169882%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt169861169879%_)))
                                      (_%$tl169863169885%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt169861169879%_)))
                                      (_%expr169889%_ _%$hd169862169882%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl169863169885%_))
                                             '())
                                     (__compile _%expr169889%_)
                                     (_%$E169857169866%_)))
                               (_%$E169857169866%_)))
                         (_%$E169857169866%_))))
                 _%hd169799%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body169893%_
                                                    (__compile
                                                     _%body169811%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?169748%_
                                                     _%hd-ids169851%_))
                                                  (_%compile-simple169745%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e169749%_
                                                            _%hd-ids169851%_))
                                                   _%exprs169891%_
                                                   _%body169893%_)
                                                  (_%compile-values169746%_
                                                   _%hd-ids169851%_
                                                   _%exprs169891%_
                                                   _%body169893%_)))
                                            (_%$E169754169776%_)))
                                      (_%$E169754169776%_)))
                                (_%$E169754169776%_)))
                          (_%$E169754169776%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e169751%_))
                (let* ((_%$tgt169764169899%_
                        (let () (declare (not safe)) (__AST-e _%$e169751%_)))
                       (_%$hd169765169902%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt169764169899%_)))
                       (_%$tl169766169905%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt169764169899%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl169766169905%_))
                      (let* ((_%$tgt169767169909%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl169766169905%_)))
                             (_%$hd169768169912%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt169767169909%_)))
                             (_%$tl169769169915%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt169767169909%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd169768169912%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl169769169915%_))
                                (let* ((_%$tgt169770169919%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl169769169915%_)))
                                       (_%$hd169771169922%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt169770169919%_)))
                                       (_%$tl169772169925%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt169770169919%_)))
                                       (_%body169929%_ _%$hd169771169922%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl169772169925%_))
                                              '())
                                      (__compile _%body169929%_)
                                      (_%$E169753169896%_)))
                                (_%$E169753169896%_))
                            (_%$E169753169896%_)))
                      (_%$E169753169896%_)))
                (_%$E169753169896%_))))))
    (define __compile-let-values%
      (lambda (_%stx169556%_)
        (letrec ((_%compile-simple169558%_
                  (lambda (_%hd-ids169740%_ _%exprs169741%_ _%body169742%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp170936
                                        (map __compile-head-id
                                             _%hd-ids169740%_)))
                                   (declare (not safe))
                                   (##map list __tmp170936 _%exprs169741%_))
                                 (cons _%body169742%_ '())))
                     _%stx169556%_)))
                 (_%compile-values169559%_
                  (lambda (_%hd-ids169655%_ _%exprs169656%_ _%body169657%_)
                    (let _%lp169659%_ ((_%rest169661%_ _%hd-ids169655%_)
                                       (_%exprs169662%_ _%exprs169656%_)
                                       (_%bind169663%_ '())
                                       (_%post169664%_ '()))
                      (let* ((_%rest169665169679%_ _%rest169661%_)
                             (_%else169668169687%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind169663%_)
                                             (cons (_%compile-post169560%_
                                                    _%post169664%_
                                                    _%body169657%_)
                                                   '())))
                                 _%stx169556%_))))
                        (let ((_%K169673169723%_
                               (lambda (_%rest169720%_ _%id169721%_)
                                 (_%lp169659%_
                                  _%rest169720%_
                                  (cdr _%exprs169662%_)
                                  (cons (cons (__compile-head-id _%id169721%_)
                                              (cons (car _%exprs169662%_) '()))
                                        _%bind169663%_)
                                  _%post169664%_)))
                              (_%K169670169705%_
                               (lambda (_%rest169691%_ _%hd169692%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd169692%_))
                                     (_%lp169659%_
                                      _%rest169691%_
                                      (cdr _%exprs169662%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd169692%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs169662%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind169663%_)
                                      _%post169664%_)
                                     (if (list? _%hd169692%_)
                                         (let* ((_%len169696%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd169692%_)))
                                                (_%tmp169698%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp169659%_
                                            _%rest169691%_
                                            (cdr _%exprs169662%_)
                                            (cons (cons _%tmp169698%_
                                                        (cons (car _%exprs169662%_)
                                                              '()))
                                                  _%bind169663%_)
                                            (cons (cons _%tmp169698%_
                                                        (cons _%len169696%_
                                                              (let ((__tmp170938
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id169701%_ _%k169702%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id169701%_))
                                   (cons (__SRC__0 _%id169701%_) _%k169702%_)
                                   '#f)))
                            (__tmp170937
                             (let ()
                               (declare (not safe))
                               (##iota _%len169696%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp170938 _%hd169692%_ __tmp170937))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post169664%_)))
                                         (__compile-error__%
                                          _%stx169556%_
                                          _%hd169692%_))))))
                          (if (pair? _%rest169665169679%_)
                              (let ((_%tl169675169728%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest169665169679%_)))
                                    (_%hd169674169726%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest169665169679%_))))
                                (if (pair? _%hd169674169726%_)
                                    (let ((_%tl169677169733%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd169674169726%_)))
                                          (_%hd169676169731%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd169674169726%_))))
                                      (if (null? _%tl169677169733%_)
                                          (let ((_%id169736%_
                                                 _%hd169676169731%_)
                                                (_%rest169738%_
                                                 _%tl169675169728%_))
                                            (_%K169673169723%_
                                             _%rest169738%_
                                             _%id169736%_))
                                          (let ((_%hd169713%_
                                                 _%hd169674169726%_)
                                                (_%rest169715%_
                                                 _%tl169675169728%_))
                                            (_%K169670169705%_
                                             _%rest169715%_
                                             _%hd169713%_))))
                                    (let ((_%hd169713%_ _%hd169674169726%_)
                                          (_%rest169715%_ _%tl169675169728%_))
                                      (_%K169670169705%_
                                       _%rest169715%_
                                       _%hd169713%_))))
                              (_%else169668169687%_)))))))
                 (_%compile-post169560%_
                  (lambda (_%post169562%_ _%body169563%_)
                    (let _%lp169565%_ ((_%rest169567%_ _%post169562%_)
                                       (_%check169568%_ '())
                                       (_%bind169569%_ '()))
                      (let* ((_%rest169570169582%_ _%rest169567%_)
                             (_%else169572169590%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp170939
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind169569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body169563%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx169556%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp170939
                                          _%check169568%_)))
                                 _%stx169556%_)))
                             (_%K169574169629%_
                              (lambda (_%rest169593%_
                                       _%init169594%_
                                       _%len169595%_
                                       _%tmp169596%_)
                                (_%lp169565%_
                                 _%rest169593%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp169596%_
                                                    (cons _%len169595%_ '())))
                                        _%stx169556%_)
                                       _%check169568%_)
                                 (let ((__tmp170940
                                        (lambda (_%hd169598%_ _%r169599%_)
                                          (let* ((_%hd169600169607%_
                                                  _%hd169598%_)
                                                 (_%E169602169611%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd169600169607%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K169603169617%_
                                                  (lambda (_%k169614%_
                                                           _%id169615%_)
                                                    (cons (cons _%id169615%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp169596%_
                                          (cons _%k169614%_ '())))
                              '()))
                  _%r169599%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd169600169607%_)
                                                (let ((_%hd169604169620%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd169600169607%_)))
                                                      (_%tl169605169622%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd169600169607%_))))
                                                  (let* ((_%id169625%_
                                                          _%hd169604169620%_)
                                                         (_%k169627%_
                                                          _%tl169605169622%_))
                                                    (_%K169603169617%_
                                                     _%k169627%_
                                                     _%id169625%_)))
                                                (_%E169602169611%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp170940
                                    _%bind169569%_
                                    _%init169594%_))))))
                        (if (pair? _%rest169570169582%_)
                            (let ((_%hd169575169632%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest169570169582%_)))
                                  (_%tl169576169634%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest169570169582%_))))
                              (if (pair? _%hd169575169632%_)
                                  (let ((_%hd169577169637%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd169575169632%_)))
                                        (_%tl169578169639%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd169575169632%_))))
                                    (let ((_%tmp169642%_ _%hd169577169637%_))
                                      (if (pair? _%tl169578169639%_)
                                          (let ((_%hd169579169644%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl169578169639%_)))
                                                (_%tl169580169646%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl169578169639%_))))
                                            (let* ((_%len169649%_
                                                    _%hd169579169644%_)
                                                   (_%init169651%_
                                                    _%tl169580169646%_)
                                                   (_%rest169653%_
                                                    _%tl169576169634%_))
                                              (_%K169574169629%_
                                               _%rest169653%_
                                               _%init169651%_
                                               _%len169649%_
                                               _%tmp169642%_)))
                                          (_%else169572169590%_))))
                                  (_%else169572169590%_)))
                            (_%else169572169590%_)))))))
          (__compile-let-form
           _%stx169556%_
           _%compile-simple169558%_
           _%compile-values169559%_))))
    (define __compile-letrec-values%
      (lambda (_%stx169353%_)
        (letrec ((_%compile-simple169355%_
                  (lambda (_%hd-ids169552%_ _%exprs169553%_ _%body169554%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp170941
                                        (map __compile-head-id
                                             _%hd-ids169552%_)))
                                   (declare (not safe))
                                   (##map list __tmp170941 _%exprs169553%_))
                                 (cons _%body169554%_ '())))
                     _%stx169353%_)))
                 (_%compile-values169356%_
                  (lambda (_%hd-ids169463%_ _%exprs169464%_ _%body169465%_)
                    (let _%lp169467%_ ((_%rest169469%_ _%hd-ids169463%_)
                                       (_%exprs169470%_ _%exprs169464%_)
                                       (_%pre169471%_ '())
                                       (_%bind169472%_ '())
                                       (_%post169473%_ '()))
                      (let* ((_%rest169474169488%_ _%rest169469%_)
                             (_%else169477169496%_
                              (lambda ()
                                (_%compile-inner169357%_
                                 _%pre169471%_
                                 _%bind169472%_
                                 _%post169473%_
                                 _%body169465%_))))
                        (let ((_%K169482169535%_
                               (lambda (_%rest169532%_ _%id169533%_)
                                 (_%lp169467%_
                                  _%rest169532%_
                                  (cdr _%exprs169470%_)
                                  _%pre169471%_
                                  (cons (cons (__compile-head-id _%id169533%_)
                                              (cons (car _%exprs169470%_) '()))
                                        _%bind169472%_)
                                  _%post169473%_)))
                              (_%K169479169517%_
                               (lambda (_%rest169500%_ _%hd169501%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd169501%_))
                                     (_%lp169467%_
                                      _%rest169500%_
                                      (cdr _%exprs169470%_)
                                      _%pre169471%_
                                      (cons (cons (__compile-head-id
                                                   _%hd169501%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs169470%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind169472%_)
                                      _%post169473%_)
                                     (if (list? _%hd169501%_)
                                         (let* ((_%len169505%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd169501%_)))
                                                (_%tmp169507%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp169467%_
                                            _%rest169500%_
                                            (cdr _%exprs169470%_)
                                            (let ((__tmp170942
                                                   (lambda (_%id169510%_
                                                            _%r169511%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id169510%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id169510%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r169511%_)
                 _%r169511%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp170942
                                               _%pre169471%_
                                               _%hd169501%_))
                                            (cons (cons _%tmp169507%_
                                                        (cons (car _%exprs169470%_)
                                                              '()))
                                                  _%bind169472%_)
                                            (cons (cons _%tmp169507%_
                                                        (cons _%len169505%_
                                                              (let ((__tmp170944
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id169513%_ _%k169514%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id169513%_))
                                   (cons (__SRC__0 _%id169513%_) _%k169514%_)
                                   '#f)))
                            (__tmp170943
                             (let ()
                               (declare (not safe))
                               (##iota _%len169505%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp170944 _%hd169501%_ __tmp170943))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post169473%_)))
                                         (__compile-error__%
                                          _%stx169353%_
                                          _%hd169501%_))))))
                          (if (pair? _%rest169474169488%_)
                              (let ((_%tl169484169540%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest169474169488%_)))
                                    (_%hd169483169538%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest169474169488%_))))
                                (if (pair? _%hd169483169538%_)
                                    (let ((_%tl169486169545%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd169483169538%_)))
                                          (_%hd169485169543%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd169483169538%_))))
                                      (if (null? _%tl169486169545%_)
                                          (let ((_%id169548%_
                                                 _%hd169485169543%_)
                                                (_%rest169550%_
                                                 _%tl169484169540%_))
                                            (_%K169482169535%_
                                             _%rest169550%_
                                             _%id169548%_))
                                          (let ((_%hd169525%_
                                                 _%hd169483169538%_)
                                                (_%rest169527%_
                                                 _%tl169484169540%_))
                                            (_%K169479169517%_
                                             _%rest169527%_
                                             _%hd169525%_))))
                                    (let ((_%hd169525%_ _%hd169483169538%_)
                                          (_%rest169527%_ _%tl169484169540%_))
                                      (_%K169479169517%_
                                       _%rest169527%_
                                       _%hd169525%_))))
                              (_%else169477169496%_)))))))
                 (_%compile-inner169357%_
                  (lambda (_%pre169458%_
                           _%bind169459%_
                           _%post169460%_
                           _%body169461%_)
                    (if (null? _%pre169458%_)
                        (_%compile-bind169358%_
                         _%bind169459%_
                         _%post169460%_
                         _%body169461%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre169458%_)
                                     (cons (_%compile-bind169358%_
                                            _%bind169459%_
                                            _%post169460%_
                                            _%body169461%_)
                                           '())))
                         _%stx169353%_))))
                 (_%compile-bind169358%_
                  (lambda (_%bind169454%_ _%post169455%_ _%body169456%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind169454%_)
                                 (cons (_%compile-post169359%_
                                        _%post169455%_
                                        _%body169456%_)
                                       '())))
                     _%stx169353%_)))
                 (_%compile-post169359%_
                  (lambda (_%post169361%_ _%body169362%_)
                    (let _%lp169364%_ ((_%rest169366%_ _%post169361%_)
                                       (_%check169367%_ '())
                                       (_%bind169368%_ '()))
                      (let* ((_%rest169369169381%_ _%rest169366%_)
                             (_%else169371169389%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp170945
                                              (let ((__tmp170946
                                                     (cons _%body169362%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp170946
                                                 _%bind169368%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp170945
                                          _%check169367%_)))
                                 _%stx169353%_)))
                             (_%K169373169428%_
                              (lambda (_%rest169392%_
                                       _%init169393%_
                                       _%len169394%_
                                       _%tmp169395%_)
                                (_%lp169364%_
                                 _%rest169392%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp169395%_
                                                    (cons _%len169394%_ '())))
                                        _%stx169353%_)
                                       _%check169367%_)
                                 (let ((__tmp170947
                                        (lambda (_%hd169397%_ _%r169398%_)
                                          (let* ((_%hd169399169406%_
                                                  _%hd169397%_)
                                                 (_%E169401169410%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd169399169406%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K169402169416%_
                                                  (lambda (_%k169413%_
                                                           _%id169414%_)
                                                    (cons (cons 'set!
                                                                (cons _%id169414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp169395%_
                                                (cons _%k169413%_ '())))
                                    '())))
                  _%r169398%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd169399169406%_)
                                                (let ((_%hd169403169419%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd169399169406%_)))
                                                      (_%tl169404169421%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd169399169406%_))))
                                                  (let* ((_%id169424%_
                                                          _%hd169403169419%_)
                                                         (_%k169426%_
                                                          _%tl169404169421%_))
                                                    (_%K169402169416%_
                                                     _%k169426%_
                                                     _%id169424%_)))
                                                (_%E169401169410%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp170947
                                    _%bind169368%_
                                    _%init169393%_))))))
                        (if (pair? _%rest169369169381%_)
                            (let ((_%hd169374169431%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest169369169381%_)))
                                  (_%tl169375169433%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest169369169381%_))))
                              (if (pair? _%hd169374169431%_)
                                  (let ((_%hd169376169436%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd169374169431%_)))
                                        (_%tl169377169438%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd169374169431%_))))
                                    (let ((_%tmp169441%_ _%hd169376169436%_))
                                      (if (pair? _%tl169377169438%_)
                                          (let ((_%hd169378169443%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl169377169438%_)))
                                                (_%tl169379169445%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl169377169438%_))))
                                            (let* ((_%len169448%_
                                                    _%hd169378169443%_)
                                                   (_%init169450%_
                                                    _%tl169379169445%_)
                                                   (_%rest169452%_
                                                    _%tl169375169433%_))
                                              (_%K169373169428%_
                                               _%rest169452%_
                                               _%init169450%_
                                               _%len169448%_
                                               _%tmp169441%_)))
                                          (_%else169371169389%_))))
                                  (_%else169371169389%_)))
                            (_%else169371169389%_)))))))
          (__compile-let-form
           _%stx169353%_
           _%compile-simple169355%_
           _%compile-values169356%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx169104%_)
        (letrec ((_%compile-simple169106%_
                  (lambda (_%hd-ids169349%_ _%exprs169350%_ _%body169351%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp170948
                                        (map __compile-head-id
                                             _%hd-ids169349%_)))
                                   (declare (not safe))
                                   (##map list __tmp170948 _%exprs169350%_))
                                 (cons _%body169351%_ '())))
                     _%stx169104%_)))
                 (_%compile-values169107%_
                  (lambda (_%hd-ids169256%_ _%exprs169257%_ _%body169258%_)
                    (let _%lp169260%_ ((_%rest169262%_ _%hd-ids169256%_)
                                       (_%exprs169263%_ _%exprs169257%_)
                                       (_%bind169264%_ '())
                                       (_%post169265%_ '()))
                      (let* ((_%rest169266169280%_ _%rest169262%_)
                             (_%else169269169288%_
                              (lambda ()
                                (_%compile-bind169108%_
                                 _%bind169264%_
                                 _%post169265%_
                                 _%body169258%_))))
                        (let ((_%K169274169332%_
                               (lambda (_%rest169327%_ _%hd169328%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd169328%_))
                                     (let ((_%id169330%_
                                            (__SRC__0 _%hd169328%_)))
                                       (_%lp169260%_
                                        _%rest169327%_
                                        (cdr _%exprs169263%_)
                                        (cons (cons _%id169330%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind169264%_)
                                        (cons (cons _%id169330%_
                                                    (cons (car _%exprs169263%_)
                                                          '()))
                                              _%post169265%_)))
                                     (_%lp169260%_
                                      _%rest169327%_
                                      (cdr _%exprs169263%_)
                                      _%bind169264%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs169263%_)
                                                        '()))
                                            _%post169265%_)))))
                              (_%K169271169312%_
                               (lambda (_%rest169292%_ _%hd169293%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd169293%_))
                                     (let ((_%id169296%_
                                            (__SRC__0 _%hd169293%_)))
                                       (_%lp169260%_
                                        _%rest169292%_
                                        (cdr _%exprs169263%_)
                                        (cons (cons _%id169296%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind169264%_)
                                        (cons (cons _%id169296%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs169263%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post169265%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd169293%_))
                                         (if (list? _%hd169293%_)
                                             (let* ((_%len169300%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd169293%_)))
                                                    (_%tmp169302%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp169260%_
                                                _%rest169292%_
                                                (cdr _%exprs169263%_)
                                                (let ((__tmp170949
                                                       (lambda (_%id169305%_
                                                                _%r169306%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id169305%_))
                     (cons (cons (__SRC__0 _%id169305%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r169306%_)
                     _%r169306%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp170949
                                                   _%bind169264%_
                                                   _%hd169293%_))
                                                (cons (cons _%tmp169302%_
                                                            (cons (car _%exprs169263%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len169300%_
                                (let ((__tmp170951
                                       (lambda (_%id169308%_ _%k169309%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id169308%_))
                                             (cons (__SRC__0 _%id169308%_)
                                                   _%k169309%_)
                                             '#f)))
                                      (__tmp170950
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len169300%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp170951
                                   _%hd169293%_
                                   __tmp170950)))))
              _%post169265%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx169104%_
                                              _%hd169293%_))
                                         (_%lp169260%_
                                          _%rest169292%_
                                          (cdr _%exprs169263%_)
                                          _%bind169264%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs169263%_)
                                                            '()))
                                                _%post169265%_)))))))
                          (if (pair? _%rest169266169280%_)
                              (let ((_%tl169276169337%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest169266169280%_)))
                                    (_%hd169275169335%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest169266169280%_))))
                                (if (pair? _%hd169275169335%_)
                                    (let ((_%tl169278169342%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd169275169335%_)))
                                          (_%hd169277169340%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd169275169335%_))))
                                      (if (null? _%tl169278169342%_)
                                          (let ((_%hd169345%_
                                                 _%hd169277169340%_)
                                                (_%rest169347%_
                                                 _%tl169276169337%_))
                                            (_%K169274169332%_
                                             _%rest169347%_
                                             _%hd169345%_))
                                          (let ((_%hd169320%_
                                                 _%hd169275169335%_)
                                                (_%rest169322%_
                                                 _%tl169276169337%_))
                                            (_%K169271169312%_
                                             _%rest169322%_
                                             _%hd169320%_))))
                                    (let ((_%hd169320%_ _%hd169275169335%_)
                                          (_%rest169322%_ _%tl169276169337%_))
                                      (_%K169271169312%_
                                       _%rest169322%_
                                       _%hd169320%_))))
                              (_%else169269169288%_)))))))
                 (_%compile-bind169108%_
                  (lambda (_%bind169252%_ _%post169253%_ _%body169254%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind169252%_)
                                 (cons (_%compile-post169109%_
                                        _%post169253%_
                                        _%body169254%_)
                                       '())))
                     _%stx169104%_)))
                 (_%compile-post169109%_
                  (lambda (_%post169111%_ _%body169112%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp170952
                                  (let ((__tmp170954
                                         (lambda (_%hd169114%_ _%r169115%_)
                                           (let* ((_%hd169116169139%_
                                                   _%hd169114%_)
                                                  (_%E169120169143%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd169116169139%_
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
                                             (let ((_%K169133169237%_
                                                    (lambda (_%expr169235%_)
                                                      (cons _%expr169235%_
                                                            _%r169115%_)))
                                                   (_%K169128169215%_
                                                    (lambda (_%expr169212%_
                                                             _%id169213%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id169213%_ (cons _%expr169212%_ '())))
                     _%stx169104%_)
                    _%r169115%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K169121169182%_
                                                    (lambda (_%init169147%_
                                                             _%len169148%_
                                                             _%expr169149%_
                                                             _%tmp169150%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp169150%_
                                             (cons _%expr169149%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp169150%_
                                                    (cons _%len169148%_ '())))
                                        _%stx169104%_)
                                       (let ((__tmp170955
                                              (map (lambda (_%hd169152%_)
                                                     (let* ((_%hd169153169160%_
                                                             _%hd169152%_)
                                                            (_%E169155169164%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd169153169160%_
                                '([id . k])))
                       '#!void))
                    (_%K169156169170%_
                     (lambda (_%k169167%_ _%id169168%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id169168%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp169150%_
                                                      (cons _%k169167%_ '())))
                                          '())))
                        _%stx169104%_))))
               (if (pair? _%hd169153169160%_)
                   (let ((_%hd169157169173%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd169153169160%_)))
                         (_%tl169158169175%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd169153169160%_))))
                     (let* ((_%id169178%_ _%hd169157169173%_)
                            (_%k169180%_ _%tl169158169175%_))
                       (_%K169156169170%_ _%k169180%_ _%id169178%_)))
                   (_%E169155169164%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init169147%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp170955)))))
                     _%stx169104%_)
                    _%r169115%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match170810170811%_
                                                       (lambda (_%hd169122169185%_
                                                                _%tl169123169187%_
                                                                _%hd169124169192%_
                                                                _%tl169125169194%_)
                                                         (let ((_%tmp169190%_
                                                                _%hd169122169185%_)
                                                               (_%expr169197%_
                                                                _%hd169124169192%_))
                                                           (_%E169120169143%_))))
                                                      (_%__match170804170805%_
                                                       (lambda (_%hd169122169185%_
                                                                _%tl169123169187%_)
                                                         (let ((_%tmp169190%_
                                                                _%hd169122169185%_))
                                                           (_%E169120169143%_)))))
                                                 (if (pair? _%hd169116169139%_)
                                                     (let ((_%tl169135169242%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd169116169139%_)))
                                                           (_%hd169134169240%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd169116169139%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd169134169240%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl169135169242%_)
                       (let ((_%tl169137169247%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl169135169242%_)))
                             (_%hd169136169245%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl169135169242%_))))
                         (if (null? _%tl169137169247%_)
                             (let ((_%expr169250%_ _%hd169136169245%_))
                               (_%K169133169237%_ _%expr169250%_))
                             (if (pair? _%tl169137169247%_)
                                 (let ((_%tl169127169201%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl169137169247%_)))
                                       (_%hd169126169199%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl169137169247%_))))
                                   (let ((_%tmp169190%_ _%hd169134169240%_)
                                         (_%expr169197%_ _%hd169136169245%_)
                                         (_%len169204%_ _%hd169126169199%_)
                                         (_%init169206%_ _%tl169127169201%_))
                                     (_%K169121169182%_
                                      _%init169206%_
                                      _%len169204%_
                                      _%expr169197%_
                                      _%tmp169190%_)))
                                 (_%__match170810170811%_
                                  _%hd169134169240%_
                                  _%tl169135169242%_
                                  _%hd169136169245%_
                                  _%tl169137169247%_))))
                       (_%__match170804170805%_
                        _%hd169134169240%_
                        _%tl169135169242%_))
                   (if (pair? _%tl169135169242%_)
                       (let ((_%tl169132169227%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl169135169242%_)))
                             (_%hd169131169225%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl169135169242%_))))
                         (if (null? _%tl169132169227%_)
                             (let ((_%id169223%_ _%hd169134169240%_)
                                   (_%expr169230%_ _%hd169131169225%_))
                               (_%K169128169215%_ _%expr169230%_ _%id169223%_))
                             (if (pair? _%tl169132169227%_)
                                 (let ((_%tl169127169201%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl169132169227%_)))
                                       (_%hd169126169199%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl169132169227%_))))
                                   (let ((_%tmp169190%_ _%hd169134169240%_)
                                         (_%expr169197%_ _%hd169131169225%_)
                                         (_%len169204%_ _%hd169126169199%_)
                                         (_%init169206%_ _%tl169127169201%_))
                                     (_%K169121169182%_
                                      _%init169206%_
                                      _%len169204%_
                                      _%expr169197%_
                                      _%tmp169190%_)))
                                 (_%__match170810170811%_
                                  _%hd169134169240%_
                                  _%tl169135169242%_
                                  _%hd169131169225%_
                                  _%tl169132169227%_))))
                       (_%__match170804170805%_
                        _%hd169134169240%_
                        _%tl169135169242%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E169120169143%_)))))))
                                        (__tmp170953 (list _%body169112%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp170954
                                     __tmp170953
                                     _%post169111%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp170952)))
                     _%stx169104%_))))
          (__compile-let-form
           _%stx169104%_
           _%compile-simple169106%_
           _%compile-values169107%_))))
    (define __compile-call%
      (lambda (_%stx169064%_)
        (let* ((_%$e169066%_ _%stx169064%_)
               (_%$E169068169077%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169066%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169066%_))
              (let* ((_%$tgt169069169080%_
                      (let () (declare (not safe)) (__AST-e _%$e169066%_)))
                     (_%$hd169070169083%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169069169080%_)))
                     (_%$tl169071169086%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169069169080%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl169071169086%_))
                    (let* ((_%$tgt169072169090%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl169071169086%_)))
                           (_%$hd169073169093%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt169072169090%_)))
                           (_%$tl169074169096%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt169072169090%_)))
                           (_%rator169100%_ _%$hd169073169093%_)
                           (_%rands169102%_ _%$tl169074169096%_))
                      (__SRC__%
                       (cons (__compile _%rator169100%_)
                             (map __compile _%rands169102%_))
                       _%stx169064%_))
                    (_%$E169068169077%_)))
              (_%$E169068169077%_)))))
    (define __compile-ref%
      (lambda (_%stx169026%_)
        (let* ((_%$e169028%_ _%stx169026%_)
               (_%$E169030169039%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169028%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169028%_))
              (let* ((_%$tgt169031169042%_
                      (let () (declare (not safe)) (__AST-e _%$e169028%_)))
                     (_%$hd169032169045%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169031169042%_)))
                     (_%$tl169033169048%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169031169042%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl169033169048%_))
                    (let* ((_%$tgt169034169052%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl169033169048%_)))
                           (_%$hd169035169055%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt169034169052%_)))
                           (_%$tl169036169058%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt169034169052%_)))
                           (_%id169062%_ _%$hd169035169055%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl169036169058%_))
                                  '())
                          (__SRC__% _%id169062%_ _%stx169026%_)
                          (_%$E169030169039%_)))
                    (_%$E169030169039%_)))
              (_%$E169030169039%_)))))
    (define __compile-setq%
      (lambda (_%stx168973%_)
        (let* ((_%$e168975%_ _%stx168973%_)
               (_%$E168977168989%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168975%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168975%_))
              (let* ((_%$tgt168978168992%_
                      (let () (declare (not safe)) (__AST-e _%$e168975%_)))
                     (_%$hd168979168995%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168978168992%_)))
                     (_%$tl168980168998%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168978168992%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168980168998%_))
                    (let* ((_%$tgt168981169002%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168980168998%_)))
                           (_%$hd168982169005%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168981169002%_)))
                           (_%$tl168983169008%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168981169002%_)))
                           (_%id169012%_ _%$hd168982169005%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168983169008%_))
                          (let* ((_%$tgt168984169014%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168983169008%_)))
                                 (_%$hd168985169017%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168984169014%_)))
                                 (_%$tl168986169020%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168984169014%_)))
                                 (_%expr169024%_ _%$hd168985169017%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168986169020%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id169012%_
                                              _%stx168973%_)
                                             (cons (__compile _%expr169024%_)
                                                   '())))
                                 _%stx168973%_)
                                (_%$E168977168989%_)))
                          (_%$E168977168989%_)))
                    (_%$E168977168989%_)))
              (_%$E168977168989%_)))))
    (define __compile-if%
      (lambda (_%stx168905%_)
        (let* ((_%$e168907%_ _%stx168905%_)
               (_%$E168909168924%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168907%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168907%_))
              (let* ((_%$tgt168910168927%_
                      (let () (declare (not safe)) (__AST-e _%$e168907%_)))
                     (_%$hd168911168930%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168910168927%_)))
                     (_%$tl168912168933%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168910168927%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168912168933%_))
                    (let* ((_%$tgt168913168937%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168912168933%_)))
                           (_%$hd168914168940%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168913168937%_)))
                           (_%$tl168915168943%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168913168937%_)))
                           (_%p168947%_ _%$hd168914168940%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168915168943%_))
                          (let* ((_%$tgt168916168949%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168915168943%_)))
                                 (_%$hd168917168952%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168916168949%_)))
                                 (_%$tl168918168955%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168916168949%_)))
                                 (_%t168959%_ _%$hd168917168952%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl168918168955%_))
                                (let* ((_%$tgt168919168961%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168918168955%_)))
                                       (_%$hd168920168964%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt168919168961%_)))
                                       (_%$tl168921168967%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt168919168961%_)))
                                       (_%f168971%_ _%$hd168920168964%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl168921168967%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p168947%_)
                                                   (cons (__compile
                                                          _%t168959%_)
                                                         (cons (__compile
                                                                _%f168971%_)
                                                               '()))))
                                       _%stx168905%_)
                                      (_%$E168909168924%_)))
                                (_%$E168909168924%_)))
                          (_%$E168909168924%_)))
                    (_%$E168909168924%_)))
              (_%$E168909168924%_)))))
    (define __compile-quote%
      (lambda (_%stx168867%_)
        (let* ((_%$e168869%_ _%stx168867%_)
               (_%$E168871168880%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168869%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168869%_))
              (let* ((_%$tgt168872168883%_
                      (let () (declare (not safe)) (__AST-e _%$e168869%_)))
                     (_%$hd168873168886%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168872168883%_)))
                     (_%$tl168874168889%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168872168883%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168874168889%_))
                    (let* ((_%$tgt168875168893%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168874168889%_)))
                           (_%$hd168876168896%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168875168893%_)))
                           (_%$tl168877168899%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168875168893%_)))
                           (_%e168903%_ _%$hd168876168896%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168877168899%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e168903%_))
                                       '()))
                           _%stx168867%_)
                          (_%$E168871168880%_)))
                    (_%$E168871168880%_)))
              (_%$E168871168880%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx168829%_)
        (let* ((_%$e168831%_ _%stx168829%_)
               (_%$E168833168842%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168831%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168831%_))
              (let* ((_%$tgt168834168845%_
                      (let () (declare (not safe)) (__AST-e _%$e168831%_)))
                     (_%$hd168835168848%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168834168845%_)))
                     (_%$tl168836168851%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168834168845%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168836168851%_))
                    (let* ((_%$tgt168837168855%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168836168851%_)))
                           (_%$hd168838168858%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168837168855%_)))
                           (_%$tl168839168861%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168837168855%_)))
                           (_%e168865%_ _%$hd168838168858%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168839168861%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e168865%_ '()))
                           _%stx168829%_)
                          (_%$E168833168842%_)))
                    (_%$E168833168842%_)))
              (_%$E168833168842%_)))))
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
