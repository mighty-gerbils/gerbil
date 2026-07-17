(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1784279015)
  (begin
    (define __syntax::t
      (let ((__tmp177758 (list)) (__tmp177757 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__syntax::t
         '__syntax
         __tmp177758
         '(e id)
         __tmp177757
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args177562%_
        (apply make-instance __syntax::t _%$args177562%_)))
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
      (let ((__tmp177760 (list __syntax::t))
            (__tmp177759 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-form::t
         '__core-form
         __tmp177760
         '()
         __tmp177759
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args177559%_
        (apply make-instance __core-form::t _%$args177559%_)))
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
      (let ((__tmp177762 (list __core-form::t))
            (__tmp177761 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-expression::t
         '__core-expression
         __tmp177762
         '()
         __tmp177761
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args177556%_
        (apply make-instance __core-expression::t _%$args177556%_)))
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
      (let ((__tmp177764 (list __core-form::t))
            (__tmp177763 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-special-form::t
         '__core-special-form
         __tmp177764
         '()
         __tmp177763
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args177553%_
        (apply make-instance __core-special-form::t _%$args177553%_)))
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
      (lambda (_%id177527%_)
        (let* ((_%h177529%_ __core)
               (_%key177532%_
                (let () (declare (not safe)) (__AST-e _%id177527%_)))
               (_%h177539%_
                (let ((_%$obj177536%_ _%h177529%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj177536%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj177536%_)))
                           '#t)
                      _%$obj177536%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj177536%_)))))
               (_%h177541%_ _%h177539%_))
          (declare (not safe))
          (__hash-get _%h177541%_ _%key177532%_))))
    (define __core-bound-id?__%
      (lambda (_%id177510%_ _%is?177511%_)
        (let ((_%$e177513%_ (__core-resolve _%id177510%_)))
          (if _%$e177513%_ (_%is?177511%_ _%$e177513%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id177520%_)
        (let ((_%is?177522%_ true))
          (__core-bound-id?__% _%id177520%_ _%is?177522%_))))
    (define __core-bound-id?
      (lambda _g177765_
        (let ((_g177766_ (let () (declare (not safe)) (##length _g177765_))))
          (cond ((let () (declare (not safe)) (##fx= _g177766_ 1))
                 (apply __core-bound-id?__0 _g177765_))
                ((let () (declare (not safe)) (##fx= _g177766_ 2))
                 (apply __core-bound-id?__% _g177765_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g177765_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id177465%_ _%e177466%_ _%make177467%_)
        (let* ((_%h177469%_ __core)
               (_%key177472%_ _%id177465%_)
               (_%value177475%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%e177466%_ '__syntax::t))
                    _%e177466%_
                    (_%make177467%_ _%e177466%_ _%id177465%_)))
               (_%h177482%_
                (let ((_%$obj177479%_ _%h177469%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj177479%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj177479%_)))
                           '#t)
                      _%$obj177479%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj177479%_)))))
               (_%h177484%_ _%h177482%_))
          (declare (not safe))
          (__hash-put! _%h177484%_ _%key177472%_ _%value177475%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id177500%_ _%e177501%_)
        (let ((_%make177503%_ make-__syntax))
          (__core-bind-syntax!__% _%id177500%_ _%e177501%_ _%make177503%_))))
    (define __core-bind-syntax!
      (lambda _g177767_
        (let ((_g177768_ (let () (declare (not safe)) (##length _g177767_))))
          (cond ((let () (declare (not safe)) (##fx= _g177768_ 2))
                 (apply __core-bind-syntax!__0 _g177767_))
                ((let () (declare (not safe)) (##fx= _g177768_ 3))
                 (apply __core-bind-syntax!__% _g177767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g177767_))))))
    (define __SRC__%
      (lambda (_%e177445%_ _%src-stx177446%_)
        (if (or (pair? _%e177445%_) (symbol? _%e177445%_))
            (let ((__tmp177769
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx177446%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx177446%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e177445%_ __tmp177769))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e177445%_ 'gerbil#AST::t))
                (let ((__tmp177771
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e177445%_ '1 '#f '#f)))
                      (__tmp177770
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e177445%_)))))
                  (declare (not safe))
                  (##make-source __tmp177771 __tmp177770))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e177445%_))))))
    (define __SRC__0
      (lambda (_%e177457%_)
        (let ((_%src-stx177459%_ '#f))
          (__SRC__% _%e177457%_ _%src-stx177459%_))))
    (define __SRC
      (lambda _g177772_
        (let ((_g177773_ (let () (declare (not safe)) (##length _g177772_))))
          (cond ((let () (declare (not safe)) (##fx= _g177773_ 1))
                 (apply __SRC__0 _g177772_))
                ((let () (declare (not safe)) (##fx= _g177773_ 2))
                 (apply __SRC__% _g177772_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g177772_))))))
    (define __locat
      (lambda (_%loc177442%_)
        (if (let () (declare (not safe)) (##locat? _%loc177442%_))
            _%loc177442%_
            '#f)))
    (define __check-values
      (lambda (_%obj177437%_ _%k177438%_)
        (let ((_%count177440%_
               (if (let () (declare (not safe)) (##values? _%obj177437%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj177437%_))
                   '1)))
          (if (fx= _%count177440%_ _%k177438%_)
              '#!void
              (let ((__tmp177775
                     (if (fx< _%count177440%_ _%k177438%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp177774
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj177437%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj177437%_))
                         _%obj177437%_)))
                (declare (not safe))
                (error __tmp177775 __tmp177774 _%k177438%_))))))
    (define __compile
      (lambda (_%stx177406%_)
        (let* ((_%$e177408%_ _%stx177406%_)
               (_%$%$E177410177416%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177408%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177408%_))
              (let* ((_%$%$tgt177411177419%_
                      (let () (declare (not safe)) (__AST-e _%$e177408%_)))
                     (_%$%$hd177412177422%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt177411177419%_)))
                     (_%$%$tl177413177425%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt177411177419%_)))
                     (_%form177429%_ _%$%$hd177412177422%_)
                     (_%$e177431%_ (__core-resolve _%form177429%_)))
                (if _%$e177431%_
                    ((##structure-ref _%$e177431%_ '1 __syntax::t '#f)
                     _%stx177406%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx177406%_
                       _%form177429%_))))
              (_%$%$E177410177416%_)))))
    (define __compile-error__%
      (lambda (_%stx177393%_ _%detail177394%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx177393%_
           _%detail177394%_))))
    (define __compile-error__0
      (lambda (_%stx177399%_)
        (let ((_%detail177401%_ '#f))
          (__compile-error__% _%stx177399%_ _%detail177401%_))))
    (define __compile-error
      (lambda _g177776_
        (let ((_g177777_ (let () (declare (not safe)) (##length _g177776_))))
          (cond ((let () (declare (not safe)) (##fx= _g177777_ 1))
                 (apply __compile-error__0 _g177776_))
                ((let () (declare (not safe)) (##fx= _g177777_ 2))
                 (apply __compile-error__% _g177776_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g177776_))))))
    (define __compile-ignore%
      (lambda (_%stx177390%_) (__SRC__% ''#!void _%stx177390%_)))
    (define __compile-begin%
      (lambda (_%stx177365%_)
        (let* ((_%$e177367%_ _%stx177365%_)
               (_%$%$E177369177375%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177367%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177367%_))
              (let* ((_%$%$tgt177370177378%_
                      (let () (declare (not safe)) (__AST-e _%$e177367%_)))
                     (_%$%$hd177371177381%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt177370177378%_)))
                     (_%$%$tl177372177384%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt177370177378%_)))
                     (_%body177388%_ _%$%$tl177372177384%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body177388%_))
                 _%stx177365%_))
              (_%$%$E177369177375%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx177340%_)
        (let* ((_%$e177342%_ _%stx177340%_)
               (_%$%$E177344177350%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177342%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177342%_))
              (let* ((_%$%$tgt177345177353%_
                      (let () (declare (not safe)) (__AST-e _%$e177342%_)))
                     (_%$%$hd177346177356%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt177345177353%_)))
                     (_%$%$tl177347177359%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt177345177353%_)))
                     (_%body177363%_ _%$%$tl177347177359%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body177363%_)))
                 _%stx177340%_))
              (_%$%$E177344177350%_)))))
    (define __compile-import%
      (lambda (_%stx177315%_)
        (let* ((_%$e177317%_ _%stx177315%_)
               (_%$%$E177319177325%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177317%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177317%_))
              (let* ((_%$%$tgt177320177328%_
                      (let () (declare (not safe)) (__AST-e _%$e177317%_)))
                     (_%$%$hd177321177331%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt177320177328%_)))
                     (_%$%$tl177322177334%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt177320177328%_)))
                     (_%body177338%_ _%$%$tl177322177334%_))
                (__SRC__%
                 (list '__eval-import (list 'quote _%body177338%_))
                 _%stx177315%_))
              (_%$%$E177319177325%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx177262%_)
        (let* ((_%$e177264%_ _%stx177262%_)
               (_%$%$E177266177278%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177264%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177264%_))
              (let* ((_%$%$tgt177267177281%_
                      (let () (declare (not safe)) (__AST-e _%$e177264%_)))
                     (_%$%$hd177268177284%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt177267177281%_)))
                     (_%$%$tl177269177287%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt177267177281%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl177269177287%_))
                    (let* ((_%$%$tgt177270177291%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl177269177287%_)))
                           (_%$%$hd177271177294%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt177270177291%_)))
                           (_%$%$tl177272177297%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt177270177291%_)))
                           (_%ann177301%_ _%$%$hd177271177294%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl177272177297%_))
                          (let* ((_%$%$tgt177273177303%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl177272177297%_)))
                                 (_%$%$hd177274177306%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177273177303%_)))
                                 (_%$%$tl177275177309%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177273177303%_)))
                                 (_%expr177313%_ _%$%$hd177274177306%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl177275177309%_))
                                        '())
                                (__compile _%expr177313%_)
                                (_%$%$E177266177278%_)))
                          (_%$%$E177266177278%_)))
                    (_%$%$E177266177278%_)))
              (_%$%$E177266177278%_)))))
    (define __compile-define-values%
      (lambda (_%stx177153%_)
        (let* ((_%$e177155%_ _%stx177153%_)
               (_%$%$E177157177169%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177155%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177155%_))
              (let* ((_%$%$tgt177158177172%_
                      (let () (declare (not safe)) (__AST-e _%$e177155%_)))
                     (_%$%$hd177159177175%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt177158177172%_)))
                     (_%$%$tl177160177178%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt177158177172%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl177160177178%_))
                    (let* ((_%$%$tgt177161177182%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl177160177178%_)))
                           (_%$%$hd177162177185%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt177161177182%_)))
                           (_%$%$tl177163177188%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt177161177182%_)))
                           (_%hd177192%_ _%$%$hd177162177185%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl177163177188%_))
                          (let* ((_%$%$tgt177164177194%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl177163177188%_)))
                                 (_%$%$hd177165177197%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177164177194%_)))
                                 (_%$%$tl177166177200%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177164177194%_)))
                                 (_%expr177204%_ _%$%$hd177165177197%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl177166177200%_))
                                        '())
                                (let* ((_%$e177206%_ _%hd177192%_)
                                       (_%$%$E177208177249%_
                                        (lambda ()
                                          (let ((_%$%$E177209177234%_
                                                 (lambda ()
                                                   (let* ((_%$%$E177210177221%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e177206%_))))
                  (_%ids177224%_ _%hd177192%_)
                  (_%len177226%_ (length _%ids177224%_))
                  (_%tmp177228%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (list 'define
                                 _%tmp177228%_
                                 (__compile _%expr177204%_))
                           _%stx177153%_)
                          (cons (__SRC__%
                                 (list '__check-values
                                       _%tmp177228%_
                                       _%len177226%_)
                                 _%stx177153%_)
                                (let ((__tmp177779
                                       (lambda (_%id177231%_ _%k177232%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id177231%_))
                                             (__SRC__%
                                              (list 'define
                                                    (__SRC__0 _%id177231%_)
                                                    (list '##values-ref
                                                          _%tmp177228%_
                                                          _%k177232%_))
                                              _%stx177153%_)
                                             '#f)))
                                      (__tmp177778
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len177226%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp177779
                                   _%ids177224%_
                                   __tmp177778)))))
              _%stx177153%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e177206%_))
                                                (let* ((_%$%$tgt177211177237%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e177206%_)))
                                                       (_%$%$hd177212177240%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%$tgt177211177237%_)))
                                                       (_%$%$tl177213177243%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%$tgt177211177237%_)))
                                                       (_%id177247%_
                                                        _%$%$hd177212177240%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$%$tl177213177243%_))
                      '())
              (__SRC__%
               (list 'define
                     (__SRC__0 _%id177247%_)
                     (__compile _%expr177204%_))
               _%stx177153%_)
              (_%$%$E177209177234%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%$E177209177234%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e177206%_))
                                      (let* ((_%$%$tgt177214177252%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e177206%_)))
                                             (_%$%$hd177215177255%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt177214177252%_)))
                                             (_%$%$tl177216177258%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt177214177252%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$hd177215177255%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$%$tl177216177258%_))
                                                        '())
                                                (__compile _%expr177204%_)
                                                (_%$%$E177208177249%_))
                                            (_%$%$E177208177249%_)))
                                      (_%$%$E177208177249%_)))
                                (_%$%$E177157177169%_)))
                          (_%$%$E177157177169%_)))
                    (_%$%$E177157177169%_)))
              (_%$%$E177157177169%_)))))
    (define __compile-head-id
      (lambda (_%e177151%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e177151%_))
             _%e177151%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd177108%_)
        (let _%recur177110%_ ((_%rest177112%_ _%hd177108%_))
          (let* ((_%$e177114%_ _%rest177112%_)
                 (_%$%$E177116177134%_
                  (lambda ()
                    (let ((_%$%$E177117177131%_
                           (lambda ()
                             (let* ((_%$%$E177118177126%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e177114%_))))
                                    (_%tail177129%_ _%$e177114%_))
                               (__compile-head-id _%tail177129%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e177114%_))
                                  '())
                          '()
                          (_%$%$E177117177131%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e177114%_))
                (let* ((_%$%$tgt177119177137%_
                        (let () (declare (not safe)) (__AST-e _%$e177114%_)))
                       (_%$%$hd177120177140%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt177119177137%_)))
                       (_%$%$tl177121177143%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt177119177137%_)))
                       (_%hd177147%_ _%$%$hd177120177140%_)
                       (_%rest177149%_ _%$%$tl177121177143%_))
                  (cons (__compile-head-id _%hd177147%_)
                        (_%recur177110%_ _%rest177149%_)))
                (_%$%$E177116177134%_))))))
    (define __compile-lambda%
      (lambda (_%stx177055%_)
        (let* ((_%$e177057%_ _%stx177055%_)
               (_%$%$E177059177071%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177057%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177057%_))
              (let* ((_%$%$tgt177060177074%_
                      (let () (declare (not safe)) (__AST-e _%$e177057%_)))
                     (_%$%$hd177061177077%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt177060177074%_)))
                     (_%$%$tl177062177080%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt177060177074%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl177062177080%_))
                    (let* ((_%$%$tgt177063177084%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl177062177080%_)))
                           (_%$%$hd177064177087%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt177063177084%_)))
                           (_%$%$tl177065177090%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt177063177084%_)))
                           (_%hd177094%_ _%$%$hd177064177087%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl177065177090%_))
                          (let* ((_%$%$tgt177066177096%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl177065177090%_)))
                                 (_%$%$hd177067177099%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177066177096%_)))
                                 (_%$%$tl177068177102%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177066177096%_)))
                                 (_%body177106%_ _%$%$hd177067177099%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl177068177102%_))
                                        '())
                                (__SRC__%
                                 (list 'lambda
                                       (__compile-lambda-head _%hd177094%_)
                                       (__compile _%body177106%_))
                                 _%stx177055%_)
                                (_%$%$E177059177071%_)))
                          (_%$%$E177059177071%_)))
                    (_%$%$E177059177071%_)))
              (_%$%$E177059177071%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx176820%_)
        (letrec ((_%variadic?176822%_
                  (lambda (_%hd177020%_)
                    (let* ((_%$e177022%_ _%hd177020%_)
                           (_%$%$E177024177040%_
                            (lambda ()
                              (let ((_%$%$E177025177037%_
                                     (lambda ()
                                       (let ((_%$%$E177026177034%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e177022%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e177022%_))
                                            '())
                                    '#f
                                    (_%$%$E177025177037%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e177022%_))
                          (let* ((_%$%$tgt177027177043%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e177022%_)))
                                 (_%$%$hd177028177046%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177027177043%_)))
                                 (_%$%$tl177029177049%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177027177043%_)))
                                 (_%rest177053%_ _%$%$tl177029177049%_))
                            (_%variadic?176822%_ _%rest177053%_))
                          (_%$%$E177024177040%_)))))
                 (_%arity176823%_
                  (lambda (_%hd176958%_)
                    (let _%lp176960%_ ((_%rest176962%_ _%hd176958%_)
                                       (_%k176963%_ '0))
                      (let* ((_%$e176965%_ _%rest176962%_)
                             (_%$%$E176967176978%_
                              (lambda ()
                                (let ((_%$%$E176968176975%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e176965%_)))))
                                  _%k176963%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e176965%_))
                            (let* ((_%$%$tgt176969176981%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e176965%_)))
                                   (_%$%$hd176970176984%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%$tgt176969176981%_)))
                                   (_%$%$tl176971176987%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%$tgt176969176981%_)))
                                   (_%rest176991%_ _%$%$tl176971176987%_))
                              (_%lp176960%_
                               _%rest176991%_
                               (let ((_%x176993%_ _%k176963%_))
                                 (if (fixnum? _%x176993%_)
                                     (let ((_%x176998%_ _%x176993%_))
                                       (declare (not safe))
                                       (__fx1+ _%x176998%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x176993%_)
                                       '#!void)))))
                            (_%$%$E176967176978%_))))))
                 (_%generate176824%_
                  (lambda (_%rest176885%_ _%args176886%_ _%len176887%_)
                    (let* ((_%$e176889%_ _%rest176885%_)
                           (_%$%$E176891176902%_
                            (lambda ()
                              (let ((_%$%$E176892176899%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e176889%_)))))
                                (__SRC__%
                                 (list 'error
                                       '"No clause matching arguments"
                                       _%args176886%_)
                                 _%stx176820%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e176889%_))
                          (let* ((_%$%$tgt176893176905%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e176889%_)))
                                 (_%$%$hd176894176908%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt176893176905%_)))
                                 (_%$%$tl176895176911%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt176893176905%_)))
                                 (_%clause176915%_ _%$%$hd176894176908%_)
                                 (_%rest176917%_ _%$%$tl176895176911%_)
                                 (_%$e176919%_ _%clause176915%_)
                                 (_%$%$E176921176930%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e176919%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e176919%_))
                                (let* ((_%$%$tgt176922176933%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e176919%_)))
                                       (_%$%$hd176923176936%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt176922176933%_)))
                                       (_%$%$tl176924176939%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt176922176933%_)))
                                       (_%hd176943%_ _%$%$hd176923176936%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl176924176939%_))
                                      (let* ((_%$%$tgt176925176945%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl176924176939%_)))
                                             (_%$%$hd176926176948%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt176925176945%_)))
                                             (_%$%$tl176927176951%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt176925176945%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl176927176951%_))
                                                    '())
                                            (let ((_%clen176955%_
                                                   (_%arity176823%_
                                                    _%hd176943%_))
                                                  (_%cmp176956%_
                                                   (if (_%variadic?176822%_
                                                        _%hd176943%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (list 'if
                                                     (list _%cmp176956%_
                                                           _%len176887%_
                                                           _%clen176955%_)
                                                     (__SRC__%
                                                      (list '##apply
                                                            (__compile-lambda%
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause176915%_))
                    _%args176886%_)
              _%stx176820%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%generate176824%_
                                                      _%rest176917%_
                                                      _%args176886%_
                                                      _%len176887%_))
                                               _%stx176820%_))
                                            (_%$%$E176921176930%_)))
                                      (_%$%$E176921176930%_)))
                                (_%$%$E176921176930%_)))
                          (_%$%$E176891176902%_))))))
          (let* ((_%$e176826%_ _%stx176820%_)
                 (_%$%$E176828176860%_
                  (lambda ()
                    (let ((_%$%$E176829176842%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e176826%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e176826%_))
                          (let* ((_%$%$tgt176830176845%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e176826%_)))
                                 (_%$%$hd176831176848%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt176830176845%_)))
                                 (_%$%$tl176832176851%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt176830176845%_)))
                                 (_%clauses176855%_ _%$%$tl176832176851%_))
                            (let ((_%args176857%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx176820%_))
                                  (_%len176858%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx176820%_)))
                              (__SRC__%
                               (list 'lambda
                                     _%args176857%_
                                     (__SRC__%
                                      (list 'let
                                            (list (list _%len176858%_
                                                        (__SRC__%
                                                         (list '##length
                                                               _%args176857%_)
                                                         _%stx176820%_)))
                                            (_%generate176824%_
                                             _%clauses176855%_
                                             _%args176857%_
                                             _%len176858%_))
                                      _%stx176820%_))
                               _%stx176820%_)))
                          (_%$%$E176829176842%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e176826%_))
                (let* ((_%$%$tgt176833176863%_
                        (let () (declare (not safe)) (__AST-e _%$e176826%_)))
                       (_%$%$hd176834176866%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt176833176863%_)))
                       (_%$%$tl176835176869%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt176833176863%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl176835176869%_))
                      (let* ((_%$%$tgt176836176873%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl176835176869%_)))
                             (_%$%$hd176837176876%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt176836176873%_)))
                             (_%$%$tl176838176879%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt176836176873%_)))
                             (_%clause176883%_ _%$%$hd176837176876%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$tl176838176879%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause176883%_))
                            (_%$%$E176828176860%_)))
                      (_%$%$E176828176860%_)))
                (_%$%$E176828176860%_))))))
    (define __compile-let-form
      (lambda (_%stx176589%_ _%compile-simple176590%_ _%compile-values176591%_)
        (letrec ((_%simple-bind?176593%_
                  (lambda (_%hd176778%_)
                    (let* ((_%$%hd176779176789%_ _%hd176778%_)
                           (_%$%else176782176797%_ (lambda () '#f)))
                      (let ((_%$%K176785176810%_ (lambda (_%id176808%_) '#t))
                            (_%$%K176784176802%_ (lambda () '#t)))
                        (let ((_%$%try-match176781176805%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%$%hd176779176789%_ '#f))
                                     (_%$%K176784176802%_)
                                     (_%$%else176782176797%_)))))
                          (if (pair? _%$%hd176779176789%_)
                              (let ((_%$%tl176787176815%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%hd176779176789%_)))
                                    (_%$%hd176786176813%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%hd176779176789%_))))
                                (if (null? _%$%tl176787176815%_)
                                    (let ((_%id176818%_ _%$%hd176786176813%_))
                                      (_%$%K176785176810%_ _%id176818%_))
                                    (_%$%try-match176781176805%_)))
                              (_%$%try-match176781176805%_)))))))
                 (_%car-e176594%_
                  (lambda (_%hd176776%_)
                    (if (pair? _%hd176776%_)
                        (let () (declare (not safe)) (##car _%hd176776%_))
                        _%hd176776%_))))
          (let* ((_%$e176596%_ _%stx176589%_)
                 (_%$%$E176598176741%_
                  (lambda ()
                    (let ((_%$%$E176599176621%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e176596%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e176596%_))
                          (let* ((_%$%$tgt176600176624%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e176596%_)))
                                 (_%$%$hd176601176627%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt176600176624%_)))
                                 (_%$%$tl176602176630%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt176600176624%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl176602176630%_))
                                (let* ((_%$%$tgt176603176634%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl176602176630%_)))
                                       (_%$%$hd176604176637%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt176603176634%_)))
                                       (_%$%$tl176605176640%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt176603176634%_)))
                                       (_%hd176644%_ _%$%$hd176604176637%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl176605176640%_))
                                      (let* ((_%$%$tgt176606176646%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl176605176640%_)))
                                             (_%$%$hd176607176649%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt176606176646%_)))
                                             (_%$%$tl176608176652%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt176606176646%_)))
                                             (_%body176656%_
                                              _%$%$hd176607176649%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl176608176652%_))
                                                    '())
                                            (let* ((_%hd-ids176696%_
                                                    (map (lambda (_%bind176658%_)
                                                           (let* ((_%$e176660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind176658%_)
                          (_%$%$E176662176671%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e176660%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e176660%_))
                         (let* ((_%$%$tgt176663176674%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e176660%_)))
                                (_%$%$hd176664176677%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt176663176674%_)))
                                (_%$%$tl176665176680%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt176663176674%_)))
                                (_%ids176684%_ _%$%$hd176664176677%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl176665176680%_))
                               (let* ((_%$%$tgt176666176686%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl176665176680%_)))
                                      (_%$%$hd176667176689%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt176666176686%_)))
                                      (_%$%$tl176668176692%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt176666176686%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl176668176692%_))
                                             '())
                                     _%ids176684%_
                                     (_%$%$E176662176671%_)))
                               (_%$%$E176662176671%_)))
                         (_%$%$E176662176671%_))))
                 _%hd176644%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs176736%_
                                                    (map (lambda (_%bind176698%_)
                                                           (let* ((_%$e176700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind176698%_)
                          (_%$%$E176702176711%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e176700%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e176700%_))
                         (let* ((_%$%$tgt176703176714%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e176700%_)))
                                (_%$%$hd176704176717%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt176703176714%_)))
                                (_%$%$tl176705176720%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt176703176714%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl176705176720%_))
                               (let* ((_%$%$tgt176706176724%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl176705176720%_)))
                                      (_%$%$hd176707176727%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt176706176724%_)))
                                      (_%$%$tl176708176730%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt176706176724%_)))
                                      (_%expr176734%_ _%$%$hd176707176727%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl176708176730%_))
                                             '())
                                     (__compile _%expr176734%_)
                                     (_%$%$E176702176711%_)))
                               (_%$%$E176702176711%_)))
                         (_%$%$E176702176711%_))))
                 _%hd176644%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body176738%_
                                                    (__compile
                                                     _%body176656%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?176593%_
                                                     _%hd-ids176696%_))
                                                  (_%compile-simple176590%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e176594%_
                                                            _%hd-ids176696%_))
                                                   _%exprs176736%_
                                                   _%body176738%_)
                                                  (_%compile-values176591%_
                                                   _%hd-ids176696%_
                                                   _%exprs176736%_
                                                   _%body176738%_)))
                                            (_%$%$E176599176621%_)))
                                      (_%$%$E176599176621%_)))
                                (_%$%$E176599176621%_)))
                          (_%$%$E176599176621%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e176596%_))
                (let* ((_%$%$tgt176609176744%_
                        (let () (declare (not safe)) (__AST-e _%$e176596%_)))
                       (_%$%$hd176610176747%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt176609176744%_)))
                       (_%$%$tl176611176750%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt176609176744%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl176611176750%_))
                      (let* ((_%$%$tgt176612176754%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl176611176750%_)))
                             (_%$%$hd176613176757%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt176612176754%_)))
                             (_%$%$tl176614176760%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt176612176754%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$hd176613176757%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl176614176760%_))
                                (let* ((_%$%$tgt176615176764%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl176614176760%_)))
                                       (_%$%$hd176616176767%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt176615176764%_)))
                                       (_%$%$tl176617176770%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt176615176764%_)))
                                       (_%body176774%_ _%$%$hd176616176767%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl176617176770%_))
                                              '())
                                      (__compile _%body176774%_)
                                      (_%$%$E176598176741%_)))
                                (_%$%$E176598176741%_))
                            (_%$%$E176598176741%_)))
                      (_%$%$E176598176741%_)))
                (_%$%$E176598176741%_))))))
    (define __compile-let-values%
      (lambda (_%stx176401%_)
        (letrec ((_%compile-simple176403%_
                  (lambda (_%hd-ids176585%_ _%exprs176586%_ _%body176587%_)
                    (__SRC__%
                     (list 'let
                           (let ((__tmp177780
                                  (map __compile-head-id _%hd-ids176585%_)))
                             (declare (not safe))
                             (##map list __tmp177780 _%exprs176586%_))
                           _%body176587%_)
                     _%stx176401%_)))
                 (_%compile-values176404%_
                  (lambda (_%hd-ids176500%_ _%exprs176501%_ _%body176502%_)
                    (let _%lp176504%_ ((_%rest176506%_ _%hd-ids176500%_)
                                       (_%exprs176507%_ _%exprs176501%_)
                                       (_%bind176508%_ '())
                                       (_%post176509%_ '()))
                      (let* ((_%$%rest176510176524%_ _%rest176506%_)
                             (_%$%else176513176532%_
                              (lambda ()
                                (__SRC__%
                                 (list 'let
                                       (reverse _%bind176508%_)
                                       (_%compile-post176405%_
                                        _%post176509%_
                                        _%body176502%_))
                                 _%stx176401%_))))
                        (let ((_%$%K176518176568%_
                               (lambda (_%rest176565%_ _%id176566%_)
                                 (_%lp176504%_
                                  _%rest176565%_
                                  (cdr _%exprs176507%_)
                                  (cons (list (__compile-head-id _%id176566%_)
                                              (car _%exprs176507%_))
                                        _%bind176508%_)
                                  _%post176509%_)))
                              (_%$%K176515176550%_
                               (lambda (_%rest176536%_ _%hd176537%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd176537%_))
                                     (_%lp176504%_
                                      _%rest176536%_
                                      (cdr _%exprs176507%_)
                                      (cons (list (__compile-head-id
                                                   _%hd176537%_)
                                                  (list 'values->list
                                                        (car _%exprs176507%_)))
                                            _%bind176508%_)
                                      _%post176509%_)
                                     (if (list? _%hd176537%_)
                                         (let* ((_%len176541%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd176537%_)))
                                                (_%tmp176543%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp176504%_
                                            _%rest176536%_
                                            (cdr _%exprs176507%_)
                                            (cons (list _%tmp176543%_
                                                        (car _%exprs176507%_))
                                                  _%bind176508%_)
                                            (cons (cons _%tmp176543%_
                                                        (cons _%len176541%_
                                                              (let ((__tmp177782
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id176546%_ _%k176547%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id176546%_))
                                   (cons (__SRC__0 _%id176546%_) _%k176547%_)
                                   '#f)))
                            (__tmp177781
                             (let ()
                               (declare (not safe))
                               (##iota _%len176541%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp177782 _%hd176537%_ __tmp177781))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post176509%_)))
                                         (__compile-error__%
                                          _%stx176401%_
                                          _%hd176537%_))))))
                          (if (pair? _%$%rest176510176524%_)
                              (let ((_%$%tl176520176573%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest176510176524%_)))
                                    (_%$%hd176519176571%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest176510176524%_))))
                                (if (pair? _%$%hd176519176571%_)
                                    (let ((_%$%tl176522176578%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd176519176571%_)))
                                          (_%$%hd176521176576%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd176519176571%_))))
                                      (if (null? _%$%tl176522176578%_)
                                          (let ((_%id176581%_
                                                 _%$%hd176521176576%_)
                                                (_%rest176583%_
                                                 _%$%tl176520176573%_))
                                            (_%$%K176518176568%_
                                             _%rest176583%_
                                             _%id176581%_))
                                          (let ((_%hd176558%_
                                                 _%$%hd176519176571%_)
                                                (_%rest176560%_
                                                 _%$%tl176520176573%_))
                                            (_%$%K176515176550%_
                                             _%rest176560%_
                                             _%hd176558%_))))
                                    (let ((_%hd176558%_ _%$%hd176519176571%_)
                                          (_%rest176560%_
                                           _%$%tl176520176573%_))
                                      (_%$%K176515176550%_
                                       _%rest176560%_
                                       _%hd176558%_))))
                              (_%$%else176513176532%_)))))))
                 (_%compile-post176405%_
                  (lambda (_%post176407%_ _%body176408%_)
                    (let _%lp176410%_ ((_%rest176412%_ _%post176407%_)
                                       (_%check176413%_ '())
                                       (_%bind176414%_ '()))
                      (let* ((_%$%rest176415176427%_ _%rest176412%_)
                             (_%$%else176417176435%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp177783
                                              (list (__SRC__%
                                                     (list 'let
                                                           _%bind176414%_
                                                           _%body176408%_)
                                                     _%stx176401%_))))
                                         (declare (not safe))
                                         (##append
                                          _%check176413%_
                                          __tmp177783)))
                                 _%stx176401%_)))
                             (_%$%K176419176474%_
                              (lambda (_%rest176438%_
                                       _%init176439%_
                                       _%len176440%_
                                       _%tmp176441%_)
                                (_%lp176410%_
                                 _%rest176438%_
                                 (cons (__SRC__%
                                        (list '__check-values
                                              _%tmp176441%_
                                              _%len176440%_)
                                        _%stx176401%_)
                                       _%check176413%_)
                                 (let ((__tmp177784
                                        (lambda (_%hd176443%_ _%r176444%_)
                                          (let* ((_%$%hd176445176452%_
                                                  _%hd176443%_)
                                                 (_%$%E176447176456%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd176445176452%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K176448176462%_
                                                  (lambda (_%k176459%_
                                                           _%id176460%_)
                                                    (cons (list _%id176460%_
                                                                (list '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tmp176441%_
                              _%k176459%_))
                  _%r176444%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd176445176452%_)
                                                (let ((_%$%hd176449176465%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd176445176452%_)))
                                                      (_%$%tl176450176467%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd176445176452%_))))
                                                  (let* ((_%id176470%_
                                                          _%$%hd176449176465%_)
                                                         (_%k176472%_
                                                          _%$%tl176450176467%_))
                                                    (_%$%K176448176462%_
                                                     _%k176472%_
                                                     _%id176470%_)))
                                                (_%$%E176447176456%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp177784
                                    _%bind176414%_
                                    _%init176439%_))))))
                        (if (pair? _%$%rest176415176427%_)
                            (let ((_%$%hd176420176477%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest176415176427%_)))
                                  (_%$%tl176421176479%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest176415176427%_))))
                              (if (pair? _%$%hd176420176477%_)
                                  (let ((_%$%hd176422176482%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd176420176477%_)))
                                        (_%$%tl176423176484%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd176420176477%_))))
                                    (let ((_%tmp176487%_ _%$%hd176422176482%_))
                                      (if (pair? _%$%tl176423176484%_)
                                          (let ((_%$%hd176424176489%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl176423176484%_)))
                                                (_%$%tl176425176491%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl176423176484%_))))
                                            (let* ((_%len176494%_
                                                    _%$%hd176424176489%_)
                                                   (_%init176496%_
                                                    _%$%tl176425176491%_)
                                                   (_%rest176498%_
                                                    _%$%tl176421176479%_))
                                              (_%$%K176419176474%_
                                               _%rest176498%_
                                               _%init176496%_
                                               _%len176494%_
                                               _%tmp176487%_)))
                                          (_%$%else176417176435%_))))
                                  (_%$%else176417176435%_)))
                            (_%$%else176417176435%_)))))))
          (__compile-let-form
           _%stx176401%_
           _%compile-simple176403%_
           _%compile-values176404%_))))
    (define __compile-letrec-values%
      (lambda (_%stx176198%_)
        (letrec ((_%compile-simple176200%_
                  (lambda (_%hd-ids176397%_ _%exprs176398%_ _%body176399%_)
                    (__SRC__%
                     (list 'letrec
                           (let ((__tmp177785
                                  (map __compile-head-id _%hd-ids176397%_)))
                             (declare (not safe))
                             (##map list __tmp177785 _%exprs176398%_))
                           _%body176399%_)
                     _%stx176198%_)))
                 (_%compile-values176201%_
                  (lambda (_%hd-ids176308%_ _%exprs176309%_ _%body176310%_)
                    (let _%lp176312%_ ((_%rest176314%_ _%hd-ids176308%_)
                                       (_%exprs176315%_ _%exprs176309%_)
                                       (_%pre176316%_ '())
                                       (_%bind176317%_ '())
                                       (_%post176318%_ '()))
                      (let* ((_%$%rest176319176333%_ _%rest176314%_)
                             (_%$%else176322176341%_
                              (lambda ()
                                (_%compile-inner176202%_
                                 _%pre176316%_
                                 _%bind176317%_
                                 _%post176318%_
                                 _%body176310%_))))
                        (let ((_%$%K176327176380%_
                               (lambda (_%rest176377%_ _%id176378%_)
                                 (_%lp176312%_
                                  _%rest176377%_
                                  (cdr _%exprs176315%_)
                                  _%pre176316%_
                                  (cons (list (__compile-head-id _%id176378%_)
                                              (car _%exprs176315%_))
                                        _%bind176317%_)
                                  _%post176318%_)))
                              (_%$%K176324176362%_
                               (lambda (_%rest176345%_ _%hd176346%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd176346%_))
                                     (_%lp176312%_
                                      _%rest176345%_
                                      (cdr _%exprs176315%_)
                                      _%pre176316%_
                                      (cons (list (__compile-head-id
                                                   _%hd176346%_)
                                                  (list 'values->list
                                                        (car _%exprs176315%_)))
                                            _%bind176317%_)
                                      _%post176318%_)
                                     (if (list? _%hd176346%_)
                                         (let* ((_%len176350%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd176346%_)))
                                                (_%tmp176352%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp176312%_
                                            _%rest176345%_
                                            (cdr _%exprs176315%_)
                                            (let ((__tmp177786
                                                   (lambda (_%id176355%_
                                                            _%r176356%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id176355%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id176355%_)
                             '('#!void))
                       _%r176356%_)
                 _%r176356%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp177786
                                               _%pre176316%_
                                               _%hd176346%_))
                                            (cons (list _%tmp176352%_
                                                        (car _%exprs176315%_))
                                                  _%bind176317%_)
                                            (cons (cons _%tmp176352%_
                                                        (cons _%len176350%_
                                                              (let ((__tmp177788
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id176358%_ _%k176359%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id176358%_))
                                   (cons (__SRC__0 _%id176358%_) _%k176359%_)
                                   '#f)))
                            (__tmp177787
                             (let ()
                               (declare (not safe))
                               (##iota _%len176350%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp177788 _%hd176346%_ __tmp177787))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post176318%_)))
                                         (__compile-error__%
                                          _%stx176198%_
                                          _%hd176346%_))))))
                          (if (pair? _%$%rest176319176333%_)
                              (let ((_%$%tl176329176385%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest176319176333%_)))
                                    (_%$%hd176328176383%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest176319176333%_))))
                                (if (pair? _%$%hd176328176383%_)
                                    (let ((_%$%tl176331176390%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd176328176383%_)))
                                          (_%$%hd176330176388%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd176328176383%_))))
                                      (if (null? _%$%tl176331176390%_)
                                          (let ((_%id176393%_
                                                 _%$%hd176330176388%_)
                                                (_%rest176395%_
                                                 _%$%tl176329176385%_))
                                            (_%$%K176327176380%_
                                             _%rest176395%_
                                             _%id176393%_))
                                          (let ((_%hd176370%_
                                                 _%$%hd176328176383%_)
                                                (_%rest176372%_
                                                 _%$%tl176329176385%_))
                                            (_%$%K176324176362%_
                                             _%rest176372%_
                                             _%hd176370%_))))
                                    (let ((_%hd176370%_ _%$%hd176328176383%_)
                                          (_%rest176372%_
                                           _%$%tl176329176385%_))
                                      (_%$%K176324176362%_
                                       _%rest176372%_
                                       _%hd176370%_))))
                              (_%$%else176322176341%_)))))))
                 (_%compile-inner176202%_
                  (lambda (_%pre176303%_
                           _%bind176304%_
                           _%post176305%_
                           _%body176306%_)
                    (if (null? _%pre176303%_)
                        (_%compile-bind176203%_
                         _%bind176304%_
                         _%post176305%_
                         _%body176306%_)
                        (__SRC__%
                         (list 'let
                               (reverse _%pre176303%_)
                               (_%compile-bind176203%_
                                _%bind176304%_
                                _%post176305%_
                                _%body176306%_))
                         _%stx176198%_))))
                 (_%compile-bind176203%_
                  (lambda (_%bind176299%_ _%post176300%_ _%body176301%_)
                    (__SRC__%
                     (list 'letrec
                           (reverse _%bind176299%_)
                           (_%compile-post176204%_
                            _%post176300%_
                            _%body176301%_))
                     _%stx176198%_)))
                 (_%compile-post176204%_
                  (lambda (_%post176206%_ _%body176207%_)
                    (let _%lp176209%_ ((_%rest176211%_ _%post176206%_)
                                       (_%check176212%_ '())
                                       (_%bind176213%_ '()))
                      (let* ((_%$%rest176214176226%_ _%rest176211%_)
                             (_%$%else176216176234%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (append _%check176212%_
                                               _%bind176213%_
                                               (list _%body176207%_)))
                                 _%stx176198%_)))
                             (_%$%K176218176273%_
                              (lambda (_%rest176237%_
                                       _%init176238%_
                                       _%len176239%_
                                       _%tmp176240%_)
                                (_%lp176209%_
                                 _%rest176237%_
                                 (cons (__SRC__%
                                        (list '__check-values
                                              _%tmp176240%_
                                              _%len176239%_)
                                        _%stx176198%_)
                                       _%check176212%_)
                                 (let ((__tmp177789
                                        (lambda (_%hd176242%_ _%r176243%_)
                                          (let* ((_%$%hd176244176251%_
                                                  _%hd176242%_)
                                                 (_%$%E176246176255%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd176244176251%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K176247176261%_
                                                  (lambda (_%k176258%_
                                                           _%id176259%_)
                                                    (cons (list 'set!
                                                                _%id176259%_
                                                                (list '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tmp176240%_
                              _%k176258%_))
                  _%r176243%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd176244176251%_)
                                                (let ((_%$%hd176248176264%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd176244176251%_)))
                                                      (_%$%tl176249176266%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd176244176251%_))))
                                                  (let* ((_%id176269%_
                                                          _%$%hd176248176264%_)
                                                         (_%k176271%_
                                                          _%$%tl176249176266%_))
                                                    (_%$%K176247176261%_
                                                     _%k176271%_
                                                     _%id176269%_)))
                                                (_%$%E176246176255%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp177789
                                    _%bind176213%_
                                    _%init176238%_))))))
                        (if (pair? _%$%rest176214176226%_)
                            (let ((_%$%hd176219176276%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest176214176226%_)))
                                  (_%$%tl176220176278%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest176214176226%_))))
                              (if (pair? _%$%hd176219176276%_)
                                  (let ((_%$%hd176221176281%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd176219176276%_)))
                                        (_%$%tl176222176283%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd176219176276%_))))
                                    (let ((_%tmp176286%_ _%$%hd176221176281%_))
                                      (if (pair? _%$%tl176222176283%_)
                                          (let ((_%$%hd176223176288%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl176222176283%_)))
                                                (_%$%tl176224176290%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl176222176283%_))))
                                            (let* ((_%len176293%_
                                                    _%$%hd176223176288%_)
                                                   (_%init176295%_
                                                    _%$%tl176224176290%_)
                                                   (_%rest176297%_
                                                    _%$%tl176220176278%_))
                                              (_%$%K176218176273%_
                                               _%rest176297%_
                                               _%init176295%_
                                               _%len176293%_
                                               _%tmp176286%_)))
                                          (_%$%else176216176234%_))))
                                  (_%$%else176216176234%_)))
                            (_%$%else176216176234%_)))))))
          (__compile-let-form
           _%stx176198%_
           _%compile-simple176200%_
           _%compile-values176201%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx175949%_)
        (letrec ((_%compile-simple175951%_
                  (lambda (_%hd-ids176194%_ _%exprs176195%_ _%body176196%_)
                    (__SRC__%
                     (list 'letrec*
                           (let ((__tmp177790
                                  (map __compile-head-id _%hd-ids176194%_)))
                             (declare (not safe))
                             (##map list __tmp177790 _%exprs176195%_))
                           _%body176196%_)
                     _%stx175949%_)))
                 (_%compile-values175952%_
                  (lambda (_%hd-ids176101%_ _%exprs176102%_ _%body176103%_)
                    (let _%lp176105%_ ((_%rest176107%_ _%hd-ids176101%_)
                                       (_%exprs176108%_ _%exprs176102%_)
                                       (_%bind176109%_ '())
                                       (_%post176110%_ '()))
                      (let* ((_%$%rest176111176125%_ _%rest176107%_)
                             (_%$%else176114176133%_
                              (lambda ()
                                (_%compile-bind175953%_
                                 _%bind176109%_
                                 _%post176110%_
                                 _%body176103%_))))
                        (let ((_%$%K176119176177%_
                               (lambda (_%rest176172%_ _%hd176173%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd176173%_))
                                     (let ((_%id176175%_
                                            (__SRC__0 _%hd176173%_)))
                                       (_%lp176105%_
                                        _%rest176172%_
                                        (cdr _%exprs176108%_)
                                        (cons (cons _%id176175%_ '('#!void))
                                              _%bind176109%_)
                                        (cons (list _%id176175%_
                                                    (car _%exprs176108%_))
                                              _%post176110%_)))
                                     (_%lp176105%_
                                      _%rest176172%_
                                      (cdr _%exprs176108%_)
                                      _%bind176109%_
                                      (cons (list '#f (car _%exprs176108%_))
                                            _%post176110%_)))))
                              (_%$%K176116176157%_
                               (lambda (_%rest176137%_ _%hd176138%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd176138%_))
                                     (let ((_%id176141%_
                                            (__SRC__0 _%hd176138%_)))
                                       (_%lp176105%_
                                        _%rest176137%_
                                        (cdr _%exprs176108%_)
                                        (cons (cons _%id176141%_ '('#!void))
                                              _%bind176109%_)
                                        (cons (list _%id176141%_
                                                    (list 'values->list
                                                          (car _%exprs176108%_)))
                                              _%post176110%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd176138%_))
                                         (if (list? _%hd176138%_)
                                             (let* ((_%len176145%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd176138%_)))
                                                    (_%tmp176147%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp176105%_
                                                _%rest176137%_
                                                (cdr _%exprs176108%_)
                                                (let ((__tmp177791
                                                       (lambda (_%id176150%_
                                                                _%r176151%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id176150%_))
                     (cons (cons (__SRC__0 _%id176150%_) '('#!void))
                           _%r176151%_)
                     _%r176151%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp177791
                                                   _%bind176109%_
                                                   _%hd176138%_))
                                                (cons (cons _%tmp176147%_
                                                            (cons (car _%exprs176108%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len176145%_
                                (let ((__tmp177793
                                       (lambda (_%id176153%_ _%k176154%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id176153%_))
                                             (cons (__SRC__0 _%id176153%_)
                                                   _%k176154%_)
                                             '#f)))
                                      (__tmp177792
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len176145%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp177793
                                   _%hd176138%_
                                   __tmp177792)))))
              _%post176110%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx175949%_
                                              _%hd176138%_))
                                         (_%lp176105%_
                                          _%rest176137%_
                                          (cdr _%exprs176108%_)
                                          _%bind176109%_
                                          (cons (list '#f
                                                      (car _%exprs176108%_))
                                                _%post176110%_)))))))
                          (if (pair? _%$%rest176111176125%_)
                              (let ((_%$%tl176121176182%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest176111176125%_)))
                                    (_%$%hd176120176180%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest176111176125%_))))
                                (if (pair? _%$%hd176120176180%_)
                                    (let ((_%$%tl176123176187%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd176120176180%_)))
                                          (_%$%hd176122176185%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd176120176180%_))))
                                      (if (null? _%$%tl176123176187%_)
                                          (let ((_%hd176190%_
                                                 _%$%hd176122176185%_)
                                                (_%rest176192%_
                                                 _%$%tl176121176182%_))
                                            (_%$%K176119176177%_
                                             _%rest176192%_
                                             _%hd176190%_))
                                          (let ((_%hd176165%_
                                                 _%$%hd176120176180%_)
                                                (_%rest176167%_
                                                 _%$%tl176121176182%_))
                                            (_%$%K176116176157%_
                                             _%rest176167%_
                                             _%hd176165%_))))
                                    (let ((_%hd176165%_ _%$%hd176120176180%_)
                                          (_%rest176167%_
                                           _%$%tl176121176182%_))
                                      (_%$%K176116176157%_
                                       _%rest176167%_
                                       _%hd176165%_))))
                              (_%$%else176114176133%_)))))))
                 (_%compile-bind175953%_
                  (lambda (_%bind176097%_ _%post176098%_ _%body176099%_)
                    (__SRC__%
                     (list 'let
                           (reverse _%bind176097%_)
                           (_%compile-post175954%_
                            _%post176098%_
                            _%body176099%_))
                     _%stx175949%_)))
                 (_%compile-post175954%_
                  (lambda (_%post175956%_ _%body175957%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp177795
                                  (lambda (_%hd175959%_ _%r175960%_)
                                    (let* ((_%$%hd175961175984%_ _%hd175959%_)
                                           (_%$%E175965175988%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (error '"No clause matching"
                                                       _%$%hd175961175984%_
                                                       '([#f expr])
                                                       '([id expr])
                                                       '([tmp
                                                          expr
                                                          len
                                                          .
                                                          init])))
                                              '#!void)))
                                      (let ((_%$%K175978176082%_
                                             (lambda (_%expr176080%_)
                                               (cons _%expr176080%_
                                                     _%r175960%_)))
                                            (_%$%K175973176060%_
                                             (lambda (_%expr176057%_
                                                      _%id176058%_)
                                               (cons (__SRC__%
                                                      (list 'set!
                                                            _%id176058%_
                                                            _%expr176057%_)
                                                      _%stx175949%_)
                                                     _%r175960%_)))
                                            (_%$%K175966176027%_
                                             (lambda (_%init175992%_
                                                      _%len175993%_
                                                      _%expr175994%_
                                                      _%tmp175995%_)
                                               (cons (__SRC__%
                                                      (cons 'let
                                                            (cons (list (list _%tmp175995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%expr175994%_))
                          (cons (__SRC__%
                                 (list '__check-values
                                       _%tmp175995%_
                                       _%len175993%_)
                                 _%stx175949%_)
                                (map (lambda (_%hd175997%_)
                                       (let* ((_%$%hd175998176005%_
                                               _%hd175997%_)
                                              (_%$%E176000176009%_
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (error '"No clause matching"
                                                          _%$%hd175998176005%_
                                                          '([id . k])))
                                                 '#!void))
                                              (_%$%K176001176015%_
                                               (lambda (_%k176012%_
                                                        _%id176013%_)
                                                 (__SRC__%
                                                  (list 'set!
                                                        _%id176013%_
                                                        (list '##values-ref
                                                              _%tmp175995%_
                                                              _%k176012%_))
                                                  _%stx175949%_))))
                                         (if (pair? _%$%hd175998176005%_)
                                             (let ((_%$%hd176002176018%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%hd175998176005%_)))
                                                   (_%$%tl176003176020%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%hd175998176005%_))))
                                               (let* ((_%id176023%_
                                                       _%$%hd176002176018%_)
                                                      (_%k176025%_
                                                       _%$%tl176003176020%_))
                                                 (_%$%K176001176015%_
                                                  _%k176025%_
                                                  _%id176023%_)))
                                             (_%$%E176000176009%_))))
                                     _%init175992%_))))
              _%stx175949%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r175960%_))))
                                        (let* ((_%__match177655177656%_
                                                (lambda (_%$%hd175967176030%_
                                                         _%$%tl175968176032%_
                                                         _%$%hd175969176037%_
                                                         _%$%tl175970176039%_)
                                                  (let ((_%tmp176035%_
                                                         _%$%hd175967176030%_)
                                                        (_%expr176042%_
                                                         _%$%hd175969176037%_))
                                                    (_%$%E175965175988%_))))
                                               (_%__match177649177650%_
                                                (lambda (_%$%hd175967176030%_
                                                         _%$%tl175968176032%_)
                                                  (let ((_%tmp176035%_
                                                         _%$%hd175967176030%_))
                                                    (_%$%E175965175988%_)))))
                                          (if (pair? _%$%hd175961175984%_)
                                              (let ((_%$%tl175980176087%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%hd175961175984%_)))
                                                    (_%$%hd175979176085%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%hd175961175984%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd175979176085%_
                                                             '#f))
                                                    (if (pair? _%$%tl175980176087%_)
                                                        (let ((_%$%tl175982176092%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl175980176087%_)))
                      (_%$%hd175981176090%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%tl175980176087%_))))
                  (if (null? _%$%tl175982176092%_)
                      (let ((_%expr176095%_ _%$%hd175981176090%_))
                        (_%$%K175978176082%_ _%expr176095%_))
                      (if (pair? _%$%tl175982176092%_)
                          (let ((_%$%tl175972176046%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl175982176092%_)))
                                (_%$%hd175971176044%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl175982176092%_))))
                            (let ((_%tmp176035%_ _%$%hd175979176085%_)
                                  (_%expr176042%_ _%$%hd175981176090%_)
                                  (_%len176049%_ _%$%hd175971176044%_)
                                  (_%init176051%_ _%$%tl175972176046%_))
                              (_%$%K175966176027%_
                               _%init176051%_
                               _%len176049%_
                               _%expr176042%_
                               _%tmp176035%_)))
                          (_%__match177655177656%_
                           _%$%hd175979176085%_
                           _%$%tl175980176087%_
                           _%$%hd175981176090%_
                           _%$%tl175982176092%_))))
                (_%__match177649177650%_
                 _%$%hd175979176085%_
                 _%$%tl175980176087%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (pair? _%$%tl175980176087%_)
                                                        (let ((_%$%tl175977176072%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl175980176087%_)))
                      (_%$%hd175976176070%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%tl175980176087%_))))
                  (if (null? _%$%tl175977176072%_)
                      (let ((_%id176068%_ _%$%hd175979176085%_)
                            (_%expr176075%_ _%$%hd175976176070%_))
                        (_%$%K175973176060%_ _%expr176075%_ _%id176068%_))
                      (if (pair? _%$%tl175977176072%_)
                          (let ((_%$%tl175972176046%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl175977176072%_)))
                                (_%$%hd175971176044%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl175977176072%_))))
                            (let ((_%tmp176035%_ _%$%hd175979176085%_)
                                  (_%expr176042%_ _%$%hd175976176070%_)
                                  (_%len176049%_ _%$%hd175971176044%_)
                                  (_%init176051%_ _%$%tl175972176046%_))
                              (_%$%K175966176027%_
                               _%init176051%_
                               _%len176049%_
                               _%expr176042%_
                               _%tmp176035%_)))
                          (_%__match177655177656%_
                           _%$%hd175979176085%_
                           _%$%tl175980176087%_
                           _%$%hd175976176070%_
                           _%$%tl175977176072%_))))
                (_%__match177649177650%_
                 _%$%hd175979176085%_
                 _%$%tl175980176087%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E175965175988%_)))))))
                                 (__tmp177794 (list _%body175957%_)))
                             (declare (not safe))
                             (foldl__0
                              __tmp177795
                              __tmp177794
                              _%post175956%_)))
                     _%stx175949%_))))
          (__compile-let-form
           _%stx175949%_
           _%compile-simple175951%_
           _%compile-values175952%_))))
    (define __compile-call%
      (lambda (_%stx175909%_)
        (let* ((_%$e175911%_ _%stx175909%_)
               (_%$%$E175913175922%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e175911%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e175911%_))
              (let* ((_%$%$tgt175914175925%_
                      (let () (declare (not safe)) (__AST-e _%$e175911%_)))
                     (_%$%$hd175915175928%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt175914175925%_)))
                     (_%$%$tl175916175931%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt175914175925%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl175916175931%_))
                    (let* ((_%$%$tgt175917175935%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl175916175931%_)))
                           (_%$%$hd175918175938%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt175917175935%_)))
                           (_%$%$tl175919175941%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt175917175935%_)))
                           (_%rator175945%_ _%$%$hd175918175938%_)
                           (_%rands175947%_ _%$%$tl175919175941%_))
                      (__SRC__%
                       (cons (__compile _%rator175945%_)
                             (map __compile _%rands175947%_))
                       _%stx175909%_))
                    (_%$%$E175913175922%_)))
              (_%$%$E175913175922%_)))))
    (define __compile-ref%
      (lambda (_%stx175871%_)
        (let* ((_%$e175873%_ _%stx175871%_)
               (_%$%$E175875175884%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e175873%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e175873%_))
              (let* ((_%$%$tgt175876175887%_
                      (let () (declare (not safe)) (__AST-e _%$e175873%_)))
                     (_%$%$hd175877175890%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt175876175887%_)))
                     (_%$%$tl175878175893%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt175876175887%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl175878175893%_))
                    (let* ((_%$%$tgt175879175897%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl175878175893%_)))
                           (_%$%$hd175880175900%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt175879175897%_)))
                           (_%$%$tl175881175903%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt175879175897%_)))
                           (_%id175907%_ _%$%$hd175880175900%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl175881175903%_))
                                  '())
                          (__SRC__% _%id175907%_ _%stx175871%_)
                          (_%$%$E175875175884%_)))
                    (_%$%$E175875175884%_)))
              (_%$%$E175875175884%_)))))
    (define __compile-setq%
      (lambda (_%stx175818%_)
        (let* ((_%$e175820%_ _%stx175818%_)
               (_%$%$E175822175834%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e175820%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e175820%_))
              (let* ((_%$%$tgt175823175837%_
                      (let () (declare (not safe)) (__AST-e _%$e175820%_)))
                     (_%$%$hd175824175840%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt175823175837%_)))
                     (_%$%$tl175825175843%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt175823175837%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl175825175843%_))
                    (let* ((_%$%$tgt175826175847%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl175825175843%_)))
                           (_%$%$hd175827175850%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt175826175847%_)))
                           (_%$%$tl175828175853%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt175826175847%_)))
                           (_%id175857%_ _%$%$hd175827175850%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl175828175853%_))
                          (let* ((_%$%$tgt175829175859%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl175828175853%_)))
                                 (_%$%$hd175830175862%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt175829175859%_)))
                                 (_%$%$tl175831175865%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt175829175859%_)))
                                 (_%expr175869%_ _%$%$hd175830175862%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl175831175865%_))
                                        '())
                                (__SRC__%
                                 (list 'set!
                                       (__SRC__% _%id175857%_ _%stx175818%_)
                                       (__compile _%expr175869%_))
                                 _%stx175818%_)
                                (_%$%$E175822175834%_)))
                          (_%$%$E175822175834%_)))
                    (_%$%$E175822175834%_)))
              (_%$%$E175822175834%_)))))
    (define __compile-if%
      (lambda (_%stx175750%_)
        (let* ((_%$e175752%_ _%stx175750%_)
               (_%$%$E175754175769%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e175752%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e175752%_))
              (let* ((_%$%$tgt175755175772%_
                      (let () (declare (not safe)) (__AST-e _%$e175752%_)))
                     (_%$%$hd175756175775%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt175755175772%_)))
                     (_%$%$tl175757175778%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt175755175772%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl175757175778%_))
                    (let* ((_%$%$tgt175758175782%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl175757175778%_)))
                           (_%$%$hd175759175785%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt175758175782%_)))
                           (_%$%$tl175760175788%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt175758175782%_)))
                           (_%p175792%_ _%$%$hd175759175785%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl175760175788%_))
                          (let* ((_%$%$tgt175761175794%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl175760175788%_)))
                                 (_%$%$hd175762175797%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt175761175794%_)))
                                 (_%$%$tl175763175800%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt175761175794%_)))
                                 (_%t175804%_ _%$%$hd175762175797%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl175763175800%_))
                                (let* ((_%$%$tgt175764175806%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl175763175800%_)))
                                       (_%$%$hd175765175809%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt175764175806%_)))
                                       (_%$%$tl175766175812%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt175764175806%_)))
                                       (_%f175816%_ _%$%$hd175765175809%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl175766175812%_))
                                              '())
                                      (__SRC__%
                                       (list 'if
                                             (__compile _%p175792%_)
                                             (__compile _%t175804%_)
                                             (__compile _%f175816%_))
                                       _%stx175750%_)
                                      (_%$%$E175754175769%_)))
                                (_%$%$E175754175769%_)))
                          (_%$%$E175754175769%_)))
                    (_%$%$E175754175769%_)))
              (_%$%$E175754175769%_)))))
    (define __compile-quote%
      (lambda (_%stx175712%_)
        (let* ((_%$e175714%_ _%stx175712%_)
               (_%$%$E175716175725%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e175714%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e175714%_))
              (let* ((_%$%$tgt175717175728%_
                      (let () (declare (not safe)) (__AST-e _%$e175714%_)))
                     (_%$%$hd175718175731%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt175717175728%_)))
                     (_%$%$tl175719175734%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt175717175728%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl175719175734%_))
                    (let* ((_%$%$tgt175720175738%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl175719175734%_)))
                           (_%$%$hd175721175741%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt175720175738%_)))
                           (_%$%$tl175722175744%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt175720175738%_)))
                           (_%e175748%_ _%$%$hd175721175741%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl175722175744%_))
                                  '())
                          (__SRC__%
                           (list 'quote
                                 (let ()
                                   (declare (not safe))
                                   (__AST->datum _%e175748%_)))
                           _%stx175712%_)
                          (_%$%$E175716175725%_)))
                    (_%$%$E175716175725%_)))
              (_%$%$E175716175725%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx175674%_)
        (let* ((_%$e175676%_ _%stx175674%_)
               (_%$%$E175678175687%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e175676%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e175676%_))
              (let* ((_%$%$tgt175679175690%_
                      (let () (declare (not safe)) (__AST-e _%$e175676%_)))
                     (_%$%$hd175680175693%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt175679175690%_)))
                     (_%$%$tl175681175696%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt175679175690%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl175681175696%_))
                    (let* ((_%$%$tgt175682175700%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl175681175696%_)))
                           (_%$%$hd175683175703%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt175682175700%_)))
                           (_%$%$tl175684175706%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt175682175700%_)))
                           (_%e175710%_ _%$%$hd175683175703%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl175684175706%_))
                                  '())
                          (__SRC__% (list 'quote _%e175710%_) _%stx175674%_)
                          (_%$%$E175678175687%_)))
                    (_%$%$E175678175687%_)))
              (_%$%$E175678175687%_)))))
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
