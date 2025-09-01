(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1756715352)
  (begin
    (define __syntax::t
      (let ((__tmp123517 (list)) (__tmp123516 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp123517
         '(e id)
         __tmp123516
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args123321%_
        (apply make-instance __syntax::t _%$args123321%_)))
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
      (let ((__tmp123519 (list __syntax::t))
            (__tmp123518 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp123519
         '()
         __tmp123518
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args123318%_
        (apply make-instance __core-form::t _%$args123318%_)))
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
      (let ((__tmp123521 (list __core-form::t))
            (__tmp123520 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp123521
         '()
         __tmp123520
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args123315%_
        (apply make-instance __core-expression::t _%$args123315%_)))
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
      (let ((__tmp123523 (list __core-form::t))
            (__tmp123522 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp123523
         '()
         __tmp123522
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args123312%_
        (apply make-instance __core-special-form::t _%$args123312%_)))
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
      (lambda (_%id123310%_)
        (let ((__tmp123524
               (let () (declare (not safe)) (__AST-e _%id123310%_))))
          (declare (not safe))
          (__hash-get __core __tmp123524))))
    (define __core-bound-id?__%
      (lambda (_%id123293%_ _%is?123294%_)
        (let ((_%$e123296%_ (__core-resolve _%id123293%_)))
          (if _%$e123296%_ (_%is?123294%_ _%$e123296%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id123303%_)
        (let ((_%is?123305%_ true))
          (__core-bound-id?__% _%id123303%_ _%is?123305%_))))
    (define __core-bound-id?
      (lambda _g123525_
        (let ((_g123526_ (let () (declare (not safe)) (##length _g123525_))))
          (cond ((let () (declare (not safe)) (##fx= _g123526_ 1))
                 (apply __core-bound-id?__0 _g123525_))
                ((let () (declare (not safe)) (##fx= _g123526_ 2))
                 (apply __core-bound-id?__% _g123525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g123525_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id123276%_ _%e123277%_ _%make123278%_)
        (let ((__tmp123527
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e123277%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e123277%_
                   (_%make123278%_ _%e123277%_ _%id123276%_))))
          (declare (not safe))
          (__hash-put! __core _%id123276%_ __tmp123527))))
    (define __core-bind-syntax!__0
      (lambda (_%id123283%_ _%e123284%_)
        (let ((_%make123286%_ make-__syntax))
          (__core-bind-syntax!__% _%id123283%_ _%e123284%_ _%make123286%_))))
    (define __core-bind-syntax!
      (lambda _g123528_
        (let ((_g123529_ (let () (declare (not safe)) (##length _g123528_))))
          (cond ((let () (declare (not safe)) (##fx= _g123529_ 2))
                 (apply __core-bind-syntax!__0 _g123528_))
                ((let () (declare (not safe)) (##fx= _g123529_ 3))
                 (apply __core-bind-syntax!__% _g123528_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g123528_))))))
    (define __SRC__%
      (lambda (_%e123256%_ _%src-stx123257%_)
        (if (or (pair? _%e123256%_) (symbol? _%e123256%_))
            (let ((__tmp123530
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx123257%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx123257%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e123256%_ __tmp123530))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e123256%_ 'gerbil#AST::t))
                (let ((__tmp123532
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e123256%_ '1 '#f '#f)))
                      (__tmp123531
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e123256%_)))))
                  (declare (not safe))
                  (##make-source __tmp123532 __tmp123531))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e123256%_))))))
    (define __SRC__0
      (lambda (_%e123268%_)
        (let ((_%src-stx123270%_ '#f))
          (__SRC__% _%e123268%_ _%src-stx123270%_))))
    (define __SRC
      (lambda _g123533_
        (let ((_g123534_ (let () (declare (not safe)) (##length _g123533_))))
          (cond ((let () (declare (not safe)) (##fx= _g123534_ 1))
                 (apply __SRC__0 _g123533_))
                ((let () (declare (not safe)) (##fx= _g123534_ 2))
                 (apply __SRC__% _g123533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g123533_))))))
    (define __locat
      (lambda (_%loc123253%_)
        (if (let () (declare (not safe)) (##locat? _%loc123253%_))
            _%loc123253%_
            '#f)))
    (define __check-values
      (lambda (_%obj123248%_ _%k123249%_)
        (let ((_%count123251%_
               (if (let () (declare (not safe)) (##values? _%obj123248%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj123248%_))
                   '1)))
          (if (fx= _%count123251%_ _%k123249%_)
              '#!void
              (let ((__tmp123536
                     (if (fx< _%count123251%_ _%k123249%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp123535
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj123248%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj123248%_))
                         _%obj123248%_)))
                (declare (not safe))
                (error __tmp123536 __tmp123535 _%k123249%_))))))
    (define __compile
      (lambda (_%stx123217%_)
        (let* ((_%$e123219%_ _%stx123217%_)
               (_%$E123221123227%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e123219%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e123219%_))
              (let* ((_%$tgt123222123230%_
                      (let () (declare (not safe)) (__AST-e _%$e123219%_)))
                     (_%$hd123223123233%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt123222123230%_)))
                     (_%$tl123224123236%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt123222123230%_)))
                     (_%form123240%_ _%$hd123223123233%_)
                     (_%$e123242%_ (__core-resolve _%form123240%_)))
                (if _%$e123242%_
                    ((lambda (_%bind123245%_)
                       ((##structure-ref _%bind123245%_ '1 __syntax::t '#f)
                        _%stx123217%_))
                     _%$e123242%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx123217%_
                       _%form123240%_))))
              (_%$E123221123227%_)))))
    (define __compile-error__%
      (lambda (_%stx123204%_ _%detail123205%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx123204%_
           _%detail123205%_))))
    (define __compile-error__0
      (lambda (_%stx123210%_)
        (let ((_%detail123212%_ '#f))
          (__compile-error__% _%stx123210%_ _%detail123212%_))))
    (define __compile-error
      (lambda _g123537_
        (let ((_g123538_ (let () (declare (not safe)) (##length _g123537_))))
          (cond ((let () (declare (not safe)) (##fx= _g123538_ 1))
                 (apply __compile-error__0 _g123537_))
                ((let () (declare (not safe)) (##fx= _g123538_ 2))
                 (apply __compile-error__% _g123537_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g123537_))))))
    (define __compile-ignore%
      (lambda (_%stx123201%_) (__SRC__% ''#!void _%stx123201%_)))
    (define __compile-begin%
      (lambda (_%stx123176%_)
        (let* ((_%$e123178%_ _%stx123176%_)
               (_%$E123180123186%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e123178%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e123178%_))
              (let* ((_%$tgt123181123189%_
                      (let () (declare (not safe)) (__AST-e _%$e123178%_)))
                     (_%$hd123182123192%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt123181123189%_)))
                     (_%$tl123183123195%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt123181123189%_)))
                     (_%body123199%_ _%$tl123183123195%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body123199%_))
                 _%stx123176%_))
              (_%$E123180123186%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx123151%_)
        (let* ((_%$e123153%_ _%stx123151%_)
               (_%$E123155123161%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e123153%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e123153%_))
              (let* ((_%$tgt123156123164%_
                      (let () (declare (not safe)) (__AST-e _%$e123153%_)))
                     (_%$hd123157123167%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt123156123164%_)))
                     (_%$tl123158123170%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt123156123164%_)))
                     (_%body123174%_ _%$tl123158123170%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body123174%_)))
                 _%stx123151%_))
              (_%$E123155123161%_)))))
    (define __compile-import%
      (lambda (_%stx123126%_)
        (let* ((_%$e123128%_ _%stx123126%_)
               (_%$E123130123136%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e123128%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e123128%_))
              (let* ((_%$tgt123131123139%_
                      (let () (declare (not safe)) (__AST-e _%$e123128%_)))
                     (_%$hd123132123142%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt123131123139%_)))
                     (_%$tl123133123145%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt123131123139%_)))
                     (_%body123149%_ _%$tl123133123145%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body123149%_ '())) '()))
                 _%stx123126%_))
              (_%$E123130123136%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx123073%_)
        (let* ((_%$e123075%_ _%stx123073%_)
               (_%$E123077123089%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e123075%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e123075%_))
              (let* ((_%$tgt123078123092%_
                      (let () (declare (not safe)) (__AST-e _%$e123075%_)))
                     (_%$hd123079123095%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt123078123092%_)))
                     (_%$tl123080123098%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt123078123092%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl123080123098%_))
                    (let* ((_%$tgt123081123102%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl123080123098%_)))
                           (_%$hd123082123105%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt123081123102%_)))
                           (_%$tl123083123108%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt123081123102%_)))
                           (_%ann123112%_ _%$hd123082123105%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl123083123108%_))
                          (let* ((_%$tgt123084123114%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl123083123108%_)))
                                 (_%$hd123085123117%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt123084123114%_)))
                                 (_%$tl123086123120%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt123084123114%_)))
                                 (_%expr123124%_ _%$hd123085123117%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl123086123120%_))
                                        '())
                                (__compile _%expr123124%_)
                                (_%$E123077123089%_)))
                          (_%$E123077123089%_)))
                    (_%$E123077123089%_)))
              (_%$E123077123089%_)))))
    (define __compile-define-values%
      (lambda (_%stx122964%_)
        (let* ((_%$e122966%_ _%stx122964%_)
               (_%$E122968122980%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e122966%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e122966%_))
              (let* ((_%$tgt122969122983%_
                      (let () (declare (not safe)) (__AST-e _%$e122966%_)))
                     (_%$hd122970122986%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt122969122983%_)))
                     (_%$tl122971122989%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt122969122983%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl122971122989%_))
                    (let* ((_%$tgt122972122993%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl122971122989%_)))
                           (_%$hd122973122996%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt122972122993%_)))
                           (_%$tl122974122999%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt122972122993%_)))
                           (_%hd123003%_ _%$hd122973122996%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl122974122999%_))
                          (let* ((_%$tgt122975123005%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl122974122999%_)))
                                 (_%$hd122976123008%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122975123005%_)))
                                 (_%$tl122977123011%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122975123005%_)))
                                 (_%expr123015%_ _%$hd122976123008%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl122977123011%_))
                                        '())
                                (let* ((_%$e123017%_ _%hd123003%_)
                                       (_%$E123019123060%_
                                        (lambda ()
                                          (let ((_%$E123020123045%_
                                                 (lambda ()
                                                   (let* ((_%$E123021123032%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e123017%_))))
                  (_%ids123035%_ _%hd123003%_)
                  (_%len123037%_ (length _%ids123035%_))
                  (_%tmp123039%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp123039%_
                                       (cons (__compile _%expr123015%_) '())))
                           _%stx122964%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp123039%_
                                             (cons _%len123037%_ '())))
                                 _%stx122964%_)
                                (let ((__tmp123539
                                       (let ((__tmp123541
                                              (lambda (_%id123042%_
                                                       _%k123043%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id123042%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id123042%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp123039%_
                                           (cons _%k123043%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx122964%_)
                                                    '#f)))
                                             (__tmp123540
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len123037%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp123541
                                          _%ids123035%_
                                          __tmp123540))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp123539)))))
              _%stx122964%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e123017%_))
                                                (let* ((_%$tgt123022123048%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e123017%_)))
                                                       (_%$hd123023123051%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt123022123048%_)))
                                                       (_%$tl123024123054%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt123022123048%_)))
                                                       (_%id123058%_
                                                        _%$hd123023123051%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl123024123054%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id123058%_)
                           (cons (__compile _%expr123015%_) '())))
               _%stx122964%_)
              (_%$E123020123045%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E123020123045%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e123017%_))
                                      (let* ((_%$tgt123025123063%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e123017%_)))
                                             (_%$hd123026123066%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt123025123063%_)))
                                             (_%$tl123027123069%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt123025123063%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd123026123066%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl123027123069%_))
                                                        '())
                                                (__compile _%expr123015%_)
                                                (_%$E123019123060%_))
                                            (_%$E123019123060%_)))
                                      (_%$E123019123060%_)))
                                (_%$E122968122980%_)))
                          (_%$E122968122980%_)))
                    (_%$E122968122980%_)))
              (_%$E122968122980%_)))))
    (define __compile-head-id
      (lambda (_%e122962%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e122962%_))
             _%e122962%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd122919%_)
        (let _%recur122921%_ ((_%rest122923%_ _%hd122919%_))
          (let* ((_%$e122925%_ _%rest122923%_)
                 (_%$E122927122945%_
                  (lambda ()
                    (let ((_%$E122928122942%_
                           (lambda ()
                             (let* ((_%$E122929122937%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e122925%_))))
                                    (_%tail122940%_ _%$e122925%_))
                               (__compile-head-id _%tail122940%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e122925%_))
                                  '())
                          '()
                          (_%$E122928122942%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e122925%_))
                (let* ((_%$tgt122930122948%_
                        (let () (declare (not safe)) (__AST-e _%$e122925%_)))
                       (_%$hd122931122951%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt122930122948%_)))
                       (_%$tl122932122954%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt122930122948%_)))
                       (_%hd122958%_ _%$hd122931122951%_)
                       (_%rest122960%_ _%$tl122932122954%_))
                  (cons (__compile-head-id _%hd122958%_)
                        (_%recur122921%_ _%rest122960%_)))
                (_%$E122927122945%_))))))
    (define __compile-lambda%
      (lambda (_%stx122866%_)
        (let* ((_%$e122868%_ _%stx122866%_)
               (_%$E122870122882%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e122868%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e122868%_))
              (let* ((_%$tgt122871122885%_
                      (let () (declare (not safe)) (__AST-e _%$e122868%_)))
                     (_%$hd122872122888%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt122871122885%_)))
                     (_%$tl122873122891%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt122871122885%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl122873122891%_))
                    (let* ((_%$tgt122874122895%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl122873122891%_)))
                           (_%$hd122875122898%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt122874122895%_)))
                           (_%$tl122876122901%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt122874122895%_)))
                           (_%hd122905%_ _%$hd122875122898%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl122876122901%_))
                          (let* ((_%$tgt122877122907%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl122876122901%_)))
                                 (_%$hd122878122910%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122877122907%_)))
                                 (_%$tl122879122913%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122877122907%_)))
                                 (_%body122917%_ _%$hd122878122910%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl122879122913%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd122905%_)
                                             (cons (__compile _%body122917%_)
                                                   '())))
                                 _%stx122866%_)
                                (_%$E122870122882%_)))
                          (_%$E122870122882%_)))
                    (_%$E122870122882%_)))
              (_%$E122870122882%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx122658%_)
        (letrec ((_%variadic?122660%_
                  (lambda (_%hd122831%_)
                    (let* ((_%$e122833%_ _%hd122831%_)
                           (_%$E122835122851%_
                            (lambda ()
                              (let ((_%$E122836122848%_
                                     (lambda ()
                                       (let ((_%$E122837122845%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e122833%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e122833%_))
                                            '())
                                    '#f
                                    (_%$E122836122848%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e122833%_))
                          (let* ((_%$tgt122838122854%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e122833%_)))
                                 (_%$hd122839122857%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122838122854%_)))
                                 (_%$tl122840122860%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122838122854%_)))
                                 (_%rest122864%_ _%$tl122840122860%_))
                            (_%variadic?122660%_ _%rest122864%_))
                          (_%$E122835122851%_)))))
                 (_%arity122661%_
                  (lambda (_%hd122796%_)
                    (let _%lp122798%_ ((_%rest122800%_ _%hd122796%_)
                                       (_%k122801%_ '0))
                      (let* ((_%$e122803%_ _%rest122800%_)
                             (_%$E122805122816%_
                              (lambda ()
                                (let ((_%$E122806122813%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e122803%_)))))
                                  _%k122801%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e122803%_))
                            (let* ((_%$tgt122807122819%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e122803%_)))
                                   (_%$hd122808122822%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt122807122819%_)))
                                   (_%$tl122809122825%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt122807122819%_)))
                                   (_%rest122829%_ _%$tl122809122825%_))
                              (_%lp122798%_
                               _%rest122829%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k122801%_ '1))))
                            (_%$E122805122816%_))))))
                 (_%generate122662%_
                  (lambda (_%rest122723%_ _%args122724%_ _%len122725%_)
                    (let* ((_%$e122727%_ _%rest122723%_)
                           (_%$E122729122740%_
                            (lambda ()
                              (let ((_%$E122730122737%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e122727%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args122724%_ '())))
                                 _%stx122658%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e122727%_))
                          (let* ((_%$tgt122731122743%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e122727%_)))
                                 (_%$hd122732122746%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122731122743%_)))
                                 (_%$tl122733122749%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122731122743%_)))
                                 (_%clause122753%_ _%$hd122732122746%_)
                                 (_%rest122755%_ _%$tl122733122749%_)
                                 (_%$e122757%_ _%clause122753%_)
                                 (_%$E122759122768%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e122757%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e122757%_))
                                (let* ((_%$tgt122760122771%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e122757%_)))
                                       (_%$hd122761122774%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt122760122771%_)))
                                       (_%$tl122762122777%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt122760122771%_)))
                                       (_%hd122781%_ _%$hd122761122774%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl122762122777%_))
                                      (let* ((_%$tgt122763122783%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl122762122777%_)))
                                             (_%$hd122764122786%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt122763122783%_)))
                                             (_%$tl122765122789%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt122763122783%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl122765122789%_))
                                                    '())
                                            (let ((_%clen122793%_
                                                   (_%arity122661%_
                                                    _%hd122781%_))
                                                  (_%cmp122794%_
                                                   (if (_%variadic?122660%_
                                                        _%hd122781%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp122794%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len122725%_ (cons _%clen122793%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause122753%_))
                                      (cons _%args122724%_ '())))
                          _%stx122658%_)
                         (cons (_%generate122662%_
                                _%rest122755%_
                                _%args122724%_
                                _%len122725%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx122658%_))
                                            (_%$E122759122768%_)))
                                      (_%$E122759122768%_)))
                                (_%$E122759122768%_)))
                          (_%$E122729122740%_))))))
          (let* ((_%$e122664%_ _%stx122658%_)
                 (_%$E122666122698%_
                  (lambda ()
                    (let ((_%$E122667122680%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e122664%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e122664%_))
                          (let* ((_%$tgt122668122683%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e122664%_)))
                                 (_%$hd122669122686%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122668122683%_)))
                                 (_%$tl122670122689%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122668122683%_)))
                                 (_%clauses122693%_ _%$tl122670122689%_))
                            (let ((_%args122695%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx122658%_))
                                  (_%len122696%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx122658%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args122695%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len122696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args122695%_ '()))
                                         _%stx122658%_)
                                        '()))
                            '())
                      (cons (_%generate122662%_
                             _%clauses122693%_
                             _%args122695%_
                             _%len122696%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx122658%_)
                                                 '())))
                               _%stx122658%_)))
                          (_%$E122667122680%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e122664%_))
                (let* ((_%$tgt122671122701%_
                        (let () (declare (not safe)) (__AST-e _%$e122664%_)))
                       (_%$hd122672122704%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt122671122701%_)))
                       (_%$tl122673122707%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt122671122701%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl122673122707%_))
                      (let* ((_%$tgt122674122711%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl122673122707%_)))
                             (_%$hd122675122714%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt122674122711%_)))
                             (_%$tl122676122717%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt122674122711%_)))
                             (_%clause122721%_ _%$hd122675122714%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl122676122717%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause122721%_))
                            (_%$E122666122698%_)))
                      (_%$E122666122698%_)))
                (_%$E122666122698%_))))))
    (define __compile-let-form
      (lambda (_%stx122427%_ _%compile-simple122428%_ _%compile-values122429%_)
        (letrec ((_%simple-bind?122431%_
                  (lambda (_%hd122616%_)
                    (let* ((_%hd122617122627%_ _%hd122616%_)
                           (_%else122620122635%_ (lambda () '#f)))
                      (let ((_%K122623122648%_ (lambda (_%id122646%_) '#t))
                            (_%K122622122640%_ (lambda () '#t)))
                        (let ((_%try-match122619122643%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd122617122627%_ '#f))
                                     (_%K122622122640%_)
                                     (_%else122620122635%_)))))
                          (if (pair? _%hd122617122627%_)
                              (let ((_%tl122625122653%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd122617122627%_)))
                                    (_%hd122624122651%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd122617122627%_))))
                                (if (null? _%tl122625122653%_)
                                    (let ((_%id122656%_ _%hd122624122651%_))
                                      (_%K122623122648%_ _%id122656%_))
                                    (_%try-match122619122643%_)))
                              (_%try-match122619122643%_)))))))
                 (_%car-e122432%_
                  (lambda (_%hd122614%_)
                    (if (pair? _%hd122614%_)
                        (let () (declare (not safe)) (##car _%hd122614%_))
                        _%hd122614%_))))
          (let* ((_%$e122434%_ _%stx122427%_)
                 (_%$E122436122579%_
                  (lambda ()
                    (let ((_%$E122437122459%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e122434%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e122434%_))
                          (let* ((_%$tgt122438122462%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e122434%_)))
                                 (_%$hd122439122465%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt122438122462%_)))
                                 (_%$tl122440122468%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt122438122462%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl122440122468%_))
                                (let* ((_%$tgt122441122472%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl122440122468%_)))
                                       (_%$hd122442122475%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt122441122472%_)))
                                       (_%$tl122443122478%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt122441122472%_)))
                                       (_%hd122482%_ _%$hd122442122475%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl122443122478%_))
                                      (let* ((_%$tgt122444122484%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl122443122478%_)))
                                             (_%$hd122445122487%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt122444122484%_)))
                                             (_%$tl122446122490%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt122444122484%_)))
                                             (_%body122494%_
                                              _%$hd122445122487%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl122446122490%_))
                                                    '())
                                            (let* ((_%hd-ids122534%_
                                                    (map (lambda (_%bind122496%_)
                                                           (let* ((_%$e122498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind122496%_)
                          (_%$E122500122509%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e122498%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e122498%_))
                         (let* ((_%$tgt122501122512%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e122498%_)))
                                (_%$hd122502122515%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt122501122512%_)))
                                (_%$tl122503122518%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt122501122512%_)))
                                (_%ids122522%_ _%$hd122502122515%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl122503122518%_))
                               (let* ((_%$tgt122504122524%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl122503122518%_)))
                                      (_%$hd122505122527%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt122504122524%_)))
                                      (_%$tl122506122530%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt122504122524%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl122506122530%_))
                                             '())
                                     _%ids122522%_
                                     (_%$E122500122509%_)))
                               (_%$E122500122509%_)))
                         (_%$E122500122509%_))))
                 _%hd122482%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs122574%_
                                                    (map (lambda (_%bind122536%_)
                                                           (let* ((_%$e122538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind122536%_)
                          (_%$E122540122549%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e122538%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e122538%_))
                         (let* ((_%$tgt122541122552%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e122538%_)))
                                (_%$hd122542122555%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt122541122552%_)))
                                (_%$tl122543122558%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt122541122552%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl122543122558%_))
                               (let* ((_%$tgt122544122562%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl122543122558%_)))
                                      (_%$hd122545122565%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt122544122562%_)))
                                      (_%$tl122546122568%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt122544122562%_)))
                                      (_%expr122572%_ _%$hd122545122565%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl122546122568%_))
                                             '())
                                     (__compile _%expr122572%_)
                                     (_%$E122540122549%_)))
                               (_%$E122540122549%_)))
                         (_%$E122540122549%_))))
                 _%hd122482%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body122576%_
                                                    (__compile
                                                     _%body122494%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?122431%_
                                                     _%hd-ids122534%_))
                                                  (_%compile-simple122428%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e122432%_
                                                            _%hd-ids122534%_))
                                                   _%exprs122574%_
                                                   _%body122576%_)
                                                  (_%compile-values122429%_
                                                   _%hd-ids122534%_
                                                   _%exprs122574%_
                                                   _%body122576%_)))
                                            (_%$E122437122459%_)))
                                      (_%$E122437122459%_)))
                                (_%$E122437122459%_)))
                          (_%$E122437122459%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e122434%_))
                (let* ((_%$tgt122447122582%_
                        (let () (declare (not safe)) (__AST-e _%$e122434%_)))
                       (_%$hd122448122585%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt122447122582%_)))
                       (_%$tl122449122588%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt122447122582%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl122449122588%_))
                      (let* ((_%$tgt122450122592%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl122449122588%_)))
                             (_%$hd122451122595%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt122450122592%_)))
                             (_%$tl122452122598%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt122450122592%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd122451122595%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl122452122598%_))
                                (let* ((_%$tgt122453122602%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl122452122598%_)))
                                       (_%$hd122454122605%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt122453122602%_)))
                                       (_%$tl122455122608%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt122453122602%_)))
                                       (_%body122612%_ _%$hd122454122605%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl122455122608%_))
                                              '())
                                      (__compile _%body122612%_)
                                      (_%$E122436122579%_)))
                                (_%$E122436122579%_))
                            (_%$E122436122579%_)))
                      (_%$E122436122579%_)))
                (_%$E122436122579%_))))))
    (define __compile-let-values%
      (lambda (_%stx122239%_)
        (letrec ((_%compile-simple122241%_
                  (lambda (_%hd-ids122423%_ _%exprs122424%_ _%body122425%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp123542
                                        (map __compile-head-id
                                             _%hd-ids122423%_)))
                                   (declare (not safe))
                                   (##map list __tmp123542 _%exprs122424%_))
                                 (cons _%body122425%_ '())))
                     _%stx122239%_)))
                 (_%compile-values122242%_
                  (lambda (_%hd-ids122338%_ _%exprs122339%_ _%body122340%_)
                    (let _%lp122342%_ ((_%rest122344%_ _%hd-ids122338%_)
                                       (_%exprs122345%_ _%exprs122339%_)
                                       (_%bind122346%_ '())
                                       (_%post122347%_ '()))
                      (let* ((_%rest122348122362%_ _%rest122344%_)
                             (_%else122351122370%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind122346%_)
                                             (cons (_%compile-post122243%_
                                                    _%post122347%_
                                                    _%body122340%_)
                                                   '())))
                                 _%stx122239%_))))
                        (let ((_%K122356122406%_
                               (lambda (_%rest122403%_ _%id122404%_)
                                 (_%lp122342%_
                                  _%rest122403%_
                                  (cdr _%exprs122345%_)
                                  (cons (cons (__compile-head-id _%id122404%_)
                                              (cons (car _%exprs122345%_) '()))
                                        _%bind122346%_)
                                  _%post122347%_)))
                              (_%K122353122388%_
                               (lambda (_%rest122374%_ _%hd122375%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd122375%_))
                                     (_%lp122342%_
                                      _%rest122374%_
                                      (cdr _%exprs122345%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd122375%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs122345%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind122346%_)
                                      _%post122347%_)
                                     (if (list? _%hd122375%_)
                                         (let* ((_%len122379%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd122375%_)))
                                                (_%tmp122381%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp122342%_
                                            _%rest122374%_
                                            (cdr _%exprs122345%_)
                                            (cons (cons _%tmp122381%_
                                                        (cons (car _%exprs122345%_)
                                                              '()))
                                                  _%bind122346%_)
                                            (cons (cons _%tmp122381%_
                                                        (cons _%len122379%_
                                                              (let ((__tmp123544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id122384%_ _%k122385%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id122384%_))
                                   (cons (__SRC__0 _%id122384%_) _%k122385%_)
                                   '#f)))
                            (__tmp123543
                             (let ()
                               (declare (not safe))
                               (##iota _%len122379%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp123544 _%hd122375%_ __tmp123543))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post122347%_)))
                                         (__compile-error__%
                                          _%stx122239%_
                                          _%hd122375%_))))))
                          (if (pair? _%rest122348122362%_)
                              (let ((_%tl122358122411%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest122348122362%_)))
                                    (_%hd122357122409%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest122348122362%_))))
                                (if (pair? _%hd122357122409%_)
                                    (let ((_%tl122360122416%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd122357122409%_)))
                                          (_%hd122359122414%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd122357122409%_))))
                                      (if (null? _%tl122360122416%_)
                                          (let ((_%id122419%_
                                                 _%hd122359122414%_)
                                                (_%rest122421%_
                                                 _%tl122358122411%_))
                                            (_%K122356122406%_
                                             _%rest122421%_
                                             _%id122419%_))
                                          (let ((_%hd122396%_
                                                 _%hd122357122409%_)
                                                (_%rest122398%_
                                                 _%tl122358122411%_))
                                            (_%K122353122388%_
                                             _%rest122398%_
                                             _%hd122396%_))))
                                    (let ((_%hd122396%_ _%hd122357122409%_)
                                          (_%rest122398%_ _%tl122358122411%_))
                                      (_%K122353122388%_
                                       _%rest122398%_
                                       _%hd122396%_))))
                              (_%else122351122370%_)))))))
                 (_%compile-post122243%_
                  (lambda (_%post122245%_ _%body122246%_)
                    (let _%lp122248%_ ((_%rest122250%_ _%post122245%_)
                                       (_%check122251%_ '())
                                       (_%bind122252%_ '()))
                      (let* ((_%rest122253122265%_ _%rest122250%_)
                             (_%else122255122273%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp123545
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind122252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body122246%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx122239%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp123545
                                          _%check122251%_)))
                                 _%stx122239%_)))
                             (_%K122257122312%_
                              (lambda (_%rest122276%_
                                       _%init122277%_
                                       _%len122278%_
                                       _%tmp122279%_)
                                (_%lp122248%_
                                 _%rest122276%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp122279%_
                                                    (cons _%len122278%_ '())))
                                        _%stx122239%_)
                                       _%check122251%_)
                                 (let ((__tmp123546
                                        (lambda (_%hd122281%_ _%r122282%_)
                                          (let* ((_%hd122283122290%_
                                                  _%hd122281%_)
                                                 (_%E122285122294%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd122283122290%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K122286122300%_
                                                  (lambda (_%k122297%_
                                                           _%id122298%_)
                                                    (cons (cons _%id122298%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp122279%_
                                          (cons _%k122297%_ '())))
                              '()))
                  _%r122282%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd122283122290%_)
                                                (let ((_%hd122287122303%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd122283122290%_)))
                                                      (_%tl122288122305%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd122283122290%_))))
                                                  (let* ((_%id122308%_
                                                          _%hd122287122303%_)
                                                         (_%k122310%_
                                                          _%tl122288122305%_))
                                                    (_%K122286122300%_
                                                     _%k122310%_
                                                     _%id122308%_)))
                                                (_%E122285122294%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp123546
                                    _%bind122252%_
                                    _%init122277%_))))))
                        (if (pair? _%rest122253122265%_)
                            (let ((_%hd122258122315%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest122253122265%_)))
                                  (_%tl122259122317%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest122253122265%_))))
                              (if (pair? _%hd122258122315%_)
                                  (let ((_%hd122260122320%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd122258122315%_)))
                                        (_%tl122261122322%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd122258122315%_))))
                                    (let ((_%tmp122325%_ _%hd122260122320%_))
                                      (if (pair? _%tl122261122322%_)
                                          (let ((_%hd122262122327%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl122261122322%_)))
                                                (_%tl122263122329%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl122261122322%_))))
                                            (let* ((_%len122332%_
                                                    _%hd122262122327%_)
                                                   (_%init122334%_
                                                    _%tl122263122329%_)
                                                   (_%rest122336%_
                                                    _%tl122259122317%_))
                                              (_%K122257122312%_
                                               _%rest122336%_
                                               _%init122334%_
                                               _%len122332%_
                                               _%tmp122325%_)))
                                          (_%else122255122273%_))))
                                  (_%else122255122273%_)))
                            (_%else122255122273%_)))))))
          (__compile-let-form
           _%stx122239%_
           _%compile-simple122241%_
           _%compile-values122242%_))))
    (define __compile-letrec-values%
      (lambda (_%stx122036%_)
        (letrec ((_%compile-simple122038%_
                  (lambda (_%hd-ids122235%_ _%exprs122236%_ _%body122237%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp123547
                                        (map __compile-head-id
                                             _%hd-ids122235%_)))
                                   (declare (not safe))
                                   (##map list __tmp123547 _%exprs122236%_))
                                 (cons _%body122237%_ '())))
                     _%stx122036%_)))
                 (_%compile-values122039%_
                  (lambda (_%hd-ids122146%_ _%exprs122147%_ _%body122148%_)
                    (let _%lp122150%_ ((_%rest122152%_ _%hd-ids122146%_)
                                       (_%exprs122153%_ _%exprs122147%_)
                                       (_%pre122154%_ '())
                                       (_%bind122155%_ '())
                                       (_%post122156%_ '()))
                      (let* ((_%rest122157122171%_ _%rest122152%_)
                             (_%else122160122179%_
                              (lambda ()
                                (_%compile-inner122040%_
                                 _%pre122154%_
                                 _%bind122155%_
                                 _%post122156%_
                                 _%body122148%_))))
                        (let ((_%K122165122218%_
                               (lambda (_%rest122215%_ _%id122216%_)
                                 (_%lp122150%_
                                  _%rest122215%_
                                  (cdr _%exprs122153%_)
                                  _%pre122154%_
                                  (cons (cons (__compile-head-id _%id122216%_)
                                              (cons (car _%exprs122153%_) '()))
                                        _%bind122155%_)
                                  _%post122156%_)))
                              (_%K122162122200%_
                               (lambda (_%rest122183%_ _%hd122184%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd122184%_))
                                     (_%lp122150%_
                                      _%rest122183%_
                                      (cdr _%exprs122153%_)
                                      _%pre122154%_
                                      (cons (cons (__compile-head-id
                                                   _%hd122184%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs122153%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind122155%_)
                                      _%post122156%_)
                                     (if (list? _%hd122184%_)
                                         (let* ((_%len122188%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd122184%_)))
                                                (_%tmp122190%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp122150%_
                                            _%rest122183%_
                                            (cdr _%exprs122153%_)
                                            (let ((__tmp123548
                                                   (lambda (_%id122193%_
                                                            _%r122194%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id122193%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id122193%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r122194%_)
                 _%r122194%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp123548
                                               _%pre122154%_
                                               _%hd122184%_))
                                            (cons (cons _%tmp122190%_
                                                        (cons (car _%exprs122153%_)
                                                              '()))
                                                  _%bind122155%_)
                                            (cons (cons _%tmp122190%_
                                                        (cons _%len122188%_
                                                              (let ((__tmp123550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id122196%_ _%k122197%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id122196%_))
                                   (cons (__SRC__0 _%id122196%_) _%k122197%_)
                                   '#f)))
                            (__tmp123549
                             (let ()
                               (declare (not safe))
                               (##iota _%len122188%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp123550 _%hd122184%_ __tmp123549))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post122156%_)))
                                         (__compile-error__%
                                          _%stx122036%_
                                          _%hd122184%_))))))
                          (if (pair? _%rest122157122171%_)
                              (let ((_%tl122167122223%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest122157122171%_)))
                                    (_%hd122166122221%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest122157122171%_))))
                                (if (pair? _%hd122166122221%_)
                                    (let ((_%tl122169122228%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd122166122221%_)))
                                          (_%hd122168122226%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd122166122221%_))))
                                      (if (null? _%tl122169122228%_)
                                          (let ((_%id122231%_
                                                 _%hd122168122226%_)
                                                (_%rest122233%_
                                                 _%tl122167122223%_))
                                            (_%K122165122218%_
                                             _%rest122233%_
                                             _%id122231%_))
                                          (let ((_%hd122208%_
                                                 _%hd122166122221%_)
                                                (_%rest122210%_
                                                 _%tl122167122223%_))
                                            (_%K122162122200%_
                                             _%rest122210%_
                                             _%hd122208%_))))
                                    (let ((_%hd122208%_ _%hd122166122221%_)
                                          (_%rest122210%_ _%tl122167122223%_))
                                      (_%K122162122200%_
                                       _%rest122210%_
                                       _%hd122208%_))))
                              (_%else122160122179%_)))))))
                 (_%compile-inner122040%_
                  (lambda (_%pre122141%_
                           _%bind122142%_
                           _%post122143%_
                           _%body122144%_)
                    (if (null? _%pre122141%_)
                        (_%compile-bind122041%_
                         _%bind122142%_
                         _%post122143%_
                         _%body122144%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre122141%_)
                                     (cons (_%compile-bind122041%_
                                            _%bind122142%_
                                            _%post122143%_
                                            _%body122144%_)
                                           '())))
                         _%stx122036%_))))
                 (_%compile-bind122041%_
                  (lambda (_%bind122137%_ _%post122138%_ _%body122139%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind122137%_)
                                 (cons (_%compile-post122042%_
                                        _%post122138%_
                                        _%body122139%_)
                                       '())))
                     _%stx122036%_)))
                 (_%compile-post122042%_
                  (lambda (_%post122044%_ _%body122045%_)
                    (let _%lp122047%_ ((_%rest122049%_ _%post122044%_)
                                       (_%check122050%_ '())
                                       (_%bind122051%_ '()))
                      (let* ((_%rest122052122064%_ _%rest122049%_)
                             (_%else122054122072%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp123551
                                              (let ((__tmp123552
                                                     (cons _%body122045%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp123552
                                                 _%bind122051%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp123551
                                          _%check122050%_)))
                                 _%stx122036%_)))
                             (_%K122056122111%_
                              (lambda (_%rest122075%_
                                       _%init122076%_
                                       _%len122077%_
                                       _%tmp122078%_)
                                (_%lp122047%_
                                 _%rest122075%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp122078%_
                                                    (cons _%len122077%_ '())))
                                        _%stx122036%_)
                                       _%check122050%_)
                                 (let ((__tmp123553
                                        (lambda (_%hd122080%_ _%r122081%_)
                                          (let* ((_%hd122082122089%_
                                                  _%hd122080%_)
                                                 (_%E122084122093%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd122082122089%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K122085122099%_
                                                  (lambda (_%k122096%_
                                                           _%id122097%_)
                                                    (cons (cons 'set!
                                                                (cons _%id122097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp122078%_
                                                (cons _%k122096%_ '())))
                                    '())))
                  _%r122081%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd122082122089%_)
                                                (let ((_%hd122086122102%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd122082122089%_)))
                                                      (_%tl122087122104%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd122082122089%_))))
                                                  (let* ((_%id122107%_
                                                          _%hd122086122102%_)
                                                         (_%k122109%_
                                                          _%tl122087122104%_))
                                                    (_%K122085122099%_
                                                     _%k122109%_
                                                     _%id122107%_)))
                                                (_%E122084122093%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp123553
                                    _%bind122051%_
                                    _%init122076%_))))))
                        (if (pair? _%rest122052122064%_)
                            (let ((_%hd122057122114%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest122052122064%_)))
                                  (_%tl122058122116%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest122052122064%_))))
                              (if (pair? _%hd122057122114%_)
                                  (let ((_%hd122059122119%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd122057122114%_)))
                                        (_%tl122060122121%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd122057122114%_))))
                                    (let ((_%tmp122124%_ _%hd122059122119%_))
                                      (if (pair? _%tl122060122121%_)
                                          (let ((_%hd122061122126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl122060122121%_)))
                                                (_%tl122062122128%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl122060122121%_))))
                                            (let* ((_%len122131%_
                                                    _%hd122061122126%_)
                                                   (_%init122133%_
                                                    _%tl122062122128%_)
                                                   (_%rest122135%_
                                                    _%tl122058122116%_))
                                              (_%K122056122111%_
                                               _%rest122135%_
                                               _%init122133%_
                                               _%len122131%_
                                               _%tmp122124%_)))
                                          (_%else122054122072%_))))
                                  (_%else122054122072%_)))
                            (_%else122054122072%_)))))))
          (__compile-let-form
           _%stx122036%_
           _%compile-simple122038%_
           _%compile-values122039%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx121787%_)
        (letrec ((_%compile-simple121789%_
                  (lambda (_%hd-ids122032%_ _%exprs122033%_ _%body122034%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp123554
                                        (map __compile-head-id
                                             _%hd-ids122032%_)))
                                   (declare (not safe))
                                   (##map list __tmp123554 _%exprs122033%_))
                                 (cons _%body122034%_ '())))
                     _%stx121787%_)))
                 (_%compile-values121790%_
                  (lambda (_%hd-ids121939%_ _%exprs121940%_ _%body121941%_)
                    (let _%lp121943%_ ((_%rest121945%_ _%hd-ids121939%_)
                                       (_%exprs121946%_ _%exprs121940%_)
                                       (_%bind121947%_ '())
                                       (_%post121948%_ '()))
                      (let* ((_%rest121949121963%_ _%rest121945%_)
                             (_%else121952121971%_
                              (lambda ()
                                (_%compile-bind121791%_
                                 _%bind121947%_
                                 _%post121948%_
                                 _%body121941%_))))
                        (let ((_%K121957122015%_
                               (lambda (_%rest122010%_ _%hd122011%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd122011%_))
                                     (let ((_%id122013%_
                                            (__SRC__0 _%hd122011%_)))
                                       (_%lp121943%_
                                        _%rest122010%_
                                        (cdr _%exprs121946%_)
                                        (cons (cons _%id122013%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind121947%_)
                                        (cons (cons _%id122013%_
                                                    (cons (car _%exprs121946%_)
                                                          '()))
                                              _%post121948%_)))
                                     (_%lp121943%_
                                      _%rest122010%_
                                      (cdr _%exprs121946%_)
                                      _%bind121947%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs121946%_)
                                                        '()))
                                            _%post121948%_)))))
                              (_%K121954121995%_
                               (lambda (_%rest121975%_ _%hd121976%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd121976%_))
                                     (let ((_%id121979%_
                                            (__SRC__0 _%hd121976%_)))
                                       (_%lp121943%_
                                        _%rest121975%_
                                        (cdr _%exprs121946%_)
                                        (cons (cons _%id121979%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind121947%_)
                                        (cons (cons _%id121979%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs121946%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post121948%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd121976%_))
                                         (if (list? _%hd121976%_)
                                             (let* ((_%len121983%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd121976%_)))
                                                    (_%tmp121985%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp121943%_
                                                _%rest121975%_
                                                (cdr _%exprs121946%_)
                                                (let ((__tmp123555
                                                       (lambda (_%id121988%_
                                                                _%r121989%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id121988%_))
                     (cons (cons (__SRC__0 _%id121988%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r121989%_)
                     _%r121989%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp123555
                                                   _%bind121947%_
                                                   _%hd121976%_))
                                                (cons (cons _%tmp121985%_
                                                            (cons (car _%exprs121946%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len121983%_
                                (let ((__tmp123557
                                       (lambda (_%id121991%_ _%k121992%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id121991%_))
                                             (cons (__SRC__0 _%id121991%_)
                                                   _%k121992%_)
                                             '#f)))
                                      (__tmp123556
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len121983%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp123557
                                   _%hd121976%_
                                   __tmp123556)))))
              _%post121948%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx121787%_
                                              _%hd121976%_))
                                         (_%lp121943%_
                                          _%rest121975%_
                                          (cdr _%exprs121946%_)
                                          _%bind121947%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs121946%_)
                                                            '()))
                                                _%post121948%_)))))))
                          (if (pair? _%rest121949121963%_)
                              (let ((_%tl121959122020%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest121949121963%_)))
                                    (_%hd121958122018%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest121949121963%_))))
                                (if (pair? _%hd121958122018%_)
                                    (let ((_%tl121961122025%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd121958122018%_)))
                                          (_%hd121960122023%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd121958122018%_))))
                                      (if (null? _%tl121961122025%_)
                                          (let ((_%hd122028%_
                                                 _%hd121960122023%_)
                                                (_%rest122030%_
                                                 _%tl121959122020%_))
                                            (_%K121957122015%_
                                             _%rest122030%_
                                             _%hd122028%_))
                                          (let ((_%hd122003%_
                                                 _%hd121958122018%_)
                                                (_%rest122005%_
                                                 _%tl121959122020%_))
                                            (_%K121954121995%_
                                             _%rest122005%_
                                             _%hd122003%_))))
                                    (let ((_%hd122003%_ _%hd121958122018%_)
                                          (_%rest122005%_ _%tl121959122020%_))
                                      (_%K121954121995%_
                                       _%rest122005%_
                                       _%hd122003%_))))
                              (_%else121952121971%_)))))))
                 (_%compile-bind121791%_
                  (lambda (_%bind121935%_ _%post121936%_ _%body121937%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind121935%_)
                                 (cons (_%compile-post121792%_
                                        _%post121936%_
                                        _%body121937%_)
                                       '())))
                     _%stx121787%_)))
                 (_%compile-post121792%_
                  (lambda (_%post121794%_ _%body121795%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp123558
                                  (let ((__tmp123560
                                         (lambda (_%hd121797%_ _%r121798%_)
                                           (let* ((_%hd121799121822%_
                                                   _%hd121797%_)
                                                  (_%E121803121826%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd121799121822%_
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
                                             (let ((_%K121816121920%_
                                                    (lambda (_%expr121918%_)
                                                      (cons _%expr121918%_
                                                            _%r121798%_)))
                                                   (_%K121811121898%_
                                                    (lambda (_%expr121895%_
                                                             _%id121896%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id121896%_ (cons _%expr121895%_ '())))
                     _%stx121787%_)
                    _%r121798%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K121804121865%_
                                                    (lambda (_%init121830%_
                                                             _%len121831%_
                                                             _%expr121832%_
                                                             _%tmp121833%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp121833%_
                                             (cons _%expr121832%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp121833%_
                                                    (cons _%len121831%_ '())))
                                        _%stx121787%_)
                                       (let ((__tmp123561
                                              (map (lambda (_%hd121835%_)
                                                     (let* ((_%hd121836121843%_
                                                             _%hd121835%_)
                                                            (_%E121838121847%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd121836121843%_
                                '([id . k])))
                       '#!void))
                    (_%K121839121853%_
                     (lambda (_%k121850%_ _%id121851%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id121851%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp121833%_
                                                      (cons _%k121850%_ '())))
                                          '())))
                        _%stx121787%_))))
               (if (pair? _%hd121836121843%_)
                   (let ((_%hd121840121856%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd121836121843%_)))
                         (_%tl121841121858%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd121836121843%_))))
                     (let* ((_%id121861%_ _%hd121840121856%_)
                            (_%k121863%_ _%tl121841121858%_))
                       (_%K121839121853%_ _%k121863%_ _%id121861%_)))
                   (_%E121838121847%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init121830%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp123561)))))
                     _%stx121787%_)
                    _%r121798%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match123414123415%_
                                                       (lambda (_%hd121805121868%_
                                                                _%tl121806121870%_
                                                                _%hd121807121875%_
                                                                _%tl121808121877%_)
                                                         (let ((_%tmp121873%_
                                                                _%hd121805121868%_)
                                                               (_%expr121880%_
                                                                _%hd121807121875%_))
                                                           (_%E121803121826%_))))
                                                      (_%__match123408123409%_
                                                       (lambda (_%hd121805121868%_
                                                                _%tl121806121870%_)
                                                         (let ((_%tmp121873%_
                                                                _%hd121805121868%_))
                                                           (_%E121803121826%_)))))
                                                 (if (pair? _%hd121799121822%_)
                                                     (let ((_%tl121818121925%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd121799121822%_)))
                                                           (_%hd121817121923%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd121799121822%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd121817121923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl121818121925%_)
                       (let ((_%tl121820121930%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl121818121925%_)))
                             (_%hd121819121928%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl121818121925%_))))
                         (if (null? _%tl121820121930%_)
                             (let ((_%expr121933%_ _%hd121819121928%_))
                               (_%K121816121920%_ _%expr121933%_))
                             (if (pair? _%tl121820121930%_)
                                 (let ((_%tl121810121884%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl121820121930%_)))
                                       (_%hd121809121882%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl121820121930%_))))
                                   (let ((_%tmp121873%_ _%hd121817121923%_)
                                         (_%expr121880%_ _%hd121819121928%_)
                                         (_%len121887%_ _%hd121809121882%_)
                                         (_%init121889%_ _%tl121810121884%_))
                                     (_%K121804121865%_
                                      _%init121889%_
                                      _%len121887%_
                                      _%expr121880%_
                                      _%tmp121873%_)))
                                 (_%__match123414123415%_
                                  _%hd121817121923%_
                                  _%tl121818121925%_
                                  _%hd121819121928%_
                                  _%tl121820121930%_))))
                       (_%__match123408123409%_
                        _%hd121817121923%_
                        _%tl121818121925%_))
                   (if (pair? _%tl121818121925%_)
                       (let ((_%tl121815121910%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl121818121925%_)))
                             (_%hd121814121908%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl121818121925%_))))
                         (if (null? _%tl121815121910%_)
                             (let ((_%id121906%_ _%hd121817121923%_)
                                   (_%expr121913%_ _%hd121814121908%_))
                               (_%K121811121898%_ _%expr121913%_ _%id121906%_))
                             (if (pair? _%tl121815121910%_)
                                 (let ((_%tl121810121884%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl121815121910%_)))
                                       (_%hd121809121882%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl121815121910%_))))
                                   (let ((_%tmp121873%_ _%hd121817121923%_)
                                         (_%expr121880%_ _%hd121814121908%_)
                                         (_%len121887%_ _%hd121809121882%_)
                                         (_%init121889%_ _%tl121810121884%_))
                                     (_%K121804121865%_
                                      _%init121889%_
                                      _%len121887%_
                                      _%expr121880%_
                                      _%tmp121873%_)))
                                 (_%__match123414123415%_
                                  _%hd121817121923%_
                                  _%tl121818121925%_
                                  _%hd121814121908%_
                                  _%tl121815121910%_))))
                       (_%__match123408123409%_
                        _%hd121817121923%_
                        _%tl121818121925%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E121803121826%_)))))))
                                        (__tmp123559 (list _%body121795%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp123560
                                     __tmp123559
                                     _%post121794%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp123558)))
                     _%stx121787%_))))
          (__compile-let-form
           _%stx121787%_
           _%compile-simple121789%_
           _%compile-values121790%_))))
    (define __compile-call%
      (lambda (_%stx121747%_)
        (let* ((_%$e121749%_ _%stx121747%_)
               (_%$E121751121760%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121749%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121749%_))
              (let* ((_%$tgt121752121763%_
                      (let () (declare (not safe)) (__AST-e _%$e121749%_)))
                     (_%$hd121753121766%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121752121763%_)))
                     (_%$tl121754121769%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121752121763%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121754121769%_))
                    (let* ((_%$tgt121755121773%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121754121769%_)))
                           (_%$hd121756121776%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121755121773%_)))
                           (_%$tl121757121779%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121755121773%_)))
                           (_%rator121783%_ _%$hd121756121776%_)
                           (_%rands121785%_ _%$tl121757121779%_))
                      (__SRC__%
                       (cons (__compile _%rator121783%_)
                             (map __compile _%rands121785%_))
                       _%stx121747%_))
                    (_%$E121751121760%_)))
              (_%$E121751121760%_)))))
    (define __compile-ref%
      (lambda (_%stx121709%_)
        (let* ((_%$e121711%_ _%stx121709%_)
               (_%$E121713121722%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121711%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121711%_))
              (let* ((_%$tgt121714121725%_
                      (let () (declare (not safe)) (__AST-e _%$e121711%_)))
                     (_%$hd121715121728%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121714121725%_)))
                     (_%$tl121716121731%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121714121725%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121716121731%_))
                    (let* ((_%$tgt121717121735%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121716121731%_)))
                           (_%$hd121718121738%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121717121735%_)))
                           (_%$tl121719121741%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121717121735%_)))
                           (_%id121745%_ _%$hd121718121738%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121719121741%_))
                                  '())
                          (__SRC__% _%id121745%_ _%stx121709%_)
                          (_%$E121713121722%_)))
                    (_%$E121713121722%_)))
              (_%$E121713121722%_)))))
    (define __compile-setq%
      (lambda (_%stx121656%_)
        (let* ((_%$e121658%_ _%stx121656%_)
               (_%$E121660121672%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121658%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121658%_))
              (let* ((_%$tgt121661121675%_
                      (let () (declare (not safe)) (__AST-e _%$e121658%_)))
                     (_%$hd121662121678%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121661121675%_)))
                     (_%$tl121663121681%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121661121675%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121663121681%_))
                    (let* ((_%$tgt121664121685%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121663121681%_)))
                           (_%$hd121665121688%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121664121685%_)))
                           (_%$tl121666121691%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121664121685%_)))
                           (_%id121695%_ _%$hd121665121688%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl121666121691%_))
                          (let* ((_%$tgt121667121697%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121666121691%_)))
                                 (_%$hd121668121700%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt121667121697%_)))
                                 (_%$tl121669121703%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt121667121697%_)))
                                 (_%expr121707%_ _%$hd121668121700%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl121669121703%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id121695%_
                                              _%stx121656%_)
                                             (cons (__compile _%expr121707%_)
                                                   '())))
                                 _%stx121656%_)
                                (_%$E121660121672%_)))
                          (_%$E121660121672%_)))
                    (_%$E121660121672%_)))
              (_%$E121660121672%_)))))
    (define __compile-if%
      (lambda (_%stx121588%_)
        (let* ((_%$e121590%_ _%stx121588%_)
               (_%$E121592121607%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121590%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121590%_))
              (let* ((_%$tgt121593121610%_
                      (let () (declare (not safe)) (__AST-e _%$e121590%_)))
                     (_%$hd121594121613%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121593121610%_)))
                     (_%$tl121595121616%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121593121610%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121595121616%_))
                    (let* ((_%$tgt121596121620%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121595121616%_)))
                           (_%$hd121597121623%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121596121620%_)))
                           (_%$tl121598121626%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121596121620%_)))
                           (_%p121630%_ _%$hd121597121623%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl121598121626%_))
                          (let* ((_%$tgt121599121632%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121598121626%_)))
                                 (_%$hd121600121635%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt121599121632%_)))
                                 (_%$tl121601121638%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt121599121632%_)))
                                 (_%t121642%_ _%$hd121600121635%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl121601121638%_))
                                (let* ((_%$tgt121602121644%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl121601121638%_)))
                                       (_%$hd121603121647%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt121602121644%_)))
                                       (_%$tl121604121650%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt121602121644%_)))
                                       (_%f121654%_ _%$hd121603121647%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl121604121650%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p121630%_)
                                                   (cons (__compile
                                                          _%t121642%_)
                                                         (cons (__compile
                                                                _%f121654%_)
                                                               '()))))
                                       _%stx121588%_)
                                      (_%$E121592121607%_)))
                                (_%$E121592121607%_)))
                          (_%$E121592121607%_)))
                    (_%$E121592121607%_)))
              (_%$E121592121607%_)))))
    (define __compile-quote%
      (lambda (_%stx121550%_)
        (let* ((_%$e121552%_ _%stx121550%_)
               (_%$E121554121563%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121552%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121552%_))
              (let* ((_%$tgt121555121566%_
                      (let () (declare (not safe)) (__AST-e _%$e121552%_)))
                     (_%$hd121556121569%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121555121566%_)))
                     (_%$tl121557121572%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121555121566%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121557121572%_))
                    (let* ((_%$tgt121558121576%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121557121572%_)))
                           (_%$hd121559121579%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121558121576%_)))
                           (_%$tl121560121582%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121558121576%_)))
                           (_%e121586%_ _%$hd121559121579%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121560121582%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e121586%_))
                                       '()))
                           _%stx121550%_)
                          (_%$E121554121563%_)))
                    (_%$E121554121563%_)))
              (_%$E121554121563%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx121512%_)
        (let* ((_%$e121514%_ _%stx121512%_)
               (_%$E121516121525%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121514%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121514%_))
              (let* ((_%$tgt121517121528%_
                      (let () (declare (not safe)) (__AST-e _%$e121514%_)))
                     (_%$hd121518121531%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121517121528%_)))
                     (_%$tl121519121534%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121517121528%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121519121534%_))
                    (let* ((_%$tgt121520121538%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121519121534%_)))
                           (_%$hd121521121541%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121520121538%_)))
                           (_%$tl121522121544%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121520121538%_)))
                           (_%e121548%_ _%$hd121521121541%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121522121544%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e121548%_ '()))
                           _%stx121512%_)
                          (_%$E121516121525%_)))
                    (_%$E121516121525%_)))
              (_%$E121516121525%_)))))
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
