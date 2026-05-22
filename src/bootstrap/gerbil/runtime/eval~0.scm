(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1779435580)
  (begin
    (define __syntax::t
      (let ((__tmp170582 (list)) (__tmp170581 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp170582
         '(e id)
         __tmp170581
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args170386%_
        (apply make-instance __syntax::t _%$args170386%_)))
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
      (let ((__tmp170584 (list __syntax::t))
            (__tmp170583 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp170584
         '()
         __tmp170583
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args170383%_
        (apply make-instance __core-form::t _%$args170383%_)))
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
      (let ((__tmp170586 (list __core-form::t))
            (__tmp170585 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp170586
         '()
         __tmp170585
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args170380%_
        (apply make-instance __core-expression::t _%$args170380%_)))
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
      (let ((__tmp170588 (list __core-form::t))
            (__tmp170587 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp170588
         '()
         __tmp170587
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args170377%_
        (apply make-instance __core-special-form::t _%$args170377%_)))
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
      (lambda (_%id170351%_)
        (let* ((_%h170353%_ __core)
               (_%key170356%_
                (let () (declare (not safe)) (__AST-e _%id170351%_)))
               (_%h170363%_
                (let ((_%$obj170360%_ _%h170353%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj170360%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj170360%_)))
                           '#t)
                      _%$obj170360%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj170360%_)))))
               (_%h170365%_ _%h170363%_))
          (declare (not safe))
          (__hash-get _%h170365%_ _%key170356%_))))
    (define __core-bound-id?__%
      (lambda (_%id170334%_ _%is?170335%_)
        (let ((_%$e170337%_ (__core-resolve _%id170334%_)))
          (if _%$e170337%_ (_%is?170335%_ _%$e170337%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id170344%_)
        (let ((_%is?170346%_ true))
          (__core-bound-id?__% _%id170344%_ _%is?170346%_))))
    (define __core-bound-id?
      (lambda _g170589_
        (let ((_g170590_ (let () (declare (not safe)) (##length _g170589_))))
          (cond ((let () (declare (not safe)) (##fx= _g170590_ 1))
                 (apply __core-bound-id?__0 _g170589_))
                ((let () (declare (not safe)) (##fx= _g170590_ 2))
                 (apply __core-bound-id?__% _g170589_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g170589_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id170289%_ _%e170290%_ _%make170291%_)
        (let* ((_%h170293%_ __core)
               (_%key170296%_ _%id170289%_)
               (_%value170299%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%e170290%_
                       'gerbil/runtime/eval#__syntax::t))
                    _%e170290%_
                    (_%make170291%_ _%e170290%_ _%id170289%_)))
               (_%h170306%_
                (let ((_%$obj170303%_ _%h170293%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj170303%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj170303%_)))
                           '#t)
                      _%$obj170303%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj170303%_)))))
               (_%h170308%_ _%h170306%_))
          (declare (not safe))
          (__hash-put! _%h170308%_ _%key170296%_ _%value170299%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id170324%_ _%e170325%_)
        (let ((_%make170327%_ make-__syntax))
          (__core-bind-syntax!__% _%id170324%_ _%e170325%_ _%make170327%_))))
    (define __core-bind-syntax!
      (lambda _g170591_
        (let ((_g170592_ (let () (declare (not safe)) (##length _g170591_))))
          (cond ((let () (declare (not safe)) (##fx= _g170592_ 2))
                 (apply __core-bind-syntax!__0 _g170591_))
                ((let () (declare (not safe)) (##fx= _g170592_ 3))
                 (apply __core-bind-syntax!__% _g170591_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g170591_))))))
    (define __SRC__%
      (lambda (_%e170269%_ _%src-stx170270%_)
        (if (or (pair? _%e170269%_) (symbol? _%e170269%_))
            (let ((__tmp170593
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx170270%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx170270%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e170269%_ __tmp170593))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e170269%_ 'gerbil#AST::t))
                (let ((__tmp170595
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e170269%_ '1 '#f '#f)))
                      (__tmp170594
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e170269%_)))))
                  (declare (not safe))
                  (##make-source __tmp170595 __tmp170594))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e170269%_))))))
    (define __SRC__0
      (lambda (_%e170281%_)
        (let ((_%src-stx170283%_ '#f))
          (__SRC__% _%e170281%_ _%src-stx170283%_))))
    (define __SRC
      (lambda _g170596_
        (let ((_g170597_ (let () (declare (not safe)) (##length _g170596_))))
          (cond ((let () (declare (not safe)) (##fx= _g170597_ 1))
                 (apply __SRC__0 _g170596_))
                ((let () (declare (not safe)) (##fx= _g170597_ 2))
                 (apply __SRC__% _g170596_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g170596_))))))
    (define __locat
      (lambda (_%loc170266%_)
        (if (let () (declare (not safe)) (##locat? _%loc170266%_))
            _%loc170266%_
            '#f)))
    (define __check-values
      (lambda (_%obj170261%_ _%k170262%_)
        (let ((_%count170264%_
               (if (let () (declare (not safe)) (##values? _%obj170261%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj170261%_))
                   '1)))
          (if (fx= _%count170264%_ _%k170262%_)
              '#!void
              (let ((__tmp170599
                     (if (fx< _%count170264%_ _%k170262%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp170598
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj170261%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj170261%_))
                         _%obj170261%_)))
                (declare (not safe))
                (error __tmp170599 __tmp170598 _%k170262%_))))))
    (define __compile
      (lambda (_%stx170230%_)
        (let* ((_%$e170232%_ _%stx170230%_)
               (_%$E170234170240%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e170232%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e170232%_))
              (let* ((_%$tgt170235170243%_
                      (let () (declare (not safe)) (__AST-e _%$e170232%_)))
                     (_%$hd170236170246%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt170235170243%_)))
                     (_%$tl170237170249%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt170235170243%_)))
                     (_%form170253%_ _%$hd170236170246%_)
                     (_%$e170255%_ (__core-resolve _%form170253%_)))
                (if _%$e170255%_
                    ((##structure-ref _%$e170255%_ '1 __syntax::t '#f)
                     _%stx170230%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx170230%_
                       _%form170253%_))))
              (_%$E170234170240%_)))))
    (define __compile-error__%
      (lambda (_%stx170217%_ _%detail170218%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx170217%_
           _%detail170218%_))))
    (define __compile-error__0
      (lambda (_%stx170223%_)
        (let ((_%detail170225%_ '#f))
          (__compile-error__% _%stx170223%_ _%detail170225%_))))
    (define __compile-error
      (lambda _g170600_
        (let ((_g170601_ (let () (declare (not safe)) (##length _g170600_))))
          (cond ((let () (declare (not safe)) (##fx= _g170601_ 1))
                 (apply __compile-error__0 _g170600_))
                ((let () (declare (not safe)) (##fx= _g170601_ 2))
                 (apply __compile-error__% _g170600_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g170600_))))))
    (define __compile-ignore%
      (lambda (_%stx170214%_) (__SRC__% ''#!void _%stx170214%_)))
    (define __compile-begin%
      (lambda (_%stx170189%_)
        (let* ((_%$e170191%_ _%stx170189%_)
               (_%$E170193170199%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e170191%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e170191%_))
              (let* ((_%$tgt170194170202%_
                      (let () (declare (not safe)) (__AST-e _%$e170191%_)))
                     (_%$hd170195170205%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt170194170202%_)))
                     (_%$tl170196170208%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt170194170202%_)))
                     (_%body170212%_ _%$tl170196170208%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body170212%_))
                 _%stx170189%_))
              (_%$E170193170199%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx170164%_)
        (let* ((_%$e170166%_ _%stx170164%_)
               (_%$E170168170174%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e170166%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e170166%_))
              (let* ((_%$tgt170169170177%_
                      (let () (declare (not safe)) (__AST-e _%$e170166%_)))
                     (_%$hd170170170180%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt170169170177%_)))
                     (_%$tl170171170183%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt170169170177%_)))
                     (_%body170187%_ _%$tl170171170183%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body170187%_)))
                 _%stx170164%_))
              (_%$E170168170174%_)))))
    (define __compile-import%
      (lambda (_%stx170139%_)
        (let* ((_%$e170141%_ _%stx170139%_)
               (_%$E170143170149%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e170141%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e170141%_))
              (let* ((_%$tgt170144170152%_
                      (let () (declare (not safe)) (__AST-e _%$e170141%_)))
                     (_%$hd170145170155%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt170144170152%_)))
                     (_%$tl170146170158%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt170144170152%_)))
                     (_%body170162%_ _%$tl170146170158%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body170162%_ '())) '()))
                 _%stx170139%_))
              (_%$E170143170149%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx170086%_)
        (let* ((_%$e170088%_ _%stx170086%_)
               (_%$E170090170102%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e170088%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e170088%_))
              (let* ((_%$tgt170091170105%_
                      (let () (declare (not safe)) (__AST-e _%$e170088%_)))
                     (_%$hd170092170108%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt170091170105%_)))
                     (_%$tl170093170111%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt170091170105%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl170093170111%_))
                    (let* ((_%$tgt170094170115%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl170093170111%_)))
                           (_%$hd170095170118%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt170094170115%_)))
                           (_%$tl170096170121%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt170094170115%_)))
                           (_%ann170125%_ _%$hd170095170118%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl170096170121%_))
                          (let* ((_%$tgt170097170127%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl170096170121%_)))
                                 (_%$hd170098170130%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt170097170127%_)))
                                 (_%$tl170099170133%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt170097170127%_)))
                                 (_%expr170137%_ _%$hd170098170130%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl170099170133%_))
                                        '())
                                (__compile _%expr170137%_)
                                (_%$E170090170102%_)))
                          (_%$E170090170102%_)))
                    (_%$E170090170102%_)))
              (_%$E170090170102%_)))))
    (define __compile-define-values%
      (lambda (_%stx169977%_)
        (let* ((_%$e169979%_ _%stx169977%_)
               (_%$E169981169993%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169979%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169979%_))
              (let* ((_%$tgt169982169996%_
                      (let () (declare (not safe)) (__AST-e _%$e169979%_)))
                     (_%$hd169983169999%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169982169996%_)))
                     (_%$tl169984170002%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169982169996%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl169984170002%_))
                    (let* ((_%$tgt169985170006%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl169984170002%_)))
                           (_%$hd169986170009%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt169985170006%_)))
                           (_%$tl169987170012%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt169985170006%_)))
                           (_%hd170016%_ _%$hd169986170009%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl169987170012%_))
                          (let* ((_%$tgt169988170018%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl169987170012%_)))
                                 (_%$hd169989170021%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169988170018%_)))
                                 (_%$tl169990170024%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169988170018%_)))
                                 (_%expr170028%_ _%$hd169989170021%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl169990170024%_))
                                        '())
                                (let* ((_%$e170030%_ _%hd170016%_)
                                       (_%$E170032170073%_
                                        (lambda ()
                                          (let ((_%$E170033170058%_
                                                 (lambda ()
                                                   (let* ((_%$E170034170045%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e170030%_))))
                  (_%ids170048%_ _%hd170016%_)
                  (_%len170050%_ (length _%ids170048%_))
                  (_%tmp170052%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp170052%_
                                       (cons (__compile _%expr170028%_) '())))
                           _%stx169977%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp170052%_
                                             (cons _%len170050%_ '())))
                                 _%stx169977%_)
                                (let ((__tmp170602
                                       (let ((__tmp170604
                                              (lambda (_%id170055%_
                                                       _%k170056%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id170055%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id170055%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp170052%_
                                           (cons _%k170056%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx169977%_)
                                                    '#f)))
                                             (__tmp170603
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len170050%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp170604
                                          _%ids170048%_
                                          __tmp170603))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp170602)))))
              _%stx169977%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e170030%_))
                                                (let* ((_%$tgt170035170061%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e170030%_)))
                                                       (_%$hd170036170064%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt170035170061%_)))
                                                       (_%$tl170037170067%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt170035170061%_)))
                                                       (_%id170071%_
                                                        _%$hd170036170064%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl170037170067%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id170071%_)
                           (cons (__compile _%expr170028%_) '())))
               _%stx169977%_)
              (_%$E170033170058%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E170033170058%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e170030%_))
                                      (let* ((_%$tgt170038170076%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e170030%_)))
                                             (_%$hd170039170079%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt170038170076%_)))
                                             (_%$tl170040170082%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt170038170076%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd170039170079%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl170040170082%_))
                                                        '())
                                                (__compile _%expr170028%_)
                                                (_%$E170032170073%_))
                                            (_%$E170032170073%_)))
                                      (_%$E170032170073%_)))
                                (_%$E169981169993%_)))
                          (_%$E169981169993%_)))
                    (_%$E169981169993%_)))
              (_%$E169981169993%_)))))
    (define __compile-head-id
      (lambda (_%e169975%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e169975%_))
             _%e169975%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd169932%_)
        (let _%recur169934%_ ((_%rest169936%_ _%hd169932%_))
          (let* ((_%$e169938%_ _%rest169936%_)
                 (_%$E169940169958%_
                  (lambda ()
                    (let ((_%$E169941169955%_
                           (lambda ()
                             (let* ((_%$E169942169950%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e169938%_))))
                                    (_%tail169953%_ _%$e169938%_))
                               (__compile-head-id _%tail169953%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e169938%_))
                                  '())
                          '()
                          (_%$E169941169955%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e169938%_))
                (let* ((_%$tgt169943169961%_
                        (let () (declare (not safe)) (__AST-e _%$e169938%_)))
                       (_%$hd169944169964%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt169943169961%_)))
                       (_%$tl169945169967%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt169943169961%_)))
                       (_%hd169971%_ _%$hd169944169964%_)
                       (_%rest169973%_ _%$tl169945169967%_))
                  (cons (__compile-head-id _%hd169971%_)
                        (_%recur169934%_ _%rest169973%_)))
                (_%$E169940169958%_))))))
    (define __compile-lambda%
      (lambda (_%stx169879%_)
        (let* ((_%$e169881%_ _%stx169879%_)
               (_%$E169883169895%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169881%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169881%_))
              (let* ((_%$tgt169884169898%_
                      (let () (declare (not safe)) (__AST-e _%$e169881%_)))
                     (_%$hd169885169901%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt169884169898%_)))
                     (_%$tl169886169904%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt169884169898%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl169886169904%_))
                    (let* ((_%$tgt169887169908%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl169886169904%_)))
                           (_%$hd169888169911%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt169887169908%_)))
                           (_%$tl169889169914%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt169887169908%_)))
                           (_%hd169918%_ _%$hd169888169911%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl169889169914%_))
                          (let* ((_%$tgt169890169920%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl169889169914%_)))
                                 (_%$hd169891169923%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169890169920%_)))
                                 (_%$tl169892169926%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169890169920%_)))
                                 (_%body169930%_ _%$hd169891169923%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl169892169926%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd169918%_)
                                             (cons (__compile _%body169930%_)
                                                   '())))
                                 _%stx169879%_)
                                (_%$E169883169895%_)))
                          (_%$E169883169895%_)))
                    (_%$E169883169895%_)))
              (_%$E169883169895%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx169644%_)
        (letrec ((_%variadic?169646%_
                  (lambda (_%hd169844%_)
                    (let* ((_%$e169846%_ _%hd169844%_)
                           (_%$E169848169864%_
                            (lambda ()
                              (let ((_%$E169849169861%_
                                     (lambda ()
                                       (let ((_%$E169850169858%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e169846%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e169846%_))
                                            '())
                                    '#f
                                    (_%$E169849169861%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e169846%_))
                          (let* ((_%$tgt169851169867%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e169846%_)))
                                 (_%$hd169852169870%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169851169867%_)))
                                 (_%$tl169853169873%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169851169867%_)))
                                 (_%rest169877%_ _%$tl169853169873%_))
                            (_%variadic?169646%_ _%rest169877%_))
                          (_%$E169848169864%_)))))
                 (_%arity169647%_
                  (lambda (_%hd169782%_)
                    (let _%lp169784%_ ((_%rest169786%_ _%hd169782%_)
                                       (_%k169787%_ '0))
                      (let* ((_%$e169789%_ _%rest169786%_)
                             (_%$E169791169802%_
                              (lambda ()
                                (let ((_%$E169792169799%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e169789%_)))))
                                  _%k169787%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e169789%_))
                            (let* ((_%$tgt169793169805%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e169789%_)))
                                   (_%$hd169794169808%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt169793169805%_)))
                                   (_%$tl169795169811%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt169793169805%_)))
                                   (_%rest169815%_ _%$tl169795169811%_))
                              (_%lp169784%_
                               _%rest169815%_
                               (let ((_%x169817%_ _%k169787%_))
                                 (if (fixnum? _%x169817%_)
                                     (let ((_%x169822%_ _%x169817%_))
                                       (declare (not safe))
                                       (__fx1+ _%x169822%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x169817%_)
                                       '#!void)))))
                            (_%$E169791169802%_))))))
                 (_%generate169648%_
                  (lambda (_%rest169709%_ _%args169710%_ _%len169711%_)
                    (let* ((_%$e169713%_ _%rest169709%_)
                           (_%$E169715169726%_
                            (lambda ()
                              (let ((_%$E169716169723%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e169713%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args169710%_ '())))
                                 _%stx169644%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e169713%_))
                          (let* ((_%$tgt169717169729%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e169713%_)))
                                 (_%$hd169718169732%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169717169729%_)))
                                 (_%$tl169719169735%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169717169729%_)))
                                 (_%clause169739%_ _%$hd169718169732%_)
                                 (_%rest169741%_ _%$tl169719169735%_)
                                 (_%$e169743%_ _%clause169739%_)
                                 (_%$E169745169754%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e169743%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e169743%_))
                                (let* ((_%$tgt169746169757%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e169743%_)))
                                       (_%$hd169747169760%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt169746169757%_)))
                                       (_%$tl169748169763%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt169746169757%_)))
                                       (_%hd169767%_ _%$hd169747169760%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl169748169763%_))
                                      (let* ((_%$tgt169749169769%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl169748169763%_)))
                                             (_%$hd169750169772%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt169749169769%_)))
                                             (_%$tl169751169775%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt169749169769%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl169751169775%_))
                                                    '())
                                            (let ((_%clen169779%_
                                                   (_%arity169647%_
                                                    _%hd169767%_))
                                                  (_%cmp169780%_
                                                   (if (_%variadic?169646%_
                                                        _%hd169767%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp169780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len169711%_ (cons _%clen169779%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause169739%_))
                                      (cons _%args169710%_ '())))
                          _%stx169644%_)
                         (cons (_%generate169648%_
                                _%rest169741%_
                                _%args169710%_
                                _%len169711%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx169644%_))
                                            (_%$E169745169754%_)))
                                      (_%$E169745169754%_)))
                                (_%$E169745169754%_)))
                          (_%$E169715169726%_))))))
          (let* ((_%$e169650%_ _%stx169644%_)
                 (_%$E169652169684%_
                  (lambda ()
                    (let ((_%$E169653169666%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e169650%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e169650%_))
                          (let* ((_%$tgt169654169669%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e169650%_)))
                                 (_%$hd169655169672%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169654169669%_)))
                                 (_%$tl169656169675%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169654169669%_)))
                                 (_%clauses169679%_ _%$tl169656169675%_))
                            (let ((_%args169681%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx169644%_))
                                  (_%len169682%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx169644%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args169681%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len169682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args169681%_ '()))
                                         _%stx169644%_)
                                        '()))
                            '())
                      (cons (_%generate169648%_
                             _%clauses169679%_
                             _%args169681%_
                             _%len169682%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx169644%_)
                                                 '())))
                               _%stx169644%_)))
                          (_%$E169653169666%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e169650%_))
                (let* ((_%$tgt169657169687%_
                        (let () (declare (not safe)) (__AST-e _%$e169650%_)))
                       (_%$hd169658169690%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt169657169687%_)))
                       (_%$tl169659169693%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt169657169687%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl169659169693%_))
                      (let* ((_%$tgt169660169697%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl169659169693%_)))
                             (_%$hd169661169700%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt169660169697%_)))
                             (_%$tl169662169703%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt169660169697%_)))
                             (_%clause169707%_ _%$hd169661169700%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl169662169703%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause169707%_))
                            (_%$E169652169684%_)))
                      (_%$E169652169684%_)))
                (_%$E169652169684%_))))))
    (define __compile-let-form
      (lambda (_%stx169413%_ _%compile-simple169414%_ _%compile-values169415%_)
        (letrec ((_%simple-bind?169417%_
                  (lambda (_%hd169602%_)
                    (let* ((_%hd169603169613%_ _%hd169602%_)
                           (_%else169606169621%_ (lambda () '#f)))
                      (let ((_%K169609169634%_ (lambda (_%id169632%_) '#t))
                            (_%K169608169626%_ (lambda () '#t)))
                        (let ((_%try-match169605169629%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd169603169613%_ '#f))
                                     (_%K169608169626%_)
                                     (_%else169606169621%_)))))
                          (if (pair? _%hd169603169613%_)
                              (let ((_%tl169611169639%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd169603169613%_)))
                                    (_%hd169610169637%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd169603169613%_))))
                                (if (null? _%tl169611169639%_)
                                    (let ((_%id169642%_ _%hd169610169637%_))
                                      (_%K169609169634%_ _%id169642%_))
                                    (_%try-match169605169629%_)))
                              (_%try-match169605169629%_)))))))
                 (_%car-e169418%_
                  (lambda (_%hd169600%_)
                    (if (pair? _%hd169600%_)
                        (let () (declare (not safe)) (##car _%hd169600%_))
                        _%hd169600%_))))
          (let* ((_%$e169420%_ _%stx169413%_)
                 (_%$E169422169565%_
                  (lambda ()
                    (let ((_%$E169423169445%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e169420%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e169420%_))
                          (let* ((_%$tgt169424169448%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e169420%_)))
                                 (_%$hd169425169451%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt169424169448%_)))
                                 (_%$tl169426169454%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt169424169448%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl169426169454%_))
                                (let* ((_%$tgt169427169458%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl169426169454%_)))
                                       (_%$hd169428169461%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt169427169458%_)))
                                       (_%$tl169429169464%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt169427169458%_)))
                                       (_%hd169468%_ _%$hd169428169461%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl169429169464%_))
                                      (let* ((_%$tgt169430169470%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl169429169464%_)))
                                             (_%$hd169431169473%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt169430169470%_)))
                                             (_%$tl169432169476%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt169430169470%_)))
                                             (_%body169480%_
                                              _%$hd169431169473%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl169432169476%_))
                                                    '())
                                            (let* ((_%hd-ids169520%_
                                                    (map (lambda (_%bind169482%_)
                                                           (let* ((_%$e169484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind169482%_)
                          (_%$E169486169495%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e169484%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e169484%_))
                         (let* ((_%$tgt169487169498%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e169484%_)))
                                (_%$hd169488169501%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt169487169498%_)))
                                (_%$tl169489169504%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt169487169498%_)))
                                (_%ids169508%_ _%$hd169488169501%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl169489169504%_))
                               (let* ((_%$tgt169490169510%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl169489169504%_)))
                                      (_%$hd169491169513%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt169490169510%_)))
                                      (_%$tl169492169516%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt169490169510%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl169492169516%_))
                                             '())
                                     _%ids169508%_
                                     (_%$E169486169495%_)))
                               (_%$E169486169495%_)))
                         (_%$E169486169495%_))))
                 _%hd169468%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs169560%_
                                                    (map (lambda (_%bind169522%_)
                                                           (let* ((_%$e169524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind169522%_)
                          (_%$E169526169535%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e169524%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e169524%_))
                         (let* ((_%$tgt169527169538%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e169524%_)))
                                (_%$hd169528169541%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt169527169538%_)))
                                (_%$tl169529169544%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt169527169538%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl169529169544%_))
                               (let* ((_%$tgt169530169548%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl169529169544%_)))
                                      (_%$hd169531169551%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt169530169548%_)))
                                      (_%$tl169532169554%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt169530169548%_)))
                                      (_%expr169558%_ _%$hd169531169551%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl169532169554%_))
                                             '())
                                     (__compile _%expr169558%_)
                                     (_%$E169526169535%_)))
                               (_%$E169526169535%_)))
                         (_%$E169526169535%_))))
                 _%hd169468%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body169562%_
                                                    (__compile
                                                     _%body169480%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?169417%_
                                                     _%hd-ids169520%_))
                                                  (_%compile-simple169414%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e169418%_
                                                            _%hd-ids169520%_))
                                                   _%exprs169560%_
                                                   _%body169562%_)
                                                  (_%compile-values169415%_
                                                   _%hd-ids169520%_
                                                   _%exprs169560%_
                                                   _%body169562%_)))
                                            (_%$E169423169445%_)))
                                      (_%$E169423169445%_)))
                                (_%$E169423169445%_)))
                          (_%$E169423169445%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e169420%_))
                (let* ((_%$tgt169433169568%_
                        (let () (declare (not safe)) (__AST-e _%$e169420%_)))
                       (_%$hd169434169571%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt169433169568%_)))
                       (_%$tl169435169574%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt169433169568%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl169435169574%_))
                      (let* ((_%$tgt169436169578%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl169435169574%_)))
                             (_%$hd169437169581%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt169436169578%_)))
                             (_%$tl169438169584%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt169436169578%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd169437169581%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl169438169584%_))
                                (let* ((_%$tgt169439169588%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl169438169584%_)))
                                       (_%$hd169440169591%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt169439169588%_)))
                                       (_%$tl169441169594%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt169439169588%_)))
                                       (_%body169598%_ _%$hd169440169591%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl169441169594%_))
                                              '())
                                      (__compile _%body169598%_)
                                      (_%$E169422169565%_)))
                                (_%$E169422169565%_))
                            (_%$E169422169565%_)))
                      (_%$E169422169565%_)))
                (_%$E169422169565%_))))))
    (define __compile-let-values%
      (lambda (_%stx169225%_)
        (letrec ((_%compile-simple169227%_
                  (lambda (_%hd-ids169409%_ _%exprs169410%_ _%body169411%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp170605
                                        (map __compile-head-id
                                             _%hd-ids169409%_)))
                                   (declare (not safe))
                                   (##map list __tmp170605 _%exprs169410%_))
                                 (cons _%body169411%_ '())))
                     _%stx169225%_)))
                 (_%compile-values169228%_
                  (lambda (_%hd-ids169324%_ _%exprs169325%_ _%body169326%_)
                    (let _%lp169328%_ ((_%rest169330%_ _%hd-ids169324%_)
                                       (_%exprs169331%_ _%exprs169325%_)
                                       (_%bind169332%_ '())
                                       (_%post169333%_ '()))
                      (let* ((_%rest169334169348%_ _%rest169330%_)
                             (_%else169337169356%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind169332%_)
                                             (cons (_%compile-post169229%_
                                                    _%post169333%_
                                                    _%body169326%_)
                                                   '())))
                                 _%stx169225%_))))
                        (let ((_%K169342169392%_
                               (lambda (_%rest169389%_ _%id169390%_)
                                 (_%lp169328%_
                                  _%rest169389%_
                                  (cdr _%exprs169331%_)
                                  (cons (cons (__compile-head-id _%id169390%_)
                                              (cons (car _%exprs169331%_) '()))
                                        _%bind169332%_)
                                  _%post169333%_)))
                              (_%K169339169374%_
                               (lambda (_%rest169360%_ _%hd169361%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd169361%_))
                                     (_%lp169328%_
                                      _%rest169360%_
                                      (cdr _%exprs169331%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd169361%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs169331%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind169332%_)
                                      _%post169333%_)
                                     (if (list? _%hd169361%_)
                                         (let* ((_%len169365%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd169361%_)))
                                                (_%tmp169367%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp169328%_
                                            _%rest169360%_
                                            (cdr _%exprs169331%_)
                                            (cons (cons _%tmp169367%_
                                                        (cons (car _%exprs169331%_)
                                                              '()))
                                                  _%bind169332%_)
                                            (cons (cons _%tmp169367%_
                                                        (cons _%len169365%_
                                                              (let ((__tmp170607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id169370%_ _%k169371%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id169370%_))
                                   (cons (__SRC__0 _%id169370%_) _%k169371%_)
                                   '#f)))
                            (__tmp170606
                             (let ()
                               (declare (not safe))
                               (##iota _%len169365%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp170607 _%hd169361%_ __tmp170606))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post169333%_)))
                                         (__compile-error__%
                                          _%stx169225%_
                                          _%hd169361%_))))))
                          (if (pair? _%rest169334169348%_)
                              (let ((_%tl169344169397%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest169334169348%_)))
                                    (_%hd169343169395%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest169334169348%_))))
                                (if (pair? _%hd169343169395%_)
                                    (let ((_%tl169346169402%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd169343169395%_)))
                                          (_%hd169345169400%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd169343169395%_))))
                                      (if (null? _%tl169346169402%_)
                                          (let ((_%id169405%_
                                                 _%hd169345169400%_)
                                                (_%rest169407%_
                                                 _%tl169344169397%_))
                                            (_%K169342169392%_
                                             _%rest169407%_
                                             _%id169405%_))
                                          (let ((_%hd169382%_
                                                 _%hd169343169395%_)
                                                (_%rest169384%_
                                                 _%tl169344169397%_))
                                            (_%K169339169374%_
                                             _%rest169384%_
                                             _%hd169382%_))))
                                    (let ((_%hd169382%_ _%hd169343169395%_)
                                          (_%rest169384%_ _%tl169344169397%_))
                                      (_%K169339169374%_
                                       _%rest169384%_
                                       _%hd169382%_))))
                              (_%else169337169356%_)))))))
                 (_%compile-post169229%_
                  (lambda (_%post169231%_ _%body169232%_)
                    (let _%lp169234%_ ((_%rest169236%_ _%post169231%_)
                                       (_%check169237%_ '())
                                       (_%bind169238%_ '()))
                      (let* ((_%rest169239169251%_ _%rest169236%_)
                             (_%else169241169259%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp170608
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind169238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body169232%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx169225%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp170608
                                          _%check169237%_)))
                                 _%stx169225%_)))
                             (_%K169243169298%_
                              (lambda (_%rest169262%_
                                       _%init169263%_
                                       _%len169264%_
                                       _%tmp169265%_)
                                (_%lp169234%_
                                 _%rest169262%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp169265%_
                                                    (cons _%len169264%_ '())))
                                        _%stx169225%_)
                                       _%check169237%_)
                                 (let ((__tmp170609
                                        (lambda (_%hd169267%_ _%r169268%_)
                                          (let* ((_%hd169269169276%_
                                                  _%hd169267%_)
                                                 (_%E169271169280%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd169269169276%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K169272169286%_
                                                  (lambda (_%k169283%_
                                                           _%id169284%_)
                                                    (cons (cons _%id169284%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp169265%_
                                          (cons _%k169283%_ '())))
                              '()))
                  _%r169268%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd169269169276%_)
                                                (let ((_%hd169273169289%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd169269169276%_)))
                                                      (_%tl169274169291%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd169269169276%_))))
                                                  (let* ((_%id169294%_
                                                          _%hd169273169289%_)
                                                         (_%k169296%_
                                                          _%tl169274169291%_))
                                                    (_%K169272169286%_
                                                     _%k169296%_
                                                     _%id169294%_)))
                                                (_%E169271169280%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp170609
                                    _%bind169238%_
                                    _%init169263%_))))))
                        (if (pair? _%rest169239169251%_)
                            (let ((_%hd169244169301%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest169239169251%_)))
                                  (_%tl169245169303%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest169239169251%_))))
                              (if (pair? _%hd169244169301%_)
                                  (let ((_%hd169246169306%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd169244169301%_)))
                                        (_%tl169247169308%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd169244169301%_))))
                                    (let ((_%tmp169311%_ _%hd169246169306%_))
                                      (if (pair? _%tl169247169308%_)
                                          (let ((_%hd169248169313%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl169247169308%_)))
                                                (_%tl169249169315%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl169247169308%_))))
                                            (let* ((_%len169318%_
                                                    _%hd169248169313%_)
                                                   (_%init169320%_
                                                    _%tl169249169315%_)
                                                   (_%rest169322%_
                                                    _%tl169245169303%_))
                                              (_%K169243169298%_
                                               _%rest169322%_
                                               _%init169320%_
                                               _%len169318%_
                                               _%tmp169311%_)))
                                          (_%else169241169259%_))))
                                  (_%else169241169259%_)))
                            (_%else169241169259%_)))))))
          (__compile-let-form
           _%stx169225%_
           _%compile-simple169227%_
           _%compile-values169228%_))))
    (define __compile-letrec-values%
      (lambda (_%stx169022%_)
        (letrec ((_%compile-simple169024%_
                  (lambda (_%hd-ids169221%_ _%exprs169222%_ _%body169223%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp170610
                                        (map __compile-head-id
                                             _%hd-ids169221%_)))
                                   (declare (not safe))
                                   (##map list __tmp170610 _%exprs169222%_))
                                 (cons _%body169223%_ '())))
                     _%stx169022%_)))
                 (_%compile-values169025%_
                  (lambda (_%hd-ids169132%_ _%exprs169133%_ _%body169134%_)
                    (let _%lp169136%_ ((_%rest169138%_ _%hd-ids169132%_)
                                       (_%exprs169139%_ _%exprs169133%_)
                                       (_%pre169140%_ '())
                                       (_%bind169141%_ '())
                                       (_%post169142%_ '()))
                      (let* ((_%rest169143169157%_ _%rest169138%_)
                             (_%else169146169165%_
                              (lambda ()
                                (_%compile-inner169026%_
                                 _%pre169140%_
                                 _%bind169141%_
                                 _%post169142%_
                                 _%body169134%_))))
                        (let ((_%K169151169204%_
                               (lambda (_%rest169201%_ _%id169202%_)
                                 (_%lp169136%_
                                  _%rest169201%_
                                  (cdr _%exprs169139%_)
                                  _%pre169140%_
                                  (cons (cons (__compile-head-id _%id169202%_)
                                              (cons (car _%exprs169139%_) '()))
                                        _%bind169141%_)
                                  _%post169142%_)))
                              (_%K169148169186%_
                               (lambda (_%rest169169%_ _%hd169170%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd169170%_))
                                     (_%lp169136%_
                                      _%rest169169%_
                                      (cdr _%exprs169139%_)
                                      _%pre169140%_
                                      (cons (cons (__compile-head-id
                                                   _%hd169170%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs169139%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind169141%_)
                                      _%post169142%_)
                                     (if (list? _%hd169170%_)
                                         (let* ((_%len169174%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd169170%_)))
                                                (_%tmp169176%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp169136%_
                                            _%rest169169%_
                                            (cdr _%exprs169139%_)
                                            (let ((__tmp170611
                                                   (lambda (_%id169179%_
                                                            _%r169180%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id169179%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id169179%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r169180%_)
                 _%r169180%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp170611
                                               _%pre169140%_
                                               _%hd169170%_))
                                            (cons (cons _%tmp169176%_
                                                        (cons (car _%exprs169139%_)
                                                              '()))
                                                  _%bind169141%_)
                                            (cons (cons _%tmp169176%_
                                                        (cons _%len169174%_
                                                              (let ((__tmp170613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id169182%_ _%k169183%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id169182%_))
                                   (cons (__SRC__0 _%id169182%_) _%k169183%_)
                                   '#f)))
                            (__tmp170612
                             (let ()
                               (declare (not safe))
                               (##iota _%len169174%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp170613 _%hd169170%_ __tmp170612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post169142%_)))
                                         (__compile-error__%
                                          _%stx169022%_
                                          _%hd169170%_))))))
                          (if (pair? _%rest169143169157%_)
                              (let ((_%tl169153169209%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest169143169157%_)))
                                    (_%hd169152169207%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest169143169157%_))))
                                (if (pair? _%hd169152169207%_)
                                    (let ((_%tl169155169214%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd169152169207%_)))
                                          (_%hd169154169212%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd169152169207%_))))
                                      (if (null? _%tl169155169214%_)
                                          (let ((_%id169217%_
                                                 _%hd169154169212%_)
                                                (_%rest169219%_
                                                 _%tl169153169209%_))
                                            (_%K169151169204%_
                                             _%rest169219%_
                                             _%id169217%_))
                                          (let ((_%hd169194%_
                                                 _%hd169152169207%_)
                                                (_%rest169196%_
                                                 _%tl169153169209%_))
                                            (_%K169148169186%_
                                             _%rest169196%_
                                             _%hd169194%_))))
                                    (let ((_%hd169194%_ _%hd169152169207%_)
                                          (_%rest169196%_ _%tl169153169209%_))
                                      (_%K169148169186%_
                                       _%rest169196%_
                                       _%hd169194%_))))
                              (_%else169146169165%_)))))))
                 (_%compile-inner169026%_
                  (lambda (_%pre169127%_
                           _%bind169128%_
                           _%post169129%_
                           _%body169130%_)
                    (if (null? _%pre169127%_)
                        (_%compile-bind169027%_
                         _%bind169128%_
                         _%post169129%_
                         _%body169130%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre169127%_)
                                     (cons (_%compile-bind169027%_
                                            _%bind169128%_
                                            _%post169129%_
                                            _%body169130%_)
                                           '())))
                         _%stx169022%_))))
                 (_%compile-bind169027%_
                  (lambda (_%bind169123%_ _%post169124%_ _%body169125%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind169123%_)
                                 (cons (_%compile-post169028%_
                                        _%post169124%_
                                        _%body169125%_)
                                       '())))
                     _%stx169022%_)))
                 (_%compile-post169028%_
                  (lambda (_%post169030%_ _%body169031%_)
                    (let _%lp169033%_ ((_%rest169035%_ _%post169030%_)
                                       (_%check169036%_ '())
                                       (_%bind169037%_ '()))
                      (let* ((_%rest169038169050%_ _%rest169035%_)
                             (_%else169040169058%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp170614
                                              (let ((__tmp170615
                                                     (cons _%body169031%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp170615
                                                 _%bind169037%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp170614
                                          _%check169036%_)))
                                 _%stx169022%_)))
                             (_%K169042169097%_
                              (lambda (_%rest169061%_
                                       _%init169062%_
                                       _%len169063%_
                                       _%tmp169064%_)
                                (_%lp169033%_
                                 _%rest169061%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp169064%_
                                                    (cons _%len169063%_ '())))
                                        _%stx169022%_)
                                       _%check169036%_)
                                 (let ((__tmp170616
                                        (lambda (_%hd169066%_ _%r169067%_)
                                          (let* ((_%hd169068169075%_
                                                  _%hd169066%_)
                                                 (_%E169070169079%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd169068169075%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K169071169085%_
                                                  (lambda (_%k169082%_
                                                           _%id169083%_)
                                                    (cons (cons 'set!
                                                                (cons _%id169083%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp169064%_
                                                (cons _%k169082%_ '())))
                                    '())))
                  _%r169067%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd169068169075%_)
                                                (let ((_%hd169072169088%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd169068169075%_)))
                                                      (_%tl169073169090%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd169068169075%_))))
                                                  (let* ((_%id169093%_
                                                          _%hd169072169088%_)
                                                         (_%k169095%_
                                                          _%tl169073169090%_))
                                                    (_%K169071169085%_
                                                     _%k169095%_
                                                     _%id169093%_)))
                                                (_%E169070169079%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp170616
                                    _%bind169037%_
                                    _%init169062%_))))))
                        (if (pair? _%rest169038169050%_)
                            (let ((_%hd169043169100%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest169038169050%_)))
                                  (_%tl169044169102%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest169038169050%_))))
                              (if (pair? _%hd169043169100%_)
                                  (let ((_%hd169045169105%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd169043169100%_)))
                                        (_%tl169046169107%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd169043169100%_))))
                                    (let ((_%tmp169110%_ _%hd169045169105%_))
                                      (if (pair? _%tl169046169107%_)
                                          (let ((_%hd169047169112%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl169046169107%_)))
                                                (_%tl169048169114%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl169046169107%_))))
                                            (let* ((_%len169117%_
                                                    _%hd169047169112%_)
                                                   (_%init169119%_
                                                    _%tl169048169114%_)
                                                   (_%rest169121%_
                                                    _%tl169044169102%_))
                                              (_%K169042169097%_
                                               _%rest169121%_
                                               _%init169119%_
                                               _%len169117%_
                                               _%tmp169110%_)))
                                          (_%else169040169058%_))))
                                  (_%else169040169058%_)))
                            (_%else169040169058%_)))))))
          (__compile-let-form
           _%stx169022%_
           _%compile-simple169024%_
           _%compile-values169025%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx168773%_)
        (letrec ((_%compile-simple168775%_
                  (lambda (_%hd-ids169018%_ _%exprs169019%_ _%body169020%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp170617
                                        (map __compile-head-id
                                             _%hd-ids169018%_)))
                                   (declare (not safe))
                                   (##map list __tmp170617 _%exprs169019%_))
                                 (cons _%body169020%_ '())))
                     _%stx168773%_)))
                 (_%compile-values168776%_
                  (lambda (_%hd-ids168925%_ _%exprs168926%_ _%body168927%_)
                    (let _%lp168929%_ ((_%rest168931%_ _%hd-ids168925%_)
                                       (_%exprs168932%_ _%exprs168926%_)
                                       (_%bind168933%_ '())
                                       (_%post168934%_ '()))
                      (let* ((_%rest168935168949%_ _%rest168931%_)
                             (_%else168938168957%_
                              (lambda ()
                                (_%compile-bind168777%_
                                 _%bind168933%_
                                 _%post168934%_
                                 _%body168927%_))))
                        (let ((_%K168943169001%_
                               (lambda (_%rest168996%_ _%hd168997%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd168997%_))
                                     (let ((_%id168999%_
                                            (__SRC__0 _%hd168997%_)))
                                       (_%lp168929%_
                                        _%rest168996%_
                                        (cdr _%exprs168932%_)
                                        (cons (cons _%id168999%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind168933%_)
                                        (cons (cons _%id168999%_
                                                    (cons (car _%exprs168932%_)
                                                          '()))
                                              _%post168934%_)))
                                     (_%lp168929%_
                                      _%rest168996%_
                                      (cdr _%exprs168932%_)
                                      _%bind168933%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs168932%_)
                                                        '()))
                                            _%post168934%_)))))
                              (_%K168940168981%_
                               (lambda (_%rest168961%_ _%hd168962%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd168962%_))
                                     (let ((_%id168965%_
                                            (__SRC__0 _%hd168962%_)))
                                       (_%lp168929%_
                                        _%rest168961%_
                                        (cdr _%exprs168932%_)
                                        (cons (cons _%id168965%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind168933%_)
                                        (cons (cons _%id168965%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs168932%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post168934%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd168962%_))
                                         (if (list? _%hd168962%_)
                                             (let* ((_%len168969%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd168962%_)))
                                                    (_%tmp168971%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp168929%_
                                                _%rest168961%_
                                                (cdr _%exprs168932%_)
                                                (let ((__tmp170618
                                                       (lambda (_%id168974%_
                                                                _%r168975%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id168974%_))
                     (cons (cons (__SRC__0 _%id168974%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r168975%_)
                     _%r168975%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp170618
                                                   _%bind168933%_
                                                   _%hd168962%_))
                                                (cons (cons _%tmp168971%_
                                                            (cons (car _%exprs168932%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len168969%_
                                (let ((__tmp170620
                                       (lambda (_%id168977%_ _%k168978%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id168977%_))
                                             (cons (__SRC__0 _%id168977%_)
                                                   _%k168978%_)
                                             '#f)))
                                      (__tmp170619
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len168969%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp170620
                                   _%hd168962%_
                                   __tmp170619)))))
              _%post168934%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx168773%_
                                              _%hd168962%_))
                                         (_%lp168929%_
                                          _%rest168961%_
                                          (cdr _%exprs168932%_)
                                          _%bind168933%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs168932%_)
                                                            '()))
                                                _%post168934%_)))))))
                          (if (pair? _%rest168935168949%_)
                              (let ((_%tl168945169006%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest168935168949%_)))
                                    (_%hd168944169004%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest168935168949%_))))
                                (if (pair? _%hd168944169004%_)
                                    (let ((_%tl168947169011%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd168944169004%_)))
                                          (_%hd168946169009%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd168944169004%_))))
                                      (if (null? _%tl168947169011%_)
                                          (let ((_%hd169014%_
                                                 _%hd168946169009%_)
                                                (_%rest169016%_
                                                 _%tl168945169006%_))
                                            (_%K168943169001%_
                                             _%rest169016%_
                                             _%hd169014%_))
                                          (let ((_%hd168989%_
                                                 _%hd168944169004%_)
                                                (_%rest168991%_
                                                 _%tl168945169006%_))
                                            (_%K168940168981%_
                                             _%rest168991%_
                                             _%hd168989%_))))
                                    (let ((_%hd168989%_ _%hd168944169004%_)
                                          (_%rest168991%_ _%tl168945169006%_))
                                      (_%K168940168981%_
                                       _%rest168991%_
                                       _%hd168989%_))))
                              (_%else168938168957%_)))))))
                 (_%compile-bind168777%_
                  (lambda (_%bind168921%_ _%post168922%_ _%body168923%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind168921%_)
                                 (cons (_%compile-post168778%_
                                        _%post168922%_
                                        _%body168923%_)
                                       '())))
                     _%stx168773%_)))
                 (_%compile-post168778%_
                  (lambda (_%post168780%_ _%body168781%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp170621
                                  (let ((__tmp170623
                                         (lambda (_%hd168783%_ _%r168784%_)
                                           (let* ((_%hd168785168808%_
                                                   _%hd168783%_)
                                                  (_%E168789168812%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd168785168808%_
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
                                             (let ((_%K168802168906%_
                                                    (lambda (_%expr168904%_)
                                                      (cons _%expr168904%_
                                                            _%r168784%_)))
                                                   (_%K168797168884%_
                                                    (lambda (_%expr168881%_
                                                             _%id168882%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id168882%_ (cons _%expr168881%_ '())))
                     _%stx168773%_)
                    _%r168784%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K168790168851%_
                                                    (lambda (_%init168816%_
                                                             _%len168817%_
                                                             _%expr168818%_
                                                             _%tmp168819%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp168819%_
                                             (cons _%expr168818%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp168819%_
                                                    (cons _%len168817%_ '())))
                                        _%stx168773%_)
                                       (let ((__tmp170624
                                              (map (lambda (_%hd168821%_)
                                                     (let* ((_%hd168822168829%_
                                                             _%hd168821%_)
                                                            (_%E168824168833%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd168822168829%_
                                '([id . k])))
                       '#!void))
                    (_%K168825168839%_
                     (lambda (_%k168836%_ _%id168837%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id168837%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp168819%_
                                                      (cons _%k168836%_ '())))
                                          '())))
                        _%stx168773%_))))
               (if (pair? _%hd168822168829%_)
                   (let ((_%hd168826168842%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd168822168829%_)))
                         (_%tl168827168844%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd168822168829%_))))
                     (let* ((_%id168847%_ _%hd168826168842%_)
                            (_%k168849%_ _%tl168827168844%_))
                       (_%K168825168839%_ _%k168849%_ _%id168847%_)))
                   (_%E168824168833%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init168816%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp170624)))))
                     _%stx168773%_)
                    _%r168784%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match170479170480%_
                                                       (lambda (_%hd168791168854%_
                                                                _%tl168792168856%_
                                                                _%hd168793168861%_
                                                                _%tl168794168863%_)
                                                         (let ((_%tmp168859%_
                                                                _%hd168791168854%_)
                                                               (_%expr168866%_
                                                                _%hd168793168861%_))
                                                           (_%E168789168812%_))))
                                                      (_%__match170473170474%_
                                                       (lambda (_%hd168791168854%_
                                                                _%tl168792168856%_)
                                                         (let ((_%tmp168859%_
                                                                _%hd168791168854%_))
                                                           (_%E168789168812%_)))))
                                                 (if (pair? _%hd168785168808%_)
                                                     (let ((_%tl168804168911%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd168785168808%_)))
                                                           (_%hd168803168909%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd168785168808%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd168803168909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl168804168911%_)
                       (let ((_%tl168806168916%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl168804168911%_)))
                             (_%hd168805168914%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl168804168911%_))))
                         (if (null? _%tl168806168916%_)
                             (let ((_%expr168919%_ _%hd168805168914%_))
                               (_%K168802168906%_ _%expr168919%_))
                             (if (pair? _%tl168806168916%_)
                                 (let ((_%tl168796168870%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl168806168916%_)))
                                       (_%hd168795168868%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl168806168916%_))))
                                   (let ((_%tmp168859%_ _%hd168803168909%_)
                                         (_%expr168866%_ _%hd168805168914%_)
                                         (_%len168873%_ _%hd168795168868%_)
                                         (_%init168875%_ _%tl168796168870%_))
                                     (_%K168790168851%_
                                      _%init168875%_
                                      _%len168873%_
                                      _%expr168866%_
                                      _%tmp168859%_)))
                                 (_%__match170479170480%_
                                  _%hd168803168909%_
                                  _%tl168804168911%_
                                  _%hd168805168914%_
                                  _%tl168806168916%_))))
                       (_%__match170473170474%_
                        _%hd168803168909%_
                        _%tl168804168911%_))
                   (if (pair? _%tl168804168911%_)
                       (let ((_%tl168801168896%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl168804168911%_)))
                             (_%hd168800168894%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl168804168911%_))))
                         (if (null? _%tl168801168896%_)
                             (let ((_%id168892%_ _%hd168803168909%_)
                                   (_%expr168899%_ _%hd168800168894%_))
                               (_%K168797168884%_ _%expr168899%_ _%id168892%_))
                             (if (pair? _%tl168801168896%_)
                                 (let ((_%tl168796168870%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl168801168896%_)))
                                       (_%hd168795168868%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl168801168896%_))))
                                   (let ((_%tmp168859%_ _%hd168803168909%_)
                                         (_%expr168866%_ _%hd168800168894%_)
                                         (_%len168873%_ _%hd168795168868%_)
                                         (_%init168875%_ _%tl168796168870%_))
                                     (_%K168790168851%_
                                      _%init168875%_
                                      _%len168873%_
                                      _%expr168866%_
                                      _%tmp168859%_)))
                                 (_%__match170479170480%_
                                  _%hd168803168909%_
                                  _%tl168804168911%_
                                  _%hd168800168894%_
                                  _%tl168801168896%_))))
                       (_%__match170473170474%_
                        _%hd168803168909%_
                        _%tl168804168911%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E168789168812%_)))))))
                                        (__tmp170622 (list _%body168781%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp170623
                                     __tmp170622
                                     _%post168780%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp170621)))
                     _%stx168773%_))))
          (__compile-let-form
           _%stx168773%_
           _%compile-simple168775%_
           _%compile-values168776%_))))
    (define __compile-call%
      (lambda (_%stx168733%_)
        (let* ((_%$e168735%_ _%stx168733%_)
               (_%$E168737168746%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168735%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168735%_))
              (let* ((_%$tgt168738168749%_
                      (let () (declare (not safe)) (__AST-e _%$e168735%_)))
                     (_%$hd168739168752%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168738168749%_)))
                     (_%$tl168740168755%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168738168749%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168740168755%_))
                    (let* ((_%$tgt168741168759%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168740168755%_)))
                           (_%$hd168742168762%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168741168759%_)))
                           (_%$tl168743168765%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168741168759%_)))
                           (_%rator168769%_ _%$hd168742168762%_)
                           (_%rands168771%_ _%$tl168743168765%_))
                      (__SRC__%
                       (cons (__compile _%rator168769%_)
                             (map __compile _%rands168771%_))
                       _%stx168733%_))
                    (_%$E168737168746%_)))
              (_%$E168737168746%_)))))
    (define __compile-ref%
      (lambda (_%stx168695%_)
        (let* ((_%$e168697%_ _%stx168695%_)
               (_%$E168699168708%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168697%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168697%_))
              (let* ((_%$tgt168700168711%_
                      (let () (declare (not safe)) (__AST-e _%$e168697%_)))
                     (_%$hd168701168714%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168700168711%_)))
                     (_%$tl168702168717%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168700168711%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168702168717%_))
                    (let* ((_%$tgt168703168721%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168702168717%_)))
                           (_%$hd168704168724%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168703168721%_)))
                           (_%$tl168705168727%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168703168721%_)))
                           (_%id168731%_ _%$hd168704168724%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168705168727%_))
                                  '())
                          (__SRC__% _%id168731%_ _%stx168695%_)
                          (_%$E168699168708%_)))
                    (_%$E168699168708%_)))
              (_%$E168699168708%_)))))
    (define __compile-setq%
      (lambda (_%stx168642%_)
        (let* ((_%$e168644%_ _%stx168642%_)
               (_%$E168646168658%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168644%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168644%_))
              (let* ((_%$tgt168647168661%_
                      (let () (declare (not safe)) (__AST-e _%$e168644%_)))
                     (_%$hd168648168664%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168647168661%_)))
                     (_%$tl168649168667%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168647168661%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168649168667%_))
                    (let* ((_%$tgt168650168671%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168649168667%_)))
                           (_%$hd168651168674%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168650168671%_)))
                           (_%$tl168652168677%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168650168671%_)))
                           (_%id168681%_ _%$hd168651168674%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168652168677%_))
                          (let* ((_%$tgt168653168683%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168652168677%_)))
                                 (_%$hd168654168686%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168653168683%_)))
                                 (_%$tl168655168689%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168653168683%_)))
                                 (_%expr168693%_ _%$hd168654168686%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168655168689%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id168681%_
                                              _%stx168642%_)
                                             (cons (__compile _%expr168693%_)
                                                   '())))
                                 _%stx168642%_)
                                (_%$E168646168658%_)))
                          (_%$E168646168658%_)))
                    (_%$E168646168658%_)))
              (_%$E168646168658%_)))))
    (define __compile-if%
      (lambda (_%stx168574%_)
        (let* ((_%$e168576%_ _%stx168574%_)
               (_%$E168578168593%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168576%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168576%_))
              (let* ((_%$tgt168579168596%_
                      (let () (declare (not safe)) (__AST-e _%$e168576%_)))
                     (_%$hd168580168599%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168579168596%_)))
                     (_%$tl168581168602%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168579168596%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168581168602%_))
                    (let* ((_%$tgt168582168606%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168581168602%_)))
                           (_%$hd168583168609%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168582168606%_)))
                           (_%$tl168584168612%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168582168606%_)))
                           (_%p168616%_ _%$hd168583168609%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168584168612%_))
                          (let* ((_%$tgt168585168618%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168584168612%_)))
                                 (_%$hd168586168621%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168585168618%_)))
                                 (_%$tl168587168624%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168585168618%_)))
                                 (_%t168628%_ _%$hd168586168621%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl168587168624%_))
                                (let* ((_%$tgt168588168630%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168587168624%_)))
                                       (_%$hd168589168633%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt168588168630%_)))
                                       (_%$tl168590168636%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt168588168630%_)))
                                       (_%f168640%_ _%$hd168589168633%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl168590168636%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p168616%_)
                                                   (cons (__compile
                                                          _%t168628%_)
                                                         (cons (__compile
                                                                _%f168640%_)
                                                               '()))))
                                       _%stx168574%_)
                                      (_%$E168578168593%_)))
                                (_%$E168578168593%_)))
                          (_%$E168578168593%_)))
                    (_%$E168578168593%_)))
              (_%$E168578168593%_)))))
    (define __compile-quote%
      (lambda (_%stx168536%_)
        (let* ((_%$e168538%_ _%stx168536%_)
               (_%$E168540168549%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168538%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168538%_))
              (let* ((_%$tgt168541168552%_
                      (let () (declare (not safe)) (__AST-e _%$e168538%_)))
                     (_%$hd168542168555%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168541168552%_)))
                     (_%$tl168543168558%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168541168552%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168543168558%_))
                    (let* ((_%$tgt168544168562%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168543168558%_)))
                           (_%$hd168545168565%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168544168562%_)))
                           (_%$tl168546168568%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168544168562%_)))
                           (_%e168572%_ _%$hd168545168565%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168546168568%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e168572%_))
                                       '()))
                           _%stx168536%_)
                          (_%$E168540168549%_)))
                    (_%$E168540168549%_)))
              (_%$E168540168549%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx168498%_)
        (let* ((_%$e168500%_ _%stx168498%_)
               (_%$E168502168511%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168500%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168500%_))
              (let* ((_%$tgt168503168514%_
                      (let () (declare (not safe)) (__AST-e _%$e168500%_)))
                     (_%$hd168504168517%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168503168514%_)))
                     (_%$tl168505168520%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168503168514%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168505168520%_))
                    (let* ((_%$tgt168506168524%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168505168520%_)))
                           (_%$hd168507168527%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168506168524%_)))
                           (_%$tl168508168530%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168506168524%_)))
                           (_%e168534%_ _%$hd168507168527%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168508168530%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e168534%_ '()))
                           _%stx168498%_)
                          (_%$E168502168511%_)))
                    (_%$E168502168511%_)))
              (_%$E168502168511%_)))))
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
