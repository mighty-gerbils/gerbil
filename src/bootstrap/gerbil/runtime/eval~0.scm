(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1742226231)
  (begin
    (define __syntax::t
      (let ((__tmp116049 (list)) (__tmp116048 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp116049
         '(e id)
         __tmp116048
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args115853%_
        (apply make-instance __syntax::t _%$args115853%_)))
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
      (let ((__tmp116051 (list __syntax::t))
            (__tmp116050 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp116051
         '()
         __tmp116050
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args115850%_
        (apply make-instance __core-form::t _%$args115850%_)))
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
      (let ((__tmp116053 (list __core-form::t))
            (__tmp116052 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp116053
         '()
         __tmp116052
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args115847%_
        (apply make-instance __core-expression::t _%$args115847%_)))
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
      (let ((__tmp116055 (list __core-form::t))
            (__tmp116054 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp116055
         '()
         __tmp116054
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args115844%_
        (apply make-instance __core-special-form::t _%$args115844%_)))
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
      (lambda (_%id115842%_)
        (let ((__tmp116056
               (let () (declare (not safe)) (__AST-e _%id115842%_))))
          (declare (not safe))
          (__hash-get __core __tmp116056))))
    (define __core-bound-id?__%
      (lambda (_%id115825%_ _%is?115826%_)
        (let ((_%$e115828%_ (__core-resolve _%id115825%_)))
          (if _%$e115828%_ (_%is?115826%_ _%$e115828%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id115835%_)
        (let ((_%is?115837%_ true))
          (__core-bound-id?__% _%id115835%_ _%is?115837%_))))
    (define __core-bound-id?
      (lambda _g116058_
        (let ((_g116057_ (let () (declare (not safe)) (##length _g116058_))))
          (cond ((let () (declare (not safe)) (##fx= _g116057_ 1))
                 (apply __core-bound-id?__0 _g116058_))
                ((let () (declare (not safe)) (##fx= _g116057_ 2))
                 (apply __core-bound-id?__% _g116058_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g116058_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id115808%_ _%e115809%_ _%make115810%_)
        (let ((__tmp116059
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e115809%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e115809%_
                   (_%make115810%_ _%e115809%_ _%id115808%_))))
          (declare (not safe))
          (__hash-put! __core _%id115808%_ __tmp116059))))
    (define __core-bind-syntax!__0
      (lambda (_%id115815%_ _%e115816%_)
        (let ((_%make115818%_ make-__syntax))
          (__core-bind-syntax!__% _%id115815%_ _%e115816%_ _%make115818%_))))
    (define __core-bind-syntax!
      (lambda _g116061_
        (let ((_g116060_ (let () (declare (not safe)) (##length _g116061_))))
          (cond ((let () (declare (not safe)) (##fx= _g116060_ 2))
                 (apply __core-bind-syntax!__0 _g116061_))
                ((let () (declare (not safe)) (##fx= _g116060_ 3))
                 (apply __core-bind-syntax!__% _g116061_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g116061_))))))
    (define __SRC__%
      (lambda (_%e115788%_ _%src-stx115789%_)
        (if (or (pair? _%e115788%_) (symbol? _%e115788%_))
            (let ((__tmp116062
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx115789%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx115789%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e115788%_ __tmp116062))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e115788%_ 'gerbil#AST::t))
                (let ((__tmp116064
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e115788%_ '1 '#f '#f)))
                      (__tmp116063
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e115788%_)))))
                  (declare (not safe))
                  (##make-source __tmp116064 __tmp116063))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e115788%_))))))
    (define __SRC__0
      (lambda (_%e115800%_)
        (let ((_%src-stx115802%_ '#f))
          (__SRC__% _%e115800%_ _%src-stx115802%_))))
    (define __SRC
      (lambda _g116066_
        (let ((_g116065_ (let () (declare (not safe)) (##length _g116066_))))
          (cond ((let () (declare (not safe)) (##fx= _g116065_ 1))
                 (apply __SRC__0 _g116066_))
                ((let () (declare (not safe)) (##fx= _g116065_ 2))
                 (apply __SRC__% _g116066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g116066_))))))
    (define __locat
      (lambda (_%loc115785%_)
        (if (let () (declare (not safe)) (##locat? _%loc115785%_))
            _%loc115785%_
            '#f)))
    (define __check-values
      (lambda (_%obj115780%_ _%k115781%_)
        (let ((_%count115783%_
               (if (let () (declare (not safe)) (##values? _%obj115780%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj115780%_))
                   '1)))
          (if (fx= _%count115783%_ _%k115781%_)
              '#!void
              (let ((__tmp116068
                     (if (fx< _%count115783%_ _%k115781%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp116067
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj115780%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj115780%_))
                         _%obj115780%_)))
                (declare (not safe))
                (error __tmp116068 __tmp116067 _%k115781%_))))))
    (define __compile
      (lambda (_%stx115749%_)
        (let* ((_%$e115751%_ _%stx115749%_)
               (_%$E115753115759%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115751%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115751%_))
              (let* ((_%$tgt115754115762%_
                      (let () (declare (not safe)) (__AST-e _%$e115751%_)))
                     (_%$hd115755115765%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115754115762%_)))
                     (_%$tl115756115768%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115754115762%_)))
                     (_%form115772%_ _%$hd115755115765%_)
                     (_%$e115774%_ (__core-resolve _%form115772%_)))
                (if _%$e115774%_
                    ((lambda (_%bind115777%_)
                       ((##structure-ref _%bind115777%_ '1 __syntax::t '#f)
                        _%stx115749%_))
                     _%$e115774%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx115749%_
                       _%form115772%_))))
              (_%$E115753115759%_)))))
    (define __compile-error__%
      (lambda (_%stx115736%_ _%detail115737%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx115736%_
           _%detail115737%_))))
    (define __compile-error__0
      (lambda (_%stx115742%_)
        (let ((_%detail115744%_ '#f))
          (__compile-error__% _%stx115742%_ _%detail115744%_))))
    (define __compile-error
      (lambda _g116070_
        (let ((_g116069_ (let () (declare (not safe)) (##length _g116070_))))
          (cond ((let () (declare (not safe)) (##fx= _g116069_ 1))
                 (apply __compile-error__0 _g116070_))
                ((let () (declare (not safe)) (##fx= _g116069_ 2))
                 (apply __compile-error__% _g116070_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g116070_))))))
    (define __compile-ignore%
      (lambda (_%stx115733%_) (__SRC__% ''#!void _%stx115733%_)))
    (define __compile-begin%
      (lambda (_%stx115708%_)
        (let* ((_%$e115710%_ _%stx115708%_)
               (_%$E115712115718%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115710%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115710%_))
              (let* ((_%$tgt115713115721%_
                      (let () (declare (not safe)) (__AST-e _%$e115710%_)))
                     (_%$hd115714115724%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115713115721%_)))
                     (_%$tl115715115727%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115713115721%_)))
                     (_%body115731%_ _%$tl115715115727%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body115731%_))
                 _%stx115708%_))
              (_%$E115712115718%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx115683%_)
        (let* ((_%$e115685%_ _%stx115683%_)
               (_%$E115687115693%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115685%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115685%_))
              (let* ((_%$tgt115688115696%_
                      (let () (declare (not safe)) (__AST-e _%$e115685%_)))
                     (_%$hd115689115699%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115688115696%_)))
                     (_%$tl115690115702%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115688115696%_)))
                     (_%body115706%_ _%$tl115690115702%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body115706%_)))
                 _%stx115683%_))
              (_%$E115687115693%_)))))
    (define __compile-import%
      (lambda (_%stx115658%_)
        (let* ((_%$e115660%_ _%stx115658%_)
               (_%$E115662115668%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115660%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115660%_))
              (let* ((_%$tgt115663115671%_
                      (let () (declare (not safe)) (__AST-e _%$e115660%_)))
                     (_%$hd115664115674%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115663115671%_)))
                     (_%$tl115665115677%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115663115671%_)))
                     (_%body115681%_ _%$tl115665115677%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body115681%_ '())) '()))
                 _%stx115658%_))
              (_%$E115662115668%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx115605%_)
        (let* ((_%$e115607%_ _%stx115605%_)
               (_%$E115609115621%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115607%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115607%_))
              (let* ((_%$tgt115610115624%_
                      (let () (declare (not safe)) (__AST-e _%$e115607%_)))
                     (_%$hd115611115627%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115610115624%_)))
                     (_%$tl115612115630%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115610115624%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl115612115630%_))
                    (let* ((_%$tgt115613115634%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl115612115630%_)))
                           (_%$hd115614115637%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt115613115634%_)))
                           (_%$tl115615115640%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt115613115634%_)))
                           (_%ann115644%_ _%$hd115614115637%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl115615115640%_))
                          (let* ((_%$tgt115616115646%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl115615115640%_)))
                                 (_%$hd115617115649%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115616115646%_)))
                                 (_%$tl115618115652%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115616115646%_)))
                                 (_%expr115656%_ _%$hd115617115649%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl115618115652%_))
                                        '())
                                (__compile _%expr115656%_)
                                (_%$E115609115621%_)))
                          (_%$E115609115621%_)))
                    (_%$E115609115621%_)))
              (_%$E115609115621%_)))))
    (define __compile-define-values%
      (lambda (_%stx115496%_)
        (let* ((_%$e115498%_ _%stx115496%_)
               (_%$E115500115512%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115498%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115498%_))
              (let* ((_%$tgt115501115515%_
                      (let () (declare (not safe)) (__AST-e _%$e115498%_)))
                     (_%$hd115502115518%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115501115515%_)))
                     (_%$tl115503115521%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115501115515%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl115503115521%_))
                    (let* ((_%$tgt115504115525%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl115503115521%_)))
                           (_%$hd115505115528%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt115504115525%_)))
                           (_%$tl115506115531%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt115504115525%_)))
                           (_%hd115535%_ _%$hd115505115528%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl115506115531%_))
                          (let* ((_%$tgt115507115537%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl115506115531%_)))
                                 (_%$hd115508115540%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115507115537%_)))
                                 (_%$tl115509115543%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115507115537%_)))
                                 (_%expr115547%_ _%$hd115508115540%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl115509115543%_))
                                        '())
                                (let* ((_%$e115549%_ _%hd115535%_)
                                       (_%$E115551115592%_
                                        (lambda ()
                                          (let ((_%$E115552115577%_
                                                 (lambda ()
                                                   (let* ((_%$E115553115564%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e115549%_))))
                  (_%ids115567%_ _%hd115535%_)
                  (_%len115569%_ (length _%ids115567%_))
                  (_%tmp115571%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp115571%_
                                       (cons (__compile _%expr115547%_) '())))
                           _%stx115496%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp115571%_
                                             (cons _%len115569%_ '())))
                                 _%stx115496%_)
                                (let ((__tmp116071
                                       (let ((__tmp116073
                                              (lambda (_%id115574%_
                                                       _%k115575%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id115574%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id115574%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp115571%_
                                           (cons _%k115575%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx115496%_)
                                                    '#f)))
                                             (__tmp116072
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len115569%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp116073
                                          _%ids115567%_
                                          __tmp116072))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp116071)))))
              _%stx115496%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e115549%_))
                                                (let* ((_%$tgt115554115580%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e115549%_)))
                                                       (_%$hd115555115583%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt115554115580%_)))
                                                       (_%$tl115556115586%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt115554115580%_)))
                                                       (_%id115590%_
                                                        _%$hd115555115583%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl115556115586%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id115590%_)
                           (cons (__compile _%expr115547%_) '())))
               _%stx115496%_)
              (_%$E115552115577%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E115552115577%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e115549%_))
                                      (let* ((_%$tgt115557115595%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e115549%_)))
                                             (_%$hd115558115598%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt115557115595%_)))
                                             (_%$tl115559115601%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt115557115595%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd115558115598%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl115559115601%_))
                                                        '())
                                                (__compile _%expr115547%_)
                                                (_%$E115551115592%_))
                                            (_%$E115551115592%_)))
                                      (_%$E115551115592%_)))
                                (_%$E115500115512%_)))
                          (_%$E115500115512%_)))
                    (_%$E115500115512%_)))
              (_%$E115500115512%_)))))
    (define __compile-head-id
      (lambda (_%e115494%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e115494%_))
             _%e115494%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd115451%_)
        (let _%recur115453%_ ((_%rest115455%_ _%hd115451%_))
          (let* ((_%$e115457%_ _%rest115455%_)
                 (_%$E115459115477%_
                  (lambda ()
                    (let ((_%$E115460115474%_
                           (lambda ()
                             (let* ((_%$E115461115469%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e115457%_))))
                                    (_%tail115472%_ _%$e115457%_))
                               (__compile-head-id _%tail115472%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115457%_))
                                  '())
                          '()
                          (_%$E115460115474%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e115457%_))
                (let* ((_%$tgt115462115480%_
                        (let () (declare (not safe)) (__AST-e _%$e115457%_)))
                       (_%$hd115463115483%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt115462115480%_)))
                       (_%$tl115464115486%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt115462115480%_)))
                       (_%hd115490%_ _%$hd115463115483%_)
                       (_%rest115492%_ _%$tl115464115486%_))
                  (cons (__compile-head-id _%hd115490%_)
                        (_%recur115453%_ _%rest115492%_)))
                (_%$E115459115477%_))))))
    (define __compile-lambda%
      (lambda (_%stx115398%_)
        (let* ((_%$e115400%_ _%stx115398%_)
               (_%$E115402115414%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115400%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115400%_))
              (let* ((_%$tgt115403115417%_
                      (let () (declare (not safe)) (__AST-e _%$e115400%_)))
                     (_%$hd115404115420%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115403115417%_)))
                     (_%$tl115405115423%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115403115417%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl115405115423%_))
                    (let* ((_%$tgt115406115427%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl115405115423%_)))
                           (_%$hd115407115430%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt115406115427%_)))
                           (_%$tl115408115433%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt115406115427%_)))
                           (_%hd115437%_ _%$hd115407115430%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl115408115433%_))
                          (let* ((_%$tgt115409115439%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl115408115433%_)))
                                 (_%$hd115410115442%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115409115439%_)))
                                 (_%$tl115411115445%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115409115439%_)))
                                 (_%body115449%_ _%$hd115410115442%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl115411115445%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd115437%_)
                                             (cons (__compile _%body115449%_)
                                                   '())))
                                 _%stx115398%_)
                                (_%$E115402115414%_)))
                          (_%$E115402115414%_)))
                    (_%$E115402115414%_)))
              (_%$E115402115414%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx115190%_)
        (letrec ((_%variadic?115192%_
                  (lambda (_%hd115363%_)
                    (let* ((_%$e115365%_ _%hd115363%_)
                           (_%$E115367115383%_
                            (lambda ()
                              (let ((_%$E115368115380%_
                                     (lambda ()
                                       (let ((_%$E115369115377%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e115365%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e115365%_))
                                            '())
                                    '#f
                                    (_%$E115368115380%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e115365%_))
                          (let* ((_%$tgt115370115386%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115365%_)))
                                 (_%$hd115371115389%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115370115386%_)))
                                 (_%$tl115372115392%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115370115386%_)))
                                 (_%rest115396%_ _%$tl115372115392%_))
                            (_%variadic?115192%_ _%rest115396%_))
                          (_%$E115367115383%_)))))
                 (_%arity115193%_
                  (lambda (_%hd115328%_)
                    (let _%lp115330%_ ((_%rest115332%_ _%hd115328%_)
                                       (_%k115333%_ '0))
                      (let* ((_%$e115335%_ _%rest115332%_)
                             (_%$E115337115348%_
                              (lambda ()
                                (let ((_%$E115338115345%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e115335%_)))))
                                  _%k115333%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e115335%_))
                            (let* ((_%$tgt115339115351%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e115335%_)))
                                   (_%$hd115340115354%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt115339115351%_)))
                                   (_%$tl115341115357%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt115339115351%_)))
                                   (_%rest115361%_ _%$tl115341115357%_))
                              (_%lp115330%_
                               _%rest115361%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k115333%_ '1))))
                            (_%$E115337115348%_))))))
                 (_%generate115194%_
                  (lambda (_%rest115255%_ _%args115256%_ _%len115257%_)
                    (let* ((_%$e115259%_ _%rest115255%_)
                           (_%$E115261115272%_
                            (lambda ()
                              (let ((_%$E115262115269%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e115259%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args115256%_ '())))
                                 _%stx115190%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e115259%_))
                          (let* ((_%$tgt115263115275%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115259%_)))
                                 (_%$hd115264115278%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115263115275%_)))
                                 (_%$tl115265115281%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115263115275%_)))
                                 (_%clause115285%_ _%$hd115264115278%_)
                                 (_%rest115287%_ _%$tl115265115281%_)
                                 (_%$e115289%_ _%clause115285%_)
                                 (_%$E115291115300%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e115289%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e115289%_))
                                (let* ((_%$tgt115292115303%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e115289%_)))
                                       (_%$hd115293115306%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt115292115303%_)))
                                       (_%$tl115294115309%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt115292115303%_)))
                                       (_%hd115313%_ _%$hd115293115306%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl115294115309%_))
                                      (let* ((_%$tgt115295115315%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl115294115309%_)))
                                             (_%$hd115296115318%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt115295115315%_)))
                                             (_%$tl115297115321%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt115295115315%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl115297115321%_))
                                                    '())
                                            (let ((_%clen115325%_
                                                   (_%arity115193%_
                                                    _%hd115313%_))
                                                  (_%cmp115326%_
                                                   (if (_%variadic?115192%_
                                                        _%hd115313%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp115326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len115257%_ (cons _%clen115325%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause115285%_))
                                      (cons _%args115256%_ '())))
                          _%stx115190%_)
                         (cons (_%generate115194%_
                                _%rest115287%_
                                _%args115256%_
                                _%len115257%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx115190%_))
                                            (_%$E115291115300%_)))
                                      (_%$E115291115300%_)))
                                (_%$E115291115300%_)))
                          (_%$E115261115272%_))))))
          (let* ((_%$e115196%_ _%stx115190%_)
                 (_%$E115198115230%_
                  (lambda ()
                    (let ((_%$E115199115212%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e115196%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e115196%_))
                          (let* ((_%$tgt115200115215%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115196%_)))
                                 (_%$hd115201115218%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115200115215%_)))
                                 (_%$tl115202115221%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115200115215%_)))
                                 (_%clauses115225%_ _%$tl115202115221%_))
                            (let ((_%args115227%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx115190%_))
                                  (_%len115228%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx115190%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args115227%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len115228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args115227%_ '()))
                                         _%stx115190%_)
                                        '()))
                            '())
                      (cons (_%generate115194%_
                             _%clauses115225%_
                             _%args115227%_
                             _%len115228%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx115190%_)
                                                 '())))
                               _%stx115190%_)))
                          (_%$E115199115212%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e115196%_))
                (let* ((_%$tgt115203115233%_
                        (let () (declare (not safe)) (__AST-e _%$e115196%_)))
                       (_%$hd115204115236%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt115203115233%_)))
                       (_%$tl115205115239%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt115203115233%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl115205115239%_))
                      (let* ((_%$tgt115206115243%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl115205115239%_)))
                             (_%$hd115207115246%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt115206115243%_)))
                             (_%$tl115208115249%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt115206115243%_)))
                             (_%clause115253%_ _%$hd115207115246%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl115208115249%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause115253%_))
                            (_%$E115198115230%_)))
                      (_%$E115198115230%_)))
                (_%$E115198115230%_))))))
    (define __compile-let-form
      (lambda (_%stx114959%_ _%compile-simple114960%_ _%compile-values114961%_)
        (letrec ((_%simple-bind?114963%_
                  (lambda (_%hd115148%_)
                    (let* ((_%hd115149115159%_ _%hd115148%_)
                           (_%else115152115167%_ (lambda () '#f)))
                      (let ((_%K115155115180%_ (lambda (_%id115178%_) '#t))
                            (_%K115154115172%_ (lambda () '#t)))
                        (let ((_%try-match115151115175%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd115149115159%_ '#f))
                                     (_%K115154115172%_)
                                     (_%else115152115167%_)))))
                          (if (pair? _%hd115149115159%_)
                              (let ((_%tl115157115185%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd115149115159%_)))
                                    (_%hd115156115183%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd115149115159%_))))
                                (if (null? _%tl115157115185%_)
                                    (let ((_%id115188%_ _%hd115156115183%_))
                                      (_%K115155115180%_ _%id115188%_))
                                    (_%try-match115151115175%_)))
                              (_%try-match115151115175%_)))))))
                 (_%car-e114964%_
                  (lambda (_%hd115146%_)
                    (if (pair? _%hd115146%_)
                        (let () (declare (not safe)) (##car _%hd115146%_))
                        _%hd115146%_))))
          (let* ((_%$e114966%_ _%stx114959%_)
                 (_%$E114968115111%_
                  (lambda ()
                    (let ((_%$E114969114991%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e114966%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e114966%_))
                          (let* ((_%$tgt114970114994%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114966%_)))
                                 (_%$hd114971114997%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114970114994%_)))
                                 (_%$tl114972115000%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114970114994%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl114972115000%_))
                                (let* ((_%$tgt114973115004%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114972115000%_)))
                                       (_%$hd114974115007%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114973115004%_)))
                                       (_%$tl114975115010%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114973115004%_)))
                                       (_%hd115014%_ _%$hd114974115007%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl114975115010%_))
                                      (let* ((_%$tgt114976115016%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114975115010%_)))
                                             (_%$hd114977115019%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt114976115016%_)))
                                             (_%$tl114978115022%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt114976115016%_)))
                                             (_%body115026%_
                                              _%$hd114977115019%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl114978115022%_))
                                                    '())
                                            (let* ((_%hd-ids115066%_
                                                    (map (lambda (_%bind115028%_)
                                                           (let* ((_%$e115030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind115028%_)
                          (_%$E115032115041%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e115030%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e115030%_))
                         (let* ((_%$tgt115033115044%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e115030%_)))
                                (_%$hd115034115047%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt115033115044%_)))
                                (_%$tl115035115050%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt115033115044%_)))
                                (_%ids115054%_ _%$hd115034115047%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl115035115050%_))
                               (let* ((_%$tgt115036115056%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl115035115050%_)))
                                      (_%$hd115037115059%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt115036115056%_)))
                                      (_%$tl115038115062%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt115036115056%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl115038115062%_))
                                             '())
                                     _%ids115054%_
                                     (_%$E115032115041%_)))
                               (_%$E115032115041%_)))
                         (_%$E115032115041%_))))
                 _%hd115014%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs115106%_
                                                    (map (lambda (_%bind115068%_)
                                                           (let* ((_%$e115070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind115068%_)
                          (_%$E115072115081%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e115070%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e115070%_))
                         (let* ((_%$tgt115073115084%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e115070%_)))
                                (_%$hd115074115087%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt115073115084%_)))
                                (_%$tl115075115090%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt115073115084%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl115075115090%_))
                               (let* ((_%$tgt115076115094%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl115075115090%_)))
                                      (_%$hd115077115097%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt115076115094%_)))
                                      (_%$tl115078115100%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt115076115094%_)))
                                      (_%expr115104%_ _%$hd115077115097%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl115078115100%_))
                                             '())
                                     (__compile _%expr115104%_)
                                     (_%$E115072115081%_)))
                               (_%$E115072115081%_)))
                         (_%$E115072115081%_))))
                 _%hd115014%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body115108%_
                                                    (__compile
                                                     _%body115026%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?114963%_
                                                     _%hd-ids115066%_))
                                                  (_%compile-simple114960%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e114964%_
                                                            _%hd-ids115066%_))
                                                   _%exprs115106%_
                                                   _%body115108%_)
                                                  (_%compile-values114961%_
                                                   _%hd-ids115066%_
                                                   _%exprs115106%_
                                                   _%body115108%_)))
                                            (_%$E114969114991%_)))
                                      (_%$E114969114991%_)))
                                (_%$E114969114991%_)))
                          (_%$E114969114991%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e114966%_))
                (let* ((_%$tgt114979115114%_
                        (let () (declare (not safe)) (__AST-e _%$e114966%_)))
                       (_%$hd114980115117%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt114979115114%_)))
                       (_%$tl114981115120%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt114979115114%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl114981115120%_))
                      (let* ((_%$tgt114982115124%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl114981115120%_)))
                             (_%$hd114983115127%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt114982115124%_)))
                             (_%$tl114984115130%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt114982115124%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd114983115127%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl114984115130%_))
                                (let* ((_%$tgt114985115134%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114984115130%_)))
                                       (_%$hd114986115137%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114985115134%_)))
                                       (_%$tl114987115140%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114985115134%_)))
                                       (_%body115144%_ _%$hd114986115137%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114987115140%_))
                                              '())
                                      (__compile _%body115144%_)
                                      (_%$E114968115111%_)))
                                (_%$E114968115111%_))
                            (_%$E114968115111%_)))
                      (_%$E114968115111%_)))
                (_%$E114968115111%_))))))
    (define __compile-let-values%
      (lambda (_%stx114771%_)
        (letrec ((_%compile-simple114773%_
                  (lambda (_%hd-ids114955%_ _%exprs114956%_ _%body114957%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp116074
                                        (map __compile-head-id
                                             _%hd-ids114955%_)))
                                   (declare (not safe))
                                   (##map list __tmp116074 _%exprs114956%_))
                                 (cons _%body114957%_ '())))
                     _%stx114771%_)))
                 (_%compile-values114774%_
                  (lambda (_%hd-ids114870%_ _%exprs114871%_ _%body114872%_)
                    (let _%lp114874%_ ((_%rest114876%_ _%hd-ids114870%_)
                                       (_%exprs114877%_ _%exprs114871%_)
                                       (_%bind114878%_ '())
                                       (_%post114879%_ '()))
                      (let* ((_%rest114880114894%_ _%rest114876%_)
                             (_%else114883114902%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind114878%_)
                                             (cons (_%compile-post114775%_
                                                    _%post114879%_
                                                    _%body114872%_)
                                                   '())))
                                 _%stx114771%_))))
                        (let ((_%K114888114938%_
                               (lambda (_%rest114935%_ _%id114936%_)
                                 (_%lp114874%_
                                  _%rest114935%_
                                  (cdr _%exprs114877%_)
                                  (cons (cons (__compile-head-id _%id114936%_)
                                              (cons (car _%exprs114877%_) '()))
                                        _%bind114878%_)
                                  _%post114879%_)))
                              (_%K114885114920%_
                               (lambda (_%rest114906%_ _%hd114907%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114907%_))
                                     (_%lp114874%_
                                      _%rest114906%_
                                      (cdr _%exprs114877%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd114907%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs114877%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind114878%_)
                                      _%post114879%_)
                                     (if (list? _%hd114907%_)
                                         (let* ((_%len114911%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd114907%_)))
                                                (_%tmp114913%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp114874%_
                                            _%rest114906%_
                                            (cdr _%exprs114877%_)
                                            (cons (cons _%tmp114913%_
                                                        (cons (car _%exprs114877%_)
                                                              '()))
                                                  _%bind114878%_)
                                            (cons (cons _%tmp114913%_
                                                        (cons _%len114911%_
                                                              (let ((__tmp116076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id114916%_ _%k114917%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id114916%_))
                                   (cons (__SRC__0 _%id114916%_) _%k114917%_)
                                   '#f)))
                            (__tmp116075
                             (let ()
                               (declare (not safe))
                               (##iota _%len114911%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp116076 _%hd114907%_ __tmp116075))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post114879%_)))
                                         (__compile-error__%
                                          _%stx114771%_
                                          _%hd114907%_))))))
                          (if (pair? _%rest114880114894%_)
                              (let ((_%tl114890114943%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest114880114894%_)))
                                    (_%hd114889114941%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest114880114894%_))))
                                (if (pair? _%hd114889114941%_)
                                    (let ((_%tl114892114948%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd114889114941%_)))
                                          (_%hd114891114946%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd114889114941%_))))
                                      (if (null? _%tl114892114948%_)
                                          (let ((_%id114951%_
                                                 _%hd114891114946%_)
                                                (_%rest114953%_
                                                 _%tl114890114943%_))
                                            (_%K114888114938%_
                                             _%rest114953%_
                                             _%id114951%_))
                                          (let ((_%hd114928%_
                                                 _%hd114889114941%_)
                                                (_%rest114930%_
                                                 _%tl114890114943%_))
                                            (_%K114885114920%_
                                             _%rest114930%_
                                             _%hd114928%_))))
                                    (let ((_%hd114928%_ _%hd114889114941%_)
                                          (_%rest114930%_ _%tl114890114943%_))
                                      (_%K114885114920%_
                                       _%rest114930%_
                                       _%hd114928%_))))
                              (_%else114883114902%_)))))))
                 (_%compile-post114775%_
                  (lambda (_%post114777%_ _%body114778%_)
                    (let _%lp114780%_ ((_%rest114782%_ _%post114777%_)
                                       (_%check114783%_ '())
                                       (_%bind114784%_ '()))
                      (let* ((_%rest114785114797%_ _%rest114782%_)
                             (_%else114787114805%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp116077
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind114784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body114778%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx114771%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp116077
                                          _%check114783%_)))
                                 _%stx114771%_)))
                             (_%K114789114844%_
                              (lambda (_%rest114808%_
                                       _%init114809%_
                                       _%len114810%_
                                       _%tmp114811%_)
                                (_%lp114780%_
                                 _%rest114808%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp114811%_
                                                    (cons _%len114810%_ '())))
                                        _%stx114771%_)
                                       _%check114783%_)
                                 (let ((__tmp116078
                                        (lambda (_%hd114813%_ _%r114814%_)
                                          (let* ((_%hd114815114822%_
                                                  _%hd114813%_)
                                                 (_%E114817114826%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd114815114822%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K114818114832%_
                                                  (lambda (_%k114829%_
                                                           _%id114830%_)
                                                    (cons (cons _%id114830%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp114811%_
                                          (cons _%k114829%_ '())))
                              '()))
                  _%r114814%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd114815114822%_)
                                                (let ((_%hd114819114835%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd114815114822%_)))
                                                      (_%tl114820114837%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd114815114822%_))))
                                                  (let* ((_%id114840%_
                                                          _%hd114819114835%_)
                                                         (_%k114842%_
                                                          _%tl114820114837%_))
                                                    (_%K114818114832%_
                                                     _%k114842%_
                                                     _%id114840%_)))
                                                (_%E114817114826%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp116078
                                    _%bind114784%_
                                    _%init114809%_))))))
                        (if (pair? _%rest114785114797%_)
                            (let ((_%hd114790114847%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest114785114797%_)))
                                  (_%tl114791114849%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest114785114797%_))))
                              (if (pair? _%hd114790114847%_)
                                  (let ((_%hd114792114852%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd114790114847%_)))
                                        (_%tl114793114854%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd114790114847%_))))
                                    (let ((_%tmp114857%_ _%hd114792114852%_))
                                      (if (pair? _%tl114793114854%_)
                                          (let ((_%hd114794114859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl114793114854%_)))
                                                (_%tl114795114861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl114793114854%_))))
                                            (let* ((_%len114864%_
                                                    _%hd114794114859%_)
                                                   (_%init114866%_
                                                    _%tl114795114861%_)
                                                   (_%rest114868%_
                                                    _%tl114791114849%_))
                                              (_%K114789114844%_
                                               _%rest114868%_
                                               _%init114866%_
                                               _%len114864%_
                                               _%tmp114857%_)))
                                          (_%else114787114805%_))))
                                  (_%else114787114805%_)))
                            (_%else114787114805%_)))))))
          (__compile-let-form
           _%stx114771%_
           _%compile-simple114773%_
           _%compile-values114774%_))))
    (define __compile-letrec-values%
      (lambda (_%stx114568%_)
        (letrec ((_%compile-simple114570%_
                  (lambda (_%hd-ids114767%_ _%exprs114768%_ _%body114769%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp116079
                                        (map __compile-head-id
                                             _%hd-ids114767%_)))
                                   (declare (not safe))
                                   (##map list __tmp116079 _%exprs114768%_))
                                 (cons _%body114769%_ '())))
                     _%stx114568%_)))
                 (_%compile-values114571%_
                  (lambda (_%hd-ids114678%_ _%exprs114679%_ _%body114680%_)
                    (let _%lp114682%_ ((_%rest114684%_ _%hd-ids114678%_)
                                       (_%exprs114685%_ _%exprs114679%_)
                                       (_%pre114686%_ '())
                                       (_%bind114687%_ '())
                                       (_%post114688%_ '()))
                      (let* ((_%rest114689114703%_ _%rest114684%_)
                             (_%else114692114711%_
                              (lambda ()
                                (_%compile-inner114572%_
                                 _%pre114686%_
                                 _%bind114687%_
                                 _%post114688%_
                                 _%body114680%_))))
                        (let ((_%K114697114750%_
                               (lambda (_%rest114747%_ _%id114748%_)
                                 (_%lp114682%_
                                  _%rest114747%_
                                  (cdr _%exprs114685%_)
                                  _%pre114686%_
                                  (cons (cons (__compile-head-id _%id114748%_)
                                              (cons (car _%exprs114685%_) '()))
                                        _%bind114687%_)
                                  _%post114688%_)))
                              (_%K114694114732%_
                               (lambda (_%rest114715%_ _%hd114716%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114716%_))
                                     (_%lp114682%_
                                      _%rest114715%_
                                      (cdr _%exprs114685%_)
                                      _%pre114686%_
                                      (cons (cons (__compile-head-id
                                                   _%hd114716%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs114685%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind114687%_)
                                      _%post114688%_)
                                     (if (list? _%hd114716%_)
                                         (let* ((_%len114720%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd114716%_)))
                                                (_%tmp114722%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp114682%_
                                            _%rest114715%_
                                            (cdr _%exprs114685%_)
                                            (let ((__tmp116080
                                                   (lambda (_%id114725%_
                                                            _%r114726%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id114725%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id114725%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r114726%_)
                 _%r114726%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp116080
                                               _%pre114686%_
                                               _%hd114716%_))
                                            (cons (cons _%tmp114722%_
                                                        (cons (car _%exprs114685%_)
                                                              '()))
                                                  _%bind114687%_)
                                            (cons (cons _%tmp114722%_
                                                        (cons _%len114720%_
                                                              (let ((__tmp116082
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id114728%_ _%k114729%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id114728%_))
                                   (cons (__SRC__0 _%id114728%_) _%k114729%_)
                                   '#f)))
                            (__tmp116081
                             (let ()
                               (declare (not safe))
                               (##iota _%len114720%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp116082 _%hd114716%_ __tmp116081))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post114688%_)))
                                         (__compile-error__%
                                          _%stx114568%_
                                          _%hd114716%_))))))
                          (if (pair? _%rest114689114703%_)
                              (let ((_%tl114699114755%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest114689114703%_)))
                                    (_%hd114698114753%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest114689114703%_))))
                                (if (pair? _%hd114698114753%_)
                                    (let ((_%tl114701114760%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd114698114753%_)))
                                          (_%hd114700114758%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd114698114753%_))))
                                      (if (null? _%tl114701114760%_)
                                          (let ((_%id114763%_
                                                 _%hd114700114758%_)
                                                (_%rest114765%_
                                                 _%tl114699114755%_))
                                            (_%K114697114750%_
                                             _%rest114765%_
                                             _%id114763%_))
                                          (let ((_%hd114740%_
                                                 _%hd114698114753%_)
                                                (_%rest114742%_
                                                 _%tl114699114755%_))
                                            (_%K114694114732%_
                                             _%rest114742%_
                                             _%hd114740%_))))
                                    (let ((_%hd114740%_ _%hd114698114753%_)
                                          (_%rest114742%_ _%tl114699114755%_))
                                      (_%K114694114732%_
                                       _%rest114742%_
                                       _%hd114740%_))))
                              (_%else114692114711%_)))))))
                 (_%compile-inner114572%_
                  (lambda (_%pre114673%_
                           _%bind114674%_
                           _%post114675%_
                           _%body114676%_)
                    (if (null? _%pre114673%_)
                        (_%compile-bind114573%_
                         _%bind114674%_
                         _%post114675%_
                         _%body114676%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre114673%_)
                                     (cons (_%compile-bind114573%_
                                            _%bind114674%_
                                            _%post114675%_
                                            _%body114676%_)
                                           '())))
                         _%stx114568%_))))
                 (_%compile-bind114573%_
                  (lambda (_%bind114669%_ _%post114670%_ _%body114671%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind114669%_)
                                 (cons (_%compile-post114574%_
                                        _%post114670%_
                                        _%body114671%_)
                                       '())))
                     _%stx114568%_)))
                 (_%compile-post114574%_
                  (lambda (_%post114576%_ _%body114577%_)
                    (let _%lp114579%_ ((_%rest114581%_ _%post114576%_)
                                       (_%check114582%_ '())
                                       (_%bind114583%_ '()))
                      (let* ((_%rest114584114596%_ _%rest114581%_)
                             (_%else114586114604%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp116083
                                              (let ((__tmp116084
                                                     (cons _%body114577%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp116084
                                                 _%bind114583%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp116083
                                          _%check114582%_)))
                                 _%stx114568%_)))
                             (_%K114588114643%_
                              (lambda (_%rest114607%_
                                       _%init114608%_
                                       _%len114609%_
                                       _%tmp114610%_)
                                (_%lp114579%_
                                 _%rest114607%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp114610%_
                                                    (cons _%len114609%_ '())))
                                        _%stx114568%_)
                                       _%check114582%_)
                                 (let ((__tmp116085
                                        (lambda (_%hd114612%_ _%r114613%_)
                                          (let* ((_%hd114614114621%_
                                                  _%hd114612%_)
                                                 (_%E114616114625%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd114614114621%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K114617114631%_
                                                  (lambda (_%k114628%_
                                                           _%id114629%_)
                                                    (cons (cons 'set!
                                                                (cons _%id114629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp114610%_
                                                (cons _%k114628%_ '())))
                                    '())))
                  _%r114613%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd114614114621%_)
                                                (let ((_%hd114618114634%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd114614114621%_)))
                                                      (_%tl114619114636%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd114614114621%_))))
                                                  (let* ((_%id114639%_
                                                          _%hd114618114634%_)
                                                         (_%k114641%_
                                                          _%tl114619114636%_))
                                                    (_%K114617114631%_
                                                     _%k114641%_
                                                     _%id114639%_)))
                                                (_%E114616114625%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp116085
                                    _%bind114583%_
                                    _%init114608%_))))))
                        (if (pair? _%rest114584114596%_)
                            (let ((_%hd114589114646%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest114584114596%_)))
                                  (_%tl114590114648%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest114584114596%_))))
                              (if (pair? _%hd114589114646%_)
                                  (let ((_%hd114591114651%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd114589114646%_)))
                                        (_%tl114592114653%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd114589114646%_))))
                                    (let ((_%tmp114656%_ _%hd114591114651%_))
                                      (if (pair? _%tl114592114653%_)
                                          (let ((_%hd114593114658%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl114592114653%_)))
                                                (_%tl114594114660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl114592114653%_))))
                                            (let* ((_%len114663%_
                                                    _%hd114593114658%_)
                                                   (_%init114665%_
                                                    _%tl114594114660%_)
                                                   (_%rest114667%_
                                                    _%tl114590114648%_))
                                              (_%K114588114643%_
                                               _%rest114667%_
                                               _%init114665%_
                                               _%len114663%_
                                               _%tmp114656%_)))
                                          (_%else114586114604%_))))
                                  (_%else114586114604%_)))
                            (_%else114586114604%_)))))))
          (__compile-let-form
           _%stx114568%_
           _%compile-simple114570%_
           _%compile-values114571%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx114319%_)
        (letrec ((_%compile-simple114321%_
                  (lambda (_%hd-ids114564%_ _%exprs114565%_ _%body114566%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp116086
                                        (map __compile-head-id
                                             _%hd-ids114564%_)))
                                   (declare (not safe))
                                   (##map list __tmp116086 _%exprs114565%_))
                                 (cons _%body114566%_ '())))
                     _%stx114319%_)))
                 (_%compile-values114322%_
                  (lambda (_%hd-ids114471%_ _%exprs114472%_ _%body114473%_)
                    (let _%lp114475%_ ((_%rest114477%_ _%hd-ids114471%_)
                                       (_%exprs114478%_ _%exprs114472%_)
                                       (_%bind114479%_ '())
                                       (_%post114480%_ '()))
                      (let* ((_%rest114481114495%_ _%rest114477%_)
                             (_%else114484114503%_
                              (lambda ()
                                (_%compile-bind114323%_
                                 _%bind114479%_
                                 _%post114480%_
                                 _%body114473%_))))
                        (let ((_%K114489114547%_
                               (lambda (_%rest114542%_ _%hd114543%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114543%_))
                                     (let ((_%id114545%_
                                            (__SRC__0 _%hd114543%_)))
                                       (_%lp114475%_
                                        _%rest114542%_
                                        (cdr _%exprs114478%_)
                                        (cons (cons _%id114545%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind114479%_)
                                        (cons (cons _%id114545%_
                                                    (cons (car _%exprs114478%_)
                                                          '()))
                                              _%post114480%_)))
                                     (_%lp114475%_
                                      _%rest114542%_
                                      (cdr _%exprs114478%_)
                                      _%bind114479%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs114478%_)
                                                        '()))
                                            _%post114480%_)))))
                              (_%K114486114527%_
                               (lambda (_%rest114507%_ _%hd114508%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114508%_))
                                     (let ((_%id114511%_
                                            (__SRC__0 _%hd114508%_)))
                                       (_%lp114475%_
                                        _%rest114507%_
                                        (cdr _%exprs114478%_)
                                        (cons (cons _%id114511%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind114479%_)
                                        (cons (cons _%id114511%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs114478%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post114480%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd114508%_))
                                         (if (list? _%hd114508%_)
                                             (let* ((_%len114515%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd114508%_)))
                                                    (_%tmp114517%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp114475%_
                                                _%rest114507%_
                                                (cdr _%exprs114478%_)
                                                (let ((__tmp116087
                                                       (lambda (_%id114520%_
                                                                _%r114521%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id114520%_))
                     (cons (cons (__SRC__0 _%id114520%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r114521%_)
                     _%r114521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp116087
                                                   _%bind114479%_
                                                   _%hd114508%_))
                                                (cons (cons _%tmp114517%_
                                                            (cons (car _%exprs114478%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len114515%_
                                (let ((__tmp116089
                                       (lambda (_%id114523%_ _%k114524%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id114523%_))
                                             (cons (__SRC__0 _%id114523%_)
                                                   _%k114524%_)
                                             '#f)))
                                      (__tmp116088
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len114515%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp116089
                                   _%hd114508%_
                                   __tmp116088)))))
              _%post114480%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx114319%_
                                              _%hd114508%_))
                                         (_%lp114475%_
                                          _%rest114507%_
                                          (cdr _%exprs114478%_)
                                          _%bind114479%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs114478%_)
                                                            '()))
                                                _%post114480%_)))))))
                          (if (pair? _%rest114481114495%_)
                              (let ((_%tl114491114552%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest114481114495%_)))
                                    (_%hd114490114550%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest114481114495%_))))
                                (if (pair? _%hd114490114550%_)
                                    (let ((_%tl114493114557%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd114490114550%_)))
                                          (_%hd114492114555%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd114490114550%_))))
                                      (if (null? _%tl114493114557%_)
                                          (let ((_%hd114560%_
                                                 _%hd114492114555%_)
                                                (_%rest114562%_
                                                 _%tl114491114552%_))
                                            (_%K114489114547%_
                                             _%rest114562%_
                                             _%hd114560%_))
                                          (let ((_%hd114535%_
                                                 _%hd114490114550%_)
                                                (_%rest114537%_
                                                 _%tl114491114552%_))
                                            (_%K114486114527%_
                                             _%rest114537%_
                                             _%hd114535%_))))
                                    (let ((_%hd114535%_ _%hd114490114550%_)
                                          (_%rest114537%_ _%tl114491114552%_))
                                      (_%K114486114527%_
                                       _%rest114537%_
                                       _%hd114535%_))))
                              (_%else114484114503%_)))))))
                 (_%compile-bind114323%_
                  (lambda (_%bind114467%_ _%post114468%_ _%body114469%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind114467%_)
                                 (cons (_%compile-post114324%_
                                        _%post114468%_
                                        _%body114469%_)
                                       '())))
                     _%stx114319%_)))
                 (_%compile-post114324%_
                  (lambda (_%post114326%_ _%body114327%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp116090
                                  (let ((__tmp116092
                                         (lambda (_%hd114329%_ _%r114330%_)
                                           (let* ((_%hd114331114354%_
                                                   _%hd114329%_)
                                                  (_%E114335114358%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd114331114354%_
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
                                             (let ((_%K114348114452%_
                                                    (lambda (_%expr114450%_)
                                                      (cons _%expr114450%_
                                                            _%r114330%_)))
                                                   (_%K114343114430%_
                                                    (lambda (_%expr114427%_
                                                             _%id114428%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id114428%_ (cons _%expr114427%_ '())))
                     _%stx114319%_)
                    _%r114330%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K114336114397%_
                                                    (lambda (_%init114362%_
                                                             _%len114363%_
                                                             _%expr114364%_
                                                             _%tmp114365%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp114365%_
                                             (cons _%expr114364%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp114365%_
                                                    (cons _%len114363%_ '())))
                                        _%stx114319%_)
                                       (let ((__tmp116093
                                              (map (lambda (_%hd114367%_)
                                                     (let* ((_%hd114368114375%_
                                                             _%hd114367%_)
                                                            (_%E114370114379%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd114368114375%_
                                '([id . k])))
                       '#!void))
                    (_%K114371114385%_
                     (lambda (_%k114382%_ _%id114383%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id114383%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp114365%_
                                                      (cons _%k114382%_ '())))
                                          '())))
                        _%stx114319%_))))
               (if (pair? _%hd114368114375%_)
                   (let ((_%hd114372114388%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd114368114375%_)))
                         (_%tl114373114390%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd114368114375%_))))
                     (let* ((_%id114393%_ _%hd114372114388%_)
                            (_%k114395%_ _%tl114373114390%_))
                       (_%K114371114385%_ _%k114395%_ _%id114393%_)))
                   (_%E114370114379%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init114362%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp116093)))))
                     _%stx114319%_)
                    _%r114330%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match115946115947%_
                                                       (lambda (_%hd114337114400%_
                                                                _%tl114338114402%_
                                                                _%hd114339114407%_
                                                                _%tl114340114409%_)
                                                         (let ((_%tmp114405%_
                                                                _%hd114337114400%_)
                                                               (_%expr114412%_
                                                                _%hd114339114407%_))
                                                           (_%E114335114358%_))))
                                                      (_%__match115940115941%_
                                                       (lambda (_%hd114337114400%_
                                                                _%tl114338114402%_)
                                                         (let ((_%tmp114405%_
                                                                _%hd114337114400%_))
                                                           (_%E114335114358%_)))))
                                                 (if (pair? _%hd114331114354%_)
                                                     (let ((_%tl114350114457%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd114331114354%_)))
                                                           (_%hd114349114455%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd114331114354%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd114349114455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl114350114457%_)
                       (let ((_%tl114352114462%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl114350114457%_)))
                             (_%hd114351114460%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl114350114457%_))))
                         (if (null? _%tl114352114462%_)
                             (let ((_%expr114465%_ _%hd114351114460%_))
                               (_%K114348114452%_ _%expr114465%_))
                             (if (pair? _%tl114352114462%_)
                                 (let ((_%tl114342114416%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl114352114462%_)))
                                       (_%hd114341114414%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl114352114462%_))))
                                   (let ((_%tmp114405%_ _%hd114349114455%_)
                                         (_%expr114412%_ _%hd114351114460%_)
                                         (_%len114419%_ _%hd114341114414%_)
                                         (_%init114421%_ _%tl114342114416%_))
                                     (_%K114336114397%_
                                      _%init114421%_
                                      _%len114419%_
                                      _%expr114412%_
                                      _%tmp114405%_)))
                                 (_%__match115946115947%_
                                  _%hd114349114455%_
                                  _%tl114350114457%_
                                  _%hd114351114460%_
                                  _%tl114352114462%_))))
                       (_%__match115940115941%_
                        _%hd114349114455%_
                        _%tl114350114457%_))
                   (if (pair? _%tl114350114457%_)
                       (let ((_%tl114347114442%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl114350114457%_)))
                             (_%hd114346114440%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl114350114457%_))))
                         (if (null? _%tl114347114442%_)
                             (let ((_%id114438%_ _%hd114349114455%_)
                                   (_%expr114445%_ _%hd114346114440%_))
                               (_%K114343114430%_ _%expr114445%_ _%id114438%_))
                             (if (pair? _%tl114347114442%_)
                                 (let ((_%tl114342114416%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl114347114442%_)))
                                       (_%hd114341114414%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl114347114442%_))))
                                   (let ((_%tmp114405%_ _%hd114349114455%_)
                                         (_%expr114412%_ _%hd114346114440%_)
                                         (_%len114419%_ _%hd114341114414%_)
                                         (_%init114421%_ _%tl114342114416%_))
                                     (_%K114336114397%_
                                      _%init114421%_
                                      _%len114419%_
                                      _%expr114412%_
                                      _%tmp114405%_)))
                                 (_%__match115946115947%_
                                  _%hd114349114455%_
                                  _%tl114350114457%_
                                  _%hd114346114440%_
                                  _%tl114347114442%_))))
                       (_%__match115940115941%_
                        _%hd114349114455%_
                        _%tl114350114457%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E114335114358%_)))))))
                                        (__tmp116091 (list _%body114327%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp116092
                                     __tmp116091
                                     _%post114326%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp116090)))
                     _%stx114319%_))))
          (__compile-let-form
           _%stx114319%_
           _%compile-simple114321%_
           _%compile-values114322%_))))
    (define __compile-call%
      (lambda (_%stx114279%_)
        (let* ((_%$e114281%_ _%stx114279%_)
               (_%$E114283114292%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114281%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114281%_))
              (let* ((_%$tgt114284114295%_
                      (let () (declare (not safe)) (__AST-e _%$e114281%_)))
                     (_%$hd114285114298%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114284114295%_)))
                     (_%$tl114286114301%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114284114295%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114286114301%_))
                    (let* ((_%$tgt114287114305%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114286114301%_)))
                           (_%$hd114288114308%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114287114305%_)))
                           (_%$tl114289114311%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114287114305%_)))
                           (_%rator114315%_ _%$hd114288114308%_)
                           (_%rands114317%_ _%$tl114289114311%_))
                      (__SRC__%
                       (cons (__compile _%rator114315%_)
                             (map __compile _%rands114317%_))
                       _%stx114279%_))
                    (_%$E114283114292%_)))
              (_%$E114283114292%_)))))
    (define __compile-ref%
      (lambda (_%stx114241%_)
        (let* ((_%$e114243%_ _%stx114241%_)
               (_%$E114245114254%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114243%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114243%_))
              (let* ((_%$tgt114246114257%_
                      (let () (declare (not safe)) (__AST-e _%$e114243%_)))
                     (_%$hd114247114260%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114246114257%_)))
                     (_%$tl114248114263%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114246114257%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114248114263%_))
                    (let* ((_%$tgt114249114267%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114248114263%_)))
                           (_%$hd114250114270%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114249114267%_)))
                           (_%$tl114251114273%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114249114267%_)))
                           (_%id114277%_ _%$hd114250114270%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114251114273%_))
                                  '())
                          (__SRC__% _%id114277%_ _%stx114241%_)
                          (_%$E114245114254%_)))
                    (_%$E114245114254%_)))
              (_%$E114245114254%_)))))
    (define __compile-setq%
      (lambda (_%stx114188%_)
        (let* ((_%$e114190%_ _%stx114188%_)
               (_%$E114192114204%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114190%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114190%_))
              (let* ((_%$tgt114193114207%_
                      (let () (declare (not safe)) (__AST-e _%$e114190%_)))
                     (_%$hd114194114210%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114193114207%_)))
                     (_%$tl114195114213%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114193114207%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114195114213%_))
                    (let* ((_%$tgt114196114217%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114195114213%_)))
                           (_%$hd114197114220%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114196114217%_)))
                           (_%$tl114198114223%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114196114217%_)))
                           (_%id114227%_ _%$hd114197114220%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114198114223%_))
                          (let* ((_%$tgt114199114229%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114198114223%_)))
                                 (_%$hd114200114232%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114199114229%_)))
                                 (_%$tl114201114235%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114199114229%_)))
                                 (_%expr114239%_ _%$hd114200114232%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114201114235%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id114227%_
                                              _%stx114188%_)
                                             (cons (__compile _%expr114239%_)
                                                   '())))
                                 _%stx114188%_)
                                (_%$E114192114204%_)))
                          (_%$E114192114204%_)))
                    (_%$E114192114204%_)))
              (_%$E114192114204%_)))))
    (define __compile-if%
      (lambda (_%stx114120%_)
        (let* ((_%$e114122%_ _%stx114120%_)
               (_%$E114124114139%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114122%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114122%_))
              (let* ((_%$tgt114125114142%_
                      (let () (declare (not safe)) (__AST-e _%$e114122%_)))
                     (_%$hd114126114145%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114125114142%_)))
                     (_%$tl114127114148%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114125114142%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114127114148%_))
                    (let* ((_%$tgt114128114152%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114127114148%_)))
                           (_%$hd114129114155%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114128114152%_)))
                           (_%$tl114130114158%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114128114152%_)))
                           (_%p114162%_ _%$hd114129114155%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114130114158%_))
                          (let* ((_%$tgt114131114164%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114130114158%_)))
                                 (_%$hd114132114167%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114131114164%_)))
                                 (_%$tl114133114170%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114131114164%_)))
                                 (_%t114174%_ _%$hd114132114167%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl114133114170%_))
                                (let* ((_%$tgt114134114176%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114133114170%_)))
                                       (_%$hd114135114179%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114134114176%_)))
                                       (_%$tl114136114182%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114134114176%_)))
                                       (_%f114186%_ _%$hd114135114179%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114136114182%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p114162%_)
                                                   (cons (__compile
                                                          _%t114174%_)
                                                         (cons (__compile
                                                                _%f114186%_)
                                                               '()))))
                                       _%stx114120%_)
                                      (_%$E114124114139%_)))
                                (_%$E114124114139%_)))
                          (_%$E114124114139%_)))
                    (_%$E114124114139%_)))
              (_%$E114124114139%_)))))
    (define __compile-quote%
      (lambda (_%stx114082%_)
        (let* ((_%$e114084%_ _%stx114082%_)
               (_%$E114086114095%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114084%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114084%_))
              (let* ((_%$tgt114087114098%_
                      (let () (declare (not safe)) (__AST-e _%$e114084%_)))
                     (_%$hd114088114101%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114087114098%_)))
                     (_%$tl114089114104%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114087114098%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114089114104%_))
                    (let* ((_%$tgt114090114108%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114089114104%_)))
                           (_%$hd114091114111%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114090114108%_)))
                           (_%$tl114092114114%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114090114108%_)))
                           (_%e114118%_ _%$hd114091114111%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114092114114%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e114118%_))
                                       '()))
                           _%stx114082%_)
                          (_%$E114086114095%_)))
                    (_%$E114086114095%_)))
              (_%$E114086114095%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx114044%_)
        (let* ((_%$e114046%_ _%stx114044%_)
               (_%$E114048114057%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114046%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114046%_))
              (let* ((_%$tgt114049114060%_
                      (let () (declare (not safe)) (__AST-e _%$e114046%_)))
                     (_%$hd114050114063%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114049114060%_)))
                     (_%$tl114051114066%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114049114060%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114051114066%_))
                    (let* ((_%$tgt114052114070%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114051114066%_)))
                           (_%$hd114053114073%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114052114070%_)))
                           (_%$tl114054114076%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114052114070%_)))
                           (_%e114080%_ _%$hd114053114073%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114054114076%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e114080%_ '()))
                           _%stx114044%_)
                          (_%$E114048114057%_)))
                    (_%$E114048114057%_)))
              (_%$E114048114057%_)))))
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
