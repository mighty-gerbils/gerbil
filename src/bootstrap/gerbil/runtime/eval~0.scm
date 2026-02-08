(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1770513295)
  (begin
    (define __syntax::t
      (let ((__tmp165813 (list)) (__tmp165812 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp165813
         '(e id)
         __tmp165812
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args165617%_
        (apply make-instance __syntax::t _%$args165617%_)))
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
      (let ((__tmp165815 (list __syntax::t))
            (__tmp165814 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp165815
         '()
         __tmp165814
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args165614%_
        (apply make-instance __core-form::t _%$args165614%_)))
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
      (let ((__tmp165817 (list __core-form::t))
            (__tmp165816 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp165817
         '()
         __tmp165816
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args165611%_
        (apply make-instance __core-expression::t _%$args165611%_)))
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
      (let ((__tmp165819 (list __core-form::t))
            (__tmp165818 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp165819
         '()
         __tmp165818
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args165608%_
        (apply make-instance __core-special-form::t _%$args165608%_)))
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
      (lambda (_%id165582%_)
        (let* ((_%h165584%_ __core)
               (_%key165587%_
                (let () (declare (not safe)) (__AST-e _%id165582%_)))
               (_%h165594%_
                (let ((_%$obj165591%_ _%h165584%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165591%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165591%_)))
                           '#t)
                      _%$obj165591%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165591%_)))))
               (_%h165596%_ _%h165594%_))
          (declare (not safe))
          (__hash-get _%h165596%_ _%key165587%_))))
    (define __core-bound-id?__%
      (lambda (_%id165565%_ _%is?165566%_)
        (let ((_%$e165568%_ (__core-resolve _%id165565%_)))
          (if _%$e165568%_ (_%is?165566%_ _%$e165568%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id165575%_)
        (let ((_%is?165577%_ true))
          (__core-bound-id?__% _%id165575%_ _%is?165577%_))))
    (define __core-bound-id?
      (lambda _g165820_
        (let ((_g165821_ (let () (declare (not safe)) (##length _g165820_))))
          (cond ((let () (declare (not safe)) (##fx= _g165821_ 1))
                 (apply __core-bound-id?__0 _g165820_))
                ((let () (declare (not safe)) (##fx= _g165821_ 2))
                 (apply __core-bound-id?__% _g165820_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g165820_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id165520%_ _%e165521%_ _%make165522%_)
        (let* ((_%h165524%_ __core)
               (_%key165527%_ _%id165520%_)
               (_%value165530%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%e165521%_
                       'gerbil/runtime/eval#__syntax::t))
                    _%e165521%_
                    (_%make165522%_ _%e165521%_ _%id165520%_)))
               (_%h165537%_
                (let ((_%$obj165534%_ _%h165524%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj165534%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj165534%_)))
                           '#t)
                      _%$obj165534%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj165534%_)))))
               (_%h165539%_ _%h165537%_))
          (declare (not safe))
          (__hash-put! _%h165539%_ _%key165527%_ _%value165530%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id165555%_ _%e165556%_)
        (let ((_%make165558%_ make-__syntax))
          (__core-bind-syntax!__% _%id165555%_ _%e165556%_ _%make165558%_))))
    (define __core-bind-syntax!
      (lambda _g165822_
        (let ((_g165823_ (let () (declare (not safe)) (##length _g165822_))))
          (cond ((let () (declare (not safe)) (##fx= _g165823_ 2))
                 (apply __core-bind-syntax!__0 _g165822_))
                ((let () (declare (not safe)) (##fx= _g165823_ 3))
                 (apply __core-bind-syntax!__% _g165822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g165822_))))))
    (define __SRC__%
      (lambda (_%e165500%_ _%src-stx165501%_)
        (if (or (pair? _%e165500%_) (symbol? _%e165500%_))
            (let ((__tmp165824
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx165501%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx165501%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e165500%_ __tmp165824))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e165500%_ 'gerbil#AST::t))
                (let ((__tmp165826
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e165500%_ '1 '#f '#f)))
                      (__tmp165825
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e165500%_)))))
                  (declare (not safe))
                  (##make-source __tmp165826 __tmp165825))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e165500%_))))))
    (define __SRC__0
      (lambda (_%e165512%_)
        (let ((_%src-stx165514%_ '#f))
          (__SRC__% _%e165512%_ _%src-stx165514%_))))
    (define __SRC
      (lambda _g165827_
        (let ((_g165828_ (let () (declare (not safe)) (##length _g165827_))))
          (cond ((let () (declare (not safe)) (##fx= _g165828_ 1))
                 (apply __SRC__0 _g165827_))
                ((let () (declare (not safe)) (##fx= _g165828_ 2))
                 (apply __SRC__% _g165827_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g165827_))))))
    (define __locat
      (lambda (_%loc165497%_)
        (if (let () (declare (not safe)) (##locat? _%loc165497%_))
            _%loc165497%_
            '#f)))
    (define __check-values
      (lambda (_%obj165492%_ _%k165493%_)
        (let ((_%count165495%_
               (if (let () (declare (not safe)) (##values? _%obj165492%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj165492%_))
                   '1)))
          (if (fx= _%count165495%_ _%k165493%_)
              '#!void
              (let ((__tmp165830
                     (if (fx< _%count165495%_ _%k165493%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp165829
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj165492%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj165492%_))
                         _%obj165492%_)))
                (declare (not safe))
                (error __tmp165830 __tmp165829 _%k165493%_))))))
    (define __compile
      (lambda (_%stx165461%_)
        (let* ((_%$e165463%_ _%stx165461%_)
               (_%$E165465165471%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165463%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165463%_))
              (let* ((_%$tgt165466165474%_
                      (let () (declare (not safe)) (__AST-e _%$e165463%_)))
                     (_%$hd165467165477%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165466165474%_)))
                     (_%$tl165468165480%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165466165474%_)))
                     (_%form165484%_ _%$hd165467165477%_)
                     (_%$e165486%_ (__core-resolve _%form165484%_)))
                (if _%$e165486%_
                    ((lambda (_%bind165489%_)
                       ((##structure-ref _%bind165489%_ '1 __syntax::t '#f)
                        _%stx165461%_))
                     _%$e165486%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx165461%_
                       _%form165484%_))))
              (_%$E165465165471%_)))))
    (define __compile-error__%
      (lambda (_%stx165448%_ _%detail165449%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx165448%_
           _%detail165449%_))))
    (define __compile-error__0
      (lambda (_%stx165454%_)
        (let ((_%detail165456%_ '#f))
          (__compile-error__% _%stx165454%_ _%detail165456%_))))
    (define __compile-error
      (lambda _g165831_
        (let ((_g165832_ (let () (declare (not safe)) (##length _g165831_))))
          (cond ((let () (declare (not safe)) (##fx= _g165832_ 1))
                 (apply __compile-error__0 _g165831_))
                ((let () (declare (not safe)) (##fx= _g165832_ 2))
                 (apply __compile-error__% _g165831_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g165831_))))))
    (define __compile-ignore%
      (lambda (_%stx165445%_) (__SRC__% ''#!void _%stx165445%_)))
    (define __compile-begin%
      (lambda (_%stx165420%_)
        (let* ((_%$e165422%_ _%stx165420%_)
               (_%$E165424165430%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165422%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165422%_))
              (let* ((_%$tgt165425165433%_
                      (let () (declare (not safe)) (__AST-e _%$e165422%_)))
                     (_%$hd165426165436%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165425165433%_)))
                     (_%$tl165427165439%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165425165433%_)))
                     (_%body165443%_ _%$tl165427165439%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body165443%_))
                 _%stx165420%_))
              (_%$E165424165430%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx165395%_)
        (let* ((_%$e165397%_ _%stx165395%_)
               (_%$E165399165405%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165397%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165397%_))
              (let* ((_%$tgt165400165408%_
                      (let () (declare (not safe)) (__AST-e _%$e165397%_)))
                     (_%$hd165401165411%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165400165408%_)))
                     (_%$tl165402165414%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165400165408%_)))
                     (_%body165418%_ _%$tl165402165414%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body165418%_)))
                 _%stx165395%_))
              (_%$E165399165405%_)))))
    (define __compile-import%
      (lambda (_%stx165370%_)
        (let* ((_%$e165372%_ _%stx165370%_)
               (_%$E165374165380%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165372%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165372%_))
              (let* ((_%$tgt165375165383%_
                      (let () (declare (not safe)) (__AST-e _%$e165372%_)))
                     (_%$hd165376165386%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165375165383%_)))
                     (_%$tl165377165389%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165375165383%_)))
                     (_%body165393%_ _%$tl165377165389%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body165393%_ '())) '()))
                 _%stx165370%_))
              (_%$E165374165380%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx165317%_)
        (let* ((_%$e165319%_ _%stx165317%_)
               (_%$E165321165333%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165319%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165319%_))
              (let* ((_%$tgt165322165336%_
                      (let () (declare (not safe)) (__AST-e _%$e165319%_)))
                     (_%$hd165323165339%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165322165336%_)))
                     (_%$tl165324165342%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165322165336%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl165324165342%_))
                    (let* ((_%$tgt165325165346%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl165324165342%_)))
                           (_%$hd165326165349%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt165325165346%_)))
                           (_%$tl165327165352%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt165325165346%_)))
                           (_%ann165356%_ _%$hd165326165349%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl165327165352%_))
                          (let* ((_%$tgt165328165358%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl165327165352%_)))
                                 (_%$hd165329165361%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt165328165358%_)))
                                 (_%$tl165330165364%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt165328165358%_)))
                                 (_%expr165368%_ _%$hd165329165361%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl165330165364%_))
                                        '())
                                (__compile _%expr165368%_)
                                (_%$E165321165333%_)))
                          (_%$E165321165333%_)))
                    (_%$E165321165333%_)))
              (_%$E165321165333%_)))))
    (define __compile-define-values%
      (lambda (_%stx165208%_)
        (let* ((_%$e165210%_ _%stx165208%_)
               (_%$E165212165224%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165210%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165210%_))
              (let* ((_%$tgt165213165227%_
                      (let () (declare (not safe)) (__AST-e _%$e165210%_)))
                     (_%$hd165214165230%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165213165227%_)))
                     (_%$tl165215165233%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165213165227%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl165215165233%_))
                    (let* ((_%$tgt165216165237%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl165215165233%_)))
                           (_%$hd165217165240%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt165216165237%_)))
                           (_%$tl165218165243%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt165216165237%_)))
                           (_%hd165247%_ _%$hd165217165240%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl165218165243%_))
                          (let* ((_%$tgt165219165249%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl165218165243%_)))
                                 (_%$hd165220165252%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt165219165249%_)))
                                 (_%$tl165221165255%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt165219165249%_)))
                                 (_%expr165259%_ _%$hd165220165252%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl165221165255%_))
                                        '())
                                (let* ((_%$e165261%_ _%hd165247%_)
                                       (_%$E165263165304%_
                                        (lambda ()
                                          (let ((_%$E165264165289%_
                                                 (lambda ()
                                                   (let* ((_%$E165265165276%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e165261%_))))
                  (_%ids165279%_ _%hd165247%_)
                  (_%len165281%_ (length _%ids165279%_))
                  (_%tmp165283%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp165283%_
                                       (cons (__compile _%expr165259%_) '())))
                           _%stx165208%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp165283%_
                                             (cons _%len165281%_ '())))
                                 _%stx165208%_)
                                (let ((__tmp165833
                                       (let ((__tmp165835
                                              (lambda (_%id165286%_
                                                       _%k165287%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id165286%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id165286%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp165283%_
                                           (cons _%k165287%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx165208%_)
                                                    '#f)))
                                             (__tmp165834
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len165281%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp165835
                                          _%ids165279%_
                                          __tmp165834))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp165833)))))
              _%stx165208%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e165261%_))
                                                (let* ((_%$tgt165266165292%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e165261%_)))
                                                       (_%$hd165267165295%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt165266165292%_)))
                                                       (_%$tl165268165298%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt165266165292%_)))
                                                       (_%id165302%_
                                                        _%$hd165267165295%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl165268165298%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id165302%_)
                           (cons (__compile _%expr165259%_) '())))
               _%stx165208%_)
              (_%$E165264165289%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E165264165289%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e165261%_))
                                      (let* ((_%$tgt165269165307%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e165261%_)))
                                             (_%$hd165270165310%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt165269165307%_)))
                                             (_%$tl165271165313%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt165269165307%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd165270165310%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl165271165313%_))
                                                        '())
                                                (__compile _%expr165259%_)
                                                (_%$E165263165304%_))
                                            (_%$E165263165304%_)))
                                      (_%$E165263165304%_)))
                                (_%$E165212165224%_)))
                          (_%$E165212165224%_)))
                    (_%$E165212165224%_)))
              (_%$E165212165224%_)))))
    (define __compile-head-id
      (lambda (_%e165206%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e165206%_))
             _%e165206%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd165163%_)
        (let _%recur165165%_ ((_%rest165167%_ _%hd165163%_))
          (let* ((_%$e165169%_ _%rest165167%_)
                 (_%$E165171165189%_
                  (lambda ()
                    (let ((_%$E165172165186%_
                           (lambda ()
                             (let* ((_%$E165173165181%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e165169%_))))
                                    (_%tail165184%_ _%$e165169%_))
                               (__compile-head-id _%tail165184%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e165169%_))
                                  '())
                          '()
                          (_%$E165172165186%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e165169%_))
                (let* ((_%$tgt165174165192%_
                        (let () (declare (not safe)) (__AST-e _%$e165169%_)))
                       (_%$hd165175165195%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt165174165192%_)))
                       (_%$tl165176165198%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt165174165192%_)))
                       (_%hd165202%_ _%$hd165175165195%_)
                       (_%rest165204%_ _%$tl165176165198%_))
                  (cons (__compile-head-id _%hd165202%_)
                        (_%recur165165%_ _%rest165204%_)))
                (_%$E165171165189%_))))))
    (define __compile-lambda%
      (lambda (_%stx165110%_)
        (let* ((_%$e165112%_ _%stx165110%_)
               (_%$E165114165126%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e165112%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e165112%_))
              (let* ((_%$tgt165115165129%_
                      (let () (declare (not safe)) (__AST-e _%$e165112%_)))
                     (_%$hd165116165132%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt165115165129%_)))
                     (_%$tl165117165135%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt165115165129%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl165117165135%_))
                    (let* ((_%$tgt165118165139%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl165117165135%_)))
                           (_%$hd165119165142%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt165118165139%_)))
                           (_%$tl165120165145%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt165118165139%_)))
                           (_%hd165149%_ _%$hd165119165142%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl165120165145%_))
                          (let* ((_%$tgt165121165151%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl165120165145%_)))
                                 (_%$hd165122165154%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt165121165151%_)))
                                 (_%$tl165123165157%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt165121165151%_)))
                                 (_%body165161%_ _%$hd165122165154%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl165123165157%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd165149%_)
                                             (cons (__compile _%body165161%_)
                                                   '())))
                                 _%stx165110%_)
                                (_%$E165114165126%_)))
                          (_%$E165114165126%_)))
                    (_%$E165114165126%_)))
              (_%$E165114165126%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx164875%_)
        (letrec ((_%variadic?164877%_
                  (lambda (_%hd165075%_)
                    (let* ((_%$e165077%_ _%hd165075%_)
                           (_%$E165079165095%_
                            (lambda ()
                              (let ((_%$E165080165092%_
                                     (lambda ()
                                       (let ((_%$E165081165089%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e165077%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e165077%_))
                                            '())
                                    '#f
                                    (_%$E165080165092%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e165077%_))
                          (let* ((_%$tgt165082165098%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e165077%_)))
                                 (_%$hd165083165101%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt165082165098%_)))
                                 (_%$tl165084165104%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt165082165098%_)))
                                 (_%rest165108%_ _%$tl165084165104%_))
                            (_%variadic?164877%_ _%rest165108%_))
                          (_%$E165079165095%_)))))
                 (_%arity164878%_
                  (lambda (_%hd165013%_)
                    (let _%lp165015%_ ((_%rest165017%_ _%hd165013%_)
                                       (_%k165018%_ '0))
                      (let* ((_%$e165020%_ _%rest165017%_)
                             (_%$E165022165033%_
                              (lambda ()
                                (let ((_%$E165023165030%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e165020%_)))))
                                  _%k165018%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e165020%_))
                            (let* ((_%$tgt165024165036%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e165020%_)))
                                   (_%$hd165025165039%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt165024165036%_)))
                                   (_%$tl165026165042%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt165024165036%_)))
                                   (_%rest165046%_ _%$tl165026165042%_))
                              (_%lp165015%_
                               _%rest165046%_
                               (let ((_%x165048%_ _%k165018%_))
                                 (if (fixnum? _%x165048%_)
                                     (let ((_%x165053%_ _%x165048%_))
                                       (declare (not safe))
                                       (__fx1+ _%x165053%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x165048%_)
                                       '#!void)))))
                            (_%$E165022165033%_))))))
                 (_%generate164879%_
                  (lambda (_%rest164940%_ _%args164941%_ _%len164942%_)
                    (let* ((_%$e164944%_ _%rest164940%_)
                           (_%$E164946164957%_
                            (lambda ()
                              (let ((_%$E164947164954%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e164944%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args164941%_ '())))
                                 _%stx164875%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e164944%_))
                          (let* ((_%$tgt164948164960%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e164944%_)))
                                 (_%$hd164949164963%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt164948164960%_)))
                                 (_%$tl164950164966%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt164948164960%_)))
                                 (_%clause164970%_ _%$hd164949164963%_)
                                 (_%rest164972%_ _%$tl164950164966%_)
                                 (_%$e164974%_ _%clause164970%_)
                                 (_%$E164976164985%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e164974%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e164974%_))
                                (let* ((_%$tgt164977164988%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e164974%_)))
                                       (_%$hd164978164991%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt164977164988%_)))
                                       (_%$tl164979164994%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt164977164988%_)))
                                       (_%hd164998%_ _%$hd164978164991%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl164979164994%_))
                                      (let* ((_%$tgt164980165000%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl164979164994%_)))
                                             (_%$hd164981165003%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt164980165000%_)))
                                             (_%$tl164982165006%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt164980165000%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl164982165006%_))
                                                    '())
                                            (let ((_%clen165010%_
                                                   (_%arity164878%_
                                                    _%hd164998%_))
                                                  (_%cmp165011%_
                                                   (if (_%variadic?164877%_
                                                        _%hd164998%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp165011%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len164942%_ (cons _%clen165010%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause164970%_))
                                      (cons _%args164941%_ '())))
                          _%stx164875%_)
                         (cons (_%generate164879%_
                                _%rest164972%_
                                _%args164941%_
                                _%len164942%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx164875%_))
                                            (_%$E164976164985%_)))
                                      (_%$E164976164985%_)))
                                (_%$E164976164985%_)))
                          (_%$E164946164957%_))))))
          (let* ((_%$e164881%_ _%stx164875%_)
                 (_%$E164883164915%_
                  (lambda ()
                    (let ((_%$E164884164897%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e164881%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e164881%_))
                          (let* ((_%$tgt164885164900%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e164881%_)))
                                 (_%$hd164886164903%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt164885164900%_)))
                                 (_%$tl164887164906%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt164885164900%_)))
                                 (_%clauses164910%_ _%$tl164887164906%_))
                            (let ((_%args164912%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx164875%_))
                                  (_%len164913%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx164875%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args164912%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len164913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args164912%_ '()))
                                         _%stx164875%_)
                                        '()))
                            '())
                      (cons (_%generate164879%_
                             _%clauses164910%_
                             _%args164912%_
                             _%len164913%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx164875%_)
                                                 '())))
                               _%stx164875%_)))
                          (_%$E164884164897%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e164881%_))
                (let* ((_%$tgt164888164918%_
                        (let () (declare (not safe)) (__AST-e _%$e164881%_)))
                       (_%$hd164889164921%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt164888164918%_)))
                       (_%$tl164890164924%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt164888164918%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl164890164924%_))
                      (let* ((_%$tgt164891164928%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl164890164924%_)))
                             (_%$hd164892164931%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt164891164928%_)))
                             (_%$tl164893164934%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt164891164928%_)))
                             (_%clause164938%_ _%$hd164892164931%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl164893164934%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause164938%_))
                            (_%$E164883164915%_)))
                      (_%$E164883164915%_)))
                (_%$E164883164915%_))))))
    (define __compile-let-form
      (lambda (_%stx164644%_ _%compile-simple164645%_ _%compile-values164646%_)
        (letrec ((_%simple-bind?164648%_
                  (lambda (_%hd164833%_)
                    (let* ((_%hd164834164844%_ _%hd164833%_)
                           (_%else164837164852%_ (lambda () '#f)))
                      (let ((_%K164840164865%_ (lambda (_%id164863%_) '#t))
                            (_%K164839164857%_ (lambda () '#t)))
                        (let ((_%try-match164836164860%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd164834164844%_ '#f))
                                     (_%K164839164857%_)
                                     (_%else164837164852%_)))))
                          (if (pair? _%hd164834164844%_)
                              (let ((_%tl164842164870%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd164834164844%_)))
                                    (_%hd164841164868%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd164834164844%_))))
                                (if (null? _%tl164842164870%_)
                                    (let ((_%id164873%_ _%hd164841164868%_))
                                      (_%K164840164865%_ _%id164873%_))
                                    (_%try-match164836164860%_)))
                              (_%try-match164836164860%_)))))))
                 (_%car-e164649%_
                  (lambda (_%hd164831%_)
                    (if (pair? _%hd164831%_)
                        (let () (declare (not safe)) (##car _%hd164831%_))
                        _%hd164831%_))))
          (let* ((_%$e164651%_ _%stx164644%_)
                 (_%$E164653164796%_
                  (lambda ()
                    (let ((_%$E164654164676%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e164651%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e164651%_))
                          (let* ((_%$tgt164655164679%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e164651%_)))
                                 (_%$hd164656164682%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt164655164679%_)))
                                 (_%$tl164657164685%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt164655164679%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl164657164685%_))
                                (let* ((_%$tgt164658164689%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl164657164685%_)))
                                       (_%$hd164659164692%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt164658164689%_)))
                                       (_%$tl164660164695%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt164658164689%_)))
                                       (_%hd164699%_ _%$hd164659164692%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl164660164695%_))
                                      (let* ((_%$tgt164661164701%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl164660164695%_)))
                                             (_%$hd164662164704%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt164661164701%_)))
                                             (_%$tl164663164707%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt164661164701%_)))
                                             (_%body164711%_
                                              _%$hd164662164704%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl164663164707%_))
                                                    '())
                                            (let* ((_%hd-ids164751%_
                                                    (map (lambda (_%bind164713%_)
                                                           (let* ((_%$e164715%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind164713%_)
                          (_%$E164717164726%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e164715%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e164715%_))
                         (let* ((_%$tgt164718164729%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e164715%_)))
                                (_%$hd164719164732%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt164718164729%_)))
                                (_%$tl164720164735%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt164718164729%_)))
                                (_%ids164739%_ _%$hd164719164732%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl164720164735%_))
                               (let* ((_%$tgt164721164741%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl164720164735%_)))
                                      (_%$hd164722164744%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt164721164741%_)))
                                      (_%$tl164723164747%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt164721164741%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl164723164747%_))
                                             '())
                                     _%ids164739%_
                                     (_%$E164717164726%_)))
                               (_%$E164717164726%_)))
                         (_%$E164717164726%_))))
                 _%hd164699%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs164791%_
                                                    (map (lambda (_%bind164753%_)
                                                           (let* ((_%$e164755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind164753%_)
                          (_%$E164757164766%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e164755%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e164755%_))
                         (let* ((_%$tgt164758164769%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e164755%_)))
                                (_%$hd164759164772%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt164758164769%_)))
                                (_%$tl164760164775%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt164758164769%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl164760164775%_))
                               (let* ((_%$tgt164761164779%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl164760164775%_)))
                                      (_%$hd164762164782%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt164761164779%_)))
                                      (_%$tl164763164785%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt164761164779%_)))
                                      (_%expr164789%_ _%$hd164762164782%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl164763164785%_))
                                             '())
                                     (__compile _%expr164789%_)
                                     (_%$E164757164766%_)))
                               (_%$E164757164766%_)))
                         (_%$E164757164766%_))))
                 _%hd164699%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body164793%_
                                                    (__compile
                                                     _%body164711%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?164648%_
                                                     _%hd-ids164751%_))
                                                  (_%compile-simple164645%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e164649%_
                                                            _%hd-ids164751%_))
                                                   _%exprs164791%_
                                                   _%body164793%_)
                                                  (_%compile-values164646%_
                                                   _%hd-ids164751%_
                                                   _%exprs164791%_
                                                   _%body164793%_)))
                                            (_%$E164654164676%_)))
                                      (_%$E164654164676%_)))
                                (_%$E164654164676%_)))
                          (_%$E164654164676%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e164651%_))
                (let* ((_%$tgt164664164799%_
                        (let () (declare (not safe)) (__AST-e _%$e164651%_)))
                       (_%$hd164665164802%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt164664164799%_)))
                       (_%$tl164666164805%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt164664164799%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl164666164805%_))
                      (let* ((_%$tgt164667164809%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl164666164805%_)))
                             (_%$hd164668164812%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt164667164809%_)))
                             (_%$tl164669164815%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt164667164809%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd164668164812%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl164669164815%_))
                                (let* ((_%$tgt164670164819%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl164669164815%_)))
                                       (_%$hd164671164822%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt164670164819%_)))
                                       (_%$tl164672164825%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt164670164819%_)))
                                       (_%body164829%_ _%$hd164671164822%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl164672164825%_))
                                              '())
                                      (__compile _%body164829%_)
                                      (_%$E164653164796%_)))
                                (_%$E164653164796%_))
                            (_%$E164653164796%_)))
                      (_%$E164653164796%_)))
                (_%$E164653164796%_))))))
    (define __compile-let-values%
      (lambda (_%stx164456%_)
        (letrec ((_%compile-simple164458%_
                  (lambda (_%hd-ids164640%_ _%exprs164641%_ _%body164642%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp165836
                                        (map __compile-head-id
                                             _%hd-ids164640%_)))
                                   (declare (not safe))
                                   (##map list __tmp165836 _%exprs164641%_))
                                 (cons _%body164642%_ '())))
                     _%stx164456%_)))
                 (_%compile-values164459%_
                  (lambda (_%hd-ids164555%_ _%exprs164556%_ _%body164557%_)
                    (let _%lp164559%_ ((_%rest164561%_ _%hd-ids164555%_)
                                       (_%exprs164562%_ _%exprs164556%_)
                                       (_%bind164563%_ '())
                                       (_%post164564%_ '()))
                      (let* ((_%rest164565164579%_ _%rest164561%_)
                             (_%else164568164587%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind164563%_)
                                             (cons (_%compile-post164460%_
                                                    _%post164564%_
                                                    _%body164557%_)
                                                   '())))
                                 _%stx164456%_))))
                        (let ((_%K164573164623%_
                               (lambda (_%rest164620%_ _%id164621%_)
                                 (_%lp164559%_
                                  _%rest164620%_
                                  (cdr _%exprs164562%_)
                                  (cons (cons (__compile-head-id _%id164621%_)
                                              (cons (car _%exprs164562%_) '()))
                                        _%bind164563%_)
                                  _%post164564%_)))
                              (_%K164570164605%_
                               (lambda (_%rest164591%_ _%hd164592%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd164592%_))
                                     (_%lp164559%_
                                      _%rest164591%_
                                      (cdr _%exprs164562%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd164592%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs164562%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind164563%_)
                                      _%post164564%_)
                                     (if (list? _%hd164592%_)
                                         (let* ((_%len164596%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd164592%_)))
                                                (_%tmp164598%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp164559%_
                                            _%rest164591%_
                                            (cdr _%exprs164562%_)
                                            (cons (cons _%tmp164598%_
                                                        (cons (car _%exprs164562%_)
                                                              '()))
                                                  _%bind164563%_)
                                            (cons (cons _%tmp164598%_
                                                        (cons _%len164596%_
                                                              (let ((__tmp165838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id164601%_ _%k164602%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id164601%_))
                                   (cons (__SRC__0 _%id164601%_) _%k164602%_)
                                   '#f)))
                            (__tmp165837
                             (let ()
                               (declare (not safe))
                               (##iota _%len164596%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp165838 _%hd164592%_ __tmp165837))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post164564%_)))
                                         (__compile-error__%
                                          _%stx164456%_
                                          _%hd164592%_))))))
                          (if (pair? _%rest164565164579%_)
                              (let ((_%tl164575164628%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest164565164579%_)))
                                    (_%hd164574164626%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest164565164579%_))))
                                (if (pair? _%hd164574164626%_)
                                    (let ((_%tl164577164633%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd164574164626%_)))
                                          (_%hd164576164631%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd164574164626%_))))
                                      (if (null? _%tl164577164633%_)
                                          (let ((_%id164636%_
                                                 _%hd164576164631%_)
                                                (_%rest164638%_
                                                 _%tl164575164628%_))
                                            (_%K164573164623%_
                                             _%rest164638%_
                                             _%id164636%_))
                                          (let ((_%hd164613%_
                                                 _%hd164574164626%_)
                                                (_%rest164615%_
                                                 _%tl164575164628%_))
                                            (_%K164570164605%_
                                             _%rest164615%_
                                             _%hd164613%_))))
                                    (let ((_%hd164613%_ _%hd164574164626%_)
                                          (_%rest164615%_ _%tl164575164628%_))
                                      (_%K164570164605%_
                                       _%rest164615%_
                                       _%hd164613%_))))
                              (_%else164568164587%_)))))))
                 (_%compile-post164460%_
                  (lambda (_%post164462%_ _%body164463%_)
                    (let _%lp164465%_ ((_%rest164467%_ _%post164462%_)
                                       (_%check164468%_ '())
                                       (_%bind164469%_ '()))
                      (let* ((_%rest164470164482%_ _%rest164467%_)
                             (_%else164472164490%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp165839
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind164469%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body164463%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx164456%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp165839
                                          _%check164468%_)))
                                 _%stx164456%_)))
                             (_%K164474164529%_
                              (lambda (_%rest164493%_
                                       _%init164494%_
                                       _%len164495%_
                                       _%tmp164496%_)
                                (_%lp164465%_
                                 _%rest164493%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp164496%_
                                                    (cons _%len164495%_ '())))
                                        _%stx164456%_)
                                       _%check164468%_)
                                 (let ((__tmp165840
                                        (lambda (_%hd164498%_ _%r164499%_)
                                          (let* ((_%hd164500164507%_
                                                  _%hd164498%_)
                                                 (_%E164502164511%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd164500164507%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K164503164517%_
                                                  (lambda (_%k164514%_
                                                           _%id164515%_)
                                                    (cons (cons _%id164515%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp164496%_
                                          (cons _%k164514%_ '())))
                              '()))
                  _%r164499%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd164500164507%_)
                                                (let ((_%hd164504164520%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd164500164507%_)))
                                                      (_%tl164505164522%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd164500164507%_))))
                                                  (let* ((_%id164525%_
                                                          _%hd164504164520%_)
                                                         (_%k164527%_
                                                          _%tl164505164522%_))
                                                    (_%K164503164517%_
                                                     _%k164527%_
                                                     _%id164525%_)))
                                                (_%E164502164511%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp165840
                                    _%bind164469%_
                                    _%init164494%_))))))
                        (if (pair? _%rest164470164482%_)
                            (let ((_%hd164475164532%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest164470164482%_)))
                                  (_%tl164476164534%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest164470164482%_))))
                              (if (pair? _%hd164475164532%_)
                                  (let ((_%hd164477164537%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd164475164532%_)))
                                        (_%tl164478164539%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd164475164532%_))))
                                    (let ((_%tmp164542%_ _%hd164477164537%_))
                                      (if (pair? _%tl164478164539%_)
                                          (let ((_%hd164479164544%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl164478164539%_)))
                                                (_%tl164480164546%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl164478164539%_))))
                                            (let* ((_%len164549%_
                                                    _%hd164479164544%_)
                                                   (_%init164551%_
                                                    _%tl164480164546%_)
                                                   (_%rest164553%_
                                                    _%tl164476164534%_))
                                              (_%K164474164529%_
                                               _%rest164553%_
                                               _%init164551%_
                                               _%len164549%_
                                               _%tmp164542%_)))
                                          (_%else164472164490%_))))
                                  (_%else164472164490%_)))
                            (_%else164472164490%_)))))))
          (__compile-let-form
           _%stx164456%_
           _%compile-simple164458%_
           _%compile-values164459%_))))
    (define __compile-letrec-values%
      (lambda (_%stx164253%_)
        (letrec ((_%compile-simple164255%_
                  (lambda (_%hd-ids164452%_ _%exprs164453%_ _%body164454%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp165841
                                        (map __compile-head-id
                                             _%hd-ids164452%_)))
                                   (declare (not safe))
                                   (##map list __tmp165841 _%exprs164453%_))
                                 (cons _%body164454%_ '())))
                     _%stx164253%_)))
                 (_%compile-values164256%_
                  (lambda (_%hd-ids164363%_ _%exprs164364%_ _%body164365%_)
                    (let _%lp164367%_ ((_%rest164369%_ _%hd-ids164363%_)
                                       (_%exprs164370%_ _%exprs164364%_)
                                       (_%pre164371%_ '())
                                       (_%bind164372%_ '())
                                       (_%post164373%_ '()))
                      (let* ((_%rest164374164388%_ _%rest164369%_)
                             (_%else164377164396%_
                              (lambda ()
                                (_%compile-inner164257%_
                                 _%pre164371%_
                                 _%bind164372%_
                                 _%post164373%_
                                 _%body164365%_))))
                        (let ((_%K164382164435%_
                               (lambda (_%rest164432%_ _%id164433%_)
                                 (_%lp164367%_
                                  _%rest164432%_
                                  (cdr _%exprs164370%_)
                                  _%pre164371%_
                                  (cons (cons (__compile-head-id _%id164433%_)
                                              (cons (car _%exprs164370%_) '()))
                                        _%bind164372%_)
                                  _%post164373%_)))
                              (_%K164379164417%_
                               (lambda (_%rest164400%_ _%hd164401%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd164401%_))
                                     (_%lp164367%_
                                      _%rest164400%_
                                      (cdr _%exprs164370%_)
                                      _%pre164371%_
                                      (cons (cons (__compile-head-id
                                                   _%hd164401%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs164370%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind164372%_)
                                      _%post164373%_)
                                     (if (list? _%hd164401%_)
                                         (let* ((_%len164405%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd164401%_)))
                                                (_%tmp164407%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp164367%_
                                            _%rest164400%_
                                            (cdr _%exprs164370%_)
                                            (let ((__tmp165842
                                                   (lambda (_%id164410%_
                                                            _%r164411%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id164410%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id164410%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r164411%_)
                 _%r164411%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp165842
                                               _%pre164371%_
                                               _%hd164401%_))
                                            (cons (cons _%tmp164407%_
                                                        (cons (car _%exprs164370%_)
                                                              '()))
                                                  _%bind164372%_)
                                            (cons (cons _%tmp164407%_
                                                        (cons _%len164405%_
                                                              (let ((__tmp165844
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id164413%_ _%k164414%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id164413%_))
                                   (cons (__SRC__0 _%id164413%_) _%k164414%_)
                                   '#f)))
                            (__tmp165843
                             (let ()
                               (declare (not safe))
                               (##iota _%len164405%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp165844 _%hd164401%_ __tmp165843))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post164373%_)))
                                         (__compile-error__%
                                          _%stx164253%_
                                          _%hd164401%_))))))
                          (if (pair? _%rest164374164388%_)
                              (let ((_%tl164384164440%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest164374164388%_)))
                                    (_%hd164383164438%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest164374164388%_))))
                                (if (pair? _%hd164383164438%_)
                                    (let ((_%tl164386164445%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd164383164438%_)))
                                          (_%hd164385164443%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd164383164438%_))))
                                      (if (null? _%tl164386164445%_)
                                          (let ((_%id164448%_
                                                 _%hd164385164443%_)
                                                (_%rest164450%_
                                                 _%tl164384164440%_))
                                            (_%K164382164435%_
                                             _%rest164450%_
                                             _%id164448%_))
                                          (let ((_%hd164425%_
                                                 _%hd164383164438%_)
                                                (_%rest164427%_
                                                 _%tl164384164440%_))
                                            (_%K164379164417%_
                                             _%rest164427%_
                                             _%hd164425%_))))
                                    (let ((_%hd164425%_ _%hd164383164438%_)
                                          (_%rest164427%_ _%tl164384164440%_))
                                      (_%K164379164417%_
                                       _%rest164427%_
                                       _%hd164425%_))))
                              (_%else164377164396%_)))))))
                 (_%compile-inner164257%_
                  (lambda (_%pre164358%_
                           _%bind164359%_
                           _%post164360%_
                           _%body164361%_)
                    (if (null? _%pre164358%_)
                        (_%compile-bind164258%_
                         _%bind164359%_
                         _%post164360%_
                         _%body164361%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre164358%_)
                                     (cons (_%compile-bind164258%_
                                            _%bind164359%_
                                            _%post164360%_
                                            _%body164361%_)
                                           '())))
                         _%stx164253%_))))
                 (_%compile-bind164258%_
                  (lambda (_%bind164354%_ _%post164355%_ _%body164356%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind164354%_)
                                 (cons (_%compile-post164259%_
                                        _%post164355%_
                                        _%body164356%_)
                                       '())))
                     _%stx164253%_)))
                 (_%compile-post164259%_
                  (lambda (_%post164261%_ _%body164262%_)
                    (let _%lp164264%_ ((_%rest164266%_ _%post164261%_)
                                       (_%check164267%_ '())
                                       (_%bind164268%_ '()))
                      (let* ((_%rest164269164281%_ _%rest164266%_)
                             (_%else164271164289%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp165845
                                              (let ((__tmp165846
                                                     (cons _%body164262%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp165846
                                                 _%bind164268%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp165845
                                          _%check164267%_)))
                                 _%stx164253%_)))
                             (_%K164273164328%_
                              (lambda (_%rest164292%_
                                       _%init164293%_
                                       _%len164294%_
                                       _%tmp164295%_)
                                (_%lp164264%_
                                 _%rest164292%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp164295%_
                                                    (cons _%len164294%_ '())))
                                        _%stx164253%_)
                                       _%check164267%_)
                                 (let ((__tmp165847
                                        (lambda (_%hd164297%_ _%r164298%_)
                                          (let* ((_%hd164299164306%_
                                                  _%hd164297%_)
                                                 (_%E164301164310%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd164299164306%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K164302164316%_
                                                  (lambda (_%k164313%_
                                                           _%id164314%_)
                                                    (cons (cons 'set!
                                                                (cons _%id164314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp164295%_
                                                (cons _%k164313%_ '())))
                                    '())))
                  _%r164298%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd164299164306%_)
                                                (let ((_%hd164303164319%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd164299164306%_)))
                                                      (_%tl164304164321%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd164299164306%_))))
                                                  (let* ((_%id164324%_
                                                          _%hd164303164319%_)
                                                         (_%k164326%_
                                                          _%tl164304164321%_))
                                                    (_%K164302164316%_
                                                     _%k164326%_
                                                     _%id164324%_)))
                                                (_%E164301164310%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp165847
                                    _%bind164268%_
                                    _%init164293%_))))))
                        (if (pair? _%rest164269164281%_)
                            (let ((_%hd164274164331%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest164269164281%_)))
                                  (_%tl164275164333%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest164269164281%_))))
                              (if (pair? _%hd164274164331%_)
                                  (let ((_%hd164276164336%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd164274164331%_)))
                                        (_%tl164277164338%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd164274164331%_))))
                                    (let ((_%tmp164341%_ _%hd164276164336%_))
                                      (if (pair? _%tl164277164338%_)
                                          (let ((_%hd164278164343%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl164277164338%_)))
                                                (_%tl164279164345%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl164277164338%_))))
                                            (let* ((_%len164348%_
                                                    _%hd164278164343%_)
                                                   (_%init164350%_
                                                    _%tl164279164345%_)
                                                   (_%rest164352%_
                                                    _%tl164275164333%_))
                                              (_%K164273164328%_
                                               _%rest164352%_
                                               _%init164350%_
                                               _%len164348%_
                                               _%tmp164341%_)))
                                          (_%else164271164289%_))))
                                  (_%else164271164289%_)))
                            (_%else164271164289%_)))))))
          (__compile-let-form
           _%stx164253%_
           _%compile-simple164255%_
           _%compile-values164256%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx164004%_)
        (letrec ((_%compile-simple164006%_
                  (lambda (_%hd-ids164249%_ _%exprs164250%_ _%body164251%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp165848
                                        (map __compile-head-id
                                             _%hd-ids164249%_)))
                                   (declare (not safe))
                                   (##map list __tmp165848 _%exprs164250%_))
                                 (cons _%body164251%_ '())))
                     _%stx164004%_)))
                 (_%compile-values164007%_
                  (lambda (_%hd-ids164156%_ _%exprs164157%_ _%body164158%_)
                    (let _%lp164160%_ ((_%rest164162%_ _%hd-ids164156%_)
                                       (_%exprs164163%_ _%exprs164157%_)
                                       (_%bind164164%_ '())
                                       (_%post164165%_ '()))
                      (let* ((_%rest164166164180%_ _%rest164162%_)
                             (_%else164169164188%_
                              (lambda ()
                                (_%compile-bind164008%_
                                 _%bind164164%_
                                 _%post164165%_
                                 _%body164158%_))))
                        (let ((_%K164174164232%_
                               (lambda (_%rest164227%_ _%hd164228%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd164228%_))
                                     (let ((_%id164230%_
                                            (__SRC__0 _%hd164228%_)))
                                       (_%lp164160%_
                                        _%rest164227%_
                                        (cdr _%exprs164163%_)
                                        (cons (cons _%id164230%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind164164%_)
                                        (cons (cons _%id164230%_
                                                    (cons (car _%exprs164163%_)
                                                          '()))
                                              _%post164165%_)))
                                     (_%lp164160%_
                                      _%rest164227%_
                                      (cdr _%exprs164163%_)
                                      _%bind164164%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs164163%_)
                                                        '()))
                                            _%post164165%_)))))
                              (_%K164171164212%_
                               (lambda (_%rest164192%_ _%hd164193%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd164193%_))
                                     (let ((_%id164196%_
                                            (__SRC__0 _%hd164193%_)))
                                       (_%lp164160%_
                                        _%rest164192%_
                                        (cdr _%exprs164163%_)
                                        (cons (cons _%id164196%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind164164%_)
                                        (cons (cons _%id164196%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs164163%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post164165%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd164193%_))
                                         (if (list? _%hd164193%_)
                                             (let* ((_%len164200%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd164193%_)))
                                                    (_%tmp164202%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp164160%_
                                                _%rest164192%_
                                                (cdr _%exprs164163%_)
                                                (let ((__tmp165849
                                                       (lambda (_%id164205%_
                                                                _%r164206%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id164205%_))
                     (cons (cons (__SRC__0 _%id164205%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r164206%_)
                     _%r164206%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp165849
                                                   _%bind164164%_
                                                   _%hd164193%_))
                                                (cons (cons _%tmp164202%_
                                                            (cons (car _%exprs164163%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len164200%_
                                (let ((__tmp165851
                                       (lambda (_%id164208%_ _%k164209%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id164208%_))
                                             (cons (__SRC__0 _%id164208%_)
                                                   _%k164209%_)
                                             '#f)))
                                      (__tmp165850
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len164200%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp165851
                                   _%hd164193%_
                                   __tmp165850)))))
              _%post164165%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx164004%_
                                              _%hd164193%_))
                                         (_%lp164160%_
                                          _%rest164192%_
                                          (cdr _%exprs164163%_)
                                          _%bind164164%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs164163%_)
                                                            '()))
                                                _%post164165%_)))))))
                          (if (pair? _%rest164166164180%_)
                              (let ((_%tl164176164237%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest164166164180%_)))
                                    (_%hd164175164235%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest164166164180%_))))
                                (if (pair? _%hd164175164235%_)
                                    (let ((_%tl164178164242%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd164175164235%_)))
                                          (_%hd164177164240%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd164175164235%_))))
                                      (if (null? _%tl164178164242%_)
                                          (let ((_%hd164245%_
                                                 _%hd164177164240%_)
                                                (_%rest164247%_
                                                 _%tl164176164237%_))
                                            (_%K164174164232%_
                                             _%rest164247%_
                                             _%hd164245%_))
                                          (let ((_%hd164220%_
                                                 _%hd164175164235%_)
                                                (_%rest164222%_
                                                 _%tl164176164237%_))
                                            (_%K164171164212%_
                                             _%rest164222%_
                                             _%hd164220%_))))
                                    (let ((_%hd164220%_ _%hd164175164235%_)
                                          (_%rest164222%_ _%tl164176164237%_))
                                      (_%K164171164212%_
                                       _%rest164222%_
                                       _%hd164220%_))))
                              (_%else164169164188%_)))))))
                 (_%compile-bind164008%_
                  (lambda (_%bind164152%_ _%post164153%_ _%body164154%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind164152%_)
                                 (cons (_%compile-post164009%_
                                        _%post164153%_
                                        _%body164154%_)
                                       '())))
                     _%stx164004%_)))
                 (_%compile-post164009%_
                  (lambda (_%post164011%_ _%body164012%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp165852
                                  (let ((__tmp165854
                                         (lambda (_%hd164014%_ _%r164015%_)
                                           (let* ((_%hd164016164039%_
                                                   _%hd164014%_)
                                                  (_%E164020164043%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd164016164039%_
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
                                             (let ((_%K164033164137%_
                                                    (lambda (_%expr164135%_)
                                                      (cons _%expr164135%_
                                                            _%r164015%_)))
                                                   (_%K164028164115%_
                                                    (lambda (_%expr164112%_
                                                             _%id164113%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id164113%_ (cons _%expr164112%_ '())))
                     _%stx164004%_)
                    _%r164015%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K164021164082%_
                                                    (lambda (_%init164047%_
                                                             _%len164048%_
                                                             _%expr164049%_
                                                             _%tmp164050%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp164050%_
                                             (cons _%expr164049%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp164050%_
                                                    (cons _%len164048%_ '())))
                                        _%stx164004%_)
                                       (let ((__tmp165855
                                              (map (lambda (_%hd164052%_)
                                                     (let* ((_%hd164053164060%_
                                                             _%hd164052%_)
                                                            (_%E164055164064%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd164053164060%_
                                '([id . k])))
                       '#!void))
                    (_%K164056164070%_
                     (lambda (_%k164067%_ _%id164068%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id164068%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp164050%_
                                                      (cons _%k164067%_ '())))
                                          '())))
                        _%stx164004%_))))
               (if (pair? _%hd164053164060%_)
                   (let ((_%hd164057164073%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd164053164060%_)))
                         (_%tl164058164075%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd164053164060%_))))
                     (let* ((_%id164078%_ _%hd164057164073%_)
                            (_%k164080%_ _%tl164058164075%_))
                       (_%K164056164070%_ _%k164080%_ _%id164078%_)))
                   (_%E164055164064%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init164047%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp165855)))))
                     _%stx164004%_)
                    _%r164015%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match165710165711%_
                                                       (lambda (_%hd164022164085%_
                                                                _%tl164023164087%_
                                                                _%hd164024164092%_
                                                                _%tl164025164094%_)
                                                         (let ((_%tmp164090%_
                                                                _%hd164022164085%_)
                                                               (_%expr164097%_
                                                                _%hd164024164092%_))
                                                           (_%E164020164043%_))))
                                                      (_%__match165704165705%_
                                                       (lambda (_%hd164022164085%_
                                                                _%tl164023164087%_)
                                                         (let ((_%tmp164090%_
                                                                _%hd164022164085%_))
                                                           (_%E164020164043%_)))))
                                                 (if (pair? _%hd164016164039%_)
                                                     (let ((_%tl164035164142%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd164016164039%_)))
                                                           (_%hd164034164140%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd164016164039%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd164034164140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl164035164142%_)
                       (let ((_%tl164037164147%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl164035164142%_)))
                             (_%hd164036164145%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl164035164142%_))))
                         (if (null? _%tl164037164147%_)
                             (let ((_%expr164150%_ _%hd164036164145%_))
                               (_%K164033164137%_ _%expr164150%_))
                             (if (pair? _%tl164037164147%_)
                                 (let ((_%tl164027164101%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl164037164147%_)))
                                       (_%hd164026164099%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl164037164147%_))))
                                   (let ((_%tmp164090%_ _%hd164034164140%_)
                                         (_%expr164097%_ _%hd164036164145%_)
                                         (_%len164104%_ _%hd164026164099%_)
                                         (_%init164106%_ _%tl164027164101%_))
                                     (_%K164021164082%_
                                      _%init164106%_
                                      _%len164104%_
                                      _%expr164097%_
                                      _%tmp164090%_)))
                                 (_%__match165710165711%_
                                  _%hd164034164140%_
                                  _%tl164035164142%_
                                  _%hd164036164145%_
                                  _%tl164037164147%_))))
                       (_%__match165704165705%_
                        _%hd164034164140%_
                        _%tl164035164142%_))
                   (if (pair? _%tl164035164142%_)
                       (let ((_%tl164032164127%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl164035164142%_)))
                             (_%hd164031164125%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl164035164142%_))))
                         (if (null? _%tl164032164127%_)
                             (let ((_%id164123%_ _%hd164034164140%_)
                                   (_%expr164130%_ _%hd164031164125%_))
                               (_%K164028164115%_ _%expr164130%_ _%id164123%_))
                             (if (pair? _%tl164032164127%_)
                                 (let ((_%tl164027164101%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl164032164127%_)))
                                       (_%hd164026164099%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl164032164127%_))))
                                   (let ((_%tmp164090%_ _%hd164034164140%_)
                                         (_%expr164097%_ _%hd164031164125%_)
                                         (_%len164104%_ _%hd164026164099%_)
                                         (_%init164106%_ _%tl164027164101%_))
                                     (_%K164021164082%_
                                      _%init164106%_
                                      _%len164104%_
                                      _%expr164097%_
                                      _%tmp164090%_)))
                                 (_%__match165710165711%_
                                  _%hd164034164140%_
                                  _%tl164035164142%_
                                  _%hd164031164125%_
                                  _%tl164032164127%_))))
                       (_%__match165704165705%_
                        _%hd164034164140%_
                        _%tl164035164142%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E164020164043%_)))))))
                                        (__tmp165853 (list _%body164012%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp165854
                                     __tmp165853
                                     _%post164011%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp165852)))
                     _%stx164004%_))))
          (__compile-let-form
           _%stx164004%_
           _%compile-simple164006%_
           _%compile-values164007%_))))
    (define __compile-call%
      (lambda (_%stx163964%_)
        (let* ((_%$e163966%_ _%stx163964%_)
               (_%$E163968163977%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e163966%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e163966%_))
              (let* ((_%$tgt163969163980%_
                      (let () (declare (not safe)) (__AST-e _%$e163966%_)))
                     (_%$hd163970163983%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt163969163980%_)))
                     (_%$tl163971163986%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt163969163980%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl163971163986%_))
                    (let* ((_%$tgt163972163990%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl163971163986%_)))
                           (_%$hd163973163993%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt163972163990%_)))
                           (_%$tl163974163996%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt163972163990%_)))
                           (_%rator164000%_ _%$hd163973163993%_)
                           (_%rands164002%_ _%$tl163974163996%_))
                      (__SRC__%
                       (cons (__compile _%rator164000%_)
                             (map __compile _%rands164002%_))
                       _%stx163964%_))
                    (_%$E163968163977%_)))
              (_%$E163968163977%_)))))
    (define __compile-ref%
      (lambda (_%stx163926%_)
        (let* ((_%$e163928%_ _%stx163926%_)
               (_%$E163930163939%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e163928%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e163928%_))
              (let* ((_%$tgt163931163942%_
                      (let () (declare (not safe)) (__AST-e _%$e163928%_)))
                     (_%$hd163932163945%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt163931163942%_)))
                     (_%$tl163933163948%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt163931163942%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl163933163948%_))
                    (let* ((_%$tgt163934163952%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl163933163948%_)))
                           (_%$hd163935163955%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt163934163952%_)))
                           (_%$tl163936163958%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt163934163952%_)))
                           (_%id163962%_ _%$hd163935163955%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl163936163958%_))
                                  '())
                          (__SRC__% _%id163962%_ _%stx163926%_)
                          (_%$E163930163939%_)))
                    (_%$E163930163939%_)))
              (_%$E163930163939%_)))))
    (define __compile-setq%
      (lambda (_%stx163873%_)
        (let* ((_%$e163875%_ _%stx163873%_)
               (_%$E163877163889%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e163875%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e163875%_))
              (let* ((_%$tgt163878163892%_
                      (let () (declare (not safe)) (__AST-e _%$e163875%_)))
                     (_%$hd163879163895%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt163878163892%_)))
                     (_%$tl163880163898%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt163878163892%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl163880163898%_))
                    (let* ((_%$tgt163881163902%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl163880163898%_)))
                           (_%$hd163882163905%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt163881163902%_)))
                           (_%$tl163883163908%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt163881163902%_)))
                           (_%id163912%_ _%$hd163882163905%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl163883163908%_))
                          (let* ((_%$tgt163884163914%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl163883163908%_)))
                                 (_%$hd163885163917%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt163884163914%_)))
                                 (_%$tl163886163920%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt163884163914%_)))
                                 (_%expr163924%_ _%$hd163885163917%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl163886163920%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id163912%_
                                              _%stx163873%_)
                                             (cons (__compile _%expr163924%_)
                                                   '())))
                                 _%stx163873%_)
                                (_%$E163877163889%_)))
                          (_%$E163877163889%_)))
                    (_%$E163877163889%_)))
              (_%$E163877163889%_)))))
    (define __compile-if%
      (lambda (_%stx163805%_)
        (let* ((_%$e163807%_ _%stx163805%_)
               (_%$E163809163824%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e163807%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e163807%_))
              (let* ((_%$tgt163810163827%_
                      (let () (declare (not safe)) (__AST-e _%$e163807%_)))
                     (_%$hd163811163830%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt163810163827%_)))
                     (_%$tl163812163833%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt163810163827%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl163812163833%_))
                    (let* ((_%$tgt163813163837%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl163812163833%_)))
                           (_%$hd163814163840%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt163813163837%_)))
                           (_%$tl163815163843%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt163813163837%_)))
                           (_%p163847%_ _%$hd163814163840%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl163815163843%_))
                          (let* ((_%$tgt163816163849%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl163815163843%_)))
                                 (_%$hd163817163852%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt163816163849%_)))
                                 (_%$tl163818163855%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt163816163849%_)))
                                 (_%t163859%_ _%$hd163817163852%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl163818163855%_))
                                (let* ((_%$tgt163819163861%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl163818163855%_)))
                                       (_%$hd163820163864%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt163819163861%_)))
                                       (_%$tl163821163867%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt163819163861%_)))
                                       (_%f163871%_ _%$hd163820163864%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl163821163867%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p163847%_)
                                                   (cons (__compile
                                                          _%t163859%_)
                                                         (cons (__compile
                                                                _%f163871%_)
                                                               '()))))
                                       _%stx163805%_)
                                      (_%$E163809163824%_)))
                                (_%$E163809163824%_)))
                          (_%$E163809163824%_)))
                    (_%$E163809163824%_)))
              (_%$E163809163824%_)))))
    (define __compile-quote%
      (lambda (_%stx163767%_)
        (let* ((_%$e163769%_ _%stx163767%_)
               (_%$E163771163780%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e163769%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e163769%_))
              (let* ((_%$tgt163772163783%_
                      (let () (declare (not safe)) (__AST-e _%$e163769%_)))
                     (_%$hd163773163786%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt163772163783%_)))
                     (_%$tl163774163789%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt163772163783%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl163774163789%_))
                    (let* ((_%$tgt163775163793%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl163774163789%_)))
                           (_%$hd163776163796%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt163775163793%_)))
                           (_%$tl163777163799%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt163775163793%_)))
                           (_%e163803%_ _%$hd163776163796%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl163777163799%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e163803%_))
                                       '()))
                           _%stx163767%_)
                          (_%$E163771163780%_)))
                    (_%$E163771163780%_)))
              (_%$E163771163780%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx163729%_)
        (let* ((_%$e163731%_ _%stx163729%_)
               (_%$E163733163742%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e163731%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e163731%_))
              (let* ((_%$tgt163734163745%_
                      (let () (declare (not safe)) (__AST-e _%$e163731%_)))
                     (_%$hd163735163748%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt163734163745%_)))
                     (_%$tl163736163751%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt163734163745%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl163736163751%_))
                    (let* ((_%$tgt163737163755%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl163736163751%_)))
                           (_%$hd163738163758%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt163737163755%_)))
                           (_%$tl163739163761%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt163737163755%_)))
                           (_%e163765%_ _%$hd163738163758%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl163739163761%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e163765%_ '()))
                           _%stx163729%_)
                          (_%$E163733163742%_)))
                    (_%$E163733163742%_)))
              (_%$E163733163742%_)))))
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
