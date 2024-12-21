(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1734357961)
  (begin
    (define __syntax::t
      (let ((__tmp116094 (list)) (__tmp116093 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp116094
         '(e id)
         __tmp116093
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args115898%_
        (apply make-instance __syntax::t _%$args115898%_)))
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
      (let ((__tmp116096 (list __syntax::t))
            (__tmp116095 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp116096
         '()
         __tmp116095
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args115895%_
        (apply make-instance __core-form::t _%$args115895%_)))
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
      (let ((__tmp116098 (list __core-form::t))
            (__tmp116097 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp116098
         '()
         __tmp116097
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args115892%_
        (apply make-instance __core-expression::t _%$args115892%_)))
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
      (let ((__tmp116100 (list __core-form::t))
            (__tmp116099 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp116100
         '()
         __tmp116099
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args115889%_
        (apply make-instance __core-special-form::t _%$args115889%_)))
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
      (lambda (_%id115887%_)
        (let ((__tmp116101
               (let () (declare (not safe)) (__AST-e _%id115887%_))))
          (declare (not safe))
          (__hash-get __core __tmp116101))))
    (define __core-bound-id?__%
      (lambda (_%id115870%_ _%is?115871%_)
        (let ((_%$e115873%_ (__core-resolve _%id115870%_)))
          (if _%$e115873%_ (_%is?115871%_ _%$e115873%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id115880%_)
        (let ((_%is?115882%_ true))
          (__core-bound-id?__% _%id115880%_ _%is?115882%_))))
    (define __core-bound-id?
      (lambda _g116103_
        (let ((_g116102_ (let () (declare (not safe)) (##length _g116103_))))
          (cond ((let () (declare (not safe)) (##fx= _g116102_ 1))
                 (apply __core-bound-id?__0 _g116103_))
                ((let () (declare (not safe)) (##fx= _g116102_ 2))
                 (apply __core-bound-id?__% _g116103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g116103_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id115853%_ _%e115854%_ _%make115855%_)
        (let ((__tmp116104
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e115854%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e115854%_
                   (_%make115855%_ _%e115854%_ _%id115853%_))))
          (declare (not safe))
          (__hash-put! __core _%id115853%_ __tmp116104))))
    (define __core-bind-syntax!__0
      (lambda (_%id115860%_ _%e115861%_)
        (let ((_%make115863%_ make-__syntax))
          (__core-bind-syntax!__% _%id115860%_ _%e115861%_ _%make115863%_))))
    (define __core-bind-syntax!
      (lambda _g116106_
        (let ((_g116105_ (let () (declare (not safe)) (##length _g116106_))))
          (cond ((let () (declare (not safe)) (##fx= _g116105_ 2))
                 (apply __core-bind-syntax!__0 _g116106_))
                ((let () (declare (not safe)) (##fx= _g116105_ 3))
                 (apply __core-bind-syntax!__% _g116106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g116106_))))))
    (define __SRC__%
      (lambda (_%e115833%_ _%src-stx115834%_)
        (if (or (pair? _%e115833%_) (symbol? _%e115833%_))
            (let ((__tmp116107
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx115834%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx115834%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e115833%_ __tmp116107))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e115833%_ 'gerbil#AST::t))
                (let ((__tmp116109
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e115833%_ '1 '#f '#f)))
                      (__tmp116108
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e115833%_)))))
                  (declare (not safe))
                  (##make-source __tmp116109 __tmp116108))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e115833%_))))))
    (define __SRC__0
      (lambda (_%e115845%_)
        (let ((_%src-stx115847%_ '#f))
          (__SRC__% _%e115845%_ _%src-stx115847%_))))
    (define __SRC
      (lambda _g116111_
        (let ((_g116110_ (let () (declare (not safe)) (##length _g116111_))))
          (cond ((let () (declare (not safe)) (##fx= _g116110_ 1))
                 (apply __SRC__0 _g116111_))
                ((let () (declare (not safe)) (##fx= _g116110_ 2))
                 (apply __SRC__% _g116111_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g116111_))))))
    (define __locat
      (lambda (_%loc115830%_)
        (if (let () (declare (not safe)) (##locat? _%loc115830%_))
            _%loc115830%_
            '#f)))
    (define __check-values
      (lambda (_%obj115825%_ _%k115826%_)
        (let ((_%count115828%_
               (if (let () (declare (not safe)) (##values? _%obj115825%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj115825%_))
                   '1)))
          (if (fx= _%count115828%_ _%k115826%_)
              '#!void
              (let ((__tmp116113
                     (if (fx< _%count115828%_ _%k115826%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp116112
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj115825%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj115825%_))
                         _%obj115825%_)))
                (declare (not safe))
                (error __tmp116113 __tmp116112 _%k115826%_))))))
    (define __compile
      (lambda (_%stx115794%_)
        (let* ((_%$e115796%_ _%stx115794%_)
               (_%$E115798115804%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115796%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115796%_))
              (let* ((_%$tgt115799115807%_
                      (let () (declare (not safe)) (__AST-e _%$e115796%_)))
                     (_%$hd115800115810%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115799115807%_)))
                     (_%$tl115801115813%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115799115807%_)))
                     (_%form115817%_ _%$hd115800115810%_)
                     (_%$e115819%_ (__core-resolve _%form115817%_)))
                (if _%$e115819%_
                    ((lambda (_%bind115822%_)
                       ((##structure-ref _%bind115822%_ '1 __syntax::t '#f)
                        _%stx115794%_))
                     _%$e115819%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx115794%_
                       _%form115817%_))))
              (_%$E115798115804%_)))))
    (define __compile-error__%
      (lambda (_%stx115781%_ _%detail115782%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx115781%_
           _%detail115782%_))))
    (define __compile-error__0
      (lambda (_%stx115787%_)
        (let ((_%detail115789%_ '#f))
          (__compile-error__% _%stx115787%_ _%detail115789%_))))
    (define __compile-error
      (lambda _g116115_
        (let ((_g116114_ (let () (declare (not safe)) (##length _g116115_))))
          (cond ((let () (declare (not safe)) (##fx= _g116114_ 1))
                 (apply __compile-error__0 _g116115_))
                ((let () (declare (not safe)) (##fx= _g116114_ 2))
                 (apply __compile-error__% _g116115_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g116115_))))))
    (define __compile-ignore%
      (lambda (_%stx115778%_) (__SRC__% ''#!void _%stx115778%_)))
    (define __compile-begin%
      (lambda (_%stx115753%_)
        (let* ((_%$e115755%_ _%stx115753%_)
               (_%$E115757115763%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115755%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115755%_))
              (let* ((_%$tgt115758115766%_
                      (let () (declare (not safe)) (__AST-e _%$e115755%_)))
                     (_%$hd115759115769%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115758115766%_)))
                     (_%$tl115760115772%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115758115766%_)))
                     (_%body115776%_ _%$tl115760115772%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body115776%_))
                 _%stx115753%_))
              (_%$E115757115763%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx115728%_)
        (let* ((_%$e115730%_ _%stx115728%_)
               (_%$E115732115738%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115730%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115730%_))
              (let* ((_%$tgt115733115741%_
                      (let () (declare (not safe)) (__AST-e _%$e115730%_)))
                     (_%$hd115734115744%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115733115741%_)))
                     (_%$tl115735115747%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115733115741%_)))
                     (_%body115751%_ _%$tl115735115747%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body115751%_)))
                 _%stx115728%_))
              (_%$E115732115738%_)))))
    (define __compile-import%
      (lambda (_%stx115703%_)
        (let* ((_%$e115705%_ _%stx115703%_)
               (_%$E115707115713%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115705%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115705%_))
              (let* ((_%$tgt115708115716%_
                      (let () (declare (not safe)) (__AST-e _%$e115705%_)))
                     (_%$hd115709115719%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115708115716%_)))
                     (_%$tl115710115722%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115708115716%_)))
                     (_%body115726%_ _%$tl115710115722%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body115726%_ '())) '()))
                 _%stx115703%_))
              (_%$E115707115713%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx115650%_)
        (let* ((_%$e115652%_ _%stx115650%_)
               (_%$E115654115666%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115652%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115652%_))
              (let* ((_%$tgt115655115669%_
                      (let () (declare (not safe)) (__AST-e _%$e115652%_)))
                     (_%$hd115656115672%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115655115669%_)))
                     (_%$tl115657115675%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115655115669%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl115657115675%_))
                    (let* ((_%$tgt115658115679%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl115657115675%_)))
                           (_%$hd115659115682%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt115658115679%_)))
                           (_%$tl115660115685%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt115658115679%_)))
                           (_%ann115689%_ _%$hd115659115682%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl115660115685%_))
                          (let* ((_%$tgt115661115691%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl115660115685%_)))
                                 (_%$hd115662115694%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115661115691%_)))
                                 (_%$tl115663115697%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115661115691%_)))
                                 (_%expr115701%_ _%$hd115662115694%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl115663115697%_))
                                        '())
                                (__compile _%expr115701%_)
                                (_%$E115654115666%_)))
                          (_%$E115654115666%_)))
                    (_%$E115654115666%_)))
              (_%$E115654115666%_)))))
    (define __compile-define-values%
      (lambda (_%stx115541%_)
        (let* ((_%$e115543%_ _%stx115541%_)
               (_%$E115545115557%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115543%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115543%_))
              (let* ((_%$tgt115546115560%_
                      (let () (declare (not safe)) (__AST-e _%$e115543%_)))
                     (_%$hd115547115563%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115546115560%_)))
                     (_%$tl115548115566%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115546115560%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl115548115566%_))
                    (let* ((_%$tgt115549115570%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl115548115566%_)))
                           (_%$hd115550115573%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt115549115570%_)))
                           (_%$tl115551115576%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt115549115570%_)))
                           (_%hd115580%_ _%$hd115550115573%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl115551115576%_))
                          (let* ((_%$tgt115552115582%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl115551115576%_)))
                                 (_%$hd115553115585%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115552115582%_)))
                                 (_%$tl115554115588%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115552115582%_)))
                                 (_%expr115592%_ _%$hd115553115585%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl115554115588%_))
                                        '())
                                (let* ((_%$e115594%_ _%hd115580%_)
                                       (_%$E115596115637%_
                                        (lambda ()
                                          (let ((_%$E115597115622%_
                                                 (lambda ()
                                                   (let* ((_%$E115598115609%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e115594%_))))
                  (_%ids115612%_ _%hd115580%_)
                  (_%len115614%_ (length _%ids115612%_))
                  (_%tmp115616%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp115616%_
                                       (cons (__compile _%expr115592%_) '())))
                           _%stx115541%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp115616%_
                                             (cons _%len115614%_ '())))
                                 _%stx115541%_)
                                (let ((__tmp116116
                                       (let ((__tmp116118
                                              (lambda (_%id115619%_
                                                       _%k115620%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id115619%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id115619%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp115616%_
                                           (cons _%k115620%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx115541%_)
                                                    '#f)))
                                             (__tmp116117
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len115614%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp116118
                                          _%ids115612%_
                                          __tmp116117))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp116116)))))
              _%stx115541%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e115594%_))
                                                (let* ((_%$tgt115599115625%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e115594%_)))
                                                       (_%$hd115600115628%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt115599115625%_)))
                                                       (_%$tl115601115631%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt115599115625%_)))
                                                       (_%id115635%_
                                                        _%$hd115600115628%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl115601115631%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id115635%_)
                           (cons (__compile _%expr115592%_) '())))
               _%stx115541%_)
              (_%$E115597115622%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E115597115622%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e115594%_))
                                      (let* ((_%$tgt115602115640%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e115594%_)))
                                             (_%$hd115603115643%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt115602115640%_)))
                                             (_%$tl115604115646%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt115602115640%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd115603115643%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl115604115646%_))
                                                        '())
                                                (__compile _%expr115592%_)
                                                (_%$E115596115637%_))
                                            (_%$E115596115637%_)))
                                      (_%$E115596115637%_)))
                                (_%$E115545115557%_)))
                          (_%$E115545115557%_)))
                    (_%$E115545115557%_)))
              (_%$E115545115557%_)))))
    (define __compile-head-id
      (lambda (_%e115539%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e115539%_))
             _%e115539%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd115496%_)
        (let _%recur115498%_ ((_%rest115500%_ _%hd115496%_))
          (let* ((_%$e115502%_ _%rest115500%_)
                 (_%$E115504115522%_
                  (lambda ()
                    (let ((_%$E115505115519%_
                           (lambda ()
                             (let* ((_%$E115506115514%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e115502%_))))
                                    (_%tail115517%_ _%$e115502%_))
                               (__compile-head-id _%tail115517%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115502%_))
                                  '())
                          '()
                          (_%$E115505115519%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e115502%_))
                (let* ((_%$tgt115507115525%_
                        (let () (declare (not safe)) (__AST-e _%$e115502%_)))
                       (_%$hd115508115528%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt115507115525%_)))
                       (_%$tl115509115531%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt115507115525%_)))
                       (_%hd115535%_ _%$hd115508115528%_)
                       (_%rest115537%_ _%$tl115509115531%_))
                  (cons (__compile-head-id _%hd115535%_)
                        (_%recur115498%_ _%rest115537%_)))
                (_%$E115504115522%_))))))
    (define __compile-lambda%
      (lambda (_%stx115443%_)
        (let* ((_%$e115445%_ _%stx115443%_)
               (_%$E115447115459%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e115445%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e115445%_))
              (let* ((_%$tgt115448115462%_
                      (let () (declare (not safe)) (__AST-e _%$e115445%_)))
                     (_%$hd115449115465%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt115448115462%_)))
                     (_%$tl115450115468%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt115448115462%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl115450115468%_))
                    (let* ((_%$tgt115451115472%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl115450115468%_)))
                           (_%$hd115452115475%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt115451115472%_)))
                           (_%$tl115453115478%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt115451115472%_)))
                           (_%hd115482%_ _%$hd115452115475%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl115453115478%_))
                          (let* ((_%$tgt115454115484%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl115453115478%_)))
                                 (_%$hd115455115487%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115454115484%_)))
                                 (_%$tl115456115490%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115454115484%_)))
                                 (_%body115494%_ _%$hd115455115487%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl115456115490%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd115482%_)
                                             (cons (__compile _%body115494%_)
                                                   '())))
                                 _%stx115443%_)
                                (_%$E115447115459%_)))
                          (_%$E115447115459%_)))
                    (_%$E115447115459%_)))
              (_%$E115447115459%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx115235%_)
        (letrec ((_%variadic?115237%_
                  (lambda (_%hd115408%_)
                    (let* ((_%$e115410%_ _%hd115408%_)
                           (_%$E115412115428%_
                            (lambda ()
                              (let ((_%$E115413115425%_
                                     (lambda ()
                                       (let ((_%$E115414115422%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e115410%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e115410%_))
                                            '())
                                    '#f
                                    (_%$E115413115425%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e115410%_))
                          (let* ((_%$tgt115415115431%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115410%_)))
                                 (_%$hd115416115434%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115415115431%_)))
                                 (_%$tl115417115437%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115415115431%_)))
                                 (_%rest115441%_ _%$tl115417115437%_))
                            (_%variadic?115237%_ _%rest115441%_))
                          (_%$E115412115428%_)))))
                 (_%arity115238%_
                  (lambda (_%hd115373%_)
                    (let _%lp115375%_ ((_%rest115377%_ _%hd115373%_)
                                       (_%k115378%_ '0))
                      (let* ((_%$e115380%_ _%rest115377%_)
                             (_%$E115382115393%_
                              (lambda ()
                                (let ((_%$E115383115390%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e115380%_)))))
                                  _%k115378%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e115380%_))
                            (let* ((_%$tgt115384115396%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e115380%_)))
                                   (_%$hd115385115399%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt115384115396%_)))
                                   (_%$tl115386115402%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt115384115396%_)))
                                   (_%rest115406%_ _%$tl115386115402%_))
                              (_%lp115375%_
                               _%rest115406%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k115378%_ '1))))
                            (_%$E115382115393%_))))))
                 (_%generate115239%_
                  (lambda (_%rest115300%_ _%args115301%_ _%len115302%_)
                    (let* ((_%$e115304%_ _%rest115300%_)
                           (_%$E115306115317%_
                            (lambda ()
                              (let ((_%$E115307115314%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e115304%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args115301%_ '())))
                                 _%stx115235%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e115304%_))
                          (let* ((_%$tgt115308115320%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115304%_)))
                                 (_%$hd115309115323%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115308115320%_)))
                                 (_%$tl115310115326%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115308115320%_)))
                                 (_%clause115330%_ _%$hd115309115323%_)
                                 (_%rest115332%_ _%$tl115310115326%_)
                                 (_%$e115334%_ _%clause115330%_)
                                 (_%$E115336115345%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e115334%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e115334%_))
                                (let* ((_%$tgt115337115348%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e115334%_)))
                                       (_%$hd115338115351%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt115337115348%_)))
                                       (_%$tl115339115354%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt115337115348%_)))
                                       (_%hd115358%_ _%$hd115338115351%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl115339115354%_))
                                      (let* ((_%$tgt115340115360%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl115339115354%_)))
                                             (_%$hd115341115363%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt115340115360%_)))
                                             (_%$tl115342115366%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt115340115360%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl115342115366%_))
                                                    '())
                                            (let ((_%clen115370%_
                                                   (_%arity115238%_
                                                    _%hd115358%_))
                                                  (_%cmp115371%_
                                                   (if (_%variadic?115237%_
                                                        _%hd115358%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp115371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len115302%_ (cons _%clen115370%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause115330%_))
                                      (cons _%args115301%_ '())))
                          _%stx115235%_)
                         (cons (_%generate115239%_
                                _%rest115332%_
                                _%args115301%_
                                _%len115302%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx115235%_))
                                            (_%$E115336115345%_)))
                                      (_%$E115336115345%_)))
                                (_%$E115336115345%_)))
                          (_%$E115306115317%_))))))
          (let* ((_%$e115241%_ _%stx115235%_)
                 (_%$E115243115275%_
                  (lambda ()
                    (let ((_%$E115244115257%_
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
                          (let* ((_%$tgt115245115260%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115241%_)))
                                 (_%$hd115246115263%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115245115260%_)))
                                 (_%$tl115247115266%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115245115260%_)))
                                 (_%clauses115270%_ _%$tl115247115266%_))
                            (let ((_%args115272%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx115235%_))
                                  (_%len115273%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx115235%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args115272%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len115273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args115272%_ '()))
                                         _%stx115235%_)
                                        '()))
                            '())
                      (cons (_%generate115239%_
                             _%clauses115270%_
                             _%args115272%_
                             _%len115273%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx115235%_)
                                                 '())))
                               _%stx115235%_)))
                          (_%$E115244115257%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e115241%_))
                (let* ((_%$tgt115248115278%_
                        (let () (declare (not safe)) (__AST-e _%$e115241%_)))
                       (_%$hd115249115281%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt115248115278%_)))
                       (_%$tl115250115284%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt115248115278%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl115250115284%_))
                      (let* ((_%$tgt115251115288%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl115250115284%_)))
                             (_%$hd115252115291%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt115251115288%_)))
                             (_%$tl115253115294%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt115251115288%_)))
                             (_%clause115298%_ _%$hd115252115291%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl115253115294%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause115298%_))
                            (_%$E115243115275%_)))
                      (_%$E115243115275%_)))
                (_%$E115243115275%_))))))
    (define __compile-let-form
      (lambda (_%stx115004%_ _%compile-simple115005%_ _%compile-values115006%_)
        (letrec ((_%simple-bind?115008%_
                  (lambda (_%hd115193%_)
                    (let* ((_%hd115194115204%_ _%hd115193%_)
                           (_%else115197115212%_ (lambda () '#f)))
                      (let ((_%K115200115225%_ (lambda (_%id115223%_) '#t))
                            (_%K115199115217%_ (lambda () '#t)))
                        (let ((_%try-match115196115220%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd115194115204%_ '#f))
                                     (_%K115199115217%_)
                                     (_%else115197115212%_)))))
                          (if (pair? _%hd115194115204%_)
                              (let ((_%tl115202115230%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd115194115204%_)))
                                    (_%hd115201115228%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd115194115204%_))))
                                (if (null? _%tl115202115230%_)
                                    (let ((_%id115233%_ _%hd115201115228%_))
                                      (_%K115200115225%_ _%id115233%_))
                                    (_%try-match115196115220%_)))
                              (_%try-match115196115220%_)))))))
                 (_%car-e115009%_
                  (lambda (_%hd115191%_)
                    (if (pair? _%hd115191%_)
                        (let () (declare (not safe)) (##car _%hd115191%_))
                        _%hd115191%_))))
          (let* ((_%$e115011%_ _%stx115004%_)
                 (_%$E115013115156%_
                  (lambda ()
                    (let ((_%$E115014115036%_
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
                          (let* ((_%$tgt115015115039%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e115011%_)))
                                 (_%$hd115016115042%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt115015115039%_)))
                                 (_%$tl115017115045%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt115015115039%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl115017115045%_))
                                (let* ((_%$tgt115018115049%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl115017115045%_)))
                                       (_%$hd115019115052%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt115018115049%_)))
                                       (_%$tl115020115055%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt115018115049%_)))
                                       (_%hd115059%_ _%$hd115019115052%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl115020115055%_))
                                      (let* ((_%$tgt115021115061%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl115020115055%_)))
                                             (_%$hd115022115064%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt115021115061%_)))
                                             (_%$tl115023115067%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt115021115061%_)))
                                             (_%body115071%_
                                              _%$hd115022115064%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl115023115067%_))
                                                    '())
                                            (let* ((_%hd-ids115111%_
                                                    (map (lambda (_%bind115073%_)
                                                           (let* ((_%$e115075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind115073%_)
                          (_%$E115077115086%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e115075%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e115075%_))
                         (let* ((_%$tgt115078115089%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e115075%_)))
                                (_%$hd115079115092%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt115078115089%_)))
                                (_%$tl115080115095%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt115078115089%_)))
                                (_%ids115099%_ _%$hd115079115092%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl115080115095%_))
                               (let* ((_%$tgt115081115101%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl115080115095%_)))
                                      (_%$hd115082115104%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt115081115101%_)))
                                      (_%$tl115083115107%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt115081115101%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl115083115107%_))
                                             '())
                                     _%ids115099%_
                                     (_%$E115077115086%_)))
                               (_%$E115077115086%_)))
                         (_%$E115077115086%_))))
                 _%hd115059%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs115151%_
                                                    (map (lambda (_%bind115113%_)
                                                           (let* ((_%$e115115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind115113%_)
                          (_%$E115117115126%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e115115%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e115115%_))
                         (let* ((_%$tgt115118115129%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e115115%_)))
                                (_%$hd115119115132%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt115118115129%_)))
                                (_%$tl115120115135%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt115118115129%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl115120115135%_))
                               (let* ((_%$tgt115121115139%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl115120115135%_)))
                                      (_%$hd115122115142%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt115121115139%_)))
                                      (_%$tl115123115145%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt115121115139%_)))
                                      (_%expr115149%_ _%$hd115122115142%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl115123115145%_))
                                             '())
                                     (__compile _%expr115149%_)
                                     (_%$E115117115126%_)))
                               (_%$E115117115126%_)))
                         (_%$E115117115126%_))))
                 _%hd115059%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body115153%_
                                                    (__compile
                                                     _%body115071%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?115008%_
                                                     _%hd-ids115111%_))
                                                  (_%compile-simple115005%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e115009%_
                                                            _%hd-ids115111%_))
                                                   _%exprs115151%_
                                                   _%body115153%_)
                                                  (_%compile-values115006%_
                                                   _%hd-ids115111%_
                                                   _%exprs115151%_
                                                   _%body115153%_)))
                                            (_%$E115014115036%_)))
                                      (_%$E115014115036%_)))
                                (_%$E115014115036%_)))
                          (_%$E115014115036%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e115011%_))
                (let* ((_%$tgt115024115159%_
                        (let () (declare (not safe)) (__AST-e _%$e115011%_)))
                       (_%$hd115025115162%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt115024115159%_)))
                       (_%$tl115026115165%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt115024115159%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl115026115165%_))
                      (let* ((_%$tgt115027115169%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl115026115165%_)))
                             (_%$hd115028115172%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt115027115169%_)))
                             (_%$tl115029115175%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt115027115169%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd115028115172%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl115029115175%_))
                                (let* ((_%$tgt115030115179%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl115029115175%_)))
                                       (_%$hd115031115182%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt115030115179%_)))
                                       (_%$tl115032115185%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt115030115179%_)))
                                       (_%body115189%_ _%$hd115031115182%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl115032115185%_))
                                              '())
                                      (__compile _%body115189%_)
                                      (_%$E115013115156%_)))
                                (_%$E115013115156%_))
                            (_%$E115013115156%_)))
                      (_%$E115013115156%_)))
                (_%$E115013115156%_))))))
    (define __compile-let-values%
      (lambda (_%stx114816%_)
        (letrec ((_%compile-simple114818%_
                  (lambda (_%hd-ids115000%_ _%exprs115001%_ _%body115002%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp116119
                                        (map __compile-head-id
                                             _%hd-ids115000%_)))
                                   (declare (not safe))
                                   (##map list __tmp116119 _%exprs115001%_))
                                 (cons _%body115002%_ '())))
                     _%stx114816%_)))
                 (_%compile-values114819%_
                  (lambda (_%hd-ids114915%_ _%exprs114916%_ _%body114917%_)
                    (let _%lp114919%_ ((_%rest114921%_ _%hd-ids114915%_)
                                       (_%exprs114922%_ _%exprs114916%_)
                                       (_%bind114923%_ '())
                                       (_%post114924%_ '()))
                      (let* ((_%rest114925114939%_ _%rest114921%_)
                             (_%else114928114947%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind114923%_)
                                             (cons (_%compile-post114820%_
                                                    _%post114924%_
                                                    _%body114917%_)
                                                   '())))
                                 _%stx114816%_))))
                        (let ((_%K114933114983%_
                               (lambda (_%rest114980%_ _%id114981%_)
                                 (_%lp114919%_
                                  _%rest114980%_
                                  (cdr _%exprs114922%_)
                                  (cons (cons (__compile-head-id _%id114981%_)
                                              (cons (car _%exprs114922%_) '()))
                                        _%bind114923%_)
                                  _%post114924%_)))
                              (_%K114930114965%_
                               (lambda (_%rest114951%_ _%hd114952%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114952%_))
                                     (_%lp114919%_
                                      _%rest114951%_
                                      (cdr _%exprs114922%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd114952%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs114922%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind114923%_)
                                      _%post114924%_)
                                     (if (list? _%hd114952%_)
                                         (let* ((_%len114956%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd114952%_)))
                                                (_%tmp114958%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp114919%_
                                            _%rest114951%_
                                            (cdr _%exprs114922%_)
                                            (cons (cons _%tmp114958%_
                                                        (cons (car _%exprs114922%_)
                                                              '()))
                                                  _%bind114923%_)
                                            (cons (cons _%tmp114958%_
                                                        (cons _%len114956%_
                                                              (let ((__tmp116121
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id114961%_ _%k114962%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id114961%_))
                                   (cons (__SRC__0 _%id114961%_) _%k114962%_)
                                   '#f)))
                            (__tmp116120
                             (let ()
                               (declare (not safe))
                               (##iota _%len114956%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp116121 _%hd114952%_ __tmp116120))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post114924%_)))
                                         (__compile-error__%
                                          _%stx114816%_
                                          _%hd114952%_))))))
                          (if (pair? _%rest114925114939%_)
                              (let ((_%tl114935114988%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest114925114939%_)))
                                    (_%hd114934114986%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest114925114939%_))))
                                (if (pair? _%hd114934114986%_)
                                    (let ((_%tl114937114993%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd114934114986%_)))
                                          (_%hd114936114991%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd114934114986%_))))
                                      (if (null? _%tl114937114993%_)
                                          (let ((_%id114996%_
                                                 _%hd114936114991%_)
                                                (_%rest114998%_
                                                 _%tl114935114988%_))
                                            (_%K114933114983%_
                                             _%rest114998%_
                                             _%id114996%_))
                                          (let ((_%hd114973%_
                                                 _%hd114934114986%_)
                                                (_%rest114975%_
                                                 _%tl114935114988%_))
                                            (_%K114930114965%_
                                             _%rest114975%_
                                             _%hd114973%_))))
                                    (let ((_%hd114973%_ _%hd114934114986%_)
                                          (_%rest114975%_ _%tl114935114988%_))
                                      (_%K114930114965%_
                                       _%rest114975%_
                                       _%hd114973%_))))
                              (_%else114928114947%_)))))))
                 (_%compile-post114820%_
                  (lambda (_%post114822%_ _%body114823%_)
                    (let _%lp114825%_ ((_%rest114827%_ _%post114822%_)
                                       (_%check114828%_ '())
                                       (_%bind114829%_ '()))
                      (let* ((_%rest114830114842%_ _%rest114827%_)
                             (_%else114832114850%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp116122
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind114829%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body114823%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx114816%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp116122
                                          _%check114828%_)))
                                 _%stx114816%_)))
                             (_%K114834114889%_
                              (lambda (_%rest114853%_
                                       _%init114854%_
                                       _%len114855%_
                                       _%tmp114856%_)
                                (_%lp114825%_
                                 _%rest114853%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp114856%_
                                                    (cons _%len114855%_ '())))
                                        _%stx114816%_)
                                       _%check114828%_)
                                 (let ((__tmp116123
                                        (lambda (_%hd114858%_ _%r114859%_)
                                          (let* ((_%hd114860114867%_
                                                  _%hd114858%_)
                                                 (_%E114862114871%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd114860114867%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K114863114877%_
                                                  (lambda (_%k114874%_
                                                           _%id114875%_)
                                                    (cons (cons _%id114875%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp114856%_
                                          (cons _%k114874%_ '())))
                              '()))
                  _%r114859%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd114860114867%_)
                                                (let ((_%hd114864114880%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd114860114867%_)))
                                                      (_%tl114865114882%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd114860114867%_))))
                                                  (let* ((_%id114885%_
                                                          _%hd114864114880%_)
                                                         (_%k114887%_
                                                          _%tl114865114882%_))
                                                    (_%K114863114877%_
                                                     _%k114887%_
                                                     _%id114885%_)))
                                                (_%E114862114871%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp116123
                                    _%bind114829%_
                                    _%init114854%_))))))
                        (if (pair? _%rest114830114842%_)
                            (let ((_%hd114835114892%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest114830114842%_)))
                                  (_%tl114836114894%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest114830114842%_))))
                              (if (pair? _%hd114835114892%_)
                                  (let ((_%hd114837114897%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd114835114892%_)))
                                        (_%tl114838114899%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd114835114892%_))))
                                    (let ((_%tmp114902%_ _%hd114837114897%_))
                                      (if (pair? _%tl114838114899%_)
                                          (let ((_%hd114839114904%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl114838114899%_)))
                                                (_%tl114840114906%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl114838114899%_))))
                                            (let* ((_%len114909%_
                                                    _%hd114839114904%_)
                                                   (_%init114911%_
                                                    _%tl114840114906%_)
                                                   (_%rest114913%_
                                                    _%tl114836114894%_))
                                              (_%K114834114889%_
                                               _%rest114913%_
                                               _%init114911%_
                                               _%len114909%_
                                               _%tmp114902%_)))
                                          (_%else114832114850%_))))
                                  (_%else114832114850%_)))
                            (_%else114832114850%_)))))))
          (__compile-let-form
           _%stx114816%_
           _%compile-simple114818%_
           _%compile-values114819%_))))
    (define __compile-letrec-values%
      (lambda (_%stx114613%_)
        (letrec ((_%compile-simple114615%_
                  (lambda (_%hd-ids114812%_ _%exprs114813%_ _%body114814%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp116124
                                        (map __compile-head-id
                                             _%hd-ids114812%_)))
                                   (declare (not safe))
                                   (##map list __tmp116124 _%exprs114813%_))
                                 (cons _%body114814%_ '())))
                     _%stx114613%_)))
                 (_%compile-values114616%_
                  (lambda (_%hd-ids114723%_ _%exprs114724%_ _%body114725%_)
                    (let _%lp114727%_ ((_%rest114729%_ _%hd-ids114723%_)
                                       (_%exprs114730%_ _%exprs114724%_)
                                       (_%pre114731%_ '())
                                       (_%bind114732%_ '())
                                       (_%post114733%_ '()))
                      (let* ((_%rest114734114748%_ _%rest114729%_)
                             (_%else114737114756%_
                              (lambda ()
                                (_%compile-inner114617%_
                                 _%pre114731%_
                                 _%bind114732%_
                                 _%post114733%_
                                 _%body114725%_))))
                        (let ((_%K114742114795%_
                               (lambda (_%rest114792%_ _%id114793%_)
                                 (_%lp114727%_
                                  _%rest114792%_
                                  (cdr _%exprs114730%_)
                                  _%pre114731%_
                                  (cons (cons (__compile-head-id _%id114793%_)
                                              (cons (car _%exprs114730%_) '()))
                                        _%bind114732%_)
                                  _%post114733%_)))
                              (_%K114739114777%_
                               (lambda (_%rest114760%_ _%hd114761%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114761%_))
                                     (_%lp114727%_
                                      _%rest114760%_
                                      (cdr _%exprs114730%_)
                                      _%pre114731%_
                                      (cons (cons (__compile-head-id
                                                   _%hd114761%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs114730%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind114732%_)
                                      _%post114733%_)
                                     (if (list? _%hd114761%_)
                                         (let* ((_%len114765%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd114761%_)))
                                                (_%tmp114767%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp114727%_
                                            _%rest114760%_
                                            (cdr _%exprs114730%_)
                                            (let ((__tmp116125
                                                   (lambda (_%id114770%_
                                                            _%r114771%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id114770%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id114770%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r114771%_)
                 _%r114771%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp116125
                                               _%pre114731%_
                                               _%hd114761%_))
                                            (cons (cons _%tmp114767%_
                                                        (cons (car _%exprs114730%_)
                                                              '()))
                                                  _%bind114732%_)
                                            (cons (cons _%tmp114767%_
                                                        (cons _%len114765%_
                                                              (let ((__tmp116127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id114773%_ _%k114774%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id114773%_))
                                   (cons (__SRC__0 _%id114773%_) _%k114774%_)
                                   '#f)))
                            (__tmp116126
                             (let ()
                               (declare (not safe))
                               (##iota _%len114765%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp116127 _%hd114761%_ __tmp116126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post114733%_)))
                                         (__compile-error__%
                                          _%stx114613%_
                                          _%hd114761%_))))))
                          (if (pair? _%rest114734114748%_)
                              (let ((_%tl114744114800%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest114734114748%_)))
                                    (_%hd114743114798%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest114734114748%_))))
                                (if (pair? _%hd114743114798%_)
                                    (let ((_%tl114746114805%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd114743114798%_)))
                                          (_%hd114745114803%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd114743114798%_))))
                                      (if (null? _%tl114746114805%_)
                                          (let ((_%id114808%_
                                                 _%hd114745114803%_)
                                                (_%rest114810%_
                                                 _%tl114744114800%_))
                                            (_%K114742114795%_
                                             _%rest114810%_
                                             _%id114808%_))
                                          (let ((_%hd114785%_
                                                 _%hd114743114798%_)
                                                (_%rest114787%_
                                                 _%tl114744114800%_))
                                            (_%K114739114777%_
                                             _%rest114787%_
                                             _%hd114785%_))))
                                    (let ((_%hd114785%_ _%hd114743114798%_)
                                          (_%rest114787%_ _%tl114744114800%_))
                                      (_%K114739114777%_
                                       _%rest114787%_
                                       _%hd114785%_))))
                              (_%else114737114756%_)))))))
                 (_%compile-inner114617%_
                  (lambda (_%pre114718%_
                           _%bind114719%_
                           _%post114720%_
                           _%body114721%_)
                    (if (null? _%pre114718%_)
                        (_%compile-bind114618%_
                         _%bind114719%_
                         _%post114720%_
                         _%body114721%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre114718%_)
                                     (cons (_%compile-bind114618%_
                                            _%bind114719%_
                                            _%post114720%_
                                            _%body114721%_)
                                           '())))
                         _%stx114613%_))))
                 (_%compile-bind114618%_
                  (lambda (_%bind114714%_ _%post114715%_ _%body114716%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind114714%_)
                                 (cons (_%compile-post114619%_
                                        _%post114715%_
                                        _%body114716%_)
                                       '())))
                     _%stx114613%_)))
                 (_%compile-post114619%_
                  (lambda (_%post114621%_ _%body114622%_)
                    (let _%lp114624%_ ((_%rest114626%_ _%post114621%_)
                                       (_%check114627%_ '())
                                       (_%bind114628%_ '()))
                      (let* ((_%rest114629114641%_ _%rest114626%_)
                             (_%else114631114649%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp116128
                                              (let ((__tmp116129
                                                     (cons _%body114622%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp116129
                                                 _%bind114628%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp116128
                                          _%check114627%_)))
                                 _%stx114613%_)))
                             (_%K114633114688%_
                              (lambda (_%rest114652%_
                                       _%init114653%_
                                       _%len114654%_
                                       _%tmp114655%_)
                                (_%lp114624%_
                                 _%rest114652%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp114655%_
                                                    (cons _%len114654%_ '())))
                                        _%stx114613%_)
                                       _%check114627%_)
                                 (let ((__tmp116130
                                        (lambda (_%hd114657%_ _%r114658%_)
                                          (let* ((_%hd114659114666%_
                                                  _%hd114657%_)
                                                 (_%E114661114670%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd114659114666%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K114662114676%_
                                                  (lambda (_%k114673%_
                                                           _%id114674%_)
                                                    (cons (cons 'set!
                                                                (cons _%id114674%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp114655%_
                                                (cons _%k114673%_ '())))
                                    '())))
                  _%r114658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd114659114666%_)
                                                (let ((_%hd114663114679%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd114659114666%_)))
                                                      (_%tl114664114681%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd114659114666%_))))
                                                  (let* ((_%id114684%_
                                                          _%hd114663114679%_)
                                                         (_%k114686%_
                                                          _%tl114664114681%_))
                                                    (_%K114662114676%_
                                                     _%k114686%_
                                                     _%id114684%_)))
                                                (_%E114661114670%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp116130
                                    _%bind114628%_
                                    _%init114653%_))))))
                        (if (pair? _%rest114629114641%_)
                            (let ((_%hd114634114691%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest114629114641%_)))
                                  (_%tl114635114693%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest114629114641%_))))
                              (if (pair? _%hd114634114691%_)
                                  (let ((_%hd114636114696%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd114634114691%_)))
                                        (_%tl114637114698%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd114634114691%_))))
                                    (let ((_%tmp114701%_ _%hd114636114696%_))
                                      (if (pair? _%tl114637114698%_)
                                          (let ((_%hd114638114703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl114637114698%_)))
                                                (_%tl114639114705%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl114637114698%_))))
                                            (let* ((_%len114708%_
                                                    _%hd114638114703%_)
                                                   (_%init114710%_
                                                    _%tl114639114705%_)
                                                   (_%rest114712%_
                                                    _%tl114635114693%_))
                                              (_%K114633114688%_
                                               _%rest114712%_
                                               _%init114710%_
                                               _%len114708%_
                                               _%tmp114701%_)))
                                          (_%else114631114649%_))))
                                  (_%else114631114649%_)))
                            (_%else114631114649%_)))))))
          (__compile-let-form
           _%stx114613%_
           _%compile-simple114615%_
           _%compile-values114616%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx114364%_)
        (letrec ((_%compile-simple114366%_
                  (lambda (_%hd-ids114609%_ _%exprs114610%_ _%body114611%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp116131
                                        (map __compile-head-id
                                             _%hd-ids114609%_)))
                                   (declare (not safe))
                                   (##map list __tmp116131 _%exprs114610%_))
                                 (cons _%body114611%_ '())))
                     _%stx114364%_)))
                 (_%compile-values114367%_
                  (lambda (_%hd-ids114516%_ _%exprs114517%_ _%body114518%_)
                    (let _%lp114520%_ ((_%rest114522%_ _%hd-ids114516%_)
                                       (_%exprs114523%_ _%exprs114517%_)
                                       (_%bind114524%_ '())
                                       (_%post114525%_ '()))
                      (let* ((_%rest114526114540%_ _%rest114522%_)
                             (_%else114529114548%_
                              (lambda ()
                                (_%compile-bind114368%_
                                 _%bind114524%_
                                 _%post114525%_
                                 _%body114518%_))))
                        (let ((_%K114534114592%_
                               (lambda (_%rest114587%_ _%hd114588%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114588%_))
                                     (let ((_%id114590%_
                                            (__SRC__0 _%hd114588%_)))
                                       (_%lp114520%_
                                        _%rest114587%_
                                        (cdr _%exprs114523%_)
                                        (cons (cons _%id114590%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind114524%_)
                                        (cons (cons _%id114590%_
                                                    (cons (car _%exprs114523%_)
                                                          '()))
                                              _%post114525%_)))
                                     (_%lp114520%_
                                      _%rest114587%_
                                      (cdr _%exprs114523%_)
                                      _%bind114524%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs114523%_)
                                                        '()))
                                            _%post114525%_)))))
                              (_%K114531114572%_
                               (lambda (_%rest114552%_ _%hd114553%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd114553%_))
                                     (let ((_%id114556%_
                                            (__SRC__0 _%hd114553%_)))
                                       (_%lp114520%_
                                        _%rest114552%_
                                        (cdr _%exprs114523%_)
                                        (cons (cons _%id114556%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind114524%_)
                                        (cons (cons _%id114556%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs114523%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post114525%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd114553%_))
                                         (if (list? _%hd114553%_)
                                             (let* ((_%len114560%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd114553%_)))
                                                    (_%tmp114562%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp114520%_
                                                _%rest114552%_
                                                (cdr _%exprs114523%_)
                                                (let ((__tmp116132
                                                       (lambda (_%id114565%_
                                                                _%r114566%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id114565%_))
                     (cons (cons (__SRC__0 _%id114565%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r114566%_)
                     _%r114566%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp116132
                                                   _%bind114524%_
                                                   _%hd114553%_))
                                                (cons (cons _%tmp114562%_
                                                            (cons (car _%exprs114523%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len114560%_
                                (let ((__tmp116134
                                       (lambda (_%id114568%_ _%k114569%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id114568%_))
                                             (cons (__SRC__0 _%id114568%_)
                                                   _%k114569%_)
                                             '#f)))
                                      (__tmp116133
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len114560%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp116134
                                   _%hd114553%_
                                   __tmp116133)))))
              _%post114525%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx114364%_
                                              _%hd114553%_))
                                         (_%lp114520%_
                                          _%rest114552%_
                                          (cdr _%exprs114523%_)
                                          _%bind114524%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs114523%_)
                                                            '()))
                                                _%post114525%_)))))))
                          (if (pair? _%rest114526114540%_)
                              (let ((_%tl114536114597%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest114526114540%_)))
                                    (_%hd114535114595%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest114526114540%_))))
                                (if (pair? _%hd114535114595%_)
                                    (let ((_%tl114538114602%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd114535114595%_)))
                                          (_%hd114537114600%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd114535114595%_))))
                                      (if (null? _%tl114538114602%_)
                                          (let ((_%hd114605%_
                                                 _%hd114537114600%_)
                                                (_%rest114607%_
                                                 _%tl114536114597%_))
                                            (_%K114534114592%_
                                             _%rest114607%_
                                             _%hd114605%_))
                                          (let ((_%hd114580%_
                                                 _%hd114535114595%_)
                                                (_%rest114582%_
                                                 _%tl114536114597%_))
                                            (_%K114531114572%_
                                             _%rest114582%_
                                             _%hd114580%_))))
                                    (let ((_%hd114580%_ _%hd114535114595%_)
                                          (_%rest114582%_ _%tl114536114597%_))
                                      (_%K114531114572%_
                                       _%rest114582%_
                                       _%hd114580%_))))
                              (_%else114529114548%_)))))))
                 (_%compile-bind114368%_
                  (lambda (_%bind114512%_ _%post114513%_ _%body114514%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind114512%_)
                                 (cons (_%compile-post114369%_
                                        _%post114513%_
                                        _%body114514%_)
                                       '())))
                     _%stx114364%_)))
                 (_%compile-post114369%_
                  (lambda (_%post114371%_ _%body114372%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp116135
                                  (let ((__tmp116137
                                         (lambda (_%hd114374%_ _%r114375%_)
                                           (let* ((_%hd114376114399%_
                                                   _%hd114374%_)
                                                  (_%E114380114403%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd114376114399%_
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
                                             (let ((_%K114393114497%_
                                                    (lambda (_%expr114495%_)
                                                      (cons _%expr114495%_
                                                            _%r114375%_)))
                                                   (_%K114388114475%_
                                                    (lambda (_%expr114472%_
                                                             _%id114473%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id114473%_ (cons _%expr114472%_ '())))
                     _%stx114364%_)
                    _%r114375%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K114381114442%_
                                                    (lambda (_%init114407%_
                                                             _%len114408%_
                                                             _%expr114409%_
                                                             _%tmp114410%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp114410%_
                                             (cons _%expr114409%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp114410%_
                                                    (cons _%len114408%_ '())))
                                        _%stx114364%_)
                                       (let ((__tmp116138
                                              (map (lambda (_%hd114412%_)
                                                     (let* ((_%hd114413114420%_
                                                             _%hd114412%_)
                                                            (_%E114415114424%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd114413114420%_
                                '([id . k])))
                       '#!void))
                    (_%K114416114430%_
                     (lambda (_%k114427%_ _%id114428%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id114428%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp114410%_
                                                      (cons _%k114427%_ '())))
                                          '())))
                        _%stx114364%_))))
               (if (pair? _%hd114413114420%_)
                   (let ((_%hd114417114433%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd114413114420%_)))
                         (_%tl114418114435%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd114413114420%_))))
                     (let* ((_%id114438%_ _%hd114417114433%_)
                            (_%k114440%_ _%tl114418114435%_))
                       (_%K114416114430%_ _%k114440%_ _%id114438%_)))
                   (_%E114415114424%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init114407%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp116138)))))
                     _%stx114364%_)
                    _%r114375%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match115991115992%_
                                                       (lambda (_%hd114382114445%_
                                                                _%tl114383114447%_
                                                                _%hd114384114452%_
                                                                _%tl114385114454%_)
                                                         (let ((_%tmp114450%_
                                                                _%hd114382114445%_)
                                                               (_%expr114457%_
                                                                _%hd114384114452%_))
                                                           (_%E114380114403%_))))
                                                      (_%__match115985115986%_
                                                       (lambda (_%hd114382114445%_
                                                                _%tl114383114447%_)
                                                         (let ((_%tmp114450%_
                                                                _%hd114382114445%_))
                                                           (_%E114380114403%_)))))
                                                 (if (pair? _%hd114376114399%_)
                                                     (let ((_%tl114395114502%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd114376114399%_)))
                                                           (_%hd114394114500%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd114376114399%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd114394114500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl114395114502%_)
                       (let ((_%tl114397114507%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl114395114502%_)))
                             (_%hd114396114505%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl114395114502%_))))
                         (if (null? _%tl114397114507%_)
                             (let ((_%expr114510%_ _%hd114396114505%_))
                               (_%K114393114497%_ _%expr114510%_))
                             (if (pair? _%tl114397114507%_)
                                 (let ((_%tl114387114461%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl114397114507%_)))
                                       (_%hd114386114459%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl114397114507%_))))
                                   (let ((_%tmp114450%_ _%hd114394114500%_)
                                         (_%expr114457%_ _%hd114396114505%_)
                                         (_%len114464%_ _%hd114386114459%_)
                                         (_%init114466%_ _%tl114387114461%_))
                                     (_%K114381114442%_
                                      _%init114466%_
                                      _%len114464%_
                                      _%expr114457%_
                                      _%tmp114450%_)))
                                 (_%__match115991115992%_
                                  _%hd114394114500%_
                                  _%tl114395114502%_
                                  _%hd114396114505%_
                                  _%tl114397114507%_))))
                       (_%__match115985115986%_
                        _%hd114394114500%_
                        _%tl114395114502%_))
                   (if (pair? _%tl114395114502%_)
                       (let ((_%tl114392114487%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl114395114502%_)))
                             (_%hd114391114485%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl114395114502%_))))
                         (if (null? _%tl114392114487%_)
                             (let ((_%id114483%_ _%hd114394114500%_)
                                   (_%expr114490%_ _%hd114391114485%_))
                               (_%K114388114475%_ _%expr114490%_ _%id114483%_))
                             (if (pair? _%tl114392114487%_)
                                 (let ((_%tl114387114461%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl114392114487%_)))
                                       (_%hd114386114459%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl114392114487%_))))
                                   (let ((_%tmp114450%_ _%hd114394114500%_)
                                         (_%expr114457%_ _%hd114391114485%_)
                                         (_%len114464%_ _%hd114386114459%_)
                                         (_%init114466%_ _%tl114387114461%_))
                                     (_%K114381114442%_
                                      _%init114466%_
                                      _%len114464%_
                                      _%expr114457%_
                                      _%tmp114450%_)))
                                 (_%__match115991115992%_
                                  _%hd114394114500%_
                                  _%tl114395114502%_
                                  _%hd114391114485%_
                                  _%tl114392114487%_))))
                       (_%__match115985115986%_
                        _%hd114394114500%_
                        _%tl114395114502%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E114380114403%_)))))))
                                        (__tmp116136 (list _%body114372%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp116137
                                     __tmp116136
                                     _%post114371%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp116135)))
                     _%stx114364%_))))
          (__compile-let-form
           _%stx114364%_
           _%compile-simple114366%_
           _%compile-values114367%_))))
    (define __compile-call%
      (lambda (_%stx114324%_)
        (let* ((_%$e114326%_ _%stx114324%_)
               (_%$E114328114337%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114326%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114326%_))
              (let* ((_%$tgt114329114340%_
                      (let () (declare (not safe)) (__AST-e _%$e114326%_)))
                     (_%$hd114330114343%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114329114340%_)))
                     (_%$tl114331114346%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114329114340%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114331114346%_))
                    (let* ((_%$tgt114332114350%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114331114346%_)))
                           (_%$hd114333114353%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114332114350%_)))
                           (_%$tl114334114356%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114332114350%_)))
                           (_%rator114360%_ _%$hd114333114353%_)
                           (_%rands114362%_ _%$tl114334114356%_))
                      (__SRC__%
                       (cons (__compile _%rator114360%_)
                             (map __compile _%rands114362%_))
                       _%stx114324%_))
                    (_%$E114328114337%_)))
              (_%$E114328114337%_)))))
    (define __compile-ref%
      (lambda (_%stx114286%_)
        (let* ((_%$e114288%_ _%stx114286%_)
               (_%$E114290114299%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114288%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114288%_))
              (let* ((_%$tgt114291114302%_
                      (let () (declare (not safe)) (__AST-e _%$e114288%_)))
                     (_%$hd114292114305%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114291114302%_)))
                     (_%$tl114293114308%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114291114302%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114293114308%_))
                    (let* ((_%$tgt114294114312%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114293114308%_)))
                           (_%$hd114295114315%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114294114312%_)))
                           (_%$tl114296114318%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114294114312%_)))
                           (_%id114322%_ _%$hd114295114315%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114296114318%_))
                                  '())
                          (__SRC__% _%id114322%_ _%stx114286%_)
                          (_%$E114290114299%_)))
                    (_%$E114290114299%_)))
              (_%$E114290114299%_)))))
    (define __compile-setq%
      (lambda (_%stx114233%_)
        (let* ((_%$e114235%_ _%stx114233%_)
               (_%$E114237114249%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114235%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114235%_))
              (let* ((_%$tgt114238114252%_
                      (let () (declare (not safe)) (__AST-e _%$e114235%_)))
                     (_%$hd114239114255%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114238114252%_)))
                     (_%$tl114240114258%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114238114252%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114240114258%_))
                    (let* ((_%$tgt114241114262%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114240114258%_)))
                           (_%$hd114242114265%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114241114262%_)))
                           (_%$tl114243114268%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114241114262%_)))
                           (_%id114272%_ _%$hd114242114265%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114243114268%_))
                          (let* ((_%$tgt114244114274%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114243114268%_)))
                                 (_%$hd114245114277%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114244114274%_)))
                                 (_%$tl114246114280%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114244114274%_)))
                                 (_%expr114284%_ _%$hd114245114277%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114246114280%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id114272%_
                                              _%stx114233%_)
                                             (cons (__compile _%expr114284%_)
                                                   '())))
                                 _%stx114233%_)
                                (_%$E114237114249%_)))
                          (_%$E114237114249%_)))
                    (_%$E114237114249%_)))
              (_%$E114237114249%_)))))
    (define __compile-if%
      (lambda (_%stx114165%_)
        (let* ((_%$e114167%_ _%stx114165%_)
               (_%$E114169114184%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114167%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114167%_))
              (let* ((_%$tgt114170114187%_
                      (let () (declare (not safe)) (__AST-e _%$e114167%_)))
                     (_%$hd114171114190%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114170114187%_)))
                     (_%$tl114172114193%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114170114187%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114172114193%_))
                    (let* ((_%$tgt114173114197%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114172114193%_)))
                           (_%$hd114174114200%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114173114197%_)))
                           (_%$tl114175114203%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114173114197%_)))
                           (_%p114207%_ _%$hd114174114200%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114175114203%_))
                          (let* ((_%$tgt114176114209%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114175114203%_)))
                                 (_%$hd114177114212%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114176114209%_)))
                                 (_%$tl114178114215%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114176114209%_)))
                                 (_%t114219%_ _%$hd114177114212%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl114178114215%_))
                                (let* ((_%$tgt114179114221%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114178114215%_)))
                                       (_%$hd114180114224%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114179114221%_)))
                                       (_%$tl114181114227%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114179114221%_)))
                                       (_%f114231%_ _%$hd114180114224%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114181114227%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p114207%_)
                                                   (cons (__compile
                                                          _%t114219%_)
                                                         (cons (__compile
                                                                _%f114231%_)
                                                               '()))))
                                       _%stx114165%_)
                                      (_%$E114169114184%_)))
                                (_%$E114169114184%_)))
                          (_%$E114169114184%_)))
                    (_%$E114169114184%_)))
              (_%$E114169114184%_)))))
    (define __compile-quote%
      (lambda (_%stx114127%_)
        (let* ((_%$e114129%_ _%stx114127%_)
               (_%$E114131114140%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114129%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114129%_))
              (let* ((_%$tgt114132114143%_
                      (let () (declare (not safe)) (__AST-e _%$e114129%_)))
                     (_%$hd114133114146%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114132114143%_)))
                     (_%$tl114134114149%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114132114143%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114134114149%_))
                    (let* ((_%$tgt114135114153%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114134114149%_)))
                           (_%$hd114136114156%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114135114153%_)))
                           (_%$tl114137114159%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114135114153%_)))
                           (_%e114163%_ _%$hd114136114156%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114137114159%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e114163%_))
                                       '()))
                           _%stx114127%_)
                          (_%$E114131114140%_)))
                    (_%$E114131114140%_)))
              (_%$E114131114140%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx114089%_)
        (let* ((_%$e114091%_ _%stx114089%_)
               (_%$E114093114102%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114091%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114091%_))
              (let* ((_%$tgt114094114105%_
                      (let () (declare (not safe)) (__AST-e _%$e114091%_)))
                     (_%$hd114095114108%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114094114105%_)))
                     (_%$tl114096114111%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114094114105%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114096114111%_))
                    (let* ((_%$tgt114097114115%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114096114111%_)))
                           (_%$hd114098114118%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114097114115%_)))
                           (_%$tl114099114121%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114097114115%_)))
                           (_%e114125%_ _%$hd114098114118%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114099114121%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e114125%_ '()))
                           _%stx114089%_)
                          (_%$E114093114102%_)))
                    (_%$E114093114102%_)))
              (_%$E114093114102%_)))))
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
