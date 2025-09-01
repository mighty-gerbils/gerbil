(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1756721295)
  (begin
    (define __syntax::t
      (let ((__tmp123515 (list)) (__tmp123514 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp123515
         '(e id)
         __tmp123514
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args123319%_
        (apply make-instance __syntax::t _%$args123319%_)))
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
      (let ((__tmp123517 (list __syntax::t))
            (__tmp123516 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp123517
         '()
         __tmp123516
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args123316%_
        (apply make-instance __core-form::t _%$args123316%_)))
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
      (let ((__tmp123519 (list __core-form::t))
            (__tmp123518 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp123519
         '()
         __tmp123518
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args123313%_
        (apply make-instance __core-expression::t _%$args123313%_)))
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
      (let ((__tmp123521 (list __core-form::t))
            (__tmp123520 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp123521
         '()
         __tmp123520
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args123310%_
        (apply make-instance __core-special-form::t _%$args123310%_)))
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
      (lambda (_%id123308%_)
        (let ((__tmp123522
               (let () (declare (not safe)) (__AST-e _%id123308%_))))
          (declare (not safe))
          (__hash-get __core __tmp123522))))
    (define __core-bound-id?__%
      (lambda (_%id123291%_ _%is?123292%_)
        (let ((_%$e123294%_ (__core-resolve _%id123291%_)))
          (if _%$e123294%_ (_%is?123292%_ _%$e123294%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id123301%_)
        (let ((_%is?123303%_ true))
          (__core-bound-id?__% _%id123301%_ _%is?123303%_))))
    (define __core-bound-id?
      (lambda _g123523_
        (let ((_g123524_ (let () (declare (not safe)) (##length _g123523_))))
          (cond ((let () (declare (not safe)) (##fx= _g123524_ 1))
                 (apply __core-bound-id?__0 _g123523_))
                ((let () (declare (not safe)) (##fx= _g123524_ 2))
                 (apply __core-bound-id?__% _g123523_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g123523_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id123274%_ _%e123275%_ _%make123276%_)
        (let ((__tmp123525
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e123275%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e123275%_
                   (_%make123276%_ _%e123275%_ _%id123274%_))))
          (declare (not safe))
          (__hash-put! __core _%id123274%_ __tmp123525))))
    (define __core-bind-syntax!__0
      (lambda (_%id123281%_ _%e123282%_)
        (let ((_%make123284%_ make-__syntax))
          (__core-bind-syntax!__% _%id123281%_ _%e123282%_ _%make123284%_))))
    (define __core-bind-syntax!
      (lambda _g123526_
        (let ((_g123527_ (let () (declare (not safe)) (##length _g123526_))))
          (cond ((let () (declare (not safe)) (##fx= _g123527_ 2))
                 (apply __core-bind-syntax!__0 _g123526_))
                ((let () (declare (not safe)) (##fx= _g123527_ 3))
                 (apply __core-bind-syntax!__% _g123526_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g123526_))))))
    (define __SRC__%
      (lambda (_%e123254%_ _%src-stx123255%_)
        (if (or (pair? _%e123254%_) (symbol? _%e123254%_))
            (let ((__tmp123528
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx123255%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx123255%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e123254%_ __tmp123528))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e123254%_ 'gerbil#AST::t))
                (let ((__tmp123530
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e123254%_ '1 '#f '#f)))
                      (__tmp123529
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e123254%_)))))
                  (declare (not safe))
                  (##make-source __tmp123530 __tmp123529))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e123254%_))))))
    (define __SRC__0
      (lambda (_%e123266%_)
        (let ((_%src-stx123268%_ '#f))
          (__SRC__% _%e123266%_ _%src-stx123268%_))))
    (define __SRC
      (lambda _g123531_
        (let ((_g123532_ (let () (declare (not safe)) (##length _g123531_))))
          (cond ((let () (declare (not safe)) (##fx= _g123532_ 1))
                 (apply __SRC__0 _g123531_))
                ((let () (declare (not safe)) (##fx= _g123532_ 2))
                 (apply __SRC__% _g123531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g123531_))))))
    (define __locat
      (lambda (_%loc123251%_)
        (if (let () (declare (not safe)) (##locat? _%loc123251%_))
            _%loc123251%_
            '#f)))
    (define __check-values
      (lambda (_%obj123246%_ _%k123247%_)
        (let ((_%count123249%_
               (if (let () (declare (not safe)) (##values? _%obj123246%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj123246%_))
                   '1)))
          (if (fx= _%count123249%_ _%k123247%_)
              '#!void
              (let ((__tmp123534
                     (if (fx< _%count123249%_ _%k123247%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp123533
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj123246%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj123246%_))
                         _%obj123246%_)))
                (declare (not safe))
                (error __tmp123534 __tmp123533 _%k123247%_))))))
    (define __compile
      (lambda (_%stx123215%_)
        (let* ((_%$e123217%_ _%stx123215%_)
               (_%$E123219123225%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e123217%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e123217%_))
              (let* ((_%$tgt123220123228%_
                      (let () (declare (not safe)) (__AST-e _%$e123217%_)))
                     (_%$hd123221123231%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt123220123228%_)))
                     (_%$tl123222123234%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt123220123228%_)))
                     (_%form123238%_ _%$hd123221123231%_)
                     (_%$e123240%_ (__core-resolve _%form123238%_)))
                (if _%$e123240%_
                    ((lambda (_%bind123243%_)
                       ((##structure-ref _%bind123243%_ '1 __syntax::t '#f)
                        _%stx123215%_))
                     _%$e123240%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx123215%_
                       _%form123238%_))))
              (_%$E123219123225%_)))))
    (define __compile-error__%
      (lambda (_%stx123202%_ _%detail123203%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx123202%_
           _%detail123203%_))))
    (define __compile-error__0
      (lambda (_%stx123208%_)
        (let ((_%detail123210%_ '#f))
          (__compile-error__% _%stx123208%_ _%detail123210%_))))
    (define __compile-error
      (lambda _g123535_
        (let ((_g123536_ (let () (declare (not safe)) (##length _g123535_))))
          (cond ((let () (declare (not safe)) (##fx= _g123536_ 1))
                 (apply __compile-error__0 _g123535_))
                ((let () (declare (not safe)) (##fx= _g123536_ 2))
                 (apply __compile-error__% _g123535_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g123535_))))))
    (define __compile-ignore%
      (lambda (_%stx123199%_) (__SRC__% ''#!void _%stx123199%_)))
    (define __compile-begin%
      (lambda (_%stx123174%_)
        (let* ((_%$e123176%_ _%stx123174%_)
               (_%$E123178123184%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e123176%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e123176%_))
              (let* ((_%$tgt123179123187%_
                      (let () (declare (not safe)) (__AST-e _%$e123176%_)))
                     (_%$hd123180123190%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt123179123187%_)))
                     (_%$tl123181123193%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt123179123187%_)))
                     (_%body123197%_ _%$tl123181123193%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body123197%_))
                 _%stx123174%_))
              (_%$E123178123184%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx123149%_)
        (let* ((_%$e123151%_ _%stx123149%_)
               (_%$E123153123159%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e123151%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e123151%_))
              (let* ((_%$tgt123154123162%_
                      (let () (declare (not safe)) (__AST-e _%$e123151%_)))
                     (_%$hd123155123165%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt123154123162%_)))
                     (_%$tl123156123168%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt123154123162%_)))
                     (_%body123172%_ _%$tl123156123168%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body123172%_)))
                 _%stx123149%_))
              (_%$E123153123159%_)))))
    (define __compile-import%
      (lambda (_%stx123124%_)
        (let* ((_%$e123126%_ _%stx123124%_)
               (_%$E123128123134%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e123126%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e123126%_))
              (let* ((_%$tgt123129123137%_
                      (let () (declare (not safe)) (__AST-e _%$e123126%_)))
                     (_%$hd123130123140%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt123129123137%_)))
                     (_%$tl123131123143%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt123129123137%_)))
                     (_%body123147%_ _%$tl123131123143%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body123147%_ '())) '()))
                 _%stx123124%_))
              (_%$E123128123134%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx123071%_)
        (let* ((_%$e123073%_ _%stx123071%_)
               (_%$E123075123087%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e123073%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e123073%_))
              (let* ((_%$tgt123076123090%_
                      (let () (declare (not safe)) (__AST-e _%$e123073%_)))
                     (_%$hd123077123093%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt123076123090%_)))
                     (_%$tl123078123096%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt123076123090%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl123078123096%_))
                    (let* ((_%$tgt123079123100%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl123078123096%_)))
                           (_%$hd123080123103%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt123079123100%_)))
                           (_%$tl123081123106%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt123079123100%_)))
                           (_%ann123110%_ _%$hd123080123103%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl123081123106%_))
                          (let* ((_%$tgt123082123112%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl123081123106%_)))
                                 (_%$hd123083123115%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt123082123112%_)))
                                 (_%$tl123084123118%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt123082123112%_)))
                                 (_%expr123122%_ _%$hd123083123115%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl123084123118%_))
                                        '())
                                (__compile _%expr123122%_)
                                (_%$E123075123087%_)))
                          (_%$E123075123087%_)))
                    (_%$E123075123087%_)))
              (_%$E123075123087%_)))))
    (define __compile-define-values%
      (lambda (_%stx122962%_)
        (let* ((_%$e122964%_ _%stx122962%_)
               (_%$E122966122978%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e122964%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e122964%_))
              (let* ((_%$tgt122967122981%_
                      (let () (declare (not safe)) (__AST-e _%$e122964%_)))
                     (_%$hd122968122984%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt122967122981%_)))
                     (_%$tl122969122987%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt122967122981%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl122969122987%_))
                    (let* ((_%$tgt122970122991%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl122969122987%_)))
                           (_%$hd122971122994%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt122970122991%_)))
                           (_%$tl122972122997%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt122970122991%_)))
                           (_%hd123001%_ _%$hd122971122994%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl122972122997%_))
                          (let* ((_%$tgt122973123003%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl122972122997%_)))
                                 (_%$hd122974123006%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122973123003%_)))
                                 (_%$tl122975123009%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122973123003%_)))
                                 (_%expr123013%_ _%$hd122974123006%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl122975123009%_))
                                        '())
                                (let* ((_%$e123015%_ _%hd123001%_)
                                       (_%$E123017123058%_
                                        (lambda ()
                                          (let ((_%$E123018123043%_
                                                 (lambda ()
                                                   (let* ((_%$E123019123030%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e123015%_))))
                  (_%ids123033%_ _%hd123001%_)
                  (_%len123035%_ (length _%ids123033%_))
                  (_%tmp123037%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp123037%_
                                       (cons (__compile _%expr123013%_) '())))
                           _%stx122962%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp123037%_
                                             (cons _%len123035%_ '())))
                                 _%stx122962%_)
                                (let ((__tmp123537
                                       (let ((__tmp123539
                                              (lambda (_%id123040%_
                                                       _%k123041%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id123040%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id123040%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp123037%_
                                           (cons _%k123041%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx122962%_)
                                                    '#f)))
                                             (__tmp123538
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len123035%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp123539
                                          _%ids123033%_
                                          __tmp123538))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp123537)))))
              _%stx122962%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e123015%_))
                                                (let* ((_%$tgt123020123046%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e123015%_)))
                                                       (_%$hd123021123049%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt123020123046%_)))
                                                       (_%$tl123022123052%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt123020123046%_)))
                                                       (_%id123056%_
                                                        _%$hd123021123049%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl123022123052%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id123056%_)
                           (cons (__compile _%expr123013%_) '())))
               _%stx122962%_)
              (_%$E123018123043%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E123018123043%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e123015%_))
                                      (let* ((_%$tgt123023123061%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e123015%_)))
                                             (_%$hd123024123064%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt123023123061%_)))
                                             (_%$tl123025123067%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt123023123061%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd123024123064%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl123025123067%_))
                                                        '())
                                                (__compile _%expr123013%_)
                                                (_%$E123017123058%_))
                                            (_%$E123017123058%_)))
                                      (_%$E123017123058%_)))
                                (_%$E122966122978%_)))
                          (_%$E122966122978%_)))
                    (_%$E122966122978%_)))
              (_%$E122966122978%_)))))
    (define __compile-head-id
      (lambda (_%e122960%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e122960%_))
             _%e122960%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd122917%_)
        (let _%recur122919%_ ((_%rest122921%_ _%hd122917%_))
          (let* ((_%$e122923%_ _%rest122921%_)
                 (_%$E122925122943%_
                  (lambda ()
                    (let ((_%$E122926122940%_
                           (lambda ()
                             (let* ((_%$E122927122935%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e122923%_))))
                                    (_%tail122938%_ _%$e122923%_))
                               (__compile-head-id _%tail122938%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e122923%_))
                                  '())
                          '()
                          (_%$E122926122940%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e122923%_))
                (let* ((_%$tgt122928122946%_
                        (let () (declare (not safe)) (__AST-e _%$e122923%_)))
                       (_%$hd122929122949%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt122928122946%_)))
                       (_%$tl122930122952%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt122928122946%_)))
                       (_%hd122956%_ _%$hd122929122949%_)
                       (_%rest122958%_ _%$tl122930122952%_))
                  (cons (__compile-head-id _%hd122956%_)
                        (_%recur122919%_ _%rest122958%_)))
                (_%$E122925122943%_))))))
    (define __compile-lambda%
      (lambda (_%stx122864%_)
        (let* ((_%$e122866%_ _%stx122864%_)
               (_%$E122868122880%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e122866%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e122866%_))
              (let* ((_%$tgt122869122883%_
                      (let () (declare (not safe)) (__AST-e _%$e122866%_)))
                     (_%$hd122870122886%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt122869122883%_)))
                     (_%$tl122871122889%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt122869122883%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl122871122889%_))
                    (let* ((_%$tgt122872122893%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl122871122889%_)))
                           (_%$hd122873122896%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt122872122893%_)))
                           (_%$tl122874122899%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt122872122893%_)))
                           (_%hd122903%_ _%$hd122873122896%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl122874122899%_))
                          (let* ((_%$tgt122875122905%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl122874122899%_)))
                                 (_%$hd122876122908%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122875122905%_)))
                                 (_%$tl122877122911%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122875122905%_)))
                                 (_%body122915%_ _%$hd122876122908%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl122877122911%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd122903%_)
                                             (cons (__compile _%body122915%_)
                                                   '())))
                                 _%stx122864%_)
                                (_%$E122868122880%_)))
                          (_%$E122868122880%_)))
                    (_%$E122868122880%_)))
              (_%$E122868122880%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx122656%_)
        (letrec ((_%variadic?122658%_
                  (lambda (_%hd122829%_)
                    (let* ((_%$e122831%_ _%hd122829%_)
                           (_%$E122833122849%_
                            (lambda ()
                              (let ((_%$E122834122846%_
                                     (lambda ()
                                       (let ((_%$E122835122843%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e122831%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e122831%_))
                                            '())
                                    '#f
                                    (_%$E122834122846%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e122831%_))
                          (let* ((_%$tgt122836122852%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e122831%_)))
                                 (_%$hd122837122855%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122836122852%_)))
                                 (_%$tl122838122858%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122836122852%_)))
                                 (_%rest122862%_ _%$tl122838122858%_))
                            (_%variadic?122658%_ _%rest122862%_))
                          (_%$E122833122849%_)))))
                 (_%arity122659%_
                  (lambda (_%hd122794%_)
                    (let _%lp122796%_ ((_%rest122798%_ _%hd122794%_)
                                       (_%k122799%_ '0))
                      (let* ((_%$e122801%_ _%rest122798%_)
                             (_%$E122803122814%_
                              (lambda ()
                                (let ((_%$E122804122811%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e122801%_)))))
                                  _%k122799%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e122801%_))
                            (let* ((_%$tgt122805122817%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e122801%_)))
                                   (_%$hd122806122820%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt122805122817%_)))
                                   (_%$tl122807122823%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt122805122817%_)))
                                   (_%rest122827%_ _%$tl122807122823%_))
                              (_%lp122796%_
                               _%rest122827%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k122799%_ '1))))
                            (_%$E122803122814%_))))))
                 (_%generate122660%_
                  (lambda (_%rest122721%_ _%args122722%_ _%len122723%_)
                    (let* ((_%$e122725%_ _%rest122721%_)
                           (_%$E122727122738%_
                            (lambda ()
                              (let ((_%$E122728122735%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e122725%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args122722%_ '())))
                                 _%stx122656%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e122725%_))
                          (let* ((_%$tgt122729122741%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e122725%_)))
                                 (_%$hd122730122744%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122729122741%_)))
                                 (_%$tl122731122747%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122729122741%_)))
                                 (_%clause122751%_ _%$hd122730122744%_)
                                 (_%rest122753%_ _%$tl122731122747%_)
                                 (_%$e122755%_ _%clause122751%_)
                                 (_%$E122757122766%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e122755%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e122755%_))
                                (let* ((_%$tgt122758122769%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e122755%_)))
                                       (_%$hd122759122772%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt122758122769%_)))
                                       (_%$tl122760122775%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt122758122769%_)))
                                       (_%hd122779%_ _%$hd122759122772%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl122760122775%_))
                                      (let* ((_%$tgt122761122781%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl122760122775%_)))
                                             (_%$hd122762122784%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt122761122781%_)))
                                             (_%$tl122763122787%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt122761122781%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl122763122787%_))
                                                    '())
                                            (let ((_%clen122791%_
                                                   (_%arity122659%_
                                                    _%hd122779%_))
                                                  (_%cmp122792%_
                                                   (if (_%variadic?122658%_
                                                        _%hd122779%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp122792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len122723%_ (cons _%clen122791%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause122751%_))
                                      (cons _%args122722%_ '())))
                          _%stx122656%_)
                         (cons (_%generate122660%_
                                _%rest122753%_
                                _%args122722%_
                                _%len122723%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx122656%_))
                                            (_%$E122757122766%_)))
                                      (_%$E122757122766%_)))
                                (_%$E122757122766%_)))
                          (_%$E122727122738%_))))))
          (let* ((_%$e122662%_ _%stx122656%_)
                 (_%$E122664122696%_
                  (lambda ()
                    (let ((_%$E122665122678%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e122662%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e122662%_))
                          (let* ((_%$tgt122666122681%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e122662%_)))
                                 (_%$hd122667122684%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122666122681%_)))
                                 (_%$tl122668122687%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122666122681%_)))
                                 (_%clauses122691%_ _%$tl122668122687%_))
                            (let ((_%args122693%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx122656%_))
                                  (_%len122694%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx122656%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args122693%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len122694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args122693%_ '()))
                                         _%stx122656%_)
                                        '()))
                            '())
                      (cons (_%generate122660%_
                             _%clauses122691%_
                             _%args122693%_
                             _%len122694%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx122656%_)
                                                 '())))
                               _%stx122656%_)))
                          (_%$E122665122678%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e122662%_))
                (let* ((_%$tgt122669122699%_
                        (let () (declare (not safe)) (__AST-e _%$e122662%_)))
                       (_%$hd122670122702%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt122669122699%_)))
                       (_%$tl122671122705%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt122669122699%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl122671122705%_))
                      (let* ((_%$tgt122672122709%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl122671122705%_)))
                             (_%$hd122673122712%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt122672122709%_)))
                             (_%$tl122674122715%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt122672122709%_)))
                             (_%clause122719%_ _%$hd122673122712%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl122674122715%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause122719%_))
                            (_%$E122664122696%_)))
                      (_%$E122664122696%_)))
                (_%$E122664122696%_))))))
    (define __compile-let-form
      (lambda (_%stx122425%_ _%compile-simple122426%_ _%compile-values122427%_)
        (letrec ((_%simple-bind?122429%_
                  (lambda (_%hd122614%_)
                    (let* ((_%hd122615122625%_ _%hd122614%_)
                           (_%else122618122633%_ (lambda () '#f)))
                      (let ((_%K122621122646%_ (lambda (_%id122644%_) '#t))
                            (_%K122620122638%_ (lambda () '#t)))
                        (let ((_%try-match122617122641%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd122615122625%_ '#f))
                                     (_%K122620122638%_)
                                     (_%else122618122633%_)))))
                          (if (pair? _%hd122615122625%_)
                              (let ((_%tl122623122651%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd122615122625%_)))
                                    (_%hd122622122649%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd122615122625%_))))
                                (if (null? _%tl122623122651%_)
                                    (let ((_%id122654%_ _%hd122622122649%_))
                                      (_%K122621122646%_ _%id122654%_))
                                    (_%try-match122617122641%_)))
                              (_%try-match122617122641%_)))))))
                 (_%car-e122430%_
                  (lambda (_%hd122612%_)
                    (if (pair? _%hd122612%_)
                        (let () (declare (not safe)) (##car _%hd122612%_))
                        _%hd122612%_))))
          (let* ((_%$e122432%_ _%stx122425%_)
                 (_%$E122434122577%_
                  (lambda ()
                    (let ((_%$E122435122457%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e122432%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e122432%_))
                          (let* ((_%$tgt122436122460%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e122432%_)))
                                 (_%$hd122437122463%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122436122460%_)))
                                 (_%$tl122438122466%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122436122460%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl122438122466%_))
                                (let* ((_%$tgt122439122470%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl122438122466%_)))
                                       (_%$hd122440122473%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt122439122470%_)))
                                       (_%$tl122441122476%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt122439122470%_)))
                                       (_%hd122480%_ _%$hd122440122473%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl122441122476%_))
                                      (let* ((_%$tgt122442122482%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl122441122476%_)))
                                             (_%$hd122443122485%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt122442122482%_)))
                                             (_%$tl122444122488%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt122442122482%_)))
                                             (_%body122492%_
                                              _%$hd122443122485%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl122444122488%_))
                                                    '())
                                            (let* ((_%hd-ids122532%_
                                                    (map (lambda (_%bind122494%_)
                                                           (let* ((_%$e122496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind122494%_)
                          (_%$E122498122507%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e122496%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e122496%_))
                         (let* ((_%$tgt122499122510%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e122496%_)))
                                (_%$hd122500122513%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt122499122510%_)))
                                (_%$tl122501122516%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt122499122510%_)))
                                (_%ids122520%_ _%$hd122500122513%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl122501122516%_))
                               (let* ((_%$tgt122502122522%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl122501122516%_)))
                                      (_%$hd122503122525%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt122502122522%_)))
                                      (_%$tl122504122528%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt122502122522%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl122504122528%_))
                                             '())
                                     _%ids122520%_
                                     (_%$E122498122507%_)))
                               (_%$E122498122507%_)))
                         (_%$E122498122507%_))))
                 _%hd122480%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs122572%_
                                                    (map (lambda (_%bind122534%_)
                                                           (let* ((_%$e122536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind122534%_)
                          (_%$E122538122547%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e122536%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e122536%_))
                         (let* ((_%$tgt122539122550%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e122536%_)))
                                (_%$hd122540122553%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt122539122550%_)))
                                (_%$tl122541122556%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt122539122550%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl122541122556%_))
                               (let* ((_%$tgt122542122560%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl122541122556%_)))
                                      (_%$hd122543122563%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt122542122560%_)))
                                      (_%$tl122544122566%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt122542122560%_)))
                                      (_%expr122570%_ _%$hd122543122563%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl122544122566%_))
                                             '())
                                     (__compile _%expr122570%_)
                                     (_%$E122538122547%_)))
                               (_%$E122538122547%_)))
                         (_%$E122538122547%_))))
                 _%hd122480%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body122574%_
                                                    (__compile
                                                     _%body122492%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?122429%_
                                                     _%hd-ids122532%_))
                                                  (_%compile-simple122426%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e122430%_
                                                            _%hd-ids122532%_))
                                                   _%exprs122572%_
                                                   _%body122574%_)
                                                  (_%compile-values122427%_
                                                   _%hd-ids122532%_
                                                   _%exprs122572%_
                                                   _%body122574%_)))
                                            (_%$E122435122457%_)))
                                      (_%$E122435122457%_)))
                                (_%$E122435122457%_)))
                          (_%$E122435122457%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e122432%_))
                (let* ((_%$tgt122445122580%_
                        (let () (declare (not safe)) (__AST-e _%$e122432%_)))
                       (_%$hd122446122583%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt122445122580%_)))
                       (_%$tl122447122586%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt122445122580%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl122447122586%_))
                      (let* ((_%$tgt122448122590%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl122447122586%_)))
                             (_%$hd122449122593%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt122448122590%_)))
                             (_%$tl122450122596%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt122448122590%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd122449122593%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl122450122596%_))
                                (let* ((_%$tgt122451122600%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl122450122596%_)))
                                       (_%$hd122452122603%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt122451122600%_)))
                                       (_%$tl122453122606%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt122451122600%_)))
                                       (_%body122610%_ _%$hd122452122603%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl122453122606%_))
                                              '())
                                      (__compile _%body122610%_)
                                      (_%$E122434122577%_)))
                                (_%$E122434122577%_))
                            (_%$E122434122577%_)))
                      (_%$E122434122577%_)))
                (_%$E122434122577%_))))))
    (define __compile-let-values%
      (lambda (_%stx122237%_)
        (letrec ((_%compile-simple122239%_
                  (lambda (_%hd-ids122421%_ _%exprs122422%_ _%body122423%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp123540
                                        (map __compile-head-id
                                             _%hd-ids122421%_)))
                                   (declare (not safe))
                                   (##map list __tmp123540 _%exprs122422%_))
                                 (cons _%body122423%_ '())))
                     _%stx122237%_)))
                 (_%compile-values122240%_
                  (lambda (_%hd-ids122336%_ _%exprs122337%_ _%body122338%_)
                    (let _%lp122340%_ ((_%rest122342%_ _%hd-ids122336%_)
                                       (_%exprs122343%_ _%exprs122337%_)
                                       (_%bind122344%_ '())
                                       (_%post122345%_ '()))
                      (let* ((_%rest122346122360%_ _%rest122342%_)
                             (_%else122349122368%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind122344%_)
                                             (cons (_%compile-post122241%_
                                                    _%post122345%_
                                                    _%body122338%_)
                                                   '())))
                                 _%stx122237%_))))
                        (let ((_%K122354122404%_
                               (lambda (_%rest122401%_ _%id122402%_)
                                 (_%lp122340%_
                                  _%rest122401%_
                                  (cdr _%exprs122343%_)
                                  (cons (cons (__compile-head-id _%id122402%_)
                                              (cons (car _%exprs122343%_) '()))
                                        _%bind122344%_)
                                  _%post122345%_)))
                              (_%K122351122386%_
                               (lambda (_%rest122372%_ _%hd122373%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd122373%_))
                                     (_%lp122340%_
                                      _%rest122372%_
                                      (cdr _%exprs122343%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd122373%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs122343%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind122344%_)
                                      _%post122345%_)
                                     (if (list? _%hd122373%_)
                                         (let* ((_%len122377%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd122373%_)))
                                                (_%tmp122379%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp122340%_
                                            _%rest122372%_
                                            (cdr _%exprs122343%_)
                                            (cons (cons _%tmp122379%_
                                                        (cons (car _%exprs122343%_)
                                                              '()))
                                                  _%bind122344%_)
                                            (cons (cons _%tmp122379%_
                                                        (cons _%len122377%_
                                                              (let ((__tmp123542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id122382%_ _%k122383%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id122382%_))
                                   (cons (__SRC__0 _%id122382%_) _%k122383%_)
                                   '#f)))
                            (__tmp123541
                             (let ()
                               (declare (not safe))
                               (##iota _%len122377%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp123542 _%hd122373%_ __tmp123541))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post122345%_)))
                                         (__compile-error__%
                                          _%stx122237%_
                                          _%hd122373%_))))))
                          (if (pair? _%rest122346122360%_)
                              (let ((_%tl122356122409%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest122346122360%_)))
                                    (_%hd122355122407%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest122346122360%_))))
                                (if (pair? _%hd122355122407%_)
                                    (let ((_%tl122358122414%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd122355122407%_)))
                                          (_%hd122357122412%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd122355122407%_))))
                                      (if (null? _%tl122358122414%_)
                                          (let ((_%id122417%_
                                                 _%hd122357122412%_)
                                                (_%rest122419%_
                                                 _%tl122356122409%_))
                                            (_%K122354122404%_
                                             _%rest122419%_
                                             _%id122417%_))
                                          (let ((_%hd122394%_
                                                 _%hd122355122407%_)
                                                (_%rest122396%_
                                                 _%tl122356122409%_))
                                            (_%K122351122386%_
                                             _%rest122396%_
                                             _%hd122394%_))))
                                    (let ((_%hd122394%_ _%hd122355122407%_)
                                          (_%rest122396%_ _%tl122356122409%_))
                                      (_%K122351122386%_
                                       _%rest122396%_
                                       _%hd122394%_))))
                              (_%else122349122368%_)))))))
                 (_%compile-post122241%_
                  (lambda (_%post122243%_ _%body122244%_)
                    (let _%lp122246%_ ((_%rest122248%_ _%post122243%_)
                                       (_%check122249%_ '())
                                       (_%bind122250%_ '()))
                      (let* ((_%rest122251122263%_ _%rest122248%_)
                             (_%else122253122271%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp123543
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind122250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body122244%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx122237%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp123543
                                          _%check122249%_)))
                                 _%stx122237%_)))
                             (_%K122255122310%_
                              (lambda (_%rest122274%_
                                       _%init122275%_
                                       _%len122276%_
                                       _%tmp122277%_)
                                (_%lp122246%_
                                 _%rest122274%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp122277%_
                                                    (cons _%len122276%_ '())))
                                        _%stx122237%_)
                                       _%check122249%_)
                                 (let ((__tmp123544
                                        (lambda (_%hd122279%_ _%r122280%_)
                                          (let* ((_%hd122281122288%_
                                                  _%hd122279%_)
                                                 (_%E122283122292%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd122281122288%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K122284122298%_
                                                  (lambda (_%k122295%_
                                                           _%id122296%_)
                                                    (cons (cons _%id122296%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp122277%_
                                          (cons _%k122295%_ '())))
                              '()))
                  _%r122280%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd122281122288%_)
                                                (let ((_%hd122285122301%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd122281122288%_)))
                                                      (_%tl122286122303%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd122281122288%_))))
                                                  (let* ((_%id122306%_
                                                          _%hd122285122301%_)
                                                         (_%k122308%_
                                                          _%tl122286122303%_))
                                                    (_%K122284122298%_
                                                     _%k122308%_
                                                     _%id122306%_)))
                                                (_%E122283122292%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp123544
                                    _%bind122250%_
                                    _%init122275%_))))))
                        (if (pair? _%rest122251122263%_)
                            (let ((_%hd122256122313%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest122251122263%_)))
                                  (_%tl122257122315%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest122251122263%_))))
                              (if (pair? _%hd122256122313%_)
                                  (let ((_%hd122258122318%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd122256122313%_)))
                                        (_%tl122259122320%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd122256122313%_))))
                                    (let ((_%tmp122323%_ _%hd122258122318%_))
                                      (if (pair? _%tl122259122320%_)
                                          (let ((_%hd122260122325%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl122259122320%_)))
                                                (_%tl122261122327%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl122259122320%_))))
                                            (let* ((_%len122330%_
                                                    _%hd122260122325%_)
                                                   (_%init122332%_
                                                    _%tl122261122327%_)
                                                   (_%rest122334%_
                                                    _%tl122257122315%_))
                                              (_%K122255122310%_
                                               _%rest122334%_
                                               _%init122332%_
                                               _%len122330%_
                                               _%tmp122323%_)))
                                          (_%else122253122271%_))))
                                  (_%else122253122271%_)))
                            (_%else122253122271%_)))))))
          (__compile-let-form
           _%stx122237%_
           _%compile-simple122239%_
           _%compile-values122240%_))))
    (define __compile-letrec-values%
      (lambda (_%stx122034%_)
        (letrec ((_%compile-simple122036%_
                  (lambda (_%hd-ids122233%_ _%exprs122234%_ _%body122235%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp123545
                                        (map __compile-head-id
                                             _%hd-ids122233%_)))
                                   (declare (not safe))
                                   (##map list __tmp123545 _%exprs122234%_))
                                 (cons _%body122235%_ '())))
                     _%stx122034%_)))
                 (_%compile-values122037%_
                  (lambda (_%hd-ids122144%_ _%exprs122145%_ _%body122146%_)
                    (let _%lp122148%_ ((_%rest122150%_ _%hd-ids122144%_)
                                       (_%exprs122151%_ _%exprs122145%_)
                                       (_%pre122152%_ '())
                                       (_%bind122153%_ '())
                                       (_%post122154%_ '()))
                      (let* ((_%rest122155122169%_ _%rest122150%_)
                             (_%else122158122177%_
                              (lambda ()
                                (_%compile-inner122038%_
                                 _%pre122152%_
                                 _%bind122153%_
                                 _%post122154%_
                                 _%body122146%_))))
                        (let ((_%K122163122216%_
                               (lambda (_%rest122213%_ _%id122214%_)
                                 (_%lp122148%_
                                  _%rest122213%_
                                  (cdr _%exprs122151%_)
                                  _%pre122152%_
                                  (cons (cons (__compile-head-id _%id122214%_)
                                              (cons (car _%exprs122151%_) '()))
                                        _%bind122153%_)
                                  _%post122154%_)))
                              (_%K122160122198%_
                               (lambda (_%rest122181%_ _%hd122182%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd122182%_))
                                     (_%lp122148%_
                                      _%rest122181%_
                                      (cdr _%exprs122151%_)
                                      _%pre122152%_
                                      (cons (cons (__compile-head-id
                                                   _%hd122182%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs122151%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind122153%_)
                                      _%post122154%_)
                                     (if (list? _%hd122182%_)
                                         (let* ((_%len122186%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd122182%_)))
                                                (_%tmp122188%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp122148%_
                                            _%rest122181%_
                                            (cdr _%exprs122151%_)
                                            (let ((__tmp123546
                                                   (lambda (_%id122191%_
                                                            _%r122192%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id122191%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id122191%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r122192%_)
                 _%r122192%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp123546
                                               _%pre122152%_
                                               _%hd122182%_))
                                            (cons (cons _%tmp122188%_
                                                        (cons (car _%exprs122151%_)
                                                              '()))
                                                  _%bind122153%_)
                                            (cons (cons _%tmp122188%_
                                                        (cons _%len122186%_
                                                              (let ((__tmp123548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id122194%_ _%k122195%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id122194%_))
                                   (cons (__SRC__0 _%id122194%_) _%k122195%_)
                                   '#f)))
                            (__tmp123547
                             (let ()
                               (declare (not safe))
                               (##iota _%len122186%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp123548 _%hd122182%_ __tmp123547))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post122154%_)))
                                         (__compile-error__%
                                          _%stx122034%_
                                          _%hd122182%_))))))
                          (if (pair? _%rest122155122169%_)
                              (let ((_%tl122165122221%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest122155122169%_)))
                                    (_%hd122164122219%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest122155122169%_))))
                                (if (pair? _%hd122164122219%_)
                                    (let ((_%tl122167122226%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd122164122219%_)))
                                          (_%hd122166122224%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd122164122219%_))))
                                      (if (null? _%tl122167122226%_)
                                          (let ((_%id122229%_
                                                 _%hd122166122224%_)
                                                (_%rest122231%_
                                                 _%tl122165122221%_))
                                            (_%K122163122216%_
                                             _%rest122231%_
                                             _%id122229%_))
                                          (let ((_%hd122206%_
                                                 _%hd122164122219%_)
                                                (_%rest122208%_
                                                 _%tl122165122221%_))
                                            (_%K122160122198%_
                                             _%rest122208%_
                                             _%hd122206%_))))
                                    (let ((_%hd122206%_ _%hd122164122219%_)
                                          (_%rest122208%_ _%tl122165122221%_))
                                      (_%K122160122198%_
                                       _%rest122208%_
                                       _%hd122206%_))))
                              (_%else122158122177%_)))))))
                 (_%compile-inner122038%_
                  (lambda (_%pre122139%_
                           _%bind122140%_
                           _%post122141%_
                           _%body122142%_)
                    (if (null? _%pre122139%_)
                        (_%compile-bind122039%_
                         _%bind122140%_
                         _%post122141%_
                         _%body122142%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre122139%_)
                                     (cons (_%compile-bind122039%_
                                            _%bind122140%_
                                            _%post122141%_
                                            _%body122142%_)
                                           '())))
                         _%stx122034%_))))
                 (_%compile-bind122039%_
                  (lambda (_%bind122135%_ _%post122136%_ _%body122137%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind122135%_)
                                 (cons (_%compile-post122040%_
                                        _%post122136%_
                                        _%body122137%_)
                                       '())))
                     _%stx122034%_)))
                 (_%compile-post122040%_
                  (lambda (_%post122042%_ _%body122043%_)
                    (let _%lp122045%_ ((_%rest122047%_ _%post122042%_)
                                       (_%check122048%_ '())
                                       (_%bind122049%_ '()))
                      (let* ((_%rest122050122062%_ _%rest122047%_)
                             (_%else122052122070%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp123549
                                              (let ((__tmp123550
                                                     (cons _%body122043%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp123550
                                                 _%bind122049%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp123549
                                          _%check122048%_)))
                                 _%stx122034%_)))
                             (_%K122054122109%_
                              (lambda (_%rest122073%_
                                       _%init122074%_
                                       _%len122075%_
                                       _%tmp122076%_)
                                (_%lp122045%_
                                 _%rest122073%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp122076%_
                                                    (cons _%len122075%_ '())))
                                        _%stx122034%_)
                                       _%check122048%_)
                                 (let ((__tmp123551
                                        (lambda (_%hd122078%_ _%r122079%_)
                                          (let* ((_%hd122080122087%_
                                                  _%hd122078%_)
                                                 (_%E122082122091%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd122080122087%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K122083122097%_
                                                  (lambda (_%k122094%_
                                                           _%id122095%_)
                                                    (cons (cons 'set!
                                                                (cons _%id122095%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp122076%_
                                                (cons _%k122094%_ '())))
                                    '())))
                  _%r122079%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd122080122087%_)
                                                (let ((_%hd122084122100%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd122080122087%_)))
                                                      (_%tl122085122102%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd122080122087%_))))
                                                  (let* ((_%id122105%_
                                                          _%hd122084122100%_)
                                                         (_%k122107%_
                                                          _%tl122085122102%_))
                                                    (_%K122083122097%_
                                                     _%k122107%_
                                                     _%id122105%_)))
                                                (_%E122082122091%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp123551
                                    _%bind122049%_
                                    _%init122074%_))))))
                        (if (pair? _%rest122050122062%_)
                            (let ((_%hd122055122112%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest122050122062%_)))
                                  (_%tl122056122114%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest122050122062%_))))
                              (if (pair? _%hd122055122112%_)
                                  (let ((_%hd122057122117%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd122055122112%_)))
                                        (_%tl122058122119%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd122055122112%_))))
                                    (let ((_%tmp122122%_ _%hd122057122117%_))
                                      (if (pair? _%tl122058122119%_)
                                          (let ((_%hd122059122124%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl122058122119%_)))
                                                (_%tl122060122126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl122058122119%_))))
                                            (let* ((_%len122129%_
                                                    _%hd122059122124%_)
                                                   (_%init122131%_
                                                    _%tl122060122126%_)
                                                   (_%rest122133%_
                                                    _%tl122056122114%_))
                                              (_%K122054122109%_
                                               _%rest122133%_
                                               _%init122131%_
                                               _%len122129%_
                                               _%tmp122122%_)))
                                          (_%else122052122070%_))))
                                  (_%else122052122070%_)))
                            (_%else122052122070%_)))))))
          (__compile-let-form
           _%stx122034%_
           _%compile-simple122036%_
           _%compile-values122037%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx121785%_)
        (letrec ((_%compile-simple121787%_
                  (lambda (_%hd-ids122030%_ _%exprs122031%_ _%body122032%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp123552
                                        (map __compile-head-id
                                             _%hd-ids122030%_)))
                                   (declare (not safe))
                                   (##map list __tmp123552 _%exprs122031%_))
                                 (cons _%body122032%_ '())))
                     _%stx121785%_)))
                 (_%compile-values121788%_
                  (lambda (_%hd-ids121937%_ _%exprs121938%_ _%body121939%_)
                    (let _%lp121941%_ ((_%rest121943%_ _%hd-ids121937%_)
                                       (_%exprs121944%_ _%exprs121938%_)
                                       (_%bind121945%_ '())
                                       (_%post121946%_ '()))
                      (let* ((_%rest121947121961%_ _%rest121943%_)
                             (_%else121950121969%_
                              (lambda ()
                                (_%compile-bind121789%_
                                 _%bind121945%_
                                 _%post121946%_
                                 _%body121939%_))))
                        (let ((_%K121955122013%_
                               (lambda (_%rest122008%_ _%hd122009%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd122009%_))
                                     (let ((_%id122011%_
                                            (__SRC__0 _%hd122009%_)))
                                       (_%lp121941%_
                                        _%rest122008%_
                                        (cdr _%exprs121944%_)
                                        (cons (cons _%id122011%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind121945%_)
                                        (cons (cons _%id122011%_
                                                    (cons (car _%exprs121944%_)
                                                          '()))
                                              _%post121946%_)))
                                     (_%lp121941%_
                                      _%rest122008%_
                                      (cdr _%exprs121944%_)
                                      _%bind121945%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs121944%_)
                                                        '()))
                                            _%post121946%_)))))
                              (_%K121952121993%_
                               (lambda (_%rest121973%_ _%hd121974%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd121974%_))
                                     (let ((_%id121977%_
                                            (__SRC__0 _%hd121974%_)))
                                       (_%lp121941%_
                                        _%rest121973%_
                                        (cdr _%exprs121944%_)
                                        (cons (cons _%id121977%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind121945%_)
                                        (cons (cons _%id121977%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs121944%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post121946%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd121974%_))
                                         (if (list? _%hd121974%_)
                                             (let* ((_%len121981%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd121974%_)))
                                                    (_%tmp121983%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp121941%_
                                                _%rest121973%_
                                                (cdr _%exprs121944%_)
                                                (let ((__tmp123553
                                                       (lambda (_%id121986%_
                                                                _%r121987%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id121986%_))
                     (cons (cons (__SRC__0 _%id121986%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r121987%_)
                     _%r121987%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp123553
                                                   _%bind121945%_
                                                   _%hd121974%_))
                                                (cons (cons _%tmp121983%_
                                                            (cons (car _%exprs121944%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len121981%_
                                (let ((__tmp123555
                                       (lambda (_%id121989%_ _%k121990%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id121989%_))
                                             (cons (__SRC__0 _%id121989%_)
                                                   _%k121990%_)
                                             '#f)))
                                      (__tmp123554
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len121981%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp123555
                                   _%hd121974%_
                                   __tmp123554)))))
              _%post121946%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx121785%_
                                              _%hd121974%_))
                                         (_%lp121941%_
                                          _%rest121973%_
                                          (cdr _%exprs121944%_)
                                          _%bind121945%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs121944%_)
                                                            '()))
                                                _%post121946%_)))))))
                          (if (pair? _%rest121947121961%_)
                              (let ((_%tl121957122018%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest121947121961%_)))
                                    (_%hd121956122016%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest121947121961%_))))
                                (if (pair? _%hd121956122016%_)
                                    (let ((_%tl121959122023%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd121956122016%_)))
                                          (_%hd121958122021%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd121956122016%_))))
                                      (if (null? _%tl121959122023%_)
                                          (let ((_%hd122026%_
                                                 _%hd121958122021%_)
                                                (_%rest122028%_
                                                 _%tl121957122018%_))
                                            (_%K121955122013%_
                                             _%rest122028%_
                                             _%hd122026%_))
                                          (let ((_%hd122001%_
                                                 _%hd121956122016%_)
                                                (_%rest122003%_
                                                 _%tl121957122018%_))
                                            (_%K121952121993%_
                                             _%rest122003%_
                                             _%hd122001%_))))
                                    (let ((_%hd122001%_ _%hd121956122016%_)
                                          (_%rest122003%_ _%tl121957122018%_))
                                      (_%K121952121993%_
                                       _%rest122003%_
                                       _%hd122001%_))))
                              (_%else121950121969%_)))))))
                 (_%compile-bind121789%_
                  (lambda (_%bind121933%_ _%post121934%_ _%body121935%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind121933%_)
                                 (cons (_%compile-post121790%_
                                        _%post121934%_
                                        _%body121935%_)
                                       '())))
                     _%stx121785%_)))
                 (_%compile-post121790%_
                  (lambda (_%post121792%_ _%body121793%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp123556
                                  (let ((__tmp123558
                                         (lambda (_%hd121795%_ _%r121796%_)
                                           (let* ((_%hd121797121820%_
                                                   _%hd121795%_)
                                                  (_%E121801121824%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd121797121820%_
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
                                             (let ((_%K121814121918%_
                                                    (lambda (_%expr121916%_)
                                                      (cons _%expr121916%_
                                                            _%r121796%_)))
                                                   (_%K121809121896%_
                                                    (lambda (_%expr121893%_
                                                             _%id121894%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id121894%_ (cons _%expr121893%_ '())))
                     _%stx121785%_)
                    _%r121796%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K121802121863%_
                                                    (lambda (_%init121828%_
                                                             _%len121829%_
                                                             _%expr121830%_
                                                             _%tmp121831%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp121831%_
                                             (cons _%expr121830%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp121831%_
                                                    (cons _%len121829%_ '())))
                                        _%stx121785%_)
                                       (let ((__tmp123559
                                              (map (lambda (_%hd121833%_)
                                                     (let* ((_%hd121834121841%_
                                                             _%hd121833%_)
                                                            (_%E121836121845%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd121834121841%_
                                '([id . k])))
                       '#!void))
                    (_%K121837121851%_
                     (lambda (_%k121848%_ _%id121849%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id121849%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp121831%_
                                                      (cons _%k121848%_ '())))
                                          '())))
                        _%stx121785%_))))
               (if (pair? _%hd121834121841%_)
                   (let ((_%hd121838121854%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd121834121841%_)))
                         (_%tl121839121856%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd121834121841%_))))
                     (let* ((_%id121859%_ _%hd121838121854%_)
                            (_%k121861%_ _%tl121839121856%_))
                       (_%K121837121851%_ _%k121861%_ _%id121859%_)))
                   (_%E121836121845%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init121828%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp123559)))))
                     _%stx121785%_)
                    _%r121796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match123412123413%_
                                                       (lambda (_%hd121803121866%_
                                                                _%tl121804121868%_
                                                                _%hd121805121873%_
                                                                _%tl121806121875%_)
                                                         (let ((_%tmp121871%_
                                                                _%hd121803121866%_)
                                                               (_%expr121878%_
                                                                _%hd121805121873%_))
                                                           (_%E121801121824%_))))
                                                      (_%__match123406123407%_
                                                       (lambda (_%hd121803121866%_
                                                                _%tl121804121868%_)
                                                         (let ((_%tmp121871%_
                                                                _%hd121803121866%_))
                                                           (_%E121801121824%_)))))
                                                 (if (pair? _%hd121797121820%_)
                                                     (let ((_%tl121816121923%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd121797121820%_)))
                                                           (_%hd121815121921%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd121797121820%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd121815121921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl121816121923%_)
                       (let ((_%tl121818121928%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl121816121923%_)))
                             (_%hd121817121926%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl121816121923%_))))
                         (if (null? _%tl121818121928%_)
                             (let ((_%expr121931%_ _%hd121817121926%_))
                               (_%K121814121918%_ _%expr121931%_))
                             (if (pair? _%tl121818121928%_)
                                 (let ((_%tl121808121882%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl121818121928%_)))
                                       (_%hd121807121880%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl121818121928%_))))
                                   (let ((_%tmp121871%_ _%hd121815121921%_)
                                         (_%expr121878%_ _%hd121817121926%_)
                                         (_%len121885%_ _%hd121807121880%_)
                                         (_%init121887%_ _%tl121808121882%_))
                                     (_%K121802121863%_
                                      _%init121887%_
                                      _%len121885%_
                                      _%expr121878%_
                                      _%tmp121871%_)))
                                 (_%__match123412123413%_
                                  _%hd121815121921%_
                                  _%tl121816121923%_
                                  _%hd121817121926%_
                                  _%tl121818121928%_))))
                       (_%__match123406123407%_
                        _%hd121815121921%_
                        _%tl121816121923%_))
                   (if (pair? _%tl121816121923%_)
                       (let ((_%tl121813121908%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl121816121923%_)))
                             (_%hd121812121906%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl121816121923%_))))
                         (if (null? _%tl121813121908%_)
                             (let ((_%id121904%_ _%hd121815121921%_)
                                   (_%expr121911%_ _%hd121812121906%_))
                               (_%K121809121896%_ _%expr121911%_ _%id121904%_))
                             (if (pair? _%tl121813121908%_)
                                 (let ((_%tl121808121882%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl121813121908%_)))
                                       (_%hd121807121880%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl121813121908%_))))
                                   (let ((_%tmp121871%_ _%hd121815121921%_)
                                         (_%expr121878%_ _%hd121812121906%_)
                                         (_%len121885%_ _%hd121807121880%_)
                                         (_%init121887%_ _%tl121808121882%_))
                                     (_%K121802121863%_
                                      _%init121887%_
                                      _%len121885%_
                                      _%expr121878%_
                                      _%tmp121871%_)))
                                 (_%__match123412123413%_
                                  _%hd121815121921%_
                                  _%tl121816121923%_
                                  _%hd121812121906%_
                                  _%tl121813121908%_))))
                       (_%__match123406123407%_
                        _%hd121815121921%_
                        _%tl121816121923%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121801121824%_)))))))
                                        (__tmp123557 (list _%body121793%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp123558
                                     __tmp123557
                                     _%post121792%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp123556)))
                     _%stx121785%_))))
          (__compile-let-form
           _%stx121785%_
           _%compile-simple121787%_
           _%compile-values121788%_))))
    (define __compile-call%
      (lambda (_%stx121745%_)
        (let* ((_%$e121747%_ _%stx121745%_)
               (_%$E121749121758%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121747%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121747%_))
              (let* ((_%$tgt121750121761%_
                      (let () (declare (not safe)) (__AST-e _%$e121747%_)))
                     (_%$hd121751121764%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121750121761%_)))
                     (_%$tl121752121767%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121750121761%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121752121767%_))
                    (let* ((_%$tgt121753121771%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121752121767%_)))
                           (_%$hd121754121774%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121753121771%_)))
                           (_%$tl121755121777%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121753121771%_)))
                           (_%rator121781%_ _%$hd121754121774%_)
                           (_%rands121783%_ _%$tl121755121777%_))
                      (__SRC__%
                       (cons (__compile _%rator121781%_)
                             (map __compile _%rands121783%_))
                       _%stx121745%_))
                    (_%$E121749121758%_)))
              (_%$E121749121758%_)))))
    (define __compile-ref%
      (lambda (_%stx121707%_)
        (let* ((_%$e121709%_ _%stx121707%_)
               (_%$E121711121720%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121709%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121709%_))
              (let* ((_%$tgt121712121723%_
                      (let () (declare (not safe)) (__AST-e _%$e121709%_)))
                     (_%$hd121713121726%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121712121723%_)))
                     (_%$tl121714121729%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121712121723%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121714121729%_))
                    (let* ((_%$tgt121715121733%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121714121729%_)))
                           (_%$hd121716121736%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121715121733%_)))
                           (_%$tl121717121739%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121715121733%_)))
                           (_%id121743%_ _%$hd121716121736%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121717121739%_))
                                  '())
                          (__SRC__% _%id121743%_ _%stx121707%_)
                          (_%$E121711121720%_)))
                    (_%$E121711121720%_)))
              (_%$E121711121720%_)))))
    (define __compile-setq%
      (lambda (_%stx121654%_)
        (let* ((_%$e121656%_ _%stx121654%_)
               (_%$E121658121670%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121656%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121656%_))
              (let* ((_%$tgt121659121673%_
                      (let () (declare (not safe)) (__AST-e _%$e121656%_)))
                     (_%$hd121660121676%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121659121673%_)))
                     (_%$tl121661121679%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121659121673%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121661121679%_))
                    (let* ((_%$tgt121662121683%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121661121679%_)))
                           (_%$hd121663121686%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121662121683%_)))
                           (_%$tl121664121689%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121662121683%_)))
                           (_%id121693%_ _%$hd121663121686%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl121664121689%_))
                          (let* ((_%$tgt121665121695%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121664121689%_)))
                                 (_%$hd121666121698%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt121665121695%_)))
                                 (_%$tl121667121701%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt121665121695%_)))
                                 (_%expr121705%_ _%$hd121666121698%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl121667121701%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id121693%_
                                              _%stx121654%_)
                                             (cons (__compile _%expr121705%_)
                                                   '())))
                                 _%stx121654%_)
                                (_%$E121658121670%_)))
                          (_%$E121658121670%_)))
                    (_%$E121658121670%_)))
              (_%$E121658121670%_)))))
    (define __compile-if%
      (lambda (_%stx121586%_)
        (let* ((_%$e121588%_ _%stx121586%_)
               (_%$E121590121605%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121588%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121588%_))
              (let* ((_%$tgt121591121608%_
                      (let () (declare (not safe)) (__AST-e _%$e121588%_)))
                     (_%$hd121592121611%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121591121608%_)))
                     (_%$tl121593121614%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121591121608%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121593121614%_))
                    (let* ((_%$tgt121594121618%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121593121614%_)))
                           (_%$hd121595121621%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121594121618%_)))
                           (_%$tl121596121624%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121594121618%_)))
                           (_%p121628%_ _%$hd121595121621%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl121596121624%_))
                          (let* ((_%$tgt121597121630%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121596121624%_)))
                                 (_%$hd121598121633%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt121597121630%_)))
                                 (_%$tl121599121636%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt121597121630%_)))
                                 (_%t121640%_ _%$hd121598121633%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl121599121636%_))
                                (let* ((_%$tgt121600121642%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl121599121636%_)))
                                       (_%$hd121601121645%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt121600121642%_)))
                                       (_%$tl121602121648%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt121600121642%_)))
                                       (_%f121652%_ _%$hd121601121645%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl121602121648%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p121628%_)
                                                   (cons (__compile
                                                          _%t121640%_)
                                                         (cons (__compile
                                                                _%f121652%_)
                                                               '()))))
                                       _%stx121586%_)
                                      (_%$E121590121605%_)))
                                (_%$E121590121605%_)))
                          (_%$E121590121605%_)))
                    (_%$E121590121605%_)))
              (_%$E121590121605%_)))))
    (define __compile-quote%
      (lambda (_%stx121548%_)
        (let* ((_%$e121550%_ _%stx121548%_)
               (_%$E121552121561%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121550%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121550%_))
              (let* ((_%$tgt121553121564%_
                      (let () (declare (not safe)) (__AST-e _%$e121550%_)))
                     (_%$hd121554121567%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121553121564%_)))
                     (_%$tl121555121570%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121553121564%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121555121570%_))
                    (let* ((_%$tgt121556121574%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121555121570%_)))
                           (_%$hd121557121577%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121556121574%_)))
                           (_%$tl121558121580%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121556121574%_)))
                           (_%e121584%_ _%$hd121557121577%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121558121580%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e121584%_))
                                       '()))
                           _%stx121548%_)
                          (_%$E121552121561%_)))
                    (_%$E121552121561%_)))
              (_%$E121552121561%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx121510%_)
        (let* ((_%$e121512%_ _%stx121510%_)
               (_%$E121514121523%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121512%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121512%_))
              (let* ((_%$tgt121515121526%_
                      (let () (declare (not safe)) (__AST-e _%$e121512%_)))
                     (_%$hd121516121529%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121515121526%_)))
                     (_%$tl121517121532%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121515121526%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121517121532%_))
                    (let* ((_%$tgt121518121536%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121517121532%_)))
                           (_%$hd121519121539%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121518121536%_)))
                           (_%$tl121520121542%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121518121536%_)))
                           (_%e121546%_ _%$hd121519121539%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121520121542%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e121546%_ '()))
                           _%stx121510%_)
                          (_%$E121514121523%_)))
                    (_%$E121514121523%_)))
              (_%$E121514121523%_)))))
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
