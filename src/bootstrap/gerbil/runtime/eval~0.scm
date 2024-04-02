(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1712084995)
  (begin
    (define __syntax::t
      (let ((__tmp111086 (list)) (__tmp111085 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp111086
         '(e id)
         __tmp111085
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args110890%_
        (apply make-instance __syntax::t _%$args110890%_)))
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
      (let ((__tmp111088 (list __syntax::t))
            (__tmp111087 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp111088
         '()
         __tmp111087
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args110887%_
        (apply make-instance __core-form::t _%$args110887%_)))
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
      (let ((__tmp111090 (list __core-form::t))
            (__tmp111089 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp111090
         '()
         __tmp111089
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args110884%_
        (apply make-instance __core-expression::t _%$args110884%_)))
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
      (let ((__tmp111092 (list __core-form::t))
            (__tmp111091 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp111092
         '()
         __tmp111091
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args110881%_
        (apply make-instance __core-special-form::t _%$args110881%_)))
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
      (lambda (_%id110879%_)
        (let ((__tmp111093
               (let () (declare (not safe)) (__AST-e _%id110879%_))))
          (declare (not safe))
          (hash-get __core __tmp111093))))
    (define __core-bound-id?__%
      (lambda (_%id110862%_ _%is?110863%_)
        (let ((_%$e110865%_
               (let () (declare (not safe)) (__core-resolve _%id110862%_))))
          (if _%$e110865%_ (_%is?110863%_ _%$e110865%_) (let () '#f)))))
    (define __core-bound-id?__0
      (lambda (_%id110872%_)
        (let ((_%is?110874%_ true))
          (declare (not safe))
          (__core-bound-id?__% _%id110872%_ _%is?110874%_))))
    (define __core-bound-id?
      (lambda _g111095_
        (let ((_g111094_ (let () (declare (not safe)) (##length _g111095_))))
          (cond ((let () (declare (not safe)) (##fx= _g111094_ 1))
                 (apply (lambda (_%id110872%_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _%id110872%_)))
                        _g111095_))
                ((let () (declare (not safe)) (##fx= _g111094_ 2))
                 (apply (lambda (_%id110876%_ _%is?110877%_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _%id110876%_ _%is?110877%_)))
                        _g111095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g111095_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id110845%_ _%e110846%_ _%make110847%_)
        (let ((__tmp111096
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e110846%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e110846%_
                   (_%make110847%_ _%e110846%_ _%id110845%_))))
          (declare (not safe))
          (hash-put! __core _%id110845%_ __tmp111096))))
    (define __core-bind-syntax!__0
      (lambda (_%id110852%_ _%e110853%_)
        (let ((_%make110855%_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _%id110852%_ _%e110853%_ _%make110855%_))))
    (define __core-bind-syntax!
      (lambda _g111098_
        (let ((_g111097_ (let () (declare (not safe)) (##length _g111098_))))
          (cond ((let () (declare (not safe)) (##fx= _g111097_ 2))
                 (apply (lambda (_%id110852%_ _%e110853%_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _%id110852%_ _%e110853%_)))
                        _g111098_))
                ((let () (declare (not safe)) (##fx= _g111097_ 3))
                 (apply (lambda (_%id110857%_ _%e110858%_ _%make110859%_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _%id110857%_
                             _%e110858%_
                             _%make110859%_)))
                        _g111098_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g111098_))))))
    (define __SRC__%
      (lambda (_%e110825%_ _%src-stx110826%_)
        (if (or (let () (declare (not safe)) (pair? _%e110825%_))
                (let () (declare (not safe)) (symbol? _%e110825%_)))
            (let ()
              (let ((__tmp111099
                     (if (let ()
                           (declare (not safe))
                           (##structure-instance-of?
                            _%src-stx110826%_
                            'gerbil#AST::t))
                         (let ((__tmp111100
                                (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx110826%_))))
                           (declare (not safe))
                           (__locat __tmp111100))
                         '#f)))
                (declare (not safe))
                (##make-source _%e110825%_ __tmp111099)))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e110825%_ 'gerbil#AST::t))
                (let ()
                  (let ((__tmp111103
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref _%e110825%_ '1 '#f '#f)))
                        (__tmp111101
                         (let ((__tmp111102
                                (let ()
                                  (declare (not safe))
                                  (__AST-source _%e110825%_))))
                           (declare (not safe))
                           (__locat __tmp111102))))
                    (declare (not safe))
                    (##make-source __tmp111103 __tmp111101)))
                (let ()
                  (let ()
                    (declare (not safe))
                    (error '"BUG! Cannot sourcify object" _%e110825%_)))))))
    (define __SRC__0
      (lambda (_%e110837%_)
        (let ((_%src-stx110839%_ '#f))
          (declare (not safe))
          (__SRC__% _%e110837%_ _%src-stx110839%_))))
    (define __SRC
      (lambda _g111105_
        (let ((_g111104_ (let () (declare (not safe)) (##length _g111105_))))
          (cond ((let () (declare (not safe)) (##fx= _g111104_ 1))
                 (apply (lambda (_%e110837%_)
                          (let () (declare (not safe)) (__SRC__0 _%e110837%_)))
                        _g111105_))
                ((let () (declare (not safe)) (##fx= _g111104_ 2))
                 (apply (lambda (_%e110841%_ _%src-stx110842%_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _%e110841%_ _%src-stx110842%_)))
                        _g111105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g111105_))))))
    (define __locat
      (lambda (_%loc110822%_)
        (if (let () (declare (not safe)) (##locat? _%loc110822%_))
            _%loc110822%_
            '#f)))
    (define __check-values
      (lambda (_%obj110817%_ _%k110818%_)
        (let ((_%count110820%_
               (if (let () (declare (not safe)) (##values? _%obj110817%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj110817%_))
                   '1)))
          (if (fx= _%count110820%_ _%k110818%_)
              '#!void
              (let ((__tmp111107
                     (if (fx< _%count110820%_ _%k110818%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp111106
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj110817%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj110817%_))
                         _%obj110817%_)))
                (declare (not safe))
                (error __tmp111107 __tmp111106 _%k110818%_))))))
    (define __compile
      (lambda (_%stx110786%_)
        (let* ((_%$e110788%_ _%stx110786%_)
               (_%$E110790110796%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110788%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110788%_))
              (let* ((_%$tgt110791110799%_
                      (let () (declare (not safe)) (__AST-e _%$e110788%_)))
                     (_%$hd110792110802%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110791110799%_)))
                     (_%$tl110793110805%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110791110799%_))))
                (let* ((_%form110809%_ _%$hd110792110802%_)
                       (_%$e110811%_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _%form110809%_))))
                  (if _%$e110811%_
                      ((lambda (_%bind110814%_)
                         ((##structure-ref _%bind110814%_ '1 __syntax::t '#f)
                          _%stx110786%_))
                       _%$e110811%_)
                      (let ()
                        (let ()
                          (declare (not safe))
                          (__raise-syntax-error
                           '#f
                           '"Bad syntax; cannot resolve form"
                           _%stx110786%_
                           _%form110809%_))))))
              (let () (declare (not safe)) (_%$E110790110796%_))))))
    (define __compile-error__%
      (lambda (_%stx110773%_ _%detail110774%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx110773%_
           _%detail110774%_))))
    (define __compile-error__0
      (lambda (_%stx110779%_)
        (let ((_%detail110781%_ '#f))
          (declare (not safe))
          (__compile-error__% _%stx110779%_ _%detail110781%_))))
    (define __compile-error
      (lambda _g111109_
        (let ((_g111108_ (let () (declare (not safe)) (##length _g111109_))))
          (cond ((let () (declare (not safe)) (##fx= _g111108_ 1))
                 (apply (lambda (_%stx110779%_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _%stx110779%_)))
                        _g111109_))
                ((let () (declare (not safe)) (##fx= _g111108_ 2))
                 (apply (lambda (_%stx110783%_ _%detail110784%_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__%
                             _%stx110783%_
                             _%detail110784%_)))
                        _g111109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g111109_))))))
    (define __compile-ignore%
      (lambda (_%stx110770%_)
        (let () (declare (not safe)) (__SRC__% ''#!void _%stx110770%_))))
    (define __compile-begin%
      (lambda (_%stx110745%_)
        (let* ((_%$e110747%_ _%stx110745%_)
               (_%$E110749110755%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110747%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110747%_))
              (let* ((_%$tgt110750110758%_
                      (let () (declare (not safe)) (__AST-e _%$e110747%_)))
                     (_%$hd110751110761%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110750110758%_)))
                     (_%$tl110752110764%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110750110758%_))))
                (let* ((_%body110768%_ _%$tl110752110764%_)
                       (__tmp111110
                        (cons 'begin (map __compile _%body110768%_))))
                  (declare (not safe))
                  (__SRC__% __tmp111110 _%stx110745%_)))
              (let () (declare (not safe)) (_%$E110749110755%_))))))
    (define __compile-begin-foreign%
      (lambda (_%stx110720%_)
        (let* ((_%$e110722%_ _%stx110720%_)
               (_%$E110724110730%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110722%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110722%_))
              (let* ((_%$tgt110725110733%_
                      (let () (declare (not safe)) (__AST-e _%$e110722%_)))
                     (_%$hd110726110736%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110725110733%_)))
                     (_%$tl110727110739%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110725110733%_))))
                (let* ((_%body110743%_ _%$tl110727110739%_)
                       (__tmp111111
                        (cons 'begin
                              (let ()
                                (declare (not safe))
                                (__AST->datum _%body110743%_)))))
                  (declare (not safe))
                  (__SRC__% __tmp111111 _%stx110720%_)))
              (let () (declare (not safe)) (_%$E110724110730%_))))))
    (define __compile-import%
      (lambda (_%stx110695%_)
        (let* ((_%$e110697%_ _%stx110695%_)
               (_%$E110699110705%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110697%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110697%_))
              (let* ((_%$tgt110700110708%_
                      (let () (declare (not safe)) (__AST-e _%$e110697%_)))
                     (_%$hd110701110711%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110700110708%_)))
                     (_%$tl110702110714%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110700110708%_))))
                (let* ((_%body110718%_ _%$tl110702110714%_)
                       (__tmp111112
                        (cons '__eval-import
                              (cons (cons 'quote (cons _%body110718%_ '()))
                                    '()))))
                  (declare (not safe))
                  (__SRC__% __tmp111112 _%stx110695%_)))
              (let () (declare (not safe)) (_%$E110699110705%_))))))
    (define __compile-begin-annotation%
      (lambda (_%stx110642%_)
        (let* ((_%$e110644%_ _%stx110642%_)
               (_%$E110646110658%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110644%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110644%_))
              (let* ((_%$tgt110647110661%_
                      (let () (declare (not safe)) (__AST-e _%$e110644%_)))
                     (_%$hd110648110664%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110647110661%_)))
                     (_%$tl110649110667%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110647110661%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110649110667%_))
                    (let* ((_%$tgt110650110671%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110649110667%_)))
                           (_%$hd110651110674%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110650110671%_)))
                           (_%$tl110652110677%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110650110671%_))))
                      (let ((_%ann110681%_ _%$hd110651110674%_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$tl110652110677%_))
                            (let* ((_%$tgt110653110683%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl110652110677%_)))
                                   (_%$hd110654110686%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt110653110683%_)))
                                   (_%$tl110655110689%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt110653110683%_))))
                              (let ((_%expr110693%_ _%$hd110654110686%_))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$tl110655110689%_))
                                            '())
                                    (let ()
                                      (declare (not safe))
                                      (__compile _%expr110693%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%$E110646110658%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$E110646110658%_)))))
                    (let () (declare (not safe)) (_%$E110646110658%_))))
              (let () (declare (not safe)) (_%$E110646110658%_))))))
    (define __compile-define-values%
      (lambda (_%stx110533%_)
        (let* ((_%$e110535%_ _%stx110533%_)
               (_%$E110537110549%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110535%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110535%_))
              (let* ((_%$tgt110538110552%_
                      (let () (declare (not safe)) (__AST-e _%$e110535%_)))
                     (_%$hd110539110555%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110538110552%_)))
                     (_%$tl110540110558%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110538110552%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110540110558%_))
                    (let* ((_%$tgt110541110562%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110540110558%_)))
                           (_%$hd110542110565%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110541110562%_)))
                           (_%$tl110543110568%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110541110562%_))))
                      (let ((_%hd110572%_ _%$hd110542110565%_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$tl110543110568%_))
                            (let* ((_%$tgt110544110574%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl110543110568%_)))
                                   (_%$hd110545110577%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt110544110574%_)))
                                   (_%$tl110546110580%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt110544110574%_))))
                              (let ((_%expr110584%_ _%$hd110545110577%_))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$tl110546110580%_))
                                            '())
                                    (let* ((_%$e110586%_ _%hd110572%_)
                                           (_%$E110588110629%_
                                            (lambda ()
                                              (let ((_%$E110589110614%_
                                                     (lambda ()
                                                       (let* ((_%$E110590110601%_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _%$e110586%_))))
                      (_%ids110604%_ _%hd110572%_)
                      (_%len110606%_ (length _%ids110604%_))
                      (_%tmp110608%_
                       (let ((__tmp111113
                              (let () (declare (not safe)) (##gensym))))
                         (declare (not safe))
                         (__SRC__0 __tmp111113))))
                 (let ((__tmp111114
                        (cons 'begin
                              (cons (let ((__tmp111115
                                           (cons 'define
                                                 (cons _%tmp110608%_
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__compile _%expr110584%_))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (__SRC__% __tmp111115 _%stx110533%_))
                                    (cons (let ((__tmp111116
                                                 (cons '__check-values
                                                       (cons _%tmp110608%_
                                                             (cons _%len110606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (__SRC__%
                                             __tmp111116
                                             _%stx110533%_))
                                          (let ((__tmp111117
                                                 (let ((__tmp111119
                                                        (lambda (_%id110611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%k110612%_)
                  (if (let () (declare (not safe)) (__AST-e _%id110611%_))
                      (let ((__tmp111120
                             (cons 'define
                                   (cons (let ()
                                           (declare (not safe))
                                           (__SRC__0 _%id110611%_))
                                         (cons (cons '##vector-ref
                                                     (cons _%tmp110608%_
                                                           (cons _%k110612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                        (declare (not safe))
                        (__SRC__% __tmp111120 _%stx110533%_))
                      '#f)))
               (__tmp111118
                (let () (declare (not safe)) (##iota _%len110606%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__filter-map2
                                                    __tmp111119
                                                    _%ids110604%_
                                                    __tmp111118))))
                                            (declare (not safe))
                                            (__foldr1
                                             cons
                                             '()
                                             __tmp111117)))))))
                   (declare (not safe))
                   (__SRC__% __tmp111114 _%stx110533%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair?
                                                       _%$e110586%_))
                                                    (let* ((_%$tgt110591110617%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _%$e110586%_)))
                                                           (_%$hd110592110620%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$tgt110591110617%_)))
                                                           (_%$tl110593110623%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$tgt110591110617%_))))
                                                      (let ((_%id110627%_
                                                             _%$hd110592110620%_))
                                                        (if (equal? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (__AST-e _%$tl110593110623%_))
                            '())
                    (let ((__tmp111121
                           (cons 'define
                                 (cons (let ()
                                         (declare (not safe))
                                         (__SRC__0 _%id110627%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (__compile _%expr110584%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111121 _%stx110533%_))
                    (let () (declare (not safe)) (_%$E110589110614%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$E110589110614%_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _%$e110586%_))
                                          (let* ((_%$tgt110594110632%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _%$e110586%_)))
                                                 (_%$hd110595110635%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$tgt110594110632%_)))
                                                 (_%$tl110596110638%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$tgt110594110632%_))))
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$hd110595110635%_))
                                                        '#f)
                                                (if (equal? (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _%$tl110596110638%_))
                                                            '())
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile
                                                       _%expr110584%_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$E110588110629%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E110588110629%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$E110588110629%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$E110537110549%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$E110537110549%_)))))
                    (let () (declare (not safe)) (_%$E110537110549%_))))
              (let () (declare (not safe)) (_%$E110537110549%_))))))
    (define __compile-head-id
      (lambda (_%e110531%_)
        (let ((__tmp111122
               (if (let () (declare (not safe)) (__AST-e _%e110531%_))
                   _%e110531%_
                   (let () (declare (not safe)) (##gensym)))))
          (declare (not safe))
          (__SRC__0 __tmp111122))))
    (define __compile-lambda-head
      (lambda (_%hd110488%_)
        (let _%recur110490%_ ((_%rest110492%_ _%hd110488%_))
          (let* ((_%$e110494%_ _%rest110492%_)
                 (_%$E110496110514%_
                  (lambda ()
                    (let ((_%$E110497110511%_
                           (lambda ()
                             (let* ((_%$E110498110506%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e110494%_))))
                                    (_%tail110509%_ _%$e110494%_))
                               (declare (not safe))
                               (__compile-head-id _%tail110509%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110494%_))
                                  '())
                          '()
                          (let ()
                            (declare (not safe))
                            (_%$E110497110511%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110494%_))
                (let* ((_%$tgt110499110517%_
                        (let () (declare (not safe)) (__AST-e _%$e110494%_)))
                       (_%$hd110500110520%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110499110517%_)))
                       (_%$tl110501110523%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110499110517%_))))
                  (let* ((_%hd110527%_ _%$hd110500110520%_)
                         (_%rest110529%_ _%$tl110501110523%_))
                    (cons (let ()
                            (declare (not safe))
                            (__compile-head-id _%hd110527%_))
                          (let ()
                            (declare (not safe))
                            (_%recur110490%_ _%rest110529%_)))))
                (let () (declare (not safe)) (_%$E110496110514%_)))))))
    (define __compile-lambda%
      (lambda (_%stx110435%_)
        (let* ((_%$e110437%_ _%stx110435%_)
               (_%$E110439110451%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110437%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110437%_))
              (let* ((_%$tgt110440110454%_
                      (let () (declare (not safe)) (__AST-e _%$e110437%_)))
                     (_%$hd110441110457%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110440110454%_)))
                     (_%$tl110442110460%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110440110454%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110442110460%_))
                    (let* ((_%$tgt110443110464%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110442110460%_)))
                           (_%$hd110444110467%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110443110464%_)))
                           (_%$tl110445110470%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110443110464%_))))
                      (let ((_%hd110474%_ _%$hd110444110467%_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$tl110445110470%_))
                            (let* ((_%$tgt110446110476%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl110445110470%_)))
                                   (_%$hd110447110479%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt110446110476%_)))
                                   (_%$tl110448110482%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt110446110476%_))))
                              (let ((_%body110486%_ _%$hd110447110479%_))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$tl110448110482%_))
                                            '())
                                    (let ((__tmp111123
                                           (cons 'lambda
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (__compile-lambda-head
                                                          _%hd110474%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__compile _%body110486%_))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (__SRC__% __tmp111123 _%stx110435%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%$E110439110451%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$E110439110451%_)))))
                    (let () (declare (not safe)) (_%$E110439110451%_))))
              (let () (declare (not safe)) (_%$E110439110451%_))))))
    (define __compile-case-lambda%
      (lambda (_%stx110227%_)
        (letrec ((_%variadic?110229%_
                  (lambda (_%hd110400%_)
                    (let* ((_%$e110402%_ _%hd110400%_)
                           (_%$E110404110420%_
                            (lambda ()
                              (let ((_%$E110405110417%_
                                     (lambda ()
                                       (let ((_%$E110406110414%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e110402%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e110402%_))
                                            '())
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_%$E110405110417%_)))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110402%_))
                          (let* ((_%$tgt110407110423%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110402%_)))
                                 (_%$hd110408110426%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110407110423%_)))
                                 (_%$tl110409110429%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110407110423%_))))
                            (let ((_%rest110433%_ _%$tl110409110429%_))
                              (declare (not safe))
                              (_%variadic?110229%_ _%rest110433%_)))
                          (let ()
                            (declare (not safe))
                            (_%$E110404110420%_))))))
                 (_%arity110230%_
                  (lambda (_%hd110365%_)
                    (let _%lp110367%_ ((_%rest110369%_ _%hd110365%_)
                                       (_%k110370%_ '0))
                      (let* ((_%$e110372%_ _%rest110369%_)
                             (_%$E110374110385%_
                              (lambda ()
                                (let ((_%$E110375110382%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e110372%_)))))
                                  _%k110370%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e110372%_))
                            (let* ((_%$tgt110376110388%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e110372%_)))
                                   (_%$hd110377110391%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt110376110388%_)))
                                   (_%$tl110378110394%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt110376110388%_))))
                              (let* ((_%rest110398%_ _%$tl110378110394%_)
                                     (__tmp111124
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%k110370%_ '1))))
                                (declare (not safe))
                                (_%lp110367%_ _%rest110398%_ __tmp111124)))
                            (let ()
                              (declare (not safe))
                              (_%$E110374110385%_)))))))
                 (_%generate110231%_
                  (lambda (_%rest110292%_ _%args110293%_ _%len110294%_)
                    (let* ((_%$e110296%_ _%rest110292%_)
                           (_%$E110298110309%_
                            (lambda ()
                              (let* ((_%$E110299110306%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _%$e110296%_))))
                                     (__tmp111125
                                      (cons 'error
                                            (cons '"No clause matching arguments"
                                                  (cons _%args110293%_ '())))))
                                (declare (not safe))
                                (__SRC__% __tmp111125 _%stx110227%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110296%_))
                          (let* ((_%$tgt110300110312%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110296%_)))
                                 (_%$hd110301110315%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110300110312%_)))
                                 (_%$tl110302110318%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110300110312%_))))
                            (let* ((_%clause110322%_ _%$hd110301110315%_)
                                   (_%rest110324%_ _%$tl110302110318%_)
                                   (_%$e110326%_ _%clause110322%_)
                                   (_%$E110328110337%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _%$e110326%_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _%$e110326%_))
                                  (let* ((_%$tgt110329110340%_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _%$e110326%_)))
                                         (_%$hd110330110343%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$tgt110329110340%_)))
                                         (_%$tl110331110346%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$tgt110329110340%_))))
                                    (let ((_%hd110350%_ _%$hd110330110343%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _%$tl110331110346%_))
                                          (let* ((_%$tgt110332110352%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _%$tl110331110346%_)))
                                                 (_%$hd110333110355%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$tgt110332110352%_)))
                                                 (_%$tl110334110358%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$tgt110332110352%_))))
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl110334110358%_))
                                                        '())
                                                (let ((_%clen110362%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%arity110230%_
                                                          _%hd110350%_)))
                                                      (_%cmp110363%_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%variadic?110229%_
                                                              _%hd110350%_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp111126
                                                         (cons 'if
                                                               (cons (cons _%cmp110363%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons _%len110294%_
                                         (cons _%clen110362%_ '())))
                             (cons (let ((__tmp111127
                                          (cons '##apply
                                                (cons (let ((__tmp111128
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause110322%_)))
                (declare (not safe))
                (__compile-lambda% __tmp111128))
              (cons _%args110293%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (__SRC__% __tmp111127 _%stx110227%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (_%generate110231%_
                                            _%rest110324%_
                                            _%args110293%_
                                            _%len110294%_))
                                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp111126
                                                     _%stx110227%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E110328110337%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$E110328110337%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$E110328110337%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$E110298110309%_)))))))
          (let* ((_%$e110233%_ _%stx110227%_)
                 (_%$E110235110267%_
                  (lambda ()
                    (let ((_%$E110236110249%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110233%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110233%_))
                          (let* ((_%$tgt110237110252%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110233%_)))
                                 (_%$hd110238110255%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110237110252%_)))
                                 (_%$tl110239110258%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110237110252%_))))
                            (let ((_%clauses110262%_ _%$tl110239110258%_))
                              (let ((_%args110264%_
                                     (let ((__tmp111129
                                            (let ()
                                              (declare (not safe))
                                              (##gensym))))
                                       (declare (not safe))
                                       (__SRC__% __tmp111129 _%stx110227%_)))
                                    (_%len110265%_
                                     (let ((__tmp111130
                                            (let ()
                                              (declare (not safe))
                                              (##gensym))))
                                       (declare (not safe))
                                       (__SRC__% __tmp111130 _%stx110227%_))))
                                (let ((__tmp111131
                                       (cons 'lambda
                                             (cons _%args110264%_
                                                   (cons (let ((__tmp111132
                                                                (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons (cons _%len110265%_
                                                (cons (let ((__tmp111133
                                                             (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args110264%_ '()))))
                (declare (not safe))
                (__SRC__% __tmp111133 _%stx110227%_))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())
                                    (cons (let ()
                                            (declare (not safe))
                                            (_%generate110231%_
                                             _%clauses110262%_
                                             _%args110264%_
                                             _%len110265%_))
                                          '())))))
                   (declare (not safe))
                   (__SRC__% __tmp111132 _%stx110227%_))
                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (declare (not safe))
                                  (__SRC__% __tmp111131 _%stx110227%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$E110236110249%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110233%_))
                (let* ((_%$tgt110240110270%_
                        (let () (declare (not safe)) (__AST-e _%$e110233%_)))
                       (_%$hd110241110273%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110240110270%_)))
                       (_%$tl110242110276%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110240110270%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110242110276%_))
                      (let* ((_%$tgt110243110280%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110242110276%_)))
                             (_%$hd110244110283%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110243110280%_)))
                             (_%$tl110245110286%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110243110280%_))))
                        (let ((_%clause110290%_ _%$hd110244110283%_))
                          (if (equal? (let ()
                                        (declare (not safe))
                                        (__AST-e _%$tl110245110286%_))
                                      '())
                              (let ((__tmp111134
                                     (cons '%#lambda _%clause110290%_)))
                                (declare (not safe))
                                (__compile-lambda% __tmp111134))
                              (let ()
                                (declare (not safe))
                                (_%$E110235110267%_)))))
                      (let () (declare (not safe)) (_%$E110235110267%_))))
                (let () (declare (not safe)) (_%$E110235110267%_)))))))
    (define __compile-let-form
      (lambda (_%stx109996%_ _%compile-simple109997%_ _%compile-values109998%_)
        (letrec ((_%simple-bind?110000%_
                  (lambda (_%hd110185%_)
                    (let* ((_%hd110186110196%_ _%hd110185%_)
                           (_%else110189110204%_ (lambda () '#f)))
                      (let ((_%K110192110217%_ (lambda (_%id110215%_) '#t))
                            (_%K110191110209%_ (lambda () '#t)))
                        (let ((_%try-match110188110212%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd110186110196%_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_%K110191110209%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%else110189110204%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd110186110196%_))
                              (let ((_%tl110194110222%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd110186110196%_)))
                                    (_%hd110193110220%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd110186110196%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl110194110222%_))
                                    (let ((_%id110225%_ _%hd110193110220%_))
                                      (declare (not safe))
                                      (_%K110192110217%_ _%id110225%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%try-match110188110212%_))))
                              (let ()
                                (declare (not safe))
                                (_%try-match110188110212%_))))))))
                 (_%car-e110001%_
                  (lambda (_%hd110183%_)
                    (if (let () (declare (not safe)) (pair? _%hd110183%_))
                        (car _%hd110183%_)
                        _%hd110183%_))))
          (let* ((_%$e110003%_ _%stx109996%_)
                 (_%$E110005110148%_
                  (lambda ()
                    (let ((_%$E110006110028%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110003%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110003%_))
                          (let* ((_%$tgt110007110031%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110003%_)))
                                 (_%$hd110008110034%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110007110031%_)))
                                 (_%$tl110009110037%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110007110031%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110009110037%_))
                                (let* ((_%$tgt110010110041%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110009110037%_)))
                                       (_%$hd110011110044%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110010110041%_)))
                                       (_%$tl110012110047%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110010110041%_))))
                                  (let ((_%hd110051%_ _%$hd110011110044%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _%$tl110012110047%_))
                                        (let* ((_%$tgt110013110053%_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%$tl110012110047%_)))
                                               (_%$hd110014110056%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$tgt110013110053%_)))
                                               (_%$tl110015110059%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$tgt110013110053%_))))
                                          (let ((_%body110063%_
                                                 _%$hd110014110056%_))
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl110015110059%_))
                                                        '())
                                                (let* ((_%hd-ids110103%_
                                                        (map (lambda (_%bind110065%_)
                                                               (let* ((_%$e110067%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%bind110065%_)
                              (_%$E110069110078%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _%$e110067%_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _%$e110067%_))
                             (let* ((_%$tgt110070110081%_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _%$e110067%_)))
                                    (_%$hd110071110084%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$tgt110070110081%_)))
                                    (_%$tl110072110087%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$tgt110070110081%_))))
                               (let ((_%ids110091%_ _%$hd110071110084%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _%$tl110072110087%_))
                                     (let* ((_%$tgt110073110093%_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110072110087%_)))
                                            (_%$hd110074110096%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$tgt110073110093%_)))
                                            (_%$tl110075110099%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$tgt110073110093%_))))
                                       (if (equal? (let ()
                                                     (declare (not safe))
                                                     (__AST-e _%$tl110075110099%_))
                                                   '())
                                           _%ids110091%_
                                           (let ()
                                             (declare (not safe))
                                             (_%$E110069110078%_))))
                                     (let ()
                                       (declare (not safe))
                                       (_%$E110069110078%_)))))
                             (let ()
                               (declare (not safe))
                               (_%$E110069110078%_)))))
                     _%hd110051%_))
               (_%exprs110143%_
                (map (lambda (_%bind110105%_)
                       (let* ((_%$e110107%_ _%bind110105%_)
                              (_%$E110109110118%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _%$e110107%_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _%$e110107%_))
                             (let* ((_%$tgt110110110121%_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _%$e110107%_)))
                                    (_%$hd110111110124%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$tgt110110110121%_)))
                                    (_%$tl110112110127%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$tgt110110110121%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _%$tl110112110127%_))
                                   (let* ((_%$tgt110113110131%_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _%$tl110112110127%_)))
                                          (_%$hd110114110134%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$tgt110113110131%_)))
                                          (_%$tl110115110137%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$tgt110113110131%_))))
                                     (let ((_%expr110141%_
                                            _%$hd110114110134%_))
                                       (if (equal? (let ()
                                                     (declare (not safe))
                                                     (__AST-e _%$tl110115110137%_))
                                                   '())
                                           (let ()
                                             (declare (not safe))
                                             (__compile _%expr110141%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%$E110109110118%_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_%$E110109110118%_))))
                             (let ()
                               (declare (not safe))
                               (_%$E110109110118%_)))))
                     _%hd110051%_))
               (_%body110145%_
                (let () (declare (not safe)) (__compile _%body110063%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (__andmap1
                                                         _%simple-bind?110000%_
                                                         _%hd-ids110103%_))
                                                      (_%compile-simple109997%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##map _%car-e110001%_
                                                                _%hd-ids110103%_))
                                                       _%exprs110143%_
                                                       _%body110145%_)
                                                      (_%compile-values109998%_
                                                       _%hd-ids110103%_
                                                       _%exprs110143%_
                                                       _%body110145%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$E110006110028%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$E110006110028%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110006110028%_))))
                          (let ()
                            (declare (not safe))
                            (_%$E110006110028%_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110003%_))
                (let* ((_%$tgt110016110151%_
                        (let () (declare (not safe)) (__AST-e _%$e110003%_)))
                       (_%$hd110017110154%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110016110151%_)))
                       (_%$tl110018110157%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110016110151%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110018110157%_))
                      (let* ((_%$tgt110019110161%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110018110157%_)))
                             (_%$hd110020110164%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110019110161%_)))
                             (_%$tl110021110167%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110019110161%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd110020110164%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110021110167%_))
                                (let* ((_%$tgt110022110171%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110021110167%_)))
                                       (_%$hd110023110174%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110022110171%_)))
                                       (_%$tl110024110177%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110022110171%_))))
                                  (let ((_%body110181%_ _%$hd110023110174%_))
                                    (if (equal? (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%$tl110024110177%_))
                                                '())
                                        (let ()
                                          (declare (not safe))
                                          (__compile _%body110181%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%$E110005110148%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$E110005110148%_)))
                            (let ()
                              (declare (not safe))
                              (_%$E110005110148%_))))
                      (let () (declare (not safe)) (_%$E110005110148%_))))
                (let () (declare (not safe)) (_%$E110005110148%_)))))))
    (define __compile-let-values%
      (lambda (_%stx109808%_)
        (letrec ((_%compile-simple109810%_
                  (lambda (_%hd-ids109992%_ _%exprs109993%_ _%body109994%_)
                    (let ((__tmp111135
                           (cons 'let
                                 (cons (let ((__tmp111136
                                              (map __compile-head-id
                                                   _%hd-ids109992%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111136
                                                _%exprs109993%_))
                                       (cons _%body109994%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111135 _%stx109808%_))))
                 (_%compile-values109811%_
                  (lambda (_%hd-ids109907%_ _%exprs109908%_ _%body109909%_)
                    (let _%lp109911%_ ((_%rest109913%_ _%hd-ids109907%_)
                                       (_%exprs109914%_ _%exprs109908%_)
                                       (_%bind109915%_ '())
                                       (_%post109916%_ '()))
                      (let* ((_%rest109917109931%_ _%rest109913%_)
                             (_%else109920109939%_
                              (lambda ()
                                (let ((__tmp111137
                                       (cons 'let
                                             (cons (reverse _%bind109915%_)
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (_%compile-post109812%_
                                                            _%post109916%_
                                                            _%body109909%_))
                                                         '())))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111137 _%stx109808%_)))))
                        (let ((_%K109925109975%_
                               (lambda (_%rest109972%_ _%id109973%_)
                                 (let ((__tmp111139 (cdr _%exprs109914%_))
                                       (__tmp111138
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _%id109973%_))
                                                    (cons (car _%exprs109914%_)
                                                          '()))
                                              _%bind109915%_)))
                                   (declare (not safe))
                                   (_%lp109911%_
                                    _%rest109972%_
                                    __tmp111139
                                    __tmp111138
                                    _%post109916%_))))
                              (_%K109922109957%_
                               (lambda (_%rest109943%_ _%hd109944%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd109944%_))
                                     (let ()
                                       (let ((__tmp111141
                                              (cdr _%exprs109914%_))
                                             (__tmp111140
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _%hd109944%_))
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (car _%exprs109914%_) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind109915%_)))
                                         (declare (not safe))
                                         (_%lp109911%_
                                          _%rest109943%_
                                          __tmp111141
                                          __tmp111140
                                          _%post109916%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _%hd109944%_))
                                         (let ()
                                           (let* ((_%len109948%_
                                                   (length _%hd109944%_))
                                                  (_%tmp109950%_
                                                   (let ((__tmp111142
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym))))
                                                     (declare (not safe))
                                                     (__SRC__0 __tmp111142))))
                                             (let ((__tmp111149
                                                    (cdr _%exprs109914%_))
                                                   (__tmp111148
                                                    (cons (cons _%tmp109950%_
                                                                (cons (car _%exprs109914%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind109915%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111143
                                                    (cons (let ((__tmp111144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111145
                                (let ((__tmp111147
                                       (lambda (_%id109953%_ _%k109954%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id109953%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _%id109953%_))
                                                   _%k109954%_)
                                             '#f)))
                                      (__tmp111146
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len109948%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111147
                                   _%hd109944%_
                                   __tmp111146))))
                           (declare (not safe))
                           (cons _%len109948%_ __tmp111145))))
                    (declare (not safe))
                    (cons _%tmp109950%_ __tmp111144))
                  _%post109916%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp109911%_
                                                _%rest109943%_
                                                __tmp111149
                                                __tmp111148
                                                __tmp111143))))
                                         (let ()
                                           (let ()
                                             (declare (not safe))
                                             (__compile-error__%
                                              _%stx109808%_
                                              _%hd109944%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest109917109931%_))
                              (let ((_%tl109927109980%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest109917109931%_)))
                                    (_%hd109926109978%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest109917109931%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd109926109978%_))
                                    (let ((_%tl109929109985%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd109926109978%_)))
                                          (_%hd109928109983%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd109926109978%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl109929109985%_))
                                          (let ((_%id109988%_
                                                 _%hd109928109983%_)
                                                (_%rest109990%_
                                                 _%tl109927109980%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109925109975%_
                                               _%rest109990%_
                                               _%id109988%_)))
                                          (let ((_%hd109965%_
                                                 _%hd109926109978%_)
                                                (_%rest109967%_
                                                 _%tl109927109980%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109922109957%_
                                               _%rest109967%_
                                               _%hd109965%_)))))
                                    (let ((_%hd109965%_ _%hd109926109978%_)
                                          (_%rest109967%_ _%tl109927109980%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K109922109957%_
                                         _%rest109967%_
                                         _%hd109965%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else109920109939%_))))))))
                 (_%compile-post109812%_
                  (lambda (_%post109814%_ _%body109815%_)
                    (let _%lp109817%_ ((_%rest109819%_ _%post109814%_)
                                       (_%check109820%_ '())
                                       (_%bind109821%_ '()))
                      (let* ((_%rest109822109834%_ _%rest109819%_)
                             (_%else109824109842%_
                              (lambda ()
                                (let ((__tmp111150
                                       (cons 'begin
                                             (let ((__tmp111151
                                                    (cons (let ((__tmp111152
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'let
                               (cons _%bind109821%_
                                     (cons _%body109815%_ '())))))
                    (declare (not safe))
                    (__SRC__% __tmp111152 _%stx109808%_))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp111151
                                                _%check109820%_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111150 _%stx109808%_))))
                             (_%K109826109881%_
                              (lambda (_%rest109845%_
                                       _%init109846%_
                                       _%len109847%_
                                       _%tmp109848%_)
                                (let ((__tmp111155
                                       (cons (let ((__tmp111156
                                                    (cons '__check-values
                                                          (cons _%tmp109848%_
                                                                (cons _%len109847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp111156
                                                _%stx109808%_))
                                             _%check109820%_))
                                      (__tmp111153
                                       (let ((__tmp111154
                                              (lambda (_%hd109850%_
                                                       _%r109851%_)
                                                (let* ((_%hd109852109859%_
                                                        _%hd109850%_)
                                                       (_%E109854109863%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd109852109859%_
                           '([id . k])))
                  '#!void))
               (_%K109855109869%_
                (lambda (_%k109866%_ _%id109867%_)
                  (cons (cons _%id109867%_
                              (cons (cons '##vector-ref
                                          (cons _%tmp109848%_
                                                (cons _%k109866%_ '())))
                                    '()))
                        _%r109851%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd109852109859%_))
                                                      (let ((_%hd109856109872%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd109852109859%_)))
                    (_%tl109857109874%_
                     (let () (declare (not safe)) (##cdr _%hd109852109859%_))))
                (let* ((_%id109877%_ _%hd109856109872%_)
                       (_%k109879%_ _%tl109857109874%_))
                  (declare (not safe))
                  (_%K109855109869%_ _%k109879%_ _%id109877%_)))
              (let () (declare (not safe)) (_%E109854109863%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp111154
                                          _%bind109821%_
                                          _%init109846%_))))
                                  (declare (not safe))
                                  (_%lp109817%_
                                   _%rest109845%_
                                   __tmp111155
                                   __tmp111153)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest109822109834%_))
                            (let ((_%hd109827109884%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest109822109834%_)))
                                  (_%tl109828109886%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest109822109834%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd109827109884%_))
                                  (let ((_%hd109829109889%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd109827109884%_)))
                                        (_%tl109830109891%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd109827109884%_))))
                                    (let ((_%tmp109894%_ _%hd109829109889%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl109830109891%_))
                                          (let ((_%hd109831109896%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl109830109891%_)))
                                                (_%tl109832109898%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl109830109891%_))))
                                            (let* ((_%len109901%_
                                                    _%hd109831109896%_)
                                                   (_%init109903%_
                                                    _%tl109832109898%_)
                                                   (_%rest109905%_
                                                    _%tl109828109886%_))
                                              (declare (not safe))
                                              (_%K109826109881%_
                                               _%rest109905%_
                                               _%init109903%_
                                               _%len109901%_
                                               _%tmp109894%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else109824109842%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else109824109842%_))))
                            (let ()
                              (declare (not safe))
                              (_%else109824109842%_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx109808%_
             _%compile-simple109810%_
             _%compile-values109811%_)))))
    (define __compile-letrec-values%
      (lambda (_%stx109605%_)
        (letrec ((_%compile-simple109607%_
                  (lambda (_%hd-ids109804%_ _%exprs109805%_ _%body109806%_)
                    (let ((__tmp111157
                           (cons 'letrec
                                 (cons (let ((__tmp111158
                                              (map __compile-head-id
                                                   _%hd-ids109804%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111158
                                                _%exprs109805%_))
                                       (cons _%body109806%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111157 _%stx109605%_))))
                 (_%compile-values109608%_
                  (lambda (_%hd-ids109715%_ _%exprs109716%_ _%body109717%_)
                    (let _%lp109719%_ ((_%rest109721%_ _%hd-ids109715%_)
                                       (_%exprs109722%_ _%exprs109716%_)
                                       (_%pre109723%_ '())
                                       (_%bind109724%_ '())
                                       (_%post109725%_ '()))
                      (let* ((_%rest109726109740%_ _%rest109721%_)
                             (_%else109729109748%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_%compile-inner109609%_
                                   _%pre109723%_
                                   _%bind109724%_
                                   _%post109725%_
                                   _%body109717%_)))))
                        (let ((_%K109734109787%_
                               (lambda (_%rest109784%_ _%id109785%_)
                                 (let ((__tmp111160 (cdr _%exprs109722%_))
                                       (__tmp111159
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (__compile-head-id
                                                       _%id109785%_))
                                                    (cons (car _%exprs109722%_)
                                                          '()))
                                              _%bind109724%_)))
                                   (declare (not safe))
                                   (_%lp109719%_
                                    _%rest109784%_
                                    __tmp111160
                                    _%pre109723%_
                                    __tmp111159
                                    _%post109725%_))))
                              (_%K109731109769%_
                               (lambda (_%rest109752%_ _%hd109753%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd109753%_))
                                     (let ()
                                       (let ((__tmp111162
                                              (cdr _%exprs109722%_))
                                             (__tmp111161
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _%hd109753%_))
                                                          (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (car _%exprs109722%_) '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind109724%_)))
                                         (declare (not safe))
                                         (_%lp109719%_
                                          _%rest109752%_
                                          __tmp111162
                                          _%pre109723%_
                                          __tmp111161
                                          _%post109725%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _%hd109753%_))
                                         (let ()
                                           (let* ((_%len109757%_
                                                   (length _%hd109753%_))
                                                  (_%tmp109759%_
                                                   (let ((__tmp111163
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym))))
                                                     (declare (not safe))
                                                     (__SRC__0 __tmp111163))))
                                             (let ((__tmp111172
                                                    (cdr _%exprs109722%_))
                                                   (__tmp111170
                                                    (let ((__tmp111171
                                                           (lambda (_%id109762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%r109763%_)
                     (if (let () (declare (not safe)) (__AST-e _%id109762%_))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (__SRC__0 _%id109762%_))
                                     (cons (cons 'quote (cons '#!void '()))
                                           '()))
                               _%r109763%_)
                         _%r109763%_))))
              (declare (not safe))
              (__foldl1 __tmp111171 _%pre109723%_ _%hd109753%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111169
                                                    (cons (cons _%tmp109759%_
                                                                (cons (car _%exprs109722%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%bind109724%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111164
                                                    (cons (let ((__tmp111165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111166
                                (let ((__tmp111168
                                       (lambda (_%id109765%_ _%k109766%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id109765%_))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _%id109765%_))
                                                   _%k109766%_)
                                             '#f)))
                                      (__tmp111167
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len109757%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111168
                                   _%hd109753%_
                                   __tmp111167))))
                           (declare (not safe))
                           (cons _%len109757%_ __tmp111166))))
                    (declare (not safe))
                    (cons _%tmp109759%_ __tmp111165))
                  _%post109725%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_%lp109719%_
                                                _%rest109752%_
                                                __tmp111172
                                                __tmp111170
                                                __tmp111169
                                                __tmp111164))))
                                         (let ()
                                           (let ()
                                             (declare (not safe))
                                             (__compile-error__%
                                              _%stx109605%_
                                              _%hd109753%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest109726109740%_))
                              (let ((_%tl109736109792%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest109726109740%_)))
                                    (_%hd109735109790%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest109726109740%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd109735109790%_))
                                    (let ((_%tl109738109797%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd109735109790%_)))
                                          (_%hd109737109795%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd109735109790%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl109738109797%_))
                                          (let ((_%id109800%_
                                                 _%hd109737109795%_)
                                                (_%rest109802%_
                                                 _%tl109736109792%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109734109787%_
                                               _%rest109802%_
                                               _%id109800%_)))
                                          (let ((_%hd109777%_
                                                 _%hd109735109790%_)
                                                (_%rest109779%_
                                                 _%tl109736109792%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109731109769%_
                                               _%rest109779%_
                                               _%hd109777%_)))))
                                    (let ((_%hd109777%_ _%hd109735109790%_)
                                          (_%rest109779%_ _%tl109736109792%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K109731109769%_
                                         _%rest109779%_
                                         _%hd109777%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else109729109748%_))))))))
                 (_%compile-inner109609%_
                  (lambda (_%pre109710%_
                           _%bind109711%_
                           _%post109712%_
                           _%body109713%_)
                    (if (let () (declare (not safe)) (null? _%pre109710%_))
                        (let ()
                          (declare (not safe))
                          (_%compile-bind109610%_
                           _%bind109711%_
                           _%post109712%_
                           _%body109713%_))
                        (let ((__tmp111173
                               (cons 'let
                                     (cons (reverse _%pre109710%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (_%compile-bind109610%_
                                                    _%bind109711%_
                                                    _%post109712%_
                                                    _%body109713%_))
                                                 '())))))
                          (declare (not safe))
                          (__SRC__% __tmp111173 _%stx109605%_)))))
                 (_%compile-bind109610%_
                  (lambda (_%bind109706%_ _%post109707%_ _%body109708%_)
                    (let ((__tmp111174
                           (cons 'letrec
                                 (cons (reverse _%bind109706%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%compile-post109611%_
                                                _%post109707%_
                                                _%body109708%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111174 _%stx109605%_))))
                 (_%compile-post109611%_
                  (lambda (_%post109613%_ _%body109614%_)
                    (let _%lp109616%_ ((_%rest109618%_ _%post109613%_)
                                       (_%check109619%_ '())
                                       (_%bind109620%_ '()))
                      (let* ((_%rest109621109633%_ _%rest109618%_)
                             (_%else109623109641%_
                              (lambda ()
                                (let ((__tmp111175
                                       (cons 'begin
                                             (let ((__tmp111176
                                                    (let ((__tmp111177
                                                           (cons _%body109614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
              (declare (not safe))
              (__foldr1 cons __tmp111177 _%bind109620%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__foldr1
                                                cons
                                                __tmp111176
                                                _%check109619%_)))))
                                  (declare (not safe))
                                  (__SRC__% __tmp111175 _%stx109605%_))))
                             (_%K109625109680%_
                              (lambda (_%rest109644%_
                                       _%init109645%_
                                       _%len109646%_
                                       _%tmp109647%_)
                                (let ((__tmp111180
                                       (cons (let ((__tmp111181
                                                    (cons '__check-values
                                                          (cons _%tmp109647%_
                                                                (cons _%len109646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp111181
                                                _%stx109605%_))
                                             _%check109619%_))
                                      (__tmp111178
                                       (let ((__tmp111179
                                              (lambda (_%hd109649%_
                                                       _%r109650%_)
                                                (let* ((_%hd109651109658%_
                                                        _%hd109649%_)
                                                       (_%E109653109662%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd109651109658%_
                           '([id . k])))
                  '#!void))
               (_%K109654109668%_
                (lambda (_%k109665%_ _%id109666%_)
                  (cons (cons 'set!
                              (cons _%id109666%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp109647%_
                                                      (cons _%k109665%_ '())))
                                          '())))
                        _%r109650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd109651109658%_))
                                                      (let ((_%hd109655109671%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%hd109651109658%_)))
                    (_%tl109656109673%_
                     (let () (declare (not safe)) (##cdr _%hd109651109658%_))))
                (let* ((_%id109676%_ _%hd109655109671%_)
                       (_%k109678%_ _%tl109656109673%_))
                  (declare (not safe))
                  (_%K109654109668%_ _%k109678%_ _%id109676%_)))
              (let () (declare (not safe)) (_%E109653109662%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp111179
                                          _%bind109620%_
                                          _%init109645%_))))
                                  (declare (not safe))
                                  (_%lp109616%_
                                   _%rest109644%_
                                   __tmp111180
                                   __tmp111178)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest109621109633%_))
                            (let ((_%hd109626109683%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest109621109633%_)))
                                  (_%tl109627109685%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest109621109633%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd109626109683%_))
                                  (let ((_%hd109628109688%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd109626109683%_)))
                                        (_%tl109629109690%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd109626109683%_))))
                                    (let ((_%tmp109693%_ _%hd109628109688%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl109629109690%_))
                                          (let ((_%hd109630109695%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl109629109690%_)))
                                                (_%tl109631109697%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl109629109690%_))))
                                            (let* ((_%len109700%_
                                                    _%hd109630109695%_)
                                                   (_%init109702%_
                                                    _%tl109631109697%_)
                                                   (_%rest109704%_
                                                    _%tl109627109685%_))
                                              (declare (not safe))
                                              (_%K109625109680%_
                                               _%rest109704%_
                                               _%init109702%_
                                               _%len109700%_
                                               _%tmp109693%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%else109623109641%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%else109623109641%_))))
                            (let ()
                              (declare (not safe))
                              (_%else109623109641%_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx109605%_
             _%compile-simple109607%_
             _%compile-values109608%_)))))
    (define __compile-letrec*-values%
      (lambda (_%stx109356%_)
        (letrec ((_%compile-simple109358%_
                  (lambda (_%hd-ids109601%_ _%exprs109602%_ _%body109603%_)
                    (let ((__tmp111182
                           (cons 'letrec*
                                 (cons (let ((__tmp111183
                                              (map __compile-head-id
                                                   _%hd-ids109601%_)))
                                         (declare (not safe))
                                         (##map list
                                                __tmp111183
                                                _%exprs109602%_))
                                       (cons _%body109603%_ '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111182 _%stx109356%_))))
                 (_%compile-values109359%_
                  (lambda (_%hd-ids109508%_ _%exprs109509%_ _%body109510%_)
                    (let _%lp109512%_ ((_%rest109514%_ _%hd-ids109508%_)
                                       (_%exprs109515%_ _%exprs109509%_)
                                       (_%bind109516%_ '())
                                       (_%post109517%_ '()))
                      (let* ((_%rest109518109532%_ _%rest109514%_)
                             (_%else109521109540%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_%compile-bind109360%_
                                   _%bind109516%_
                                   _%post109517%_
                                   _%body109510%_)))))
                        (let ((_%K109526109584%_
                               (lambda (_%rest109579%_ _%hd109580%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd109580%_))
                                     (let ((_%id109582%_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _%hd109580%_))))
                                       (let ((__tmp111186
                                              (cdr _%exprs109515%_))
                                             (__tmp111185
                                              (cons (cons _%id109582%_
                                                          (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons '#!void '()))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%bind109516%_))
                                             (__tmp111184
                                              (cons (cons _%id109582%_
                                                          (cons (car _%exprs109515%_)
                                                                '()))
                                                    _%post109517%_)))
                                         (declare (not safe))
                                         (_%lp109512%_
                                          _%rest109579%_
                                          __tmp111186
                                          __tmp111185
                                          __tmp111184)))
                                     (let ((__tmp111188 (cdr _%exprs109515%_))
                                           (__tmp111187
                                            (cons (cons '#f
                                                        (cons (car _%exprs109515%_)
                                                              '()))
                                                  _%post109517%_)))
                                       (declare (not safe))
                                       (_%lp109512%_
                                        _%rest109579%_
                                        __tmp111188
                                        _%bind109516%_
                                        __tmp111187)))))
                              (_%K109523109564%_
                               (lambda (_%rest109544%_ _%hd109545%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd109545%_))
                                     (let ()
                                       (let ((_%id109548%_
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _%hd109545%_))))
                                         (let ((__tmp111191
                                                (cdr _%exprs109515%_))
                                               (__tmp111190
                                                (cons (cons _%id109548%_
                                                            (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons '#!void '()))
                          '()))
              _%bind109516%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp111189
                                                (cons (cons _%id109548%_
                                                            (cons (cons 'values->list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (car _%exprs109515%_) '()))
                          '()))
              _%post109517%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_%lp109512%_
                                            _%rest109544%_
                                            __tmp111191
                                            __tmp111190
                                            __tmp111189))))
                                     (if (let ((__tmp111192
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _%hd109545%_))))
                                           (declare (not safe))
                                           (not __tmp111192))
                                         (let ()
                                           (let ((__tmp111194
                                                  (cdr _%exprs109515%_))
                                                 (__tmp111193
                                                  (cons (cons '#f
                                                              (cons (car _%exprs109515%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _%post109517%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (declare (not safe))
                                             (_%lp109512%_
                                              _%rest109544%_
                                              __tmp111194
                                              _%bind109516%_
                                              __tmp111193)))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _%hd109545%_))
                                             (let ()
                                               (let* ((_%len109552%_
                                                       (length _%hd109545%_))
                                                      (_%tmp109554%_
                                                       (let ((__tmp111195
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym))))
                 (declare (not safe))
                 (__SRC__0 __tmp111195))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp111205
                                                        (cdr _%exprs109515%_))
                                                       (__tmp111203
                                                        (let ((__tmp111204
                                                               (lambda (_%id109557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%r109558%_)
                         (if (let ()
                               (declare (not safe))
                               (__AST-e _%id109557%_))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (__SRC__0 _%id109557%_))
                                         (cons (cons 'quote (cons '#!void '()))
                                               '()))
                                   _%r109558%_)
                             _%r109558%_))))
                  (declare (not safe))
                  (__foldl1 __tmp111204 _%bind109516%_ _%hd109545%_)))
               (__tmp111196
                (cons (let ((__tmp111197
                             (let ((__tmp111202 (car _%exprs109515%_))
                                   (__tmp111198
                                    (let ((__tmp111199
                                           (let ((__tmp111201
                                                  (lambda (_%id109560%_
                                                           _%k109561%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%id109560%_))
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _%id109560%_))
                      _%k109561%_)
                '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (__tmp111200
                                                  (let ()
                                                    (declare (not safe))
                                                    (##iota _%len109552%_))))
                                             (declare (not safe))
                                             (__filter-map2
                                              __tmp111201
                                              _%hd109545%_
                                              __tmp111200))))
                                      (declare (not safe))
                                      (cons _%len109552%_ __tmp111199))))
                               (declare (not safe))
                               (cons __tmp111202 __tmp111198))))
                        (declare (not safe))
                        (cons _%tmp109554%_ __tmp111197))
                      _%post109517%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (_%lp109512%_
                                                    _%rest109544%_
                                                    __tmp111205
                                                    __tmp111203
                                                    __tmp111196))))
                                             (let ()
                                               (let ()
                                                 (declare (not safe))
                                                 (__compile-error__%
                                                  _%stx109356%_
                                                  _%hd109545%_)))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest109518109532%_))
                              (let ((_%tl109528109589%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest109518109532%_)))
                                    (_%hd109527109587%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest109518109532%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd109527109587%_))
                                    (let ((_%tl109530109594%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd109527109587%_)))
                                          (_%hd109529109592%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd109527109587%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl109530109594%_))
                                          (let ((_%hd109597%_
                                                 _%hd109529109592%_)
                                                (_%rest109599%_
                                                 _%tl109528109589%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109526109584%_
                                               _%rest109599%_
                                               _%hd109597%_)))
                                          (let ((_%hd109572%_
                                                 _%hd109527109587%_)
                                                (_%rest109574%_
                                                 _%tl109528109589%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K109523109564%_
                                               _%rest109574%_
                                               _%hd109572%_)))))
                                    (let ((_%hd109572%_ _%hd109527109587%_)
                                          (_%rest109574%_ _%tl109528109589%_))
                                      (let ()
                                        (declare (not safe))
                                        (_%K109523109564%_
                                         _%rest109574%_
                                         _%hd109572%_)))))
                              (let ()
                                (declare (not safe))
                                (_%else109521109540%_))))))))
                 (_%compile-bind109360%_
                  (lambda (_%bind109504%_ _%post109505%_ _%body109506%_)
                    (let ((__tmp111206
                           (cons 'let
                                 (cons (reverse _%bind109504%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (_%compile-post109361%_
                                                _%post109505%_
                                                _%body109506%_))
                                             '())))))
                      (declare (not safe))
                      (__SRC__% __tmp111206 _%stx109356%_))))
                 (_%compile-post109361%_
                  (lambda (_%post109363%_ _%body109364%_)
                    (let ((__tmp111207
                           (cons 'begin
                                 (let ((__tmp111208
                                        (let ((__tmp111210
                                               (lambda (_%hd109366%_
                                                        _%r109367%_)
                                                 (let* ((_%hd109368109391%_
                                                         _%hd109366%_)
                                                        (_%E109372109395%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%hd109368109391%_
                            '([#f expr])
                            '([id expr])
                            '([tmp expr len . init])))
                   '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%K109385109489%_
                                                          (lambda (_%expr109487%_)
                                                            (cons _%expr109487%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%r109367%_)))
                 (_%K109380109467%_
                  (lambda (_%expr109464%_ _%id109465%_)
                    (cons (let ((__tmp111211
                                 (cons 'set!
                                       (cons _%id109465%_
                                             (cons _%expr109464%_ '())))))
                            (declare (not safe))
                            (__SRC__% __tmp111211 _%stx109356%_))
                          _%r109367%_)))
                 (_%K109373109434%_
                  (lambda (_%init109399%_
                           _%len109400%_
                           _%expr109401%_
                           _%tmp109402%_)
                    (cons (let ((__tmp111212
                                 (cons 'let
                                       (cons (cons (cons _%tmp109402%_
                                                         (cons _%expr109401%_
                                                               '()))
                                                   '())
                                             (cons (let ((__tmp111213
                                                          (cons '__check-values
                                                                (cons _%tmp109402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%len109400%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__SRC__%
                                                      __tmp111213
                                                      _%stx109356%_))
                                                   (let ((__tmp111214
                                                          (map (lambda (_%hd109404%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%hd109405109412%_ _%hd109404%_)
                                (_%E109407109416%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (error '"No clause matching"
                                            _%hd109405109412%_
                                            '([id . k])))
                                   '#!void))
                                (_%K109408109422%_
                                 (lambda (_%k109419%_ _%id109420%_)
                                   (let ((__tmp111215
                                          (cons 'set!
                                                (cons _%id109420%_
                                                      (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%tmp109402%_ (cons _%k109419%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (declare (not safe))
                                     (__SRC__% __tmp111215 _%stx109356%_)))))
                           (if (let ()
                                 (declare (not safe))
                                 (##pair? _%hd109405109412%_))
                               (let ((_%hd109409109425%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%hd109405109412%_)))
                                     (_%tl109410109427%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%hd109405109412%_))))
                                 (let* ((_%id109430%_ _%hd109409109425%_)
                                        (_%k109432%_ _%tl109410109427%_))
                                   (declare (not safe))
                                   (_%K109408109422%_
                                    _%k109432%_
                                    _%id109430%_)))
                               (let ()
                                 (declare (not safe))
                                 (_%E109407109416%_)))))
                       _%init109399%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (__foldr1
                                                      cons
                                                      '()
                                                      __tmp111214)))))))
                            (declare (not safe))
                            (__SRC__% __tmp111212 _%stx109356%_))
                          _%r109367%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__match110983110984%_
                                                             (lambda (_%hd109374109437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tl109375109439%_
                              _%hd109376109444%_
                              _%tl109377109446%_)
                       (let ((_%tmp109442%_ _%hd109374109437%_)
                             (_%expr109449%_ _%hd109376109444%_))
                         (let () (declare (not safe)) (_%E109372109395%_)))))
                    (_%__match110977110978%_
                     (lambda (_%hd109374109437%_ _%tl109375109439%_)
                       (let ((_%tmp109442%_ _%hd109374109437%_))
                         (declare (not safe))
                         (_%E109372109395%_)))))
               (if (let () (declare (not safe)) (##pair? _%hd109368109391%_))
                   (let ((_%tl109387109494%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd109368109391%_)))
                         (_%hd109386109492%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd109368109391%_))))
                     (if (let ()
                           (declare (not safe))
                           (##eq? _%hd109386109492%_ '#f))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%tl109387109494%_))
                             (let ((_%tl109389109499%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl109387109494%_)))
                                   (_%hd109388109497%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%tl109387109494%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl109389109499%_))
                                   (let ((_%expr109502%_ _%hd109388109497%_))
                                     (declare (not safe))
                                     (_%K109385109489%_ _%expr109502%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%tl109389109499%_))
                                       (let ((_%tl109379109453%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl109389109499%_)))
                                             (_%hd109378109451%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%tl109389109499%_))))
                                         (let ((_%tmp109442%_
                                                _%hd109386109492%_)
                                               (_%expr109449%_
                                                _%hd109388109497%_)
                                               (_%len109456%_
                                                _%hd109378109451%_)
                                               (_%init109458%_
                                                _%tl109379109453%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%K109373109434%_
                                              _%init109458%_
                                              _%len109456%_
                                              _%expr109449%_
                                              _%tmp109442%_))))
                                       (_%__match110983110984%_
                                        _%hd109386109492%_
                                        _%tl109387109494%_
                                        _%hd109388109497%_
                                        _%tl109389109499%_))))
                             (_%__match110977110978%_
                              _%hd109386109492%_
                              _%tl109387109494%_))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%tl109387109494%_))
                             (let ((_%tl109384109479%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%tl109387109494%_)))
                                   (_%hd109383109477%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%tl109387109494%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (##null? _%tl109384109479%_))
                                   (let ((_%id109475%_ _%hd109386109492%_)
                                         (_%expr109482%_ _%hd109383109477%_))
                                     (let ()
                                       (declare (not safe))
                                       (_%K109380109467%_
                                        _%expr109482%_
                                        _%id109475%_)))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%tl109384109479%_))
                                       (let ((_%tl109379109453%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%tl109384109479%_)))
                                             (_%hd109378109451%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%tl109384109479%_))))
                                         (let ((_%tmp109442%_
                                                _%hd109386109492%_)
                                               (_%expr109449%_
                                                _%hd109383109477%_)
                                               (_%len109456%_
                                                _%hd109378109451%_)
                                               (_%init109458%_
                                                _%tl109379109453%_))
                                           (let ()
                                             (declare (not safe))
                                             (_%K109373109434%_
                                              _%init109458%_
                                              _%len109456%_
                                              _%expr109449%_
                                              _%tmp109442%_))))
                                       (_%__match110983110984%_
                                        _%hd109386109492%_
                                        _%tl109387109494%_
                                        _%hd109383109477%_
                                        _%tl109384109479%_))))
                             (_%__match110977110978%_
                              _%hd109386109492%_
                              _%tl109387109494%_))))
                   (let () (declare (not safe)) (_%E109372109395%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (__tmp111209
                                               (list _%body109364%_)))
                                          (declare (not safe))
                                          (__foldl1
                                           __tmp111210
                                           __tmp111209
                                           _%post109363%_))))
                                   (declare (not safe))
                                   (__foldr1 cons '() __tmp111208)))))
                      (declare (not safe))
                      (__SRC__% __tmp111207 _%stx109356%_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _%stx109356%_
             _%compile-simple109358%_
             _%compile-values109359%_)))))
    (define __compile-call%
      (lambda (_%stx109316%_)
        (let* ((_%$e109318%_ _%stx109316%_)
               (_%$E109320109329%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109318%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109318%_))
              (let* ((_%$tgt109321109332%_
                      (let () (declare (not safe)) (__AST-e _%$e109318%_)))
                     (_%$hd109322109335%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109321109332%_)))
                     (_%$tl109323109338%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109321109332%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109323109338%_))
                    (let* ((_%$tgt109324109342%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109323109338%_)))
                           (_%$hd109325109345%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109324109342%_)))
                           (_%$tl109326109348%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109324109342%_))))
                      (let* ((_%rator109352%_ _%$hd109325109345%_)
                             (_%rands109354%_ _%$tl109326109348%_)
                             (__tmp111216
                              (cons (let ()
                                      (declare (not safe))
                                      (__compile _%rator109352%_))
                                    (map __compile _%rands109354%_))))
                        (declare (not safe))
                        (__SRC__% __tmp111216 _%stx109316%_)))
                    (let () (declare (not safe)) (_%$E109320109329%_))))
              (let () (declare (not safe)) (_%$E109320109329%_))))))
    (define __compile-ref%
      (lambda (_%stx109278%_)
        (let* ((_%$e109280%_ _%stx109278%_)
               (_%$E109282109291%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109280%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109280%_))
              (let* ((_%$tgt109283109294%_
                      (let () (declare (not safe)) (__AST-e _%$e109280%_)))
                     (_%$hd109284109297%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109283109294%_)))
                     (_%$tl109285109300%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109283109294%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109285109300%_))
                    (let* ((_%$tgt109286109304%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109285109300%_)))
                           (_%$hd109287109307%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109286109304%_)))
                           (_%$tl109288109310%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109286109304%_))))
                      (let ((_%id109314%_ _%$hd109287109307%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl109288109310%_))
                                    '())
                            (let ()
                              (declare (not safe))
                              (__SRC__% _%id109314%_ _%stx109278%_))
                            (let ()
                              (declare (not safe))
                              (_%$E109282109291%_)))))
                    (let () (declare (not safe)) (_%$E109282109291%_))))
              (let () (declare (not safe)) (_%$E109282109291%_))))))
    (define __compile-setq%
      (lambda (_%stx109225%_)
        (let* ((_%$e109227%_ _%stx109225%_)
               (_%$E109229109241%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109227%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109227%_))
              (let* ((_%$tgt109230109244%_
                      (let () (declare (not safe)) (__AST-e _%$e109227%_)))
                     (_%$hd109231109247%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109230109244%_)))
                     (_%$tl109232109250%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109230109244%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109232109250%_))
                    (let* ((_%$tgt109233109254%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109232109250%_)))
                           (_%$hd109234109257%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109233109254%_)))
                           (_%$tl109235109260%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109233109254%_))))
                      (let ((_%id109264%_ _%$hd109234109257%_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$tl109235109260%_))
                            (let* ((_%$tgt109236109266%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl109235109260%_)))
                                   (_%$hd109237109269%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt109236109266%_)))
                                   (_%$tl109238109272%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt109236109266%_))))
                              (let ((_%expr109276%_ _%$hd109237109269%_))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$tl109238109272%_))
                                            '())
                                    (let ((__tmp111217
                                           (cons 'set!
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (__SRC__%
                                                          _%id109264%_
                                                          _%stx109225%_))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__compile _%expr109276%_))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (declare (not safe))
                                      (__SRC__% __tmp111217 _%stx109225%_))
                                    (let ()
                                      (declare (not safe))
                                      (_%$E109229109241%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$E109229109241%_)))))
                    (let () (declare (not safe)) (_%$E109229109241%_))))
              (let () (declare (not safe)) (_%$E109229109241%_))))))
    (define __compile-if%
      (lambda (_%stx109157%_)
        (let* ((_%$e109159%_ _%stx109157%_)
               (_%$E109161109176%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109159%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109159%_))
              (let* ((_%$tgt109162109179%_
                      (let () (declare (not safe)) (__AST-e _%$e109159%_)))
                     (_%$hd109163109182%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109162109179%_)))
                     (_%$tl109164109185%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109162109179%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109164109185%_))
                    (let* ((_%$tgt109165109189%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109164109185%_)))
                           (_%$hd109166109192%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109165109189%_)))
                           (_%$tl109167109195%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109165109189%_))))
                      (let ((_%p109199%_ _%$hd109166109192%_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$tl109167109195%_))
                            (let* ((_%$tgt109168109201%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl109167109195%_)))
                                   (_%$hd109169109204%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt109168109201%_)))
                                   (_%$tl109170109207%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt109168109201%_))))
                              (let ((_%t109211%_ _%$hd109169109204%_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _%$tl109170109207%_))
                                    (let* ((_%$tgt109171109213%_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _%$tl109170109207%_)))
                                           (_%$hd109172109216%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$tgt109171109213%_)))
                                           (_%$tl109173109219%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$tgt109171109213%_))))
                                      (let ((_%f109223%_ _%$hd109172109216%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl109173109219%_))
                                                    '())
                                            (let ((__tmp111218
                                                   (cons 'if
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__compile _%p109199%_))
                       (cons (let ()
                               (declare (not safe))
                               (__compile _%t109211%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (__compile _%f109223%_))
                                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__SRC__%
                                               __tmp111218
                                               _%stx109157%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%$E109161109176%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$E109161109176%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$E109161109176%_)))))
                    (let () (declare (not safe)) (_%$E109161109176%_))))
              (let () (declare (not safe)) (_%$E109161109176%_))))))
    (define __compile-quote%
      (lambda (_%stx109119%_)
        (let* ((_%$e109121%_ _%stx109119%_)
               (_%$E109123109132%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109121%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109121%_))
              (let* ((_%$tgt109124109135%_
                      (let () (declare (not safe)) (__AST-e _%$e109121%_)))
                     (_%$hd109125109138%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109124109135%_)))
                     (_%$tl109126109141%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109124109135%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109126109141%_))
                    (let* ((_%$tgt109127109145%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109126109141%_)))
                           (_%$hd109128109148%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109127109145%_)))
                           (_%$tl109129109151%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109127109145%_))))
                      (let ((_%e109155%_ _%$hd109128109148%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl109129109151%_))
                                    '())
                            (let ((__tmp111219
                                   (cons 'quote
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (__AST->datum _%e109155%_))
                                               '()))))
                              (declare (not safe))
                              (__SRC__% __tmp111219 _%stx109119%_))
                            (let ()
                              (declare (not safe))
                              (_%$E109123109132%_)))))
                    (let () (declare (not safe)) (_%$E109123109132%_))))
              (let () (declare (not safe)) (_%$E109123109132%_))))))
    (define __compile-quote-syntax%
      (lambda (_%stx109081%_)
        (let* ((_%$e109083%_ _%stx109081%_)
               (_%$E109085109094%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109083%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109083%_))
              (let* ((_%$tgt109086109097%_
                      (let () (declare (not safe)) (__AST-e _%$e109083%_)))
                     (_%$hd109087109100%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109086109097%_)))
                     (_%$tl109088109103%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109086109097%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109088109103%_))
                    (let* ((_%$tgt109089109107%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109088109103%_)))
                           (_%$hd109090109110%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109089109107%_)))
                           (_%$tl109091109113%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109089109107%_))))
                      (let ((_%e109117%_ _%$hd109090109110%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl109091109113%_))
                                    '())
                            (let ((__tmp111220
                                   (cons 'quote (cons _%e109117%_ '()))))
                              (declare (not safe))
                              (__SRC__% __tmp111220 _%stx109081%_))
                            (let ()
                              (declare (not safe))
                              (_%$E109085109094%_)))))
                    (let () (declare (not safe)) (_%$E109085109094%_))))
              (let () (declare (not safe)) (_%$E109085109094%_))))))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin
       __compile-begin%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-syntax
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-foreign
       __compile-begin-foreign%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#module
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#import
       __compile-import%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#export
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#provide
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-values
       __compile-define-values%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-syntax
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-alias
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-runtime
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#extern
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#declare
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-annotation
       __compile-begin-annotation%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#quote
       __compile-quote%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#quote-syntax
       __compile-quote-syntax%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#lambda
       __compile-lambda%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#case-lambda
       __compile-case-lambda%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#let-values
       __compile-let-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec-values
       __compile-letrec-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec*-values
       __compile-letrec*-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#call __compile-call% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#if __compile-if% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#ref __compile-ref% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#set! __compile-setq% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#cond-expand __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#include __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#let-syntax __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec-syntax
       __compile-error
       make-__core-form))))
