(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1742223872)
  (begin
    (define __syntax::t
      (let ((__tmp116030 (list)) (__tmp116029 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp116030
         '(e id)
         __tmp116029
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args115834%_
        (apply make-instance __syntax::t _%$args115834%_)))
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
      (let ((__tmp116032 (list __syntax::t))
            (__tmp116031 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp116032
         '()
         __tmp116031
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args115831%_
        (apply make-instance __core-form::t _%$args115831%_)))
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
      (let ((__tmp116034 (list __core-form::t))
            (__tmp116033 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp116034
         '()
         __tmp116033
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args115828%_
        (apply make-instance __core-expression::t _%$args115828%_)))
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
      (let ((__tmp116036 (list __core-form::t))
            (__tmp116035 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp116036
         '()
         __tmp116035
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args115825%_
        (apply make-instance __core-special-form::t _%$args115825%_)))
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
      (lambda (_%id115823%_)
        (let ((__tmp116037
               (let () (declare (not safe)) (__AST-e _%id115823%_))))
          (declare (not safe))
          (__hash-get __core __tmp116037))))
    (define __core-bound-id?__%
      (lambda (_%id115806%_ _%is?115807%_)
        (let ((_%$e115809%_ (__core-resolve _%id115806%_)))
          (if _%$e115809%_ (_%is?115807%_ _%$e115809%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id115816%_)
        (let ((_%is?115818%_ true))
          (__core-bound-id?__% _%id115816%_ _%is?115818%_))))
    (define __core-bound-id?
      (lambda _g116039_
        (let ((_g116038_ (let () (declare (not safe)) (##length _g116039_))))
          (cond ((let () (declare (not safe)) (##fx= _g116038_ 1))
                 (apply __core-bound-id?__0 _g116039_))
                ((let () (declare (not safe)) (##fx= _g116038_ 2))
                 (apply __core-bound-id?__% _g116039_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g116039_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id115789%_ _%e115790%_ _%make115791%_)
        (let ((__tmp116040
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e115790%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e115790%_
                   (_%make115791%_ _%e115790%_ _%id115789%_))))
          (declare (not safe))
          (__hash-put! __core _%id115789%_ __tmp116040))))
    (define __core-bind-syntax!__0
      (lambda (_%id115796%_ _%e115797%_)
        (let ((_%make115799%_ make-__syntax))
          (__core-bind-syntax!__% _%id115796%_ _%e115797%_ _%make115799%_))))
    (define __core-bind-syntax!
      (lambda _g116042_
        (let ((_g116041_ (let () (declare (not safe)) (##length _g116042_))))
          (cond ((let () (declare (not safe)) (##fx= _g116041_ 2))
                 (apply __core-bind-syntax!__0 _g116042_))
                ((let () (declare (not safe)) (##fx= _g116041_ 3))
                 (apply __core-bind-syntax!__% _g116042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g116042_))))))
    (define __SRC__%
      (lambda (_%e115769%_ _%src-stx115770%_)
        (if (or (pair? _%e115769%_) (symbol? _%e115769%_))
            (let ((__tmp116043
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx115770%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx115770%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e115769%_ __tmp116043))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e115769%_ 'gerbil#AST::t))
                (let ((__tmp116045
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e115769%_ '1 '#f '#f)))
                      (__tmp116044
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e115769%_)))))
                  (declare (not safe))
                  (##make-source __tmp116045 __tmp116044))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e115769%_))))))
    (define __SRC__0
      (lambda (_%e115781%_)
        (let ((_%src-stx115783%_ '#f))
          (__SRC__% _%e115781%_ _%src-stx115783%_))))
    (define __SRC
      (lambda _g116047_
        (let ((_g116046_ (let () (declare (not safe)) (##length _g116047_))))
          (cond ((let () (declare (not safe)) (##fx= _g116046_ 1))
                 (apply __SRC__0 _g116047_))
                ((let () (declare (not safe)) (##fx= _g116046_ 2))
                 (apply __SRC__% _g116047_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g116047_))))))
    (define __locat
      (lambda (_%loc115766%_)
        (if (let () (declare (not safe)) (##locat? _%loc115766%_))
            _%loc115766%_
            '#f)))
    (define __check-values
      (lambda (_%obj115761%_ _%k115762%_)
        (let ((_%count115764%_
               (if (let () (declare (not safe)) (##values? _%obj115761%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj115761%_))
                   '1)))
          (if (fx= _%count115764%_ _%k115762%_)
              '#!void
              (let ((__tmp116049
                     (if (fx< _%count115764%_ _%k115762%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp116048
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj115761%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj115761%_))
                         _%obj115761%_)))
                (declare (not safe))
                (error __tmp116049 __tmp116048 _%k115762%_))))))
    (define __compile
      (lambda (_%stx115730%_)
        (let* ((_%$e115732%_ _%stx115730%_)
               (_%$E115734115740%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115732%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115732%_))
              (let* ((_%$tgt115735115743%_
                      (let () (declare (not safe)) (__AST-e _%$e115732%_)))
                     (_%$hd115736115746%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115735115743%_)))
                     (_%$tl115737115749%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115735115743%_)))
                     (_%form115753%_ _%$hd115736115746%_)
                     (_%$e115755%_ (__core-resolve _%form115753%_)))
                (if _%$e115755%_
                    ((lambda (_%bind115758%_)
                       ((##structure-ref _%bind115758%_ '1 __syntax::t '#f)
                        _%stx115730%_))
                     _%$e115755%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx115730%_
                       _%form115753%_))))
              (_%$E115734115740%_)))))
    (define __compile-error__%
      (lambda (_%stx115717%_ _%detail115718%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx115717%_
           _%detail115718%_))))
    (define __compile-error__0
      (lambda (_%stx115723%_)
        (let ((_%detail115725%_ '#f))
          (__compile-error__% _%stx115723%_ _%detail115725%_))))
    (define __compile-error
      (lambda _g116051_
        (let ((_g116050_ (let () (declare (not safe)) (##length _g116051_))))
          (cond ((let () (declare (not safe)) (##fx= _g116050_ 1))
                 (apply __compile-error__0 _g116051_))
                ((let () (declare (not safe)) (##fx= _g116050_ 2))
                 (apply __compile-error__% _g116051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g116051_))))))
    (define __compile-ignore%
      (lambda (_%stx115714%_) (__SRC__% ''#!void _%stx115714%_)))
    (define __compile-begin%
      (lambda (_%stx115689%_)
        (let* ((_%$e115691%_ _%stx115689%_)
               (_%$E115693115699%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115691%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115691%_))
              (let* ((_%$tgt115694115702%_
                      (let () (declare (not safe)) (__AST-e _%$e115691%_)))
                     (_%$hd115695115705%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115694115702%_)))
                     (_%$tl115696115708%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115694115702%_)))
                     (_%body115712%_ _%$tl115696115708%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body115712%_))
                 _%stx115689%_))
              (_%$E115693115699%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx115664%_)
        (let* ((_%$e115666%_ _%stx115664%_)
               (_%$E115668115674%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115666%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115666%_))
              (let* ((_%$tgt115669115677%_
                      (let () (declare (not safe)) (__AST-e _%$e115666%_)))
                     (_%$hd115670115680%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115669115677%_)))
                     (_%$tl115671115683%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115669115677%_)))
                     (_%body115687%_ _%$tl115671115683%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body115687%_)))
                 _%stx115664%_))
              (_%$E115668115674%_)))))
    (define __compile-import%
      (lambda (_%stx115639%_)
        (let* ((_%$e115641%_ _%stx115639%_)
               (_%$E115643115649%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115641%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115641%_))
              (let* ((_%$tgt115644115652%_
                      (let () (declare (not safe)) (__AST-e _%$e115641%_)))
                     (_%$hd115645115655%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115644115652%_)))
                     (_%$tl115646115658%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115644115652%_)))
                     (_%body115662%_ _%$tl115646115658%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body115662%_ '())) '()))
                 _%stx115639%_))
              (_%$E115643115649%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx115586%_)
        (let* ((_%$e115588%_ _%stx115586%_)
               (_%$E115590115602%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115588%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115588%_))
              (let* ((_%$tgt115591115605%_
                      (let () (declare (not safe)) (__AST-e _%$e115588%_)))
                     (_%$hd115592115608%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115591115605%_)))
                     (_%$tl115593115611%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115591115605%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl115593115611%_))
                    (let* ((_%$tgt115594115615%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl115593115611%_)))
                           (_%$hd115595115618%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt115594115615%_)))
                           (_%$tl115596115621%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt115594115615%_)))
                           (_%ann115625%_ _%$hd115595115618%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl115596115621%_))
                          (let* ((_%$tgt115597115627%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl115596115621%_)))
                                 (_%$hd115598115630%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115597115627%_)))
                                 (_%$tl115599115633%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115597115627%_)))
                                 (_%expr115637%_ _%$hd115598115630%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl115599115633%_))
                                        '())
                                (__compile _%expr115637%_)
                                (_%$E115590115602%_)))
                          (_%$E115590115602%_)))
                    (_%$E115590115602%_)))
              (_%$E115590115602%_)))))
    (define __compile-define-values%
      (lambda (_%stx115477%_)
        (let* ((_%$e115479%_ _%stx115477%_)
               (_%$E115481115493%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115479%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115479%_))
              (let* ((_%$tgt115482115496%_
                      (let () (declare (not safe)) (__AST-e _%$e115479%_)))
                     (_%$hd115483115499%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115482115496%_)))
                     (_%$tl115484115502%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115482115496%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl115484115502%_))
                    (let* ((_%$tgt115485115506%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl115484115502%_)))
                           (_%$hd115486115509%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt115485115506%_)))
                           (_%$tl115487115512%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt115485115506%_)))
                           (_%hd115516%_ _%$hd115486115509%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl115487115512%_))
                          (let* ((_%$tgt115488115518%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl115487115512%_)))
                                 (_%$hd115489115521%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115488115518%_)))
                                 (_%$tl115490115524%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115488115518%_)))
                                 (_%expr115528%_ _%$hd115489115521%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl115490115524%_))
                                        '())
                                (let* ((_%$e115530%_ _%hd115516%_)
                                       (_%$E115532115573%_
                                        (lambda ()
                                          (let ((_%$E115533115558%_
                                                 (lambda ()
                                                   (let* ((_%$E115534115545%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e115530%_))))
                  (_%ids115548%_ _%hd115516%_)
                  (_%len115550%_ (length _%ids115548%_))
                  (_%tmp115552%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp115552%_
                                       (cons (__compile _%expr115528%_) '())))
                           _%stx115477%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp115552%_
                                             (cons _%len115550%_ '())))
                                 _%stx115477%_)
                                (let ((__tmp116052
                                       (let ((__tmp116054
                                              (lambda (_%id115555%_
                                                       _%k115556%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id115555%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id115555%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp115552%_
                                           (cons _%k115556%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx115477%_)
                                                    '#f)))
                                             (__tmp116053
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len115550%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp116054
                                          _%ids115548%_
                                          __tmp116053))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp116052)))))
              _%stx115477%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e115530%_))
                                                (let* ((_%$tgt115535115561%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e115530%_)))
                                                       (_%$hd115536115564%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt115535115561%_)))
                                                       (_%$tl115537115567%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt115535115561%_)))
                                                       (_%id115571%_
                                                        _%$hd115536115564%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl115537115567%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id115571%_)
                           (cons (__compile _%expr115528%_) '())))
               _%stx115477%_)
              (_%$E115533115558%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E115533115558%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e115530%_))
                                      (let* ((_%$tgt115538115576%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e115530%_)))
                                             (_%$hd115539115579%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt115538115576%_)))
                                             (_%$tl115540115582%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt115538115576%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd115539115579%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl115540115582%_))
                                                        '())
                                                (__compile _%expr115528%_)
                                                (_%$E115532115573%_))
                                            (_%$E115532115573%_)))
                                      (_%$E115532115573%_)))
                                (_%$E115481115493%_)))
                          (_%$E115481115493%_)))
                    (_%$E115481115493%_)))
              (_%$E115481115493%_)))))
    (define __compile-head-id
      (lambda (_%e115475%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e115475%_))
             _%e115475%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd115432%_)
        (let _%recur115434%_ ((_%rest115436%_ _%hd115432%_))
          (let* ((_%$e115438%_ _%rest115436%_)
                 (_%$E115440115458%_
                  (lambda ()
                    (let ((_%$E115441115455%_
                           (lambda ()
                             (let* ((_%$E115442115450%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e115438%_))))
                                    (_%tail115453%_ _%$e115438%_))
                               (__compile-head-id _%tail115453%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115438%_))
                                  '())
                          '()
                          (_%$E115441115455%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e115438%_))
                (let* ((_%$tgt115443115461%_
                        (let () (declare (not safe)) (__AST-e _%$e115438%_)))
                       (_%$hd115444115464%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt115443115461%_)))
                       (_%$tl115445115467%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt115443115461%_)))
                       (_%hd115471%_ _%$hd115444115464%_)
                       (_%rest115473%_ _%$tl115445115467%_))
                  (cons (__compile-head-id _%hd115471%_)
                        (_%recur115434%_ _%rest115473%_)))
                (_%$E115440115458%_))))))
    (define __compile-lambda%
      (lambda (_%stx115379%_)
        (let* ((_%$e115381%_ _%stx115379%_)
               (_%$E115383115395%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115381%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115381%_))
              (let* ((_%$tgt115384115398%_
                      (let () (declare (not safe)) (__AST-e _%$e115381%_)))
                     (_%$hd115385115401%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115384115398%_)))
                     (_%$tl115386115404%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115384115398%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl115386115404%_))
                    (let* ((_%$tgt115387115408%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl115386115404%_)))
                           (_%$hd115388115411%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt115387115408%_)))
                           (_%$tl115389115414%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt115387115408%_)))
                           (_%hd115418%_ _%$hd115388115411%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl115389115414%_))
                          (let* ((_%$tgt115390115420%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl115389115414%_)))
                                 (_%$hd115391115423%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115390115420%_)))
                                 (_%$tl115392115426%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115390115420%_)))
                                 (_%body115430%_ _%$hd115391115423%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl115392115426%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd115418%_)
                                             (cons (__compile _%body115430%_)
                                                   '())))
                                 _%stx115379%_)
                                (_%$E115383115395%_)))
                          (_%$E115383115395%_)))
                    (_%$E115383115395%_)))
              (_%$E115383115395%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx115171%_)
        (letrec ((_%variadic?115173%_
                  (lambda (_%hd115344%_)
                    (let* ((_%$e115346%_ _%hd115344%_)
                           (_%$E115348115364%_
                            (lambda ()
                              (let ((_%$E115349115361%_
                                     (lambda ()
                                       (let ((_%$E115350115358%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e115346%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e115346%_))
                                            '())
                                    '#f
                                    (_%$E115349115361%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e115346%_))
                          (let* ((_%$tgt115351115367%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115346%_)))
                                 (_%$hd115352115370%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115351115367%_)))
                                 (_%$tl115353115373%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115351115367%_)))
                                 (_%rest115377%_ _%$tl115353115373%_))
                            (_%variadic?115173%_ _%rest115377%_))
                          (_%$E115348115364%_)))))
                 (_%arity115174%_
                  (lambda (_%hd115309%_)
                    (let _%lp115311%_ ((_%rest115313%_ _%hd115309%_)
                                       (_%k115314%_ '0))
                      (let* ((_%$e115316%_ _%rest115313%_)
                             (_%$E115318115329%_
                              (lambda ()
                                (let ((_%$E115319115326%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e115316%_)))))
                                  _%k115314%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e115316%_))
                            (let* ((_%$tgt115320115332%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e115316%_)))
                                   (_%$hd115321115335%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt115320115332%_)))
                                   (_%$tl115322115338%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt115320115332%_)))
                                   (_%rest115342%_ _%$tl115322115338%_))
                              (_%lp115311%_
                               _%rest115342%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k115314%_ '1))))
                            (_%$E115318115329%_))))))
                 (_%generate115175%_
                  (lambda (_%rest115236%_ _%args115237%_ _%len115238%_)
                    (let* ((_%$e115240%_ _%rest115236%_)
                           (_%$E115242115253%_
                            (lambda ()
                              (let ((_%$E115243115250%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e115240%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args115237%_ '())))
                                 _%stx115171%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e115240%_))
                          (let* ((_%$tgt115244115256%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115240%_)))
                                 (_%$hd115245115259%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115244115256%_)))
                                 (_%$tl115246115262%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115244115256%_)))
                                 (_%clause115266%_ _%$hd115245115259%_)
                                 (_%rest115268%_ _%$tl115246115262%_)
                                 (_%$e115270%_ _%clause115266%_)
                                 (_%$E115272115281%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e115270%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e115270%_))
                                (let* ((_%$tgt115273115284%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e115270%_)))
                                       (_%$hd115274115287%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt115273115284%_)))
                                       (_%$tl115275115290%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt115273115284%_)))
                                       (_%hd115294%_ _%$hd115274115287%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl115275115290%_))
                                      (let* ((_%$tgt115276115296%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl115275115290%_)))
                                             (_%$hd115277115299%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt115276115296%_)))
                                             (_%$tl115278115302%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt115276115296%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl115278115302%_))
                                                    '())
                                            (let ((_%clen115306%_
                                                   (_%arity115174%_
                                                    _%hd115294%_))
                                                  (_%cmp115307%_
                                                   (if (_%variadic?115173%_
                                                        _%hd115294%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp115307%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len115238%_ (cons _%clen115306%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause115266%_))
                                      (cons _%args115237%_ '())))
                          _%stx115171%_)
                         (cons (_%generate115175%_
                                _%rest115268%_
                                _%args115237%_
                                _%len115238%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx115171%_))
                                            (_%$E115272115281%_)))
                                      (_%$E115272115281%_)))
                                (_%$E115272115281%_)))
                          (_%$E115242115253%_))))))
          (let* ((_%$e115177%_ _%stx115171%_)
                 (_%$E115179115211%_
                  (lambda ()
                    (let ((_%$E115180115193%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e115177%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e115177%_))
                          (let* ((_%$tgt115181115196%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115177%_)))
                                 (_%$hd115182115199%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115181115196%_)))
                                 (_%$tl115183115202%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115181115196%_)))
                                 (_%clauses115206%_ _%$tl115183115202%_))
                            (let ((_%args115208%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx115171%_))
                                  (_%len115209%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx115171%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args115208%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len115209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args115208%_ '()))
                                         _%stx115171%_)
                                        '()))
                            '())
                      (cons (_%generate115175%_
                             _%clauses115206%_
                             _%args115208%_
                             _%len115209%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx115171%_)
                                                 '())))
                               _%stx115171%_)))
                          (_%$E115180115193%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e115177%_))
                (let* ((_%$tgt115184115214%_
                        (let () (declare (not safe)) (__AST-e _%$e115177%_)))
                       (_%$hd115185115217%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt115184115214%_)))
                       (_%$tl115186115220%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt115184115214%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl115186115220%_))
                      (let* ((_%$tgt115187115224%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl115186115220%_)))
                             (_%$hd115188115227%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt115187115224%_)))
                             (_%$tl115189115230%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt115187115224%_)))
                             (_%clause115234%_ _%$hd115188115227%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl115189115230%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause115234%_))
                            (_%$E115179115211%_)))
                      (_%$E115179115211%_)))
                (_%$E115179115211%_))))))
    (define __compile-let-form
      (lambda (_%stx114940%_ _%compile-simple114941%_ _%compile-values114942%_)
        (letrec ((_%simple-bind?114944%_
                  (lambda (_%hd115129%_)
                    (let* ((_%hd115130115140%_ _%hd115129%_)
                           (_%else115133115148%_ (lambda () '#f)))
                      (let ((_%K115136115161%_ (lambda (_%id115159%_) '#t))
                            (_%K115135115153%_ (lambda () '#t)))
                        (let ((_%try-match115132115156%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd115130115140%_ '#f))
                                     (_%K115135115153%_)
                                     (_%else115133115148%_)))))
                          (if (pair? _%hd115130115140%_)
                              (let ((_%tl115138115166%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd115130115140%_)))
                                    (_%hd115137115164%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd115130115140%_))))
                                (if (null? _%tl115138115166%_)
                                    (let ((_%id115169%_ _%hd115137115164%_))
                                      (_%K115136115161%_ _%id115169%_))
                                    (_%try-match115132115156%_)))
                              (_%try-match115132115156%_)))))))
                 (_%car-e114945%_
                  (lambda (_%hd115127%_)
                    (if (pair? _%hd115127%_)
                        (let () (declare (not safe)) (##car _%hd115127%_))
                        _%hd115127%_))))
          (let* ((_%$e114947%_ _%stx114940%_)
                 (_%$E114949115092%_
                  (lambda ()
                    (let ((_%$E114950114972%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e114947%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e114947%_))
                          (let* ((_%$tgt114951114975%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114947%_)))
                                 (_%$hd114952114978%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114951114975%_)))
                                 (_%$tl114953114981%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114951114975%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl114953114981%_))
                                (let* ((_%$tgt114954114985%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114953114981%_)))
                                       (_%$hd114955114988%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114954114985%_)))
                                       (_%$tl114956114991%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114954114985%_)))
                                       (_%hd114995%_ _%$hd114955114988%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl114956114991%_))
                                      (let* ((_%$tgt114957114997%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114956114991%_)))
                                             (_%$hd114958115000%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt114957114997%_)))
                                             (_%$tl114959115003%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt114957114997%_)))
                                             (_%body115007%_
                                              _%$hd114958115000%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl114959115003%_))
                                                    '())
                                            (let* ((_%hd-ids115047%_
                                                    (map (lambda (_%bind115009%_)
                                                           (let* ((_%$e115011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind115009%_)
                          (_%$E115013115022%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e115011%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e115011%_))
                         (let* ((_%$tgt115014115025%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e115011%_)))
                                (_%$hd115015115028%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt115014115025%_)))
                                (_%$tl115016115031%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt115014115025%_)))
                                (_%ids115035%_ _%$hd115015115028%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl115016115031%_))
                               (let* ((_%$tgt115017115037%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl115016115031%_)))
                                      (_%$hd115018115040%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt115017115037%_)))
                                      (_%$tl115019115043%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt115017115037%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl115019115043%_))
                                             '())
                                     _%ids115035%_
                                     (_%$E115013115022%_)))
                               (_%$E115013115022%_)))
                         (_%$E115013115022%_))))
                 _%hd114995%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs115087%_
                                                    (map (lambda (_%bind115049%_)
                                                           (let* ((_%$e115051%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind115049%_)
                          (_%$E115053115062%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e115051%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e115051%_))
                         (let* ((_%$tgt115054115065%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e115051%_)))
                                (_%$hd115055115068%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt115054115065%_)))
                                (_%$tl115056115071%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt115054115065%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl115056115071%_))
                               (let* ((_%$tgt115057115075%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl115056115071%_)))
                                      (_%$hd115058115078%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt115057115075%_)))
                                      (_%$tl115059115081%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt115057115075%_)))
                                      (_%expr115085%_ _%$hd115058115078%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl115059115081%_))
                                             '())
                                     (__compile _%expr115085%_)
                                     (_%$E115053115062%_)))
                               (_%$E115053115062%_)))
                         (_%$E115053115062%_))))
                 _%hd114995%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body115089%_
                                                    (__compile
                                                     _%body115007%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?114944%_
                                                     _%hd-ids115047%_))
                                                  (_%compile-simple114941%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e114945%_
                                                            _%hd-ids115047%_))
                                                   _%exprs115087%_
                                                   _%body115089%_)
                                                  (_%compile-values114942%_
                                                   _%hd-ids115047%_
                                                   _%exprs115087%_
                                                   _%body115089%_)))
                                            (_%$E114950114972%_)))
                                      (_%$E114950114972%_)))
                                (_%$E114950114972%_)))
                          (_%$E114950114972%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e114947%_))
                (let* ((_%$tgt114960115095%_
                        (let () (declare (not safe)) (__AST-e _%$e114947%_)))
                       (_%$hd114961115098%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt114960115095%_)))
                       (_%$tl114962115101%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt114960115095%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl114962115101%_))
                      (let* ((_%$tgt114963115105%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl114962115101%_)))
                             (_%$hd114964115108%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt114963115105%_)))
                             (_%$tl114965115111%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt114963115105%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd114964115108%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl114965115111%_))
                                (let* ((_%$tgt114966115115%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114965115111%_)))
                                       (_%$hd114967115118%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114966115115%_)))
                                       (_%$tl114968115121%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114966115115%_)))
                                       (_%body115125%_ _%$hd114967115118%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114968115121%_))
                                              '())
                                      (__compile _%body115125%_)
                                      (_%$E114949115092%_)))
                                (_%$E114949115092%_))
                            (_%$E114949115092%_)))
                      (_%$E114949115092%_)))
                (_%$E114949115092%_))))))
    (define __compile-let-values%
      (lambda (_%stx114752%_)
        (letrec ((_%compile-simple114754%_
                  (lambda (_%hd-ids114936%_ _%exprs114937%_ _%body114938%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp116055
                                        (map __compile-head-id
                                             _%hd-ids114936%_)))
                                   (declare (not safe))
                                   (##map list __tmp116055 _%exprs114937%_))
                                 (cons _%body114938%_ '())))
                     _%stx114752%_)))
                 (_%compile-values114755%_
                  (lambda (_%hd-ids114851%_ _%exprs114852%_ _%body114853%_)
                    (let _%lp114855%_ ((_%rest114857%_ _%hd-ids114851%_)
                                       (_%exprs114858%_ _%exprs114852%_)
                                       (_%bind114859%_ '())
                                       (_%post114860%_ '()))
                      (let* ((_%rest114861114875%_ _%rest114857%_)
                             (_%else114864114883%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind114859%_)
                                             (cons (_%compile-post114756%_
                                                    _%post114860%_
                                                    _%body114853%_)
                                                   '())))
                                 _%stx114752%_))))
                        (let ((_%K114869114919%_
                               (lambda (_%rest114916%_ _%id114917%_)
                                 (_%lp114855%_
                                  _%rest114916%_
                                  (cdr _%exprs114858%_)
                                  (cons (cons (__compile-head-id _%id114917%_)
                                              (cons (car _%exprs114858%_) '()))
                                        _%bind114859%_)
                                  _%post114860%_)))
                              (_%K114866114901%_
                               (lambda (_%rest114887%_ _%hd114888%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114888%_))
                                     (_%lp114855%_
                                      _%rest114887%_
                                      (cdr _%exprs114858%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd114888%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs114858%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind114859%_)
                                      _%post114860%_)
                                     (if (list? _%hd114888%_)
                                         (let* ((_%len114892%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd114888%_)))
                                                (_%tmp114894%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp114855%_
                                            _%rest114887%_
                                            (cdr _%exprs114858%_)
                                            (cons (cons _%tmp114894%_
                                                        (cons (car _%exprs114858%_)
                                                              '()))
                                                  _%bind114859%_)
                                            (cons (cons _%tmp114894%_
                                                        (cons _%len114892%_
                                                              (let ((__tmp116057
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id114897%_ _%k114898%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id114897%_))
                                   (cons (__SRC__0 _%id114897%_) _%k114898%_)
                                   '#f)))
                            (__tmp116056
                             (let ()
                               (declare (not safe))
                               (##iota _%len114892%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp116057 _%hd114888%_ __tmp116056))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post114860%_)))
                                         (__compile-error__%
                                          _%stx114752%_
                                          _%hd114888%_))))))
                          (if (pair? _%rest114861114875%_)
                              (let ((_%tl114871114924%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest114861114875%_)))
                                    (_%hd114870114922%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest114861114875%_))))
                                (if (pair? _%hd114870114922%_)
                                    (let ((_%tl114873114929%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd114870114922%_)))
                                          (_%hd114872114927%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd114870114922%_))))
                                      (if (null? _%tl114873114929%_)
                                          (let ((_%id114932%_
                                                 _%hd114872114927%_)
                                                (_%rest114934%_
                                                 _%tl114871114924%_))
                                            (_%K114869114919%_
                                             _%rest114934%_
                                             _%id114932%_))
                                          (let ((_%hd114909%_
                                                 _%hd114870114922%_)
                                                (_%rest114911%_
                                                 _%tl114871114924%_))
                                            (_%K114866114901%_
                                             _%rest114911%_
                                             _%hd114909%_))))
                                    (let ((_%hd114909%_ _%hd114870114922%_)
                                          (_%rest114911%_ _%tl114871114924%_))
                                      (_%K114866114901%_
                                       _%rest114911%_
                                       _%hd114909%_))))
                              (_%else114864114883%_)))))))
                 (_%compile-post114756%_
                  (lambda (_%post114758%_ _%body114759%_)
                    (let _%lp114761%_ ((_%rest114763%_ _%post114758%_)
                                       (_%check114764%_ '())
                                       (_%bind114765%_ '()))
                      (let* ((_%rest114766114778%_ _%rest114763%_)
                             (_%else114768114786%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp116058
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind114765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body114759%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx114752%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp116058
                                          _%check114764%_)))
                                 _%stx114752%_)))
                             (_%K114770114825%_
                              (lambda (_%rest114789%_
                                       _%init114790%_
                                       _%len114791%_
                                       _%tmp114792%_)
                                (_%lp114761%_
                                 _%rest114789%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp114792%_
                                                    (cons _%len114791%_ '())))
                                        _%stx114752%_)
                                       _%check114764%_)
                                 (let ((__tmp116059
                                        (lambda (_%hd114794%_ _%r114795%_)
                                          (let* ((_%hd114796114803%_
                                                  _%hd114794%_)
                                                 (_%E114798114807%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd114796114803%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K114799114813%_
                                                  (lambda (_%k114810%_
                                                           _%id114811%_)
                                                    (cons (cons _%id114811%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp114792%_
                                          (cons _%k114810%_ '())))
                              '()))
                  _%r114795%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd114796114803%_)
                                                (let ((_%hd114800114816%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd114796114803%_)))
                                                      (_%tl114801114818%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd114796114803%_))))
                                                  (let* ((_%id114821%_
                                                          _%hd114800114816%_)
                                                         (_%k114823%_
                                                          _%tl114801114818%_))
                                                    (_%K114799114813%_
                                                     _%k114823%_
                                                     _%id114821%_)))
                                                (_%E114798114807%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp116059
                                    _%bind114765%_
                                    _%init114790%_))))))
                        (if (pair? _%rest114766114778%_)
                            (let ((_%hd114771114828%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest114766114778%_)))
                                  (_%tl114772114830%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest114766114778%_))))
                              (if (pair? _%hd114771114828%_)
                                  (let ((_%hd114773114833%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd114771114828%_)))
                                        (_%tl114774114835%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd114771114828%_))))
                                    (let ((_%tmp114838%_ _%hd114773114833%_))
                                      (if (pair? _%tl114774114835%_)
                                          (let ((_%hd114775114840%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl114774114835%_)))
                                                (_%tl114776114842%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl114774114835%_))))
                                            (let* ((_%len114845%_
                                                    _%hd114775114840%_)
                                                   (_%init114847%_
                                                    _%tl114776114842%_)
                                                   (_%rest114849%_
                                                    _%tl114772114830%_))
                                              (_%K114770114825%_
                                               _%rest114849%_
                                               _%init114847%_
                                               _%len114845%_
                                               _%tmp114838%_)))
                                          (_%else114768114786%_))))
                                  (_%else114768114786%_)))
                            (_%else114768114786%_)))))))
          (__compile-let-form
           _%stx114752%_
           _%compile-simple114754%_
           _%compile-values114755%_))))
    (define __compile-letrec-values%
      (lambda (_%stx114549%_)
        (letrec ((_%compile-simple114551%_
                  (lambda (_%hd-ids114748%_ _%exprs114749%_ _%body114750%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp116060
                                        (map __compile-head-id
                                             _%hd-ids114748%_)))
                                   (declare (not safe))
                                   (##map list __tmp116060 _%exprs114749%_))
                                 (cons _%body114750%_ '())))
                     _%stx114549%_)))
                 (_%compile-values114552%_
                  (lambda (_%hd-ids114659%_ _%exprs114660%_ _%body114661%_)
                    (let _%lp114663%_ ((_%rest114665%_ _%hd-ids114659%_)
                                       (_%exprs114666%_ _%exprs114660%_)
                                       (_%pre114667%_ '())
                                       (_%bind114668%_ '())
                                       (_%post114669%_ '()))
                      (let* ((_%rest114670114684%_ _%rest114665%_)
                             (_%else114673114692%_
                              (lambda ()
                                (_%compile-inner114553%_
                                 _%pre114667%_
                                 _%bind114668%_
                                 _%post114669%_
                                 _%body114661%_))))
                        (let ((_%K114678114731%_
                               (lambda (_%rest114728%_ _%id114729%_)
                                 (_%lp114663%_
                                  _%rest114728%_
                                  (cdr _%exprs114666%_)
                                  _%pre114667%_
                                  (cons (cons (__compile-head-id _%id114729%_)
                                              (cons (car _%exprs114666%_) '()))
                                        _%bind114668%_)
                                  _%post114669%_)))
                              (_%K114675114713%_
                               (lambda (_%rest114696%_ _%hd114697%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114697%_))
                                     (_%lp114663%_
                                      _%rest114696%_
                                      (cdr _%exprs114666%_)
                                      _%pre114667%_
                                      (cons (cons (__compile-head-id
                                                   _%hd114697%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs114666%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind114668%_)
                                      _%post114669%_)
                                     (if (list? _%hd114697%_)
                                         (let* ((_%len114701%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd114697%_)))
                                                (_%tmp114703%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp114663%_
                                            _%rest114696%_
                                            (cdr _%exprs114666%_)
                                            (let ((__tmp116061
                                                   (lambda (_%id114706%_
                                                            _%r114707%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id114706%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id114706%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r114707%_)
                 _%r114707%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp116061
                                               _%pre114667%_
                                               _%hd114697%_))
                                            (cons (cons _%tmp114703%_
                                                        (cons (car _%exprs114666%_)
                                                              '()))
                                                  _%bind114668%_)
                                            (cons (cons _%tmp114703%_
                                                        (cons _%len114701%_
                                                              (let ((__tmp116063
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id114709%_ _%k114710%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id114709%_))
                                   (cons (__SRC__0 _%id114709%_) _%k114710%_)
                                   '#f)))
                            (__tmp116062
                             (let ()
                               (declare (not safe))
                               (##iota _%len114701%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp116063 _%hd114697%_ __tmp116062))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post114669%_)))
                                         (__compile-error__%
                                          _%stx114549%_
                                          _%hd114697%_))))))
                          (if (pair? _%rest114670114684%_)
                              (let ((_%tl114680114736%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest114670114684%_)))
                                    (_%hd114679114734%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest114670114684%_))))
                                (if (pair? _%hd114679114734%_)
                                    (let ((_%tl114682114741%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd114679114734%_)))
                                          (_%hd114681114739%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd114679114734%_))))
                                      (if (null? _%tl114682114741%_)
                                          (let ((_%id114744%_
                                                 _%hd114681114739%_)
                                                (_%rest114746%_
                                                 _%tl114680114736%_))
                                            (_%K114678114731%_
                                             _%rest114746%_
                                             _%id114744%_))
                                          (let ((_%hd114721%_
                                                 _%hd114679114734%_)
                                                (_%rest114723%_
                                                 _%tl114680114736%_))
                                            (_%K114675114713%_
                                             _%rest114723%_
                                             _%hd114721%_))))
                                    (let ((_%hd114721%_ _%hd114679114734%_)
                                          (_%rest114723%_ _%tl114680114736%_))
                                      (_%K114675114713%_
                                       _%rest114723%_
                                       _%hd114721%_))))
                              (_%else114673114692%_)))))))
                 (_%compile-inner114553%_
                  (lambda (_%pre114654%_
                           _%bind114655%_
                           _%post114656%_
                           _%body114657%_)
                    (if (null? _%pre114654%_)
                        (_%compile-bind114554%_
                         _%bind114655%_
                         _%post114656%_
                         _%body114657%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre114654%_)
                                     (cons (_%compile-bind114554%_
                                            _%bind114655%_
                                            _%post114656%_
                                            _%body114657%_)
                                           '())))
                         _%stx114549%_))))
                 (_%compile-bind114554%_
                  (lambda (_%bind114650%_ _%post114651%_ _%body114652%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind114650%_)
                                 (cons (_%compile-post114555%_
                                        _%post114651%_
                                        _%body114652%_)
                                       '())))
                     _%stx114549%_)))
                 (_%compile-post114555%_
                  (lambda (_%post114557%_ _%body114558%_)
                    (let _%lp114560%_ ((_%rest114562%_ _%post114557%_)
                                       (_%check114563%_ '())
                                       (_%bind114564%_ '()))
                      (let* ((_%rest114565114577%_ _%rest114562%_)
                             (_%else114567114585%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp116064
                                              (let ((__tmp116065
                                                     (cons _%body114558%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp116065
                                                 _%bind114564%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp116064
                                          _%check114563%_)))
                                 _%stx114549%_)))
                             (_%K114569114624%_
                              (lambda (_%rest114588%_
                                       _%init114589%_
                                       _%len114590%_
                                       _%tmp114591%_)
                                (_%lp114560%_
                                 _%rest114588%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp114591%_
                                                    (cons _%len114590%_ '())))
                                        _%stx114549%_)
                                       _%check114563%_)
                                 (let ((__tmp116066
                                        (lambda (_%hd114593%_ _%r114594%_)
                                          (let* ((_%hd114595114602%_
                                                  _%hd114593%_)
                                                 (_%E114597114606%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd114595114602%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K114598114612%_
                                                  (lambda (_%k114609%_
                                                           _%id114610%_)
                                                    (cons (cons 'set!
                                                                (cons _%id114610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp114591%_
                                                (cons _%k114609%_ '())))
                                    '())))
                  _%r114594%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd114595114602%_)
                                                (let ((_%hd114599114615%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd114595114602%_)))
                                                      (_%tl114600114617%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd114595114602%_))))
                                                  (let* ((_%id114620%_
                                                          _%hd114599114615%_)
                                                         (_%k114622%_
                                                          _%tl114600114617%_))
                                                    (_%K114598114612%_
                                                     _%k114622%_
                                                     _%id114620%_)))
                                                (_%E114597114606%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp116066
                                    _%bind114564%_
                                    _%init114589%_))))))
                        (if (pair? _%rest114565114577%_)
                            (let ((_%hd114570114627%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest114565114577%_)))
                                  (_%tl114571114629%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest114565114577%_))))
                              (if (pair? _%hd114570114627%_)
                                  (let ((_%hd114572114632%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd114570114627%_)))
                                        (_%tl114573114634%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd114570114627%_))))
                                    (let ((_%tmp114637%_ _%hd114572114632%_))
                                      (if (pair? _%tl114573114634%_)
                                          (let ((_%hd114574114639%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl114573114634%_)))
                                                (_%tl114575114641%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl114573114634%_))))
                                            (let* ((_%len114644%_
                                                    _%hd114574114639%_)
                                                   (_%init114646%_
                                                    _%tl114575114641%_)
                                                   (_%rest114648%_
                                                    _%tl114571114629%_))
                                              (_%K114569114624%_
                                               _%rest114648%_
                                               _%init114646%_
                                               _%len114644%_
                                               _%tmp114637%_)))
                                          (_%else114567114585%_))))
                                  (_%else114567114585%_)))
                            (_%else114567114585%_)))))))
          (__compile-let-form
           _%stx114549%_
           _%compile-simple114551%_
           _%compile-values114552%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx114300%_)
        (letrec ((_%compile-simple114302%_
                  (lambda (_%hd-ids114545%_ _%exprs114546%_ _%body114547%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp116067
                                        (map __compile-head-id
                                             _%hd-ids114545%_)))
                                   (declare (not safe))
                                   (##map list __tmp116067 _%exprs114546%_))
                                 (cons _%body114547%_ '())))
                     _%stx114300%_)))
                 (_%compile-values114303%_
                  (lambda (_%hd-ids114452%_ _%exprs114453%_ _%body114454%_)
                    (let _%lp114456%_ ((_%rest114458%_ _%hd-ids114452%_)
                                       (_%exprs114459%_ _%exprs114453%_)
                                       (_%bind114460%_ '())
                                       (_%post114461%_ '()))
                      (let* ((_%rest114462114476%_ _%rest114458%_)
                             (_%else114465114484%_
                              (lambda ()
                                (_%compile-bind114304%_
                                 _%bind114460%_
                                 _%post114461%_
                                 _%body114454%_))))
                        (let ((_%K114470114528%_
                               (lambda (_%rest114523%_ _%hd114524%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114524%_))
                                     (let ((_%id114526%_
                                            (__SRC__0 _%hd114524%_)))
                                       (_%lp114456%_
                                        _%rest114523%_
                                        (cdr _%exprs114459%_)
                                        (cons (cons _%id114526%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind114460%_)
                                        (cons (cons _%id114526%_
                                                    (cons (car _%exprs114459%_)
                                                          '()))
                                              _%post114461%_)))
                                     (_%lp114456%_
                                      _%rest114523%_
                                      (cdr _%exprs114459%_)
                                      _%bind114460%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs114459%_)
                                                        '()))
                                            _%post114461%_)))))
                              (_%K114467114508%_
                               (lambda (_%rest114488%_ _%hd114489%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114489%_))
                                     (let ((_%id114492%_
                                            (__SRC__0 _%hd114489%_)))
                                       (_%lp114456%_
                                        _%rest114488%_
                                        (cdr _%exprs114459%_)
                                        (cons (cons _%id114492%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind114460%_)
                                        (cons (cons _%id114492%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs114459%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post114461%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd114489%_))
                                         (if (list? _%hd114489%_)
                                             (let* ((_%len114496%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd114489%_)))
                                                    (_%tmp114498%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp114456%_
                                                _%rest114488%_
                                                (cdr _%exprs114459%_)
                                                (let ((__tmp116068
                                                       (lambda (_%id114501%_
                                                                _%r114502%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id114501%_))
                     (cons (cons (__SRC__0 _%id114501%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r114502%_)
                     _%r114502%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp116068
                                                   _%bind114460%_
                                                   _%hd114489%_))
                                                (cons (cons _%tmp114498%_
                                                            (cons (car _%exprs114459%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len114496%_
                                (let ((__tmp116070
                                       (lambda (_%id114504%_ _%k114505%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id114504%_))
                                             (cons (__SRC__0 _%id114504%_)
                                                   _%k114505%_)
                                             '#f)))
                                      (__tmp116069
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len114496%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp116070
                                   _%hd114489%_
                                   __tmp116069)))))
              _%post114461%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx114300%_
                                              _%hd114489%_))
                                         (_%lp114456%_
                                          _%rest114488%_
                                          (cdr _%exprs114459%_)
                                          _%bind114460%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs114459%_)
                                                            '()))
                                                _%post114461%_)))))))
                          (if (pair? _%rest114462114476%_)
                              (let ((_%tl114472114533%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest114462114476%_)))
                                    (_%hd114471114531%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest114462114476%_))))
                                (if (pair? _%hd114471114531%_)
                                    (let ((_%tl114474114538%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd114471114531%_)))
                                          (_%hd114473114536%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd114471114531%_))))
                                      (if (null? _%tl114474114538%_)
                                          (let ((_%hd114541%_
                                                 _%hd114473114536%_)
                                                (_%rest114543%_
                                                 _%tl114472114533%_))
                                            (_%K114470114528%_
                                             _%rest114543%_
                                             _%hd114541%_))
                                          (let ((_%hd114516%_
                                                 _%hd114471114531%_)
                                                (_%rest114518%_
                                                 _%tl114472114533%_))
                                            (_%K114467114508%_
                                             _%rest114518%_
                                             _%hd114516%_))))
                                    (let ((_%hd114516%_ _%hd114471114531%_)
                                          (_%rest114518%_ _%tl114472114533%_))
                                      (_%K114467114508%_
                                       _%rest114518%_
                                       _%hd114516%_))))
                              (_%else114465114484%_)))))))
                 (_%compile-bind114304%_
                  (lambda (_%bind114448%_ _%post114449%_ _%body114450%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind114448%_)
                                 (cons (_%compile-post114305%_
                                        _%post114449%_
                                        _%body114450%_)
                                       '())))
                     _%stx114300%_)))
                 (_%compile-post114305%_
                  (lambda (_%post114307%_ _%body114308%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp116071
                                  (let ((__tmp116073
                                         (lambda (_%hd114310%_ _%r114311%_)
                                           (let* ((_%hd114312114335%_
                                                   _%hd114310%_)
                                                  (_%E114316114339%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd114312114335%_
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
                                             (let ((_%K114329114433%_
                                                    (lambda (_%expr114431%_)
                                                      (cons _%expr114431%_
                                                            _%r114311%_)))
                                                   (_%K114324114411%_
                                                    (lambda (_%expr114408%_
                                                             _%id114409%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id114409%_ (cons _%expr114408%_ '())))
                     _%stx114300%_)
                    _%r114311%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K114317114378%_
                                                    (lambda (_%init114343%_
                                                             _%len114344%_
                                                             _%expr114345%_
                                                             _%tmp114346%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp114346%_
                                             (cons _%expr114345%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp114346%_
                                                    (cons _%len114344%_ '())))
                                        _%stx114300%_)
                                       (let ((__tmp116074
                                              (map (lambda (_%hd114348%_)
                                                     (let* ((_%hd114349114356%_
                                                             _%hd114348%_)
                                                            (_%E114351114360%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd114349114356%_
                                '([id . k])))
                       '#!void))
                    (_%K114352114366%_
                     (lambda (_%k114363%_ _%id114364%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id114364%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp114346%_
                                                      (cons _%k114363%_ '())))
                                          '())))
                        _%stx114300%_))))
               (if (pair? _%hd114349114356%_)
                   (let ((_%hd114353114369%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd114349114356%_)))
                         (_%tl114354114371%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd114349114356%_))))
                     (let* ((_%id114374%_ _%hd114353114369%_)
                            (_%k114376%_ _%tl114354114371%_))
                       (_%K114352114366%_ _%k114376%_ _%id114374%_)))
                   (_%E114351114360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init114343%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp116074)))))
                     _%stx114300%_)
                    _%r114311%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match115927115928%_
                                                       (lambda (_%hd114318114381%_
                                                                _%tl114319114383%_
                                                                _%hd114320114388%_
                                                                _%tl114321114390%_)
                                                         (let ((_%tmp114386%_
                                                                _%hd114318114381%_)
                                                               (_%expr114393%_
                                                                _%hd114320114388%_))
                                                           (_%E114316114339%_))))
                                                      (_%__match115921115922%_
                                                       (lambda (_%hd114318114381%_
                                                                _%tl114319114383%_)
                                                         (let ((_%tmp114386%_
                                                                _%hd114318114381%_))
                                                           (_%E114316114339%_)))))
                                                 (if (pair? _%hd114312114335%_)
                                                     (let ((_%tl114331114438%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd114312114335%_)))
                                                           (_%hd114330114436%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd114312114335%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd114330114436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl114331114438%_)
                       (let ((_%tl114333114443%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl114331114438%_)))
                             (_%hd114332114441%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl114331114438%_))))
                         (if (null? _%tl114333114443%_)
                             (let ((_%expr114446%_ _%hd114332114441%_))
                               (_%K114329114433%_ _%expr114446%_))
                             (if (pair? _%tl114333114443%_)
                                 (let ((_%tl114323114397%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl114333114443%_)))
                                       (_%hd114322114395%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl114333114443%_))))
                                   (let ((_%tmp114386%_ _%hd114330114436%_)
                                         (_%expr114393%_ _%hd114332114441%_)
                                         (_%len114400%_ _%hd114322114395%_)
                                         (_%init114402%_ _%tl114323114397%_))
                                     (_%K114317114378%_
                                      _%init114402%_
                                      _%len114400%_
                                      _%expr114393%_
                                      _%tmp114386%_)))
                                 (_%__match115927115928%_
                                  _%hd114330114436%_
                                  _%tl114331114438%_
                                  _%hd114332114441%_
                                  _%tl114333114443%_))))
                       (_%__match115921115922%_
                        _%hd114330114436%_
                        _%tl114331114438%_))
                   (if (pair? _%tl114331114438%_)
                       (let ((_%tl114328114423%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl114331114438%_)))
                             (_%hd114327114421%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl114331114438%_))))
                         (if (null? _%tl114328114423%_)
                             (let ((_%id114419%_ _%hd114330114436%_)
                                   (_%expr114426%_ _%hd114327114421%_))
                               (_%K114324114411%_ _%expr114426%_ _%id114419%_))
                             (if (pair? _%tl114328114423%_)
                                 (let ((_%tl114323114397%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl114328114423%_)))
                                       (_%hd114322114395%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl114328114423%_))))
                                   (let ((_%tmp114386%_ _%hd114330114436%_)
                                         (_%expr114393%_ _%hd114327114421%_)
                                         (_%len114400%_ _%hd114322114395%_)
                                         (_%init114402%_ _%tl114323114397%_))
                                     (_%K114317114378%_
                                      _%init114402%_
                                      _%len114400%_
                                      _%expr114393%_
                                      _%tmp114386%_)))
                                 (_%__match115927115928%_
                                  _%hd114330114436%_
                                  _%tl114331114438%_
                                  _%hd114327114421%_
                                  _%tl114328114423%_))))
                       (_%__match115921115922%_
                        _%hd114330114436%_
                        _%tl114331114438%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E114316114339%_)))))))
                                        (__tmp116072 (list _%body114308%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp116073
                                     __tmp116072
                                     _%post114307%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp116071)))
                     _%stx114300%_))))
          (__compile-let-form
           _%stx114300%_
           _%compile-simple114302%_
           _%compile-values114303%_))))
    (define __compile-call%
      (lambda (_%stx114260%_)
        (let* ((_%$e114262%_ _%stx114260%_)
               (_%$E114264114273%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114262%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114262%_))
              (let* ((_%$tgt114265114276%_
                      (let () (declare (not safe)) (__AST-e _%$e114262%_)))
                     (_%$hd114266114279%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114265114276%_)))
                     (_%$tl114267114282%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114265114276%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114267114282%_))
                    (let* ((_%$tgt114268114286%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114267114282%_)))
                           (_%$hd114269114289%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114268114286%_)))
                           (_%$tl114270114292%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114268114286%_)))
                           (_%rator114296%_ _%$hd114269114289%_)
                           (_%rands114298%_ _%$tl114270114292%_))
                      (__SRC__%
                       (cons (__compile _%rator114296%_)
                             (map __compile _%rands114298%_))
                       _%stx114260%_))
                    (_%$E114264114273%_)))
              (_%$E114264114273%_)))))
    (define __compile-ref%
      (lambda (_%stx114222%_)
        (let* ((_%$e114224%_ _%stx114222%_)
               (_%$E114226114235%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114224%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114224%_))
              (let* ((_%$tgt114227114238%_
                      (let () (declare (not safe)) (__AST-e _%$e114224%_)))
                     (_%$hd114228114241%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114227114238%_)))
                     (_%$tl114229114244%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114227114238%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114229114244%_))
                    (let* ((_%$tgt114230114248%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114229114244%_)))
                           (_%$hd114231114251%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114230114248%_)))
                           (_%$tl114232114254%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114230114248%_)))
                           (_%id114258%_ _%$hd114231114251%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114232114254%_))
                                  '())
                          (__SRC__% _%id114258%_ _%stx114222%_)
                          (_%$E114226114235%_)))
                    (_%$E114226114235%_)))
              (_%$E114226114235%_)))))
    (define __compile-setq%
      (lambda (_%stx114169%_)
        (let* ((_%$e114171%_ _%stx114169%_)
               (_%$E114173114185%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114171%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114171%_))
              (let* ((_%$tgt114174114188%_
                      (let () (declare (not safe)) (__AST-e _%$e114171%_)))
                     (_%$hd114175114191%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114174114188%_)))
                     (_%$tl114176114194%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114174114188%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114176114194%_))
                    (let* ((_%$tgt114177114198%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114176114194%_)))
                           (_%$hd114178114201%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114177114198%_)))
                           (_%$tl114179114204%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114177114198%_)))
                           (_%id114208%_ _%$hd114178114201%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114179114204%_))
                          (let* ((_%$tgt114180114210%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114179114204%_)))
                                 (_%$hd114181114213%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114180114210%_)))
                                 (_%$tl114182114216%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114180114210%_)))
                                 (_%expr114220%_ _%$hd114181114213%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114182114216%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id114208%_
                                              _%stx114169%_)
                                             (cons (__compile _%expr114220%_)
                                                   '())))
                                 _%stx114169%_)
                                (_%$E114173114185%_)))
                          (_%$E114173114185%_)))
                    (_%$E114173114185%_)))
              (_%$E114173114185%_)))))
    (define __compile-if%
      (lambda (_%stx114101%_)
        (let* ((_%$e114103%_ _%stx114101%_)
               (_%$E114105114120%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114103%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114103%_))
              (let* ((_%$tgt114106114123%_
                      (let () (declare (not safe)) (__AST-e _%$e114103%_)))
                     (_%$hd114107114126%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114106114123%_)))
                     (_%$tl114108114129%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114106114123%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114108114129%_))
                    (let* ((_%$tgt114109114133%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114108114129%_)))
                           (_%$hd114110114136%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114109114133%_)))
                           (_%$tl114111114139%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114109114133%_)))
                           (_%p114143%_ _%$hd114110114136%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114111114139%_))
                          (let* ((_%$tgt114112114145%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114111114139%_)))
                                 (_%$hd114113114148%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114112114145%_)))
                                 (_%$tl114114114151%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114112114145%_)))
                                 (_%t114155%_ _%$hd114113114148%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl114114114151%_))
                                (let* ((_%$tgt114115114157%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114114114151%_)))
                                       (_%$hd114116114160%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114115114157%_)))
                                       (_%$tl114117114163%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114115114157%_)))
                                       (_%f114167%_ _%$hd114116114160%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114117114163%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p114143%_)
                                                   (cons (__compile
                                                          _%t114155%_)
                                                         (cons (__compile
                                                                _%f114167%_)
                                                               '()))))
                                       _%stx114101%_)
                                      (_%$E114105114120%_)))
                                (_%$E114105114120%_)))
                          (_%$E114105114120%_)))
                    (_%$E114105114120%_)))
              (_%$E114105114120%_)))))
    (define __compile-quote%
      (lambda (_%stx114063%_)
        (let* ((_%$e114065%_ _%stx114063%_)
               (_%$E114067114076%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114065%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114065%_))
              (let* ((_%$tgt114068114079%_
                      (let () (declare (not safe)) (__AST-e _%$e114065%_)))
                     (_%$hd114069114082%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114068114079%_)))
                     (_%$tl114070114085%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114068114079%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114070114085%_))
                    (let* ((_%$tgt114071114089%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114070114085%_)))
                           (_%$hd114072114092%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114071114089%_)))
                           (_%$tl114073114095%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114071114089%_)))
                           (_%e114099%_ _%$hd114072114092%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114073114095%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e114099%_))
                                       '()))
                           _%stx114063%_)
                          (_%$E114067114076%_)))
                    (_%$E114067114076%_)))
              (_%$E114067114076%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx114025%_)
        (let* ((_%$e114027%_ _%stx114025%_)
               (_%$E114029114038%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114027%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114027%_))
              (let* ((_%$tgt114030114041%_
                      (let () (declare (not safe)) (__AST-e _%$e114027%_)))
                     (_%$hd114031114044%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114030114041%_)))
                     (_%$tl114032114047%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114030114041%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114032114047%_))
                    (let* ((_%$tgt114033114051%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114032114047%_)))
                           (_%$hd114034114054%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114033114051%_)))
                           (_%$tl114035114057%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114033114051%_)))
                           (_%e114061%_ _%$hd114034114054%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114035114057%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e114061%_ '()))
                           _%stx114025%_)
                          (_%$E114029114038%_)))
                    (_%$E114029114038%_)))
              (_%$E114029114038%_)))))
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
