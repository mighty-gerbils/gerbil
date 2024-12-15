(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1734278444)
  (begin
    (define __syntax::t
      (let ((__tmp116001 (list)) (__tmp116000 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp116001
         '(e id)
         __tmp116000
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args115805%_
        (apply make-instance __syntax::t _%$args115805%_)))
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
      (let ((__tmp116003 (list __syntax::t))
            (__tmp116002 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp116003
         '()
         __tmp116002
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args115802%_
        (apply make-instance __core-form::t _%$args115802%_)))
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
      (let ((__tmp116005 (list __core-form::t))
            (__tmp116004 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp116005
         '()
         __tmp116004
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args115799%_
        (apply make-instance __core-expression::t _%$args115799%_)))
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
      (let ((__tmp116007 (list __core-form::t))
            (__tmp116006 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp116007
         '()
         __tmp116006
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args115796%_
        (apply make-instance __core-special-form::t _%$args115796%_)))
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
      (lambda (_%id115794%_)
        (let ((__tmp116008
               (let () (declare (not safe)) (__AST-e _%id115794%_))))
          (declare (not safe))
          (__hash-get __core __tmp116008))))
    (define __core-bound-id?__%
      (lambda (_%id115777%_ _%is?115778%_)
        (let ((_%$e115780%_ (__core-resolve _%id115777%_)))
          (if _%$e115780%_ (_%is?115778%_ _%$e115780%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id115787%_)
        (let ((_%is?115789%_ true))
          (__core-bound-id?__% _%id115787%_ _%is?115789%_))))
    (define __core-bound-id?
      (lambda _g116010_
        (let ((_g116009_ (let () (declare (not safe)) (##length _g116010_))))
          (cond ((let () (declare (not safe)) (##fx= _g116009_ 1))
                 (apply __core-bound-id?__0 _g116010_))
                ((let () (declare (not safe)) (##fx= _g116009_ 2))
                 (apply __core-bound-id?__% _g116010_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g116010_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id115760%_ _%e115761%_ _%make115762%_)
        (let ((__tmp116011
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e115761%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e115761%_
                   (_%make115762%_ _%e115761%_ _%id115760%_))))
          (declare (not safe))
          (__hash-put! __core _%id115760%_ __tmp116011))))
    (define __core-bind-syntax!__0
      (lambda (_%id115767%_ _%e115768%_)
        (let ((_%make115770%_ make-__syntax))
          (__core-bind-syntax!__% _%id115767%_ _%e115768%_ _%make115770%_))))
    (define __core-bind-syntax!
      (lambda _g116013_
        (let ((_g116012_ (let () (declare (not safe)) (##length _g116013_))))
          (cond ((let () (declare (not safe)) (##fx= _g116012_ 2))
                 (apply __core-bind-syntax!__0 _g116013_))
                ((let () (declare (not safe)) (##fx= _g116012_ 3))
                 (apply __core-bind-syntax!__% _g116013_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g116013_))))))
    (define __SRC__%
      (lambda (_%e115740%_ _%src-stx115741%_)
        (if (or (pair? _%e115740%_) (symbol? _%e115740%_))
            (let ((__tmp116014
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx115741%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx115741%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e115740%_ __tmp116014))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e115740%_ 'gerbil#AST::t))
                (let ((__tmp116016
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e115740%_ '1 '#f '#f)))
                      (__tmp116015
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e115740%_)))))
                  (declare (not safe))
                  (##make-source __tmp116016 __tmp116015))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e115740%_))))))
    (define __SRC__0
      (lambda (_%e115752%_)
        (let ((_%src-stx115754%_ '#f))
          (__SRC__% _%e115752%_ _%src-stx115754%_))))
    (define __SRC
      (lambda _g116018_
        (let ((_g116017_ (let () (declare (not safe)) (##length _g116018_))))
          (cond ((let () (declare (not safe)) (##fx= _g116017_ 1))
                 (apply __SRC__0 _g116018_))
                ((let () (declare (not safe)) (##fx= _g116017_ 2))
                 (apply __SRC__% _g116018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g116018_))))))
    (define __locat
      (lambda (_%loc115737%_)
        (if (let () (declare (not safe)) (##locat? _%loc115737%_))
            _%loc115737%_
            '#f)))
    (define __check-values
      (lambda (_%obj115732%_ _%k115733%_)
        (let ((_%count115735%_
               (if (let () (declare (not safe)) (##values? _%obj115732%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj115732%_))
                   '1)))
          (if (fx= _%count115735%_ _%k115733%_)
              '#!void
              (let ((__tmp116020
                     (if (fx< _%count115735%_ _%k115733%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp116019
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj115732%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj115732%_))
                         _%obj115732%_)))
                (declare (not safe))
                (error __tmp116020 __tmp116019 _%k115733%_))))))
    (define __compile
      (lambda (_%stx115701%_)
        (let* ((_%$e115703%_ _%stx115701%_)
               (_%$E115705115711%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115703%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115703%_))
              (let* ((_%$tgt115706115714%_
                      (let () (declare (not safe)) (__AST-e _%$e115703%_)))
                     (_%$hd115707115717%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115706115714%_)))
                     (_%$tl115708115720%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115706115714%_)))
                     (_%form115724%_ _%$hd115707115717%_)
                     (_%$e115726%_ (__core-resolve _%form115724%_)))
                (if _%$e115726%_
                    ((lambda (_%bind115729%_)
                       ((##structure-ref _%bind115729%_ '1 __syntax::t '#f)
                        _%stx115701%_))
                     _%$e115726%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx115701%_
                       _%form115724%_))))
              (_%$E115705115711%_)))))
    (define __compile-error__%
      (lambda (_%stx115688%_ _%detail115689%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx115688%_
           _%detail115689%_))))
    (define __compile-error__0
      (lambda (_%stx115694%_)
        (let ((_%detail115696%_ '#f))
          (__compile-error__% _%stx115694%_ _%detail115696%_))))
    (define __compile-error
      (lambda _g116022_
        (let ((_g116021_ (let () (declare (not safe)) (##length _g116022_))))
          (cond ((let () (declare (not safe)) (##fx= _g116021_ 1))
                 (apply __compile-error__0 _g116022_))
                ((let () (declare (not safe)) (##fx= _g116021_ 2))
                 (apply __compile-error__% _g116022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g116022_))))))
    (define __compile-ignore%
      (lambda (_%stx115685%_) (__SRC__% ''#!void _%stx115685%_)))
    (define __compile-begin%
      (lambda (_%stx115660%_)
        (let* ((_%$e115662%_ _%stx115660%_)
               (_%$E115664115670%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115662%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115662%_))
              (let* ((_%$tgt115665115673%_
                      (let () (declare (not safe)) (__AST-e _%$e115662%_)))
                     (_%$hd115666115676%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115665115673%_)))
                     (_%$tl115667115679%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115665115673%_)))
                     (_%body115683%_ _%$tl115667115679%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body115683%_))
                 _%stx115660%_))
              (_%$E115664115670%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx115635%_)
        (let* ((_%$e115637%_ _%stx115635%_)
               (_%$E115639115645%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115637%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115637%_))
              (let* ((_%$tgt115640115648%_
                      (let () (declare (not safe)) (__AST-e _%$e115637%_)))
                     (_%$hd115641115651%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115640115648%_)))
                     (_%$tl115642115654%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115640115648%_)))
                     (_%body115658%_ _%$tl115642115654%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body115658%_)))
                 _%stx115635%_))
              (_%$E115639115645%_)))))
    (define __compile-import%
      (lambda (_%stx115610%_)
        (let* ((_%$e115612%_ _%stx115610%_)
               (_%$E115614115620%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115612%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115612%_))
              (let* ((_%$tgt115615115623%_
                      (let () (declare (not safe)) (__AST-e _%$e115612%_)))
                     (_%$hd115616115626%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115615115623%_)))
                     (_%$tl115617115629%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115615115623%_)))
                     (_%body115633%_ _%$tl115617115629%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body115633%_ '())) '()))
                 _%stx115610%_))
              (_%$E115614115620%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx115557%_)
        (let* ((_%$e115559%_ _%stx115557%_)
               (_%$E115561115573%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115559%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115559%_))
              (let* ((_%$tgt115562115576%_
                      (let () (declare (not safe)) (__AST-e _%$e115559%_)))
                     (_%$hd115563115579%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115562115576%_)))
                     (_%$tl115564115582%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115562115576%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl115564115582%_))
                    (let* ((_%$tgt115565115586%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl115564115582%_)))
                           (_%$hd115566115589%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt115565115586%_)))
                           (_%$tl115567115592%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt115565115586%_)))
                           (_%ann115596%_ _%$hd115566115589%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl115567115592%_))
                          (let* ((_%$tgt115568115598%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl115567115592%_)))
                                 (_%$hd115569115601%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115568115598%_)))
                                 (_%$tl115570115604%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115568115598%_)))
                                 (_%expr115608%_ _%$hd115569115601%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl115570115604%_))
                                        '())
                                (__compile _%expr115608%_)
                                (_%$E115561115573%_)))
                          (_%$E115561115573%_)))
                    (_%$E115561115573%_)))
              (_%$E115561115573%_)))))
    (define __compile-define-values%
      (lambda (_%stx115448%_)
        (let* ((_%$e115450%_ _%stx115448%_)
               (_%$E115452115464%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115450%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115450%_))
              (let* ((_%$tgt115453115467%_
                      (let () (declare (not safe)) (__AST-e _%$e115450%_)))
                     (_%$hd115454115470%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115453115467%_)))
                     (_%$tl115455115473%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115453115467%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl115455115473%_))
                    (let* ((_%$tgt115456115477%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl115455115473%_)))
                           (_%$hd115457115480%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt115456115477%_)))
                           (_%$tl115458115483%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt115456115477%_)))
                           (_%hd115487%_ _%$hd115457115480%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl115458115483%_))
                          (let* ((_%$tgt115459115489%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl115458115483%_)))
                                 (_%$hd115460115492%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115459115489%_)))
                                 (_%$tl115461115495%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115459115489%_)))
                                 (_%expr115499%_ _%$hd115460115492%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl115461115495%_))
                                        '())
                                (let* ((_%$e115501%_ _%hd115487%_)
                                       (_%$E115503115544%_
                                        (lambda ()
                                          (let ((_%$E115504115529%_
                                                 (lambda ()
                                                   (let* ((_%$E115505115516%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e115501%_))))
                  (_%ids115519%_ _%hd115487%_)
                  (_%len115521%_ (length _%ids115519%_))
                  (_%tmp115523%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp115523%_
                                       (cons (__compile _%expr115499%_) '())))
                           _%stx115448%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp115523%_
                                             (cons _%len115521%_ '())))
                                 _%stx115448%_)
                                (let ((__tmp116023
                                       (let ((__tmp116025
                                              (lambda (_%id115526%_
                                                       _%k115527%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id115526%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id115526%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp115523%_
                                           (cons _%k115527%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx115448%_)
                                                    '#f)))
                                             (__tmp116024
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len115521%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp116025
                                          _%ids115519%_
                                          __tmp116024))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp116023)))))
              _%stx115448%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e115501%_))
                                                (let* ((_%$tgt115506115532%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e115501%_)))
                                                       (_%$hd115507115535%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt115506115532%_)))
                                                       (_%$tl115508115538%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt115506115532%_)))
                                                       (_%id115542%_
                                                        _%$hd115507115535%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl115508115538%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id115542%_)
                           (cons (__compile _%expr115499%_) '())))
               _%stx115448%_)
              (_%$E115504115529%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E115504115529%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e115501%_))
                                      (let* ((_%$tgt115509115547%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e115501%_)))
                                             (_%$hd115510115550%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt115509115547%_)))
                                             (_%$tl115511115553%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt115509115547%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd115510115550%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl115511115553%_))
                                                        '())
                                                (__compile _%expr115499%_)
                                                (_%$E115503115544%_))
                                            (_%$E115503115544%_)))
                                      (_%$E115503115544%_)))
                                (_%$E115452115464%_)))
                          (_%$E115452115464%_)))
                    (_%$E115452115464%_)))
              (_%$E115452115464%_)))))
    (define __compile-head-id
      (lambda (_%e115446%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e115446%_))
             _%e115446%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd115403%_)
        (let _%recur115405%_ ((_%rest115407%_ _%hd115403%_))
          (let* ((_%$e115409%_ _%rest115407%_)
                 (_%$E115411115429%_
                  (lambda ()
                    (let ((_%$E115412115426%_
                           (lambda ()
                             (let* ((_%$E115413115421%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e115409%_))))
                                    (_%tail115424%_ _%$e115409%_))
                               (__compile-head-id _%tail115424%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115409%_))
                                  '())
                          '()
                          (_%$E115412115426%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e115409%_))
                (let* ((_%$tgt115414115432%_
                        (let () (declare (not safe)) (__AST-e _%$e115409%_)))
                       (_%$hd115415115435%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt115414115432%_)))
                       (_%$tl115416115438%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt115414115432%_)))
                       (_%hd115442%_ _%$hd115415115435%_)
                       (_%rest115444%_ _%$tl115416115438%_))
                  (cons (__compile-head-id _%hd115442%_)
                        (_%recur115405%_ _%rest115444%_)))
                (_%$E115411115429%_))))))
    (define __compile-lambda%
      (lambda (_%stx115350%_)
        (let* ((_%$e115352%_ _%stx115350%_)
               (_%$E115354115366%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115352%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115352%_))
              (let* ((_%$tgt115355115369%_
                      (let () (declare (not safe)) (__AST-e _%$e115352%_)))
                     (_%$hd115356115372%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115355115369%_)))
                     (_%$tl115357115375%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115355115369%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl115357115375%_))
                    (let* ((_%$tgt115358115379%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl115357115375%_)))
                           (_%$hd115359115382%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt115358115379%_)))
                           (_%$tl115360115385%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt115358115379%_)))
                           (_%hd115389%_ _%$hd115359115382%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl115360115385%_))
                          (let* ((_%$tgt115361115391%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl115360115385%_)))
                                 (_%$hd115362115394%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115361115391%_)))
                                 (_%$tl115363115397%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115361115391%_)))
                                 (_%body115401%_ _%$hd115362115394%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl115363115397%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd115389%_)
                                             (cons (__compile _%body115401%_)
                                                   '())))
                                 _%stx115350%_)
                                (_%$E115354115366%_)))
                          (_%$E115354115366%_)))
                    (_%$E115354115366%_)))
              (_%$E115354115366%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx115142%_)
        (letrec ((_%variadic?115144%_
                  (lambda (_%hd115315%_)
                    (let* ((_%$e115317%_ _%hd115315%_)
                           (_%$E115319115335%_
                            (lambda ()
                              (let ((_%$E115320115332%_
                                     (lambda ()
                                       (let ((_%$E115321115329%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e115317%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e115317%_))
                                            '())
                                    '#f
                                    (_%$E115320115332%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e115317%_))
                          (let* ((_%$tgt115322115338%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115317%_)))
                                 (_%$hd115323115341%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115322115338%_)))
                                 (_%$tl115324115344%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115322115338%_)))
                                 (_%rest115348%_ _%$tl115324115344%_))
                            (_%variadic?115144%_ _%rest115348%_))
                          (_%$E115319115335%_)))))
                 (_%arity115145%_
                  (lambda (_%hd115280%_)
                    (let _%lp115282%_ ((_%rest115284%_ _%hd115280%_)
                                       (_%k115285%_ '0))
                      (let* ((_%$e115287%_ _%rest115284%_)
                             (_%$E115289115300%_
                              (lambda ()
                                (let ((_%$E115290115297%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e115287%_)))))
                                  _%k115285%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e115287%_))
                            (let* ((_%$tgt115291115303%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e115287%_)))
                                   (_%$hd115292115306%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt115291115303%_)))
                                   (_%$tl115293115309%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt115291115303%_)))
                                   (_%rest115313%_ _%$tl115293115309%_))
                              (_%lp115282%_
                               _%rest115313%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k115285%_ '1))))
                            (_%$E115289115300%_))))))
                 (_%generate115146%_
                  (lambda (_%rest115207%_ _%args115208%_ _%len115209%_)
                    (let* ((_%$e115211%_ _%rest115207%_)
                           (_%$E115213115224%_
                            (lambda ()
                              (let ((_%$E115214115221%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e115211%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args115208%_ '())))
                                 _%stx115142%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e115211%_))
                          (let* ((_%$tgt115215115227%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115211%_)))
                                 (_%$hd115216115230%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115215115227%_)))
                                 (_%$tl115217115233%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115215115227%_)))
                                 (_%clause115237%_ _%$hd115216115230%_)
                                 (_%rest115239%_ _%$tl115217115233%_)
                                 (_%$e115241%_ _%clause115237%_)
                                 (_%$E115243115252%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e115241%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e115241%_))
                                (let* ((_%$tgt115244115255%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e115241%_)))
                                       (_%$hd115245115258%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt115244115255%_)))
                                       (_%$tl115246115261%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt115244115255%_)))
                                       (_%hd115265%_ _%$hd115245115258%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl115246115261%_))
                                      (let* ((_%$tgt115247115267%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl115246115261%_)))
                                             (_%$hd115248115270%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt115247115267%_)))
                                             (_%$tl115249115273%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt115247115267%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl115249115273%_))
                                                    '())
                                            (let ((_%clen115277%_
                                                   (_%arity115145%_
                                                    _%hd115265%_))
                                                  (_%cmp115278%_
                                                   (if (_%variadic?115144%_
                                                        _%hd115265%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp115278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len115209%_ (cons _%clen115277%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause115237%_))
                                      (cons _%args115208%_ '())))
                          _%stx115142%_)
                         (cons (_%generate115146%_
                                _%rest115239%_
                                _%args115208%_
                                _%len115209%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx115142%_))
                                            (_%$E115243115252%_)))
                                      (_%$E115243115252%_)))
                                (_%$E115243115252%_)))
                          (_%$E115213115224%_))))))
          (let* ((_%$e115148%_ _%stx115142%_)
                 (_%$E115150115182%_
                  (lambda ()
                    (let ((_%$E115151115164%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e115148%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e115148%_))
                          (let* ((_%$tgt115152115167%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115148%_)))
                                 (_%$hd115153115170%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115152115167%_)))
                                 (_%$tl115154115173%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115152115167%_)))
                                 (_%clauses115177%_ _%$tl115154115173%_))
                            (let ((_%args115179%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx115142%_))
                                  (_%len115180%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx115142%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args115179%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len115180%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args115179%_ '()))
                                         _%stx115142%_)
                                        '()))
                            '())
                      (cons (_%generate115146%_
                             _%clauses115177%_
                             _%args115179%_
                             _%len115180%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx115142%_)
                                                 '())))
                               _%stx115142%_)))
                          (_%$E115151115164%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e115148%_))
                (let* ((_%$tgt115155115185%_
                        (let () (declare (not safe)) (__AST-e _%$e115148%_)))
                       (_%$hd115156115188%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt115155115185%_)))
                       (_%$tl115157115191%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt115155115185%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl115157115191%_))
                      (let* ((_%$tgt115158115195%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl115157115191%_)))
                             (_%$hd115159115198%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt115158115195%_)))
                             (_%$tl115160115201%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt115158115195%_)))
                             (_%clause115205%_ _%$hd115159115198%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl115160115201%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause115205%_))
                            (_%$E115150115182%_)))
                      (_%$E115150115182%_)))
                (_%$E115150115182%_))))))
    (define __compile-let-form
      (lambda (_%stx114911%_ _%compile-simple114912%_ _%compile-values114913%_)
        (letrec ((_%simple-bind?114915%_
                  (lambda (_%hd115100%_)
                    (let* ((_%hd115101115111%_ _%hd115100%_)
                           (_%else115104115119%_ (lambda () '#f)))
                      (let ((_%K115107115132%_ (lambda (_%id115130%_) '#t))
                            (_%K115106115124%_ (lambda () '#t)))
                        (let ((_%try-match115103115127%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd115101115111%_ '#f))
                                     (_%K115106115124%_)
                                     (_%else115104115119%_)))))
                          (if (pair? _%hd115101115111%_)
                              (let ((_%tl115109115137%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd115101115111%_)))
                                    (_%hd115108115135%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd115101115111%_))))
                                (if (null? _%tl115109115137%_)
                                    (let ((_%id115140%_ _%hd115108115135%_))
                                      (_%K115107115132%_ _%id115140%_))
                                    (_%try-match115103115127%_)))
                              (_%try-match115103115127%_)))))))
                 (_%car-e114916%_
                  (lambda (_%hd115098%_)
                    (if (pair? _%hd115098%_)
                        (let () (declare (not safe)) (##car _%hd115098%_))
                        _%hd115098%_))))
          (let* ((_%$e114918%_ _%stx114911%_)
                 (_%$E114920115063%_
                  (lambda ()
                    (let ((_%$E114921114943%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e114918%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e114918%_))
                          (let* ((_%$tgt114922114946%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114918%_)))
                                 (_%$hd114923114949%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114922114946%_)))
                                 (_%$tl114924114952%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114922114946%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl114924114952%_))
                                (let* ((_%$tgt114925114956%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114924114952%_)))
                                       (_%$hd114926114959%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114925114956%_)))
                                       (_%$tl114927114962%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114925114956%_)))
                                       (_%hd114966%_ _%$hd114926114959%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl114927114962%_))
                                      (let* ((_%$tgt114928114968%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114927114962%_)))
                                             (_%$hd114929114971%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt114928114968%_)))
                                             (_%$tl114930114974%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt114928114968%_)))
                                             (_%body114978%_
                                              _%$hd114929114971%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl114930114974%_))
                                                    '())
                                            (let* ((_%hd-ids115018%_
                                                    (map (lambda (_%bind114980%_)
                                                           (let* ((_%$e114982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind114980%_)
                          (_%$E114984114993%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e114982%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e114982%_))
                         (let* ((_%$tgt114985114996%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e114982%_)))
                                (_%$hd114986114999%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt114985114996%_)))
                                (_%$tl114987115002%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt114985114996%_)))
                                (_%ids115006%_ _%$hd114986114999%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl114987115002%_))
                               (let* ((_%$tgt114988115008%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl114987115002%_)))
                                      (_%$hd114989115011%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt114988115008%_)))
                                      (_%$tl114990115014%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt114988115008%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl114990115014%_))
                                             '())
                                     _%ids115006%_
                                     (_%$E114984114993%_)))
                               (_%$E114984114993%_)))
                         (_%$E114984114993%_))))
                 _%hd114966%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs115058%_
                                                    (map (lambda (_%bind115020%_)
                                                           (let* ((_%$e115022%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind115020%_)
                          (_%$E115024115033%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e115022%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e115022%_))
                         (let* ((_%$tgt115025115036%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e115022%_)))
                                (_%$hd115026115039%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt115025115036%_)))
                                (_%$tl115027115042%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt115025115036%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl115027115042%_))
                               (let* ((_%$tgt115028115046%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl115027115042%_)))
                                      (_%$hd115029115049%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt115028115046%_)))
                                      (_%$tl115030115052%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt115028115046%_)))
                                      (_%expr115056%_ _%$hd115029115049%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl115030115052%_))
                                             '())
                                     (__compile _%expr115056%_)
                                     (_%$E115024115033%_)))
                               (_%$E115024115033%_)))
                         (_%$E115024115033%_))))
                 _%hd114966%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body115060%_
                                                    (__compile
                                                     _%body114978%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?114915%_
                                                     _%hd-ids115018%_))
                                                  (_%compile-simple114912%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e114916%_
                                                            _%hd-ids115018%_))
                                                   _%exprs115058%_
                                                   _%body115060%_)
                                                  (_%compile-values114913%_
                                                   _%hd-ids115018%_
                                                   _%exprs115058%_
                                                   _%body115060%_)))
                                            (_%$E114921114943%_)))
                                      (_%$E114921114943%_)))
                                (_%$E114921114943%_)))
                          (_%$E114921114943%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e114918%_))
                (let* ((_%$tgt114931115066%_
                        (let () (declare (not safe)) (__AST-e _%$e114918%_)))
                       (_%$hd114932115069%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt114931115066%_)))
                       (_%$tl114933115072%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt114931115066%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl114933115072%_))
                      (let* ((_%$tgt114934115076%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl114933115072%_)))
                             (_%$hd114935115079%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt114934115076%_)))
                             (_%$tl114936115082%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt114934115076%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd114935115079%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl114936115082%_))
                                (let* ((_%$tgt114937115086%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114936115082%_)))
                                       (_%$hd114938115089%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114937115086%_)))
                                       (_%$tl114939115092%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114937115086%_)))
                                       (_%body115096%_ _%$hd114938115089%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114939115092%_))
                                              '())
                                      (__compile _%body115096%_)
                                      (_%$E114920115063%_)))
                                (_%$E114920115063%_))
                            (_%$E114920115063%_)))
                      (_%$E114920115063%_)))
                (_%$E114920115063%_))))))
    (define __compile-let-values%
      (lambda (_%stx114723%_)
        (letrec ((_%compile-simple114725%_
                  (lambda (_%hd-ids114907%_ _%exprs114908%_ _%body114909%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp116026
                                        (map __compile-head-id
                                             _%hd-ids114907%_)))
                                   (declare (not safe))
                                   (##map list __tmp116026 _%exprs114908%_))
                                 (cons _%body114909%_ '())))
                     _%stx114723%_)))
                 (_%compile-values114726%_
                  (lambda (_%hd-ids114822%_ _%exprs114823%_ _%body114824%_)
                    (let _%lp114826%_ ((_%rest114828%_ _%hd-ids114822%_)
                                       (_%exprs114829%_ _%exprs114823%_)
                                       (_%bind114830%_ '())
                                       (_%post114831%_ '()))
                      (let* ((_%rest114832114846%_ _%rest114828%_)
                             (_%else114835114854%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind114830%_)
                                             (cons (_%compile-post114727%_
                                                    _%post114831%_
                                                    _%body114824%_)
                                                   '())))
                                 _%stx114723%_))))
                        (let ((_%K114840114890%_
                               (lambda (_%rest114887%_ _%id114888%_)
                                 (_%lp114826%_
                                  _%rest114887%_
                                  (cdr _%exprs114829%_)
                                  (cons (cons (__compile-head-id _%id114888%_)
                                              (cons (car _%exprs114829%_) '()))
                                        _%bind114830%_)
                                  _%post114831%_)))
                              (_%K114837114872%_
                               (lambda (_%rest114858%_ _%hd114859%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114859%_))
                                     (_%lp114826%_
                                      _%rest114858%_
                                      (cdr _%exprs114829%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd114859%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs114829%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind114830%_)
                                      _%post114831%_)
                                     (if (list? _%hd114859%_)
                                         (let* ((_%len114863%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd114859%_)))
                                                (_%tmp114865%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp114826%_
                                            _%rest114858%_
                                            (cdr _%exprs114829%_)
                                            (cons (cons _%tmp114865%_
                                                        (cons (car _%exprs114829%_)
                                                              '()))
                                                  _%bind114830%_)
                                            (cons (cons _%tmp114865%_
                                                        (cons _%len114863%_
                                                              (let ((__tmp116028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id114868%_ _%k114869%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id114868%_))
                                   (cons (__SRC__0 _%id114868%_) _%k114869%_)
                                   '#f)))
                            (__tmp116027
                             (let ()
                               (declare (not safe))
                               (##iota _%len114863%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp116028 _%hd114859%_ __tmp116027))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post114831%_)))
                                         (__compile-error__%
                                          _%stx114723%_
                                          _%hd114859%_))))))
                          (if (pair? _%rest114832114846%_)
                              (let ((_%tl114842114895%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest114832114846%_)))
                                    (_%hd114841114893%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest114832114846%_))))
                                (if (pair? _%hd114841114893%_)
                                    (let ((_%tl114844114900%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd114841114893%_)))
                                          (_%hd114843114898%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd114841114893%_))))
                                      (if (null? _%tl114844114900%_)
                                          (let ((_%id114903%_
                                                 _%hd114843114898%_)
                                                (_%rest114905%_
                                                 _%tl114842114895%_))
                                            (_%K114840114890%_
                                             _%rest114905%_
                                             _%id114903%_))
                                          (let ((_%hd114880%_
                                                 _%hd114841114893%_)
                                                (_%rest114882%_
                                                 _%tl114842114895%_))
                                            (_%K114837114872%_
                                             _%rest114882%_
                                             _%hd114880%_))))
                                    (let ((_%hd114880%_ _%hd114841114893%_)
                                          (_%rest114882%_ _%tl114842114895%_))
                                      (_%K114837114872%_
                                       _%rest114882%_
                                       _%hd114880%_))))
                              (_%else114835114854%_)))))))
                 (_%compile-post114727%_
                  (lambda (_%post114729%_ _%body114730%_)
                    (let _%lp114732%_ ((_%rest114734%_ _%post114729%_)
                                       (_%check114735%_ '())
                                       (_%bind114736%_ '()))
                      (let* ((_%rest114737114749%_ _%rest114734%_)
                             (_%else114739114757%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp116029
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind114736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body114730%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx114723%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp116029
                                          _%check114735%_)))
                                 _%stx114723%_)))
                             (_%K114741114796%_
                              (lambda (_%rest114760%_
                                       _%init114761%_
                                       _%len114762%_
                                       _%tmp114763%_)
                                (_%lp114732%_
                                 _%rest114760%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp114763%_
                                                    (cons _%len114762%_ '())))
                                        _%stx114723%_)
                                       _%check114735%_)
                                 (let ((__tmp116030
                                        (lambda (_%hd114765%_ _%r114766%_)
                                          (let* ((_%hd114767114774%_
                                                  _%hd114765%_)
                                                 (_%E114769114778%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd114767114774%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K114770114784%_
                                                  (lambda (_%k114781%_
                                                           _%id114782%_)
                                                    (cons (cons _%id114782%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp114763%_
                                          (cons _%k114781%_ '())))
                              '()))
                  _%r114766%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd114767114774%_)
                                                (let ((_%hd114771114787%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd114767114774%_)))
                                                      (_%tl114772114789%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd114767114774%_))))
                                                  (let* ((_%id114792%_
                                                          _%hd114771114787%_)
                                                         (_%k114794%_
                                                          _%tl114772114789%_))
                                                    (_%K114770114784%_
                                                     _%k114794%_
                                                     _%id114792%_)))
                                                (_%E114769114778%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp116030
                                    _%bind114736%_
                                    _%init114761%_))))))
                        (if (pair? _%rest114737114749%_)
                            (let ((_%hd114742114799%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest114737114749%_)))
                                  (_%tl114743114801%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest114737114749%_))))
                              (if (pair? _%hd114742114799%_)
                                  (let ((_%hd114744114804%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd114742114799%_)))
                                        (_%tl114745114806%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd114742114799%_))))
                                    (let ((_%tmp114809%_ _%hd114744114804%_))
                                      (if (pair? _%tl114745114806%_)
                                          (let ((_%hd114746114811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl114745114806%_)))
                                                (_%tl114747114813%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl114745114806%_))))
                                            (let* ((_%len114816%_
                                                    _%hd114746114811%_)
                                                   (_%init114818%_
                                                    _%tl114747114813%_)
                                                   (_%rest114820%_
                                                    _%tl114743114801%_))
                                              (_%K114741114796%_
                                               _%rest114820%_
                                               _%init114818%_
                                               _%len114816%_
                                               _%tmp114809%_)))
                                          (_%else114739114757%_))))
                                  (_%else114739114757%_)))
                            (_%else114739114757%_)))))))
          (__compile-let-form
           _%stx114723%_
           _%compile-simple114725%_
           _%compile-values114726%_))))
    (define __compile-letrec-values%
      (lambda (_%stx114520%_)
        (letrec ((_%compile-simple114522%_
                  (lambda (_%hd-ids114719%_ _%exprs114720%_ _%body114721%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp116031
                                        (map __compile-head-id
                                             _%hd-ids114719%_)))
                                   (declare (not safe))
                                   (##map list __tmp116031 _%exprs114720%_))
                                 (cons _%body114721%_ '())))
                     _%stx114520%_)))
                 (_%compile-values114523%_
                  (lambda (_%hd-ids114630%_ _%exprs114631%_ _%body114632%_)
                    (let _%lp114634%_ ((_%rest114636%_ _%hd-ids114630%_)
                                       (_%exprs114637%_ _%exprs114631%_)
                                       (_%pre114638%_ '())
                                       (_%bind114639%_ '())
                                       (_%post114640%_ '()))
                      (let* ((_%rest114641114655%_ _%rest114636%_)
                             (_%else114644114663%_
                              (lambda ()
                                (_%compile-inner114524%_
                                 _%pre114638%_
                                 _%bind114639%_
                                 _%post114640%_
                                 _%body114632%_))))
                        (let ((_%K114649114702%_
                               (lambda (_%rest114699%_ _%id114700%_)
                                 (_%lp114634%_
                                  _%rest114699%_
                                  (cdr _%exprs114637%_)
                                  _%pre114638%_
                                  (cons (cons (__compile-head-id _%id114700%_)
                                              (cons (car _%exprs114637%_) '()))
                                        _%bind114639%_)
                                  _%post114640%_)))
                              (_%K114646114684%_
                               (lambda (_%rest114667%_ _%hd114668%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114668%_))
                                     (_%lp114634%_
                                      _%rest114667%_
                                      (cdr _%exprs114637%_)
                                      _%pre114638%_
                                      (cons (cons (__compile-head-id
                                                   _%hd114668%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs114637%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind114639%_)
                                      _%post114640%_)
                                     (if (list? _%hd114668%_)
                                         (let* ((_%len114672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd114668%_)))
                                                (_%tmp114674%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp114634%_
                                            _%rest114667%_
                                            (cdr _%exprs114637%_)
                                            (let ((__tmp116032
                                                   (lambda (_%id114677%_
                                                            _%r114678%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id114677%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id114677%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r114678%_)
                 _%r114678%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp116032
                                               _%pre114638%_
                                               _%hd114668%_))
                                            (cons (cons _%tmp114674%_
                                                        (cons (car _%exprs114637%_)
                                                              '()))
                                                  _%bind114639%_)
                                            (cons (cons _%tmp114674%_
                                                        (cons _%len114672%_
                                                              (let ((__tmp116034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id114680%_ _%k114681%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id114680%_))
                                   (cons (__SRC__0 _%id114680%_) _%k114681%_)
                                   '#f)))
                            (__tmp116033
                             (let ()
                               (declare (not safe))
                               (##iota _%len114672%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp116034 _%hd114668%_ __tmp116033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post114640%_)))
                                         (__compile-error__%
                                          _%stx114520%_
                                          _%hd114668%_))))))
                          (if (pair? _%rest114641114655%_)
                              (let ((_%tl114651114707%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest114641114655%_)))
                                    (_%hd114650114705%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest114641114655%_))))
                                (if (pair? _%hd114650114705%_)
                                    (let ((_%tl114653114712%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd114650114705%_)))
                                          (_%hd114652114710%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd114650114705%_))))
                                      (if (null? _%tl114653114712%_)
                                          (let ((_%id114715%_
                                                 _%hd114652114710%_)
                                                (_%rest114717%_
                                                 _%tl114651114707%_))
                                            (_%K114649114702%_
                                             _%rest114717%_
                                             _%id114715%_))
                                          (let ((_%hd114692%_
                                                 _%hd114650114705%_)
                                                (_%rest114694%_
                                                 _%tl114651114707%_))
                                            (_%K114646114684%_
                                             _%rest114694%_
                                             _%hd114692%_))))
                                    (let ((_%hd114692%_ _%hd114650114705%_)
                                          (_%rest114694%_ _%tl114651114707%_))
                                      (_%K114646114684%_
                                       _%rest114694%_
                                       _%hd114692%_))))
                              (_%else114644114663%_)))))))
                 (_%compile-inner114524%_
                  (lambda (_%pre114625%_
                           _%bind114626%_
                           _%post114627%_
                           _%body114628%_)
                    (if (null? _%pre114625%_)
                        (_%compile-bind114525%_
                         _%bind114626%_
                         _%post114627%_
                         _%body114628%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre114625%_)
                                     (cons (_%compile-bind114525%_
                                            _%bind114626%_
                                            _%post114627%_
                                            _%body114628%_)
                                           '())))
                         _%stx114520%_))))
                 (_%compile-bind114525%_
                  (lambda (_%bind114621%_ _%post114622%_ _%body114623%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind114621%_)
                                 (cons (_%compile-post114526%_
                                        _%post114622%_
                                        _%body114623%_)
                                       '())))
                     _%stx114520%_)))
                 (_%compile-post114526%_
                  (lambda (_%post114528%_ _%body114529%_)
                    (let _%lp114531%_ ((_%rest114533%_ _%post114528%_)
                                       (_%check114534%_ '())
                                       (_%bind114535%_ '()))
                      (let* ((_%rest114536114548%_ _%rest114533%_)
                             (_%else114538114556%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp116035
                                              (let ((__tmp116036
                                                     (cons _%body114529%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp116036
                                                 _%bind114535%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp116035
                                          _%check114534%_)))
                                 _%stx114520%_)))
                             (_%K114540114595%_
                              (lambda (_%rest114559%_
                                       _%init114560%_
                                       _%len114561%_
                                       _%tmp114562%_)
                                (_%lp114531%_
                                 _%rest114559%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp114562%_
                                                    (cons _%len114561%_ '())))
                                        _%stx114520%_)
                                       _%check114534%_)
                                 (let ((__tmp116037
                                        (lambda (_%hd114564%_ _%r114565%_)
                                          (let* ((_%hd114566114573%_
                                                  _%hd114564%_)
                                                 (_%E114568114577%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd114566114573%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K114569114583%_
                                                  (lambda (_%k114580%_
                                                           _%id114581%_)
                                                    (cons (cons 'set!
                                                                (cons _%id114581%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp114562%_
                                                (cons _%k114580%_ '())))
                                    '())))
                  _%r114565%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd114566114573%_)
                                                (let ((_%hd114570114586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd114566114573%_)))
                                                      (_%tl114571114588%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd114566114573%_))))
                                                  (let* ((_%id114591%_
                                                          _%hd114570114586%_)
                                                         (_%k114593%_
                                                          _%tl114571114588%_))
                                                    (_%K114569114583%_
                                                     _%k114593%_
                                                     _%id114591%_)))
                                                (_%E114568114577%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp116037
                                    _%bind114535%_
                                    _%init114560%_))))))
                        (if (pair? _%rest114536114548%_)
                            (let ((_%hd114541114598%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest114536114548%_)))
                                  (_%tl114542114600%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest114536114548%_))))
                              (if (pair? _%hd114541114598%_)
                                  (let ((_%hd114543114603%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd114541114598%_)))
                                        (_%tl114544114605%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd114541114598%_))))
                                    (let ((_%tmp114608%_ _%hd114543114603%_))
                                      (if (pair? _%tl114544114605%_)
                                          (let ((_%hd114545114610%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl114544114605%_)))
                                                (_%tl114546114612%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl114544114605%_))))
                                            (let* ((_%len114615%_
                                                    _%hd114545114610%_)
                                                   (_%init114617%_
                                                    _%tl114546114612%_)
                                                   (_%rest114619%_
                                                    _%tl114542114600%_))
                                              (_%K114540114595%_
                                               _%rest114619%_
                                               _%init114617%_
                                               _%len114615%_
                                               _%tmp114608%_)))
                                          (_%else114538114556%_))))
                                  (_%else114538114556%_)))
                            (_%else114538114556%_)))))))
          (__compile-let-form
           _%stx114520%_
           _%compile-simple114522%_
           _%compile-values114523%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx114271%_)
        (letrec ((_%compile-simple114273%_
                  (lambda (_%hd-ids114516%_ _%exprs114517%_ _%body114518%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp116038
                                        (map __compile-head-id
                                             _%hd-ids114516%_)))
                                   (declare (not safe))
                                   (##map list __tmp116038 _%exprs114517%_))
                                 (cons _%body114518%_ '())))
                     _%stx114271%_)))
                 (_%compile-values114274%_
                  (lambda (_%hd-ids114423%_ _%exprs114424%_ _%body114425%_)
                    (let _%lp114427%_ ((_%rest114429%_ _%hd-ids114423%_)
                                       (_%exprs114430%_ _%exprs114424%_)
                                       (_%bind114431%_ '())
                                       (_%post114432%_ '()))
                      (let* ((_%rest114433114447%_ _%rest114429%_)
                             (_%else114436114455%_
                              (lambda ()
                                (_%compile-bind114275%_
                                 _%bind114431%_
                                 _%post114432%_
                                 _%body114425%_))))
                        (let ((_%K114441114499%_
                               (lambda (_%rest114494%_ _%hd114495%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114495%_))
                                     (let ((_%id114497%_
                                            (__SRC__0 _%hd114495%_)))
                                       (_%lp114427%_
                                        _%rest114494%_
                                        (cdr _%exprs114430%_)
                                        (cons (cons _%id114497%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind114431%_)
                                        (cons (cons _%id114497%_
                                                    (cons (car _%exprs114430%_)
                                                          '()))
                                              _%post114432%_)))
                                     (_%lp114427%_
                                      _%rest114494%_
                                      (cdr _%exprs114430%_)
                                      _%bind114431%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs114430%_)
                                                        '()))
                                            _%post114432%_)))))
                              (_%K114438114479%_
                               (lambda (_%rest114459%_ _%hd114460%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114460%_))
                                     (let ((_%id114463%_
                                            (__SRC__0 _%hd114460%_)))
                                       (_%lp114427%_
                                        _%rest114459%_
                                        (cdr _%exprs114430%_)
                                        (cons (cons _%id114463%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind114431%_)
                                        (cons (cons _%id114463%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs114430%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post114432%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd114460%_))
                                         (if (list? _%hd114460%_)
                                             (let* ((_%len114467%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd114460%_)))
                                                    (_%tmp114469%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp114427%_
                                                _%rest114459%_
                                                (cdr _%exprs114430%_)
                                                (let ((__tmp116039
                                                       (lambda (_%id114472%_
                                                                _%r114473%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id114472%_))
                     (cons (cons (__SRC__0 _%id114472%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r114473%_)
                     _%r114473%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp116039
                                                   _%bind114431%_
                                                   _%hd114460%_))
                                                (cons (cons _%tmp114469%_
                                                            (cons (car _%exprs114430%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len114467%_
                                (let ((__tmp116041
                                       (lambda (_%id114475%_ _%k114476%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id114475%_))
                                             (cons (__SRC__0 _%id114475%_)
                                                   _%k114476%_)
                                             '#f)))
                                      (__tmp116040
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len114467%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp116041
                                   _%hd114460%_
                                   __tmp116040)))))
              _%post114432%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx114271%_
                                              _%hd114460%_))
                                         (_%lp114427%_
                                          _%rest114459%_
                                          (cdr _%exprs114430%_)
                                          _%bind114431%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs114430%_)
                                                            '()))
                                                _%post114432%_)))))))
                          (if (pair? _%rest114433114447%_)
                              (let ((_%tl114443114504%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest114433114447%_)))
                                    (_%hd114442114502%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest114433114447%_))))
                                (if (pair? _%hd114442114502%_)
                                    (let ((_%tl114445114509%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd114442114502%_)))
                                          (_%hd114444114507%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd114442114502%_))))
                                      (if (null? _%tl114445114509%_)
                                          (let ((_%hd114512%_
                                                 _%hd114444114507%_)
                                                (_%rest114514%_
                                                 _%tl114443114504%_))
                                            (_%K114441114499%_
                                             _%rest114514%_
                                             _%hd114512%_))
                                          (let ((_%hd114487%_
                                                 _%hd114442114502%_)
                                                (_%rest114489%_
                                                 _%tl114443114504%_))
                                            (_%K114438114479%_
                                             _%rest114489%_
                                             _%hd114487%_))))
                                    (let ((_%hd114487%_ _%hd114442114502%_)
                                          (_%rest114489%_ _%tl114443114504%_))
                                      (_%K114438114479%_
                                       _%rest114489%_
                                       _%hd114487%_))))
                              (_%else114436114455%_)))))))
                 (_%compile-bind114275%_
                  (lambda (_%bind114419%_ _%post114420%_ _%body114421%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind114419%_)
                                 (cons (_%compile-post114276%_
                                        _%post114420%_
                                        _%body114421%_)
                                       '())))
                     _%stx114271%_)))
                 (_%compile-post114276%_
                  (lambda (_%post114278%_ _%body114279%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp116042
                                  (let ((__tmp116044
                                         (lambda (_%hd114281%_ _%r114282%_)
                                           (let* ((_%hd114283114306%_
                                                   _%hd114281%_)
                                                  (_%E114287114310%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd114283114306%_
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
                                             (let ((_%K114300114404%_
                                                    (lambda (_%expr114402%_)
                                                      (cons _%expr114402%_
                                                            _%r114282%_)))
                                                   (_%K114295114382%_
                                                    (lambda (_%expr114379%_
                                                             _%id114380%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id114380%_ (cons _%expr114379%_ '())))
                     _%stx114271%_)
                    _%r114282%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K114288114349%_
                                                    (lambda (_%init114314%_
                                                             _%len114315%_
                                                             _%expr114316%_
                                                             _%tmp114317%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp114317%_
                                             (cons _%expr114316%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp114317%_
                                                    (cons _%len114315%_ '())))
                                        _%stx114271%_)
                                       (let ((__tmp116045
                                              (map (lambda (_%hd114319%_)
                                                     (let* ((_%hd114320114327%_
                                                             _%hd114319%_)
                                                            (_%E114322114331%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd114320114327%_
                                '([id . k])))
                       '#!void))
                    (_%K114323114337%_
                     (lambda (_%k114334%_ _%id114335%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id114335%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp114317%_
                                                      (cons _%k114334%_ '())))
                                          '())))
                        _%stx114271%_))))
               (if (pair? _%hd114320114327%_)
                   (let ((_%hd114324114340%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd114320114327%_)))
                         (_%tl114325114342%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd114320114327%_))))
                     (let* ((_%id114345%_ _%hd114324114340%_)
                            (_%k114347%_ _%tl114325114342%_))
                       (_%K114323114337%_ _%k114347%_ _%id114345%_)))
                   (_%E114322114331%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init114314%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp116045)))))
                     _%stx114271%_)
                    _%r114282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match115898115899%_
                                                       (lambda (_%hd114289114352%_
                                                                _%tl114290114354%_
                                                                _%hd114291114359%_
                                                                _%tl114292114361%_)
                                                         (let ((_%tmp114357%_
                                                                _%hd114289114352%_)
                                                               (_%expr114364%_
                                                                _%hd114291114359%_))
                                                           (_%E114287114310%_))))
                                                      (_%__match115892115893%_
                                                       (lambda (_%hd114289114352%_
                                                                _%tl114290114354%_)
                                                         (let ((_%tmp114357%_
                                                                _%hd114289114352%_))
                                                           (_%E114287114310%_)))))
                                                 (if (pair? _%hd114283114306%_)
                                                     (let ((_%tl114302114409%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd114283114306%_)))
                                                           (_%hd114301114407%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd114283114306%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd114301114407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl114302114409%_)
                       (let ((_%tl114304114414%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl114302114409%_)))
                             (_%hd114303114412%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl114302114409%_))))
                         (if (null? _%tl114304114414%_)
                             (let ((_%expr114417%_ _%hd114303114412%_))
                               (_%K114300114404%_ _%expr114417%_))
                             (if (pair? _%tl114304114414%_)
                                 (let ((_%tl114294114368%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl114304114414%_)))
                                       (_%hd114293114366%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl114304114414%_))))
                                   (let ((_%tmp114357%_ _%hd114301114407%_)
                                         (_%expr114364%_ _%hd114303114412%_)
                                         (_%len114371%_ _%hd114293114366%_)
                                         (_%init114373%_ _%tl114294114368%_))
                                     (_%K114288114349%_
                                      _%init114373%_
                                      _%len114371%_
                                      _%expr114364%_
                                      _%tmp114357%_)))
                                 (_%__match115898115899%_
                                  _%hd114301114407%_
                                  _%tl114302114409%_
                                  _%hd114303114412%_
                                  _%tl114304114414%_))))
                       (_%__match115892115893%_
                        _%hd114301114407%_
                        _%tl114302114409%_))
                   (if (pair? _%tl114302114409%_)
                       (let ((_%tl114299114394%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl114302114409%_)))
                             (_%hd114298114392%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl114302114409%_))))
                         (if (null? _%tl114299114394%_)
                             (let ((_%id114390%_ _%hd114301114407%_)
                                   (_%expr114397%_ _%hd114298114392%_))
                               (_%K114295114382%_ _%expr114397%_ _%id114390%_))
                             (if (pair? _%tl114299114394%_)
                                 (let ((_%tl114294114368%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl114299114394%_)))
                                       (_%hd114293114366%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl114299114394%_))))
                                   (let ((_%tmp114357%_ _%hd114301114407%_)
                                         (_%expr114364%_ _%hd114298114392%_)
                                         (_%len114371%_ _%hd114293114366%_)
                                         (_%init114373%_ _%tl114294114368%_))
                                     (_%K114288114349%_
                                      _%init114373%_
                                      _%len114371%_
                                      _%expr114364%_
                                      _%tmp114357%_)))
                                 (_%__match115898115899%_
                                  _%hd114301114407%_
                                  _%tl114302114409%_
                                  _%hd114298114392%_
                                  _%tl114299114394%_))))
                       (_%__match115892115893%_
                        _%hd114301114407%_
                        _%tl114302114409%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E114287114310%_)))))))
                                        (__tmp116043 (list _%body114279%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp116044
                                     __tmp116043
                                     _%post114278%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp116042)))
                     _%stx114271%_))))
          (__compile-let-form
           _%stx114271%_
           _%compile-simple114273%_
           _%compile-values114274%_))))
    (define __compile-call%
      (lambda (_%stx114231%_)
        (let* ((_%$e114233%_ _%stx114231%_)
               (_%$E114235114244%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114233%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114233%_))
              (let* ((_%$tgt114236114247%_
                      (let () (declare (not safe)) (__AST-e _%$e114233%_)))
                     (_%$hd114237114250%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114236114247%_)))
                     (_%$tl114238114253%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114236114247%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114238114253%_))
                    (let* ((_%$tgt114239114257%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114238114253%_)))
                           (_%$hd114240114260%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114239114257%_)))
                           (_%$tl114241114263%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114239114257%_)))
                           (_%rator114267%_ _%$hd114240114260%_)
                           (_%rands114269%_ _%$tl114241114263%_))
                      (__SRC__%
                       (cons (__compile _%rator114267%_)
                             (map __compile _%rands114269%_))
                       _%stx114231%_))
                    (_%$E114235114244%_)))
              (_%$E114235114244%_)))))
    (define __compile-ref%
      (lambda (_%stx114193%_)
        (let* ((_%$e114195%_ _%stx114193%_)
               (_%$E114197114206%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114195%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114195%_))
              (let* ((_%$tgt114198114209%_
                      (let () (declare (not safe)) (__AST-e _%$e114195%_)))
                     (_%$hd114199114212%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114198114209%_)))
                     (_%$tl114200114215%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114198114209%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114200114215%_))
                    (let* ((_%$tgt114201114219%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114200114215%_)))
                           (_%$hd114202114222%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114201114219%_)))
                           (_%$tl114203114225%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114201114219%_)))
                           (_%id114229%_ _%$hd114202114222%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114203114225%_))
                                  '())
                          (__SRC__% _%id114229%_ _%stx114193%_)
                          (_%$E114197114206%_)))
                    (_%$E114197114206%_)))
              (_%$E114197114206%_)))))
    (define __compile-setq%
      (lambda (_%stx114140%_)
        (let* ((_%$e114142%_ _%stx114140%_)
               (_%$E114144114156%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114142%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114142%_))
              (let* ((_%$tgt114145114159%_
                      (let () (declare (not safe)) (__AST-e _%$e114142%_)))
                     (_%$hd114146114162%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114145114159%_)))
                     (_%$tl114147114165%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114145114159%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114147114165%_))
                    (let* ((_%$tgt114148114169%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114147114165%_)))
                           (_%$hd114149114172%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114148114169%_)))
                           (_%$tl114150114175%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114148114169%_)))
                           (_%id114179%_ _%$hd114149114172%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114150114175%_))
                          (let* ((_%$tgt114151114181%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114150114175%_)))
                                 (_%$hd114152114184%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114151114181%_)))
                                 (_%$tl114153114187%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114151114181%_)))
                                 (_%expr114191%_ _%$hd114152114184%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114153114187%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id114179%_
                                              _%stx114140%_)
                                             (cons (__compile _%expr114191%_)
                                                   '())))
                                 _%stx114140%_)
                                (_%$E114144114156%_)))
                          (_%$E114144114156%_)))
                    (_%$E114144114156%_)))
              (_%$E114144114156%_)))))
    (define __compile-if%
      (lambda (_%stx114072%_)
        (let* ((_%$e114074%_ _%stx114072%_)
               (_%$E114076114091%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114074%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114074%_))
              (let* ((_%$tgt114077114094%_
                      (let () (declare (not safe)) (__AST-e _%$e114074%_)))
                     (_%$hd114078114097%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114077114094%_)))
                     (_%$tl114079114100%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114077114094%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114079114100%_))
                    (let* ((_%$tgt114080114104%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114079114100%_)))
                           (_%$hd114081114107%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114080114104%_)))
                           (_%$tl114082114110%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114080114104%_)))
                           (_%p114114%_ _%$hd114081114107%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114082114110%_))
                          (let* ((_%$tgt114083114116%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114082114110%_)))
                                 (_%$hd114084114119%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114083114116%_)))
                                 (_%$tl114085114122%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114083114116%_)))
                                 (_%t114126%_ _%$hd114084114119%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl114085114122%_))
                                (let* ((_%$tgt114086114128%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114085114122%_)))
                                       (_%$hd114087114131%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114086114128%_)))
                                       (_%$tl114088114134%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114086114128%_)))
                                       (_%f114138%_ _%$hd114087114131%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114088114134%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p114114%_)
                                                   (cons (__compile
                                                          _%t114126%_)
                                                         (cons (__compile
                                                                _%f114138%_)
                                                               '()))))
                                       _%stx114072%_)
                                      (_%$E114076114091%_)))
                                (_%$E114076114091%_)))
                          (_%$E114076114091%_)))
                    (_%$E114076114091%_)))
              (_%$E114076114091%_)))))
    (define __compile-quote%
      (lambda (_%stx114034%_)
        (let* ((_%$e114036%_ _%stx114034%_)
               (_%$E114038114047%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114036%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114036%_))
              (let* ((_%$tgt114039114050%_
                      (let () (declare (not safe)) (__AST-e _%$e114036%_)))
                     (_%$hd114040114053%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114039114050%_)))
                     (_%$tl114041114056%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114039114050%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114041114056%_))
                    (let* ((_%$tgt114042114060%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114041114056%_)))
                           (_%$hd114043114063%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114042114060%_)))
                           (_%$tl114044114066%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114042114060%_)))
                           (_%e114070%_ _%$hd114043114063%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114044114066%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e114070%_))
                                       '()))
                           _%stx114034%_)
                          (_%$E114038114047%_)))
                    (_%$E114038114047%_)))
              (_%$E114038114047%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx113996%_)
        (let* ((_%$e113998%_ _%stx113996%_)
               (_%$E114000114009%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113998%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113998%_))
              (let* ((_%$tgt114001114012%_
                      (let () (declare (not safe)) (__AST-e _%$e113998%_)))
                     (_%$hd114002114015%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114001114012%_)))
                     (_%$tl114003114018%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114001114012%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114003114018%_))
                    (let* ((_%$tgt114004114022%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114003114018%_)))
                           (_%$hd114005114025%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114004114022%_)))
                           (_%$tl114006114028%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114004114022%_)))
                           (_%e114032%_ _%$hd114005114025%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114006114028%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e114032%_ '()))
                           _%stx113996%_)
                          (_%$E114000114009%_)))
                    (_%$E114000114009%_)))
              (_%$E114000114009%_)))))
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
