(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1733687559)
  (begin
    (define __syntax::t
      (let ((__tmp115003 (list)) (__tmp115002 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp115003
         '(e id)
         __tmp115002
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args114807%_
        (apply make-instance __syntax::t _%$args114807%_)))
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
      (let ((__tmp115005 (list __syntax::t))
            (__tmp115004 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp115005
         '()
         __tmp115004
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args114804%_
        (apply make-instance __core-form::t _%$args114804%_)))
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
      (let ((__tmp115007 (list __core-form::t))
            (__tmp115006 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp115007
         '()
         __tmp115006
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args114801%_
        (apply make-instance __core-expression::t _%$args114801%_)))
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
      (let ((__tmp115009 (list __core-form::t))
            (__tmp115008 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp115009
         '()
         __tmp115008
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args114798%_
        (apply make-instance __core-special-form::t _%$args114798%_)))
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
      (lambda (_%id114796%_)
        (let ((__tmp115010
               (let () (declare (not safe)) (__AST-e _%id114796%_))))
          (declare (not safe))
          (__hash-get __core __tmp115010))))
    (define __core-bound-id?__%
      (lambda (_%id114779%_ _%is?114780%_)
        (let ((_%$e114782%_ (__core-resolve _%id114779%_)))
          (if _%$e114782%_ (_%is?114780%_ _%$e114782%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id114789%_)
        (let ((_%is?114791%_ true))
          (__core-bound-id?__% _%id114789%_ _%is?114791%_))))
    (define __core-bound-id?
      (lambda _g115012_
        (let ((_g115011_ (let () (declare (not safe)) (##length _g115012_))))
          (cond ((let () (declare (not safe)) (##fx= _g115011_ 1))
                 (apply __core-bound-id?__0 _g115012_))
                ((let () (declare (not safe)) (##fx= _g115011_ 2))
                 (apply __core-bound-id?__% _g115012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g115012_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id114762%_ _%e114763%_ _%make114764%_)
        (let ((__tmp115013
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e114763%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e114763%_
                   (_%make114764%_ _%e114763%_ _%id114762%_))))
          (declare (not safe))
          (__hash-put! __core _%id114762%_ __tmp115013))))
    (define __core-bind-syntax!__0
      (lambda (_%id114769%_ _%e114770%_)
        (let ((_%make114772%_ make-__syntax))
          (__core-bind-syntax!__% _%id114769%_ _%e114770%_ _%make114772%_))))
    (define __core-bind-syntax!
      (lambda _g115015_
        (let ((_g115014_ (let () (declare (not safe)) (##length _g115015_))))
          (cond ((let () (declare (not safe)) (##fx= _g115014_ 2))
                 (apply __core-bind-syntax!__0 _g115015_))
                ((let () (declare (not safe)) (##fx= _g115014_ 3))
                 (apply __core-bind-syntax!__% _g115015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g115015_))))))
    (define __SRC__%
      (lambda (_%e114742%_ _%src-stx114743%_)
        (if (or (pair? _%e114742%_) (symbol? _%e114742%_))
            (let ((__tmp115016
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx114743%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx114743%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e114742%_ __tmp115016))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e114742%_ 'gerbil#AST::t))
                (let ((__tmp115018
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e114742%_ '1 '#f '#f)))
                      (__tmp115017
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e114742%_)))))
                  (declare (not safe))
                  (##make-source __tmp115018 __tmp115017))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e114742%_))))))
    (define __SRC__0
      (lambda (_%e114754%_)
        (let ((_%src-stx114756%_ '#f))
          (__SRC__% _%e114754%_ _%src-stx114756%_))))
    (define __SRC
      (lambda _g115020_
        (let ((_g115019_ (let () (declare (not safe)) (##length _g115020_))))
          (cond ((let () (declare (not safe)) (##fx= _g115019_ 1))
                 (apply __SRC__0 _g115020_))
                ((let () (declare (not safe)) (##fx= _g115019_ 2))
                 (apply __SRC__% _g115020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g115020_))))))
    (define __locat
      (lambda (_%loc114739%_)
        (if (let () (declare (not safe)) (##locat? _%loc114739%_))
            _%loc114739%_
            '#f)))
    (define __check-values
      (lambda (_%obj114734%_ _%k114735%_)
        (let ((_%count114737%_
               (if (let () (declare (not safe)) (##values? _%obj114734%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj114734%_))
                   '1)))
          (if (fx= _%count114737%_ _%k114735%_)
              '#!void
              (let ((__tmp115022
                     (if (fx< _%count114737%_ _%k114735%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp115021
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj114734%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj114734%_))
                         _%obj114734%_)))
                (declare (not safe))
                (error __tmp115022 __tmp115021 _%k114735%_))))))
    (define __compile
      (lambda (_%stx114703%_)
        (let* ((_%$e114705%_ _%stx114703%_)
               (_%$E114707114713%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114705%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114705%_))
              (let* ((_%$tgt114708114716%_
                      (let () (declare (not safe)) (__AST-e _%$e114705%_)))
                     (_%$hd114709114719%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114708114716%_)))
                     (_%$tl114710114722%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114708114716%_)))
                     (_%form114726%_ _%$hd114709114719%_)
                     (_%$e114728%_ (__core-resolve _%form114726%_)))
                (if _%$e114728%_
                    ((lambda (_%bind114731%_)
                       ((##structure-ref _%bind114731%_ '1 __syntax::t '#f)
                        _%stx114703%_))
                     _%$e114728%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx114703%_
                       _%form114726%_))))
              (_%$E114707114713%_)))))
    (define __compile-error__%
      (lambda (_%stx114690%_ _%detail114691%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx114690%_
           _%detail114691%_))))
    (define __compile-error__0
      (lambda (_%stx114696%_)
        (let ((_%detail114698%_ '#f))
          (__compile-error__% _%stx114696%_ _%detail114698%_))))
    (define __compile-error
      (lambda _g115024_
        (let ((_g115023_ (let () (declare (not safe)) (##length _g115024_))))
          (cond ((let () (declare (not safe)) (##fx= _g115023_ 1))
                 (apply __compile-error__0 _g115024_))
                ((let () (declare (not safe)) (##fx= _g115023_ 2))
                 (apply __compile-error__% _g115024_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g115024_))))))
    (define __compile-ignore%
      (lambda (_%stx114687%_) (__SRC__% ''#!void _%stx114687%_)))
    (define __compile-begin%
      (lambda (_%stx114662%_)
        (let* ((_%$e114664%_ _%stx114662%_)
               (_%$E114666114672%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114664%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114664%_))
              (let* ((_%$tgt114667114675%_
                      (let () (declare (not safe)) (__AST-e _%$e114664%_)))
                     (_%$hd114668114678%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114667114675%_)))
                     (_%$tl114669114681%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114667114675%_)))
                     (_%body114685%_ _%$tl114669114681%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body114685%_))
                 _%stx114662%_))
              (_%$E114666114672%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx114637%_)
        (let* ((_%$e114639%_ _%stx114637%_)
               (_%$E114641114647%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114639%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114639%_))
              (let* ((_%$tgt114642114650%_
                      (let () (declare (not safe)) (__AST-e _%$e114639%_)))
                     (_%$hd114643114653%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114642114650%_)))
                     (_%$tl114644114656%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114642114650%_)))
                     (_%body114660%_ _%$tl114644114656%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body114660%_)))
                 _%stx114637%_))
              (_%$E114641114647%_)))))
    (define __compile-import%
      (lambda (_%stx114612%_)
        (let* ((_%$e114614%_ _%stx114612%_)
               (_%$E114616114622%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114614%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114614%_))
              (let* ((_%$tgt114617114625%_
                      (let () (declare (not safe)) (__AST-e _%$e114614%_)))
                     (_%$hd114618114628%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114617114625%_)))
                     (_%$tl114619114631%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114617114625%_)))
                     (_%body114635%_ _%$tl114619114631%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body114635%_ '())) '()))
                 _%stx114612%_))
              (_%$E114616114622%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx114559%_)
        (let* ((_%$e114561%_ _%stx114559%_)
               (_%$E114563114575%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114561%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114561%_))
              (let* ((_%$tgt114564114578%_
                      (let () (declare (not safe)) (__AST-e _%$e114561%_)))
                     (_%$hd114565114581%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114564114578%_)))
                     (_%$tl114566114584%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114564114578%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114566114584%_))
                    (let* ((_%$tgt114567114588%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114566114584%_)))
                           (_%$hd114568114591%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114567114588%_)))
                           (_%$tl114569114594%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114567114588%_)))
                           (_%ann114598%_ _%$hd114568114591%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114569114594%_))
                          (let* ((_%$tgt114570114600%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114569114594%_)))
                                 (_%$hd114571114603%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114570114600%_)))
                                 (_%$tl114572114606%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114570114600%_)))
                                 (_%expr114610%_ _%$hd114571114603%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114572114606%_))
                                        '())
                                (__compile _%expr114610%_)
                                (_%$E114563114575%_)))
                          (_%$E114563114575%_)))
                    (_%$E114563114575%_)))
              (_%$E114563114575%_)))))
    (define __compile-define-values%
      (lambda (_%stx114450%_)
        (let* ((_%$e114452%_ _%stx114450%_)
               (_%$E114454114466%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114452%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114452%_))
              (let* ((_%$tgt114455114469%_
                      (let () (declare (not safe)) (__AST-e _%$e114452%_)))
                     (_%$hd114456114472%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114455114469%_)))
                     (_%$tl114457114475%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114455114469%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114457114475%_))
                    (let* ((_%$tgt114458114479%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114457114475%_)))
                           (_%$hd114459114482%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114458114479%_)))
                           (_%$tl114460114485%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114458114479%_)))
                           (_%hd114489%_ _%$hd114459114482%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114460114485%_))
                          (let* ((_%$tgt114461114491%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114460114485%_)))
                                 (_%$hd114462114494%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114461114491%_)))
                                 (_%$tl114463114497%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114461114491%_)))
                                 (_%expr114501%_ _%$hd114462114494%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114463114497%_))
                                        '())
                                (let* ((_%$e114503%_ _%hd114489%_)
                                       (_%$E114505114546%_
                                        (lambda ()
                                          (let ((_%$E114506114531%_
                                                 (lambda ()
                                                   (let* ((_%$E114507114518%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e114503%_))))
                  (_%ids114521%_ _%hd114489%_)
                  (_%len114523%_ (length _%ids114521%_))
                  (_%tmp114525%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp114525%_
                                       (cons (__compile _%expr114501%_) '())))
                           _%stx114450%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp114525%_
                                             (cons _%len114523%_ '())))
                                 _%stx114450%_)
                                (let ((__tmp115025
                                       (let ((__tmp115027
                                              (lambda (_%id114528%_
                                                       _%k114529%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id114528%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id114528%_)
                         (cons (cons '##vector-ref
                                     (cons _%tmp114525%_
                                           (cons _%k114529%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx114450%_)
                                                    '#f)))
                                             (__tmp115026
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len114523%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp115027
                                          _%ids114521%_
                                          __tmp115026))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp115025)))))
              _%stx114450%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e114503%_))
                                                (let* ((_%$tgt114508114534%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e114503%_)))
                                                       (_%$hd114509114537%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt114508114534%_)))
                                                       (_%$tl114510114540%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt114508114534%_)))
                                                       (_%id114544%_
                                                        _%$hd114509114537%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl114510114540%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id114544%_)
                           (cons (__compile _%expr114501%_) '())))
               _%stx114450%_)
              (_%$E114506114531%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E114506114531%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e114503%_))
                                      (let* ((_%$tgt114511114549%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e114503%_)))
                                             (_%$hd114512114552%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt114511114549%_)))
                                             (_%$tl114513114555%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt114511114549%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd114512114552%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl114513114555%_))
                                                        '())
                                                (__compile _%expr114501%_)
                                                (_%$E114505114546%_))
                                            (_%$E114505114546%_)))
                                      (_%$E114505114546%_)))
                                (_%$E114454114466%_)))
                          (_%$E114454114466%_)))
                    (_%$E114454114466%_)))
              (_%$E114454114466%_)))))
    (define __compile-head-id
      (lambda (_%e114448%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e114448%_))
             _%e114448%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd114405%_)
        (let _%recur114407%_ ((_%rest114409%_ _%hd114405%_))
          (let* ((_%$e114411%_ _%rest114409%_)
                 (_%$E114413114431%_
                  (lambda ()
                    (let ((_%$E114414114428%_
                           (lambda ()
                             (let* ((_%$E114415114423%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e114411%_))))
                                    (_%tail114426%_ _%$e114411%_))
                               (__compile-head-id _%tail114426%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114411%_))
                                  '())
                          '()
                          (_%$E114414114428%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e114411%_))
                (let* ((_%$tgt114416114434%_
                        (let () (declare (not safe)) (__AST-e _%$e114411%_)))
                       (_%$hd114417114437%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt114416114434%_)))
                       (_%$tl114418114440%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt114416114434%_)))
                       (_%hd114444%_ _%$hd114417114437%_)
                       (_%rest114446%_ _%$tl114418114440%_))
                  (cons (__compile-head-id _%hd114444%_)
                        (_%recur114407%_ _%rest114446%_)))
                (_%$E114413114431%_))))))
    (define __compile-lambda%
      (lambda (_%stx114352%_)
        (let* ((_%$e114354%_ _%stx114352%_)
               (_%$E114356114368%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e114354%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e114354%_))
              (let* ((_%$tgt114357114371%_
                      (let () (declare (not safe)) (__AST-e _%$e114354%_)))
                     (_%$hd114358114374%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt114357114371%_)))
                     (_%$tl114359114377%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt114357114371%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl114359114377%_))
                    (let* ((_%$tgt114360114381%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl114359114377%_)))
                           (_%$hd114361114384%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt114360114381%_)))
                           (_%$tl114362114387%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt114360114381%_)))
                           (_%hd114391%_ _%$hd114361114384%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl114362114387%_))
                          (let* ((_%$tgt114363114393%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl114362114387%_)))
                                 (_%$hd114364114396%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114363114393%_)))
                                 (_%$tl114365114399%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114363114393%_)))
                                 (_%body114403%_ _%$hd114364114396%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl114365114399%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd114391%_)
                                             (cons (__compile _%body114403%_)
                                                   '())))
                                 _%stx114352%_)
                                (_%$E114356114368%_)))
                          (_%$E114356114368%_)))
                    (_%$E114356114368%_)))
              (_%$E114356114368%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx114144%_)
        (letrec ((_%variadic?114146%_
                  (lambda (_%hd114317%_)
                    (let* ((_%$e114319%_ _%hd114317%_)
                           (_%$E114321114337%_
                            (lambda ()
                              (let ((_%$E114322114334%_
                                     (lambda ()
                                       (let ((_%$E114323114331%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e114319%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e114319%_))
                                            '())
                                    '#f
                                    (_%$E114322114334%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e114319%_))
                          (let* ((_%$tgt114324114340%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114319%_)))
                                 (_%$hd114325114343%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114324114340%_)))
                                 (_%$tl114326114346%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114324114340%_)))
                                 (_%rest114350%_ _%$tl114326114346%_))
                            (_%variadic?114146%_ _%rest114350%_))
                          (_%$E114321114337%_)))))
                 (_%arity114147%_
                  (lambda (_%hd114282%_)
                    (let _%lp114284%_ ((_%rest114286%_ _%hd114282%_)
                                       (_%k114287%_ '0))
                      (let* ((_%$e114289%_ _%rest114286%_)
                             (_%$E114291114302%_
                              (lambda ()
                                (let ((_%$E114292114299%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e114289%_)))))
                                  _%k114287%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e114289%_))
                            (let* ((_%$tgt114293114305%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e114289%_)))
                                   (_%$hd114294114308%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt114293114305%_)))
                                   (_%$tl114295114311%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt114293114305%_)))
                                   (_%rest114315%_ _%$tl114295114311%_))
                              (_%lp114284%_
                               _%rest114315%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k114287%_ '1))))
                            (_%$E114291114302%_))))))
                 (_%generate114148%_
                  (lambda (_%rest114209%_ _%args114210%_ _%len114211%_)
                    (let* ((_%$e114213%_ _%rest114209%_)
                           (_%$E114215114226%_
                            (lambda ()
                              (let ((_%$E114216114223%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e114213%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args114210%_ '())))
                                 _%stx114144%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e114213%_))
                          (let* ((_%$tgt114217114229%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114213%_)))
                                 (_%$hd114218114232%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114217114229%_)))
                                 (_%$tl114219114235%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114217114229%_)))
                                 (_%clause114239%_ _%$hd114218114232%_)
                                 (_%rest114241%_ _%$tl114219114235%_)
                                 (_%$e114243%_ _%clause114239%_)
                                 (_%$E114245114254%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e114243%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e114243%_))
                                (let* ((_%$tgt114246114257%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e114243%_)))
                                       (_%$hd114247114260%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt114246114257%_)))
                                       (_%$tl114248114263%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt114246114257%_)))
                                       (_%hd114267%_ _%$hd114247114260%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl114248114263%_))
                                      (let* ((_%$tgt114249114269%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl114248114263%_)))
                                             (_%$hd114250114272%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt114249114269%_)))
                                             (_%$tl114251114275%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt114249114269%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl114251114275%_))
                                                    '())
                                            (let ((_%clen114279%_
                                                   (_%arity114147%_
                                                    _%hd114267%_))
                                                  (_%cmp114280%_
                                                   (if (_%variadic?114146%_
                                                        _%hd114267%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp114280%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len114211%_ (cons _%clen114279%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause114239%_))
                                      (cons _%args114210%_ '())))
                          _%stx114144%_)
                         (cons (_%generate114148%_
                                _%rest114241%_
                                _%args114210%_
                                _%len114211%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx114144%_))
                                            (_%$E114245114254%_)))
                                      (_%$E114245114254%_)))
                                (_%$E114245114254%_)))
                          (_%$E114215114226%_))))))
          (let* ((_%$e114150%_ _%stx114144%_)
                 (_%$E114152114184%_
                  (lambda ()
                    (let ((_%$E114153114166%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e114150%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e114150%_))
                          (let* ((_%$tgt114154114169%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e114150%_)))
                                 (_%$hd114155114172%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt114154114169%_)))
                                 (_%$tl114156114175%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt114154114169%_)))
                                 (_%clauses114179%_ _%$tl114156114175%_))
                            (let ((_%args114181%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx114144%_))
                                  (_%len114182%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx114144%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args114181%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len114182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args114181%_ '()))
                                         _%stx114144%_)
                                        '()))
                            '())
                      (cons (_%generate114148%_
                             _%clauses114179%_
                             _%args114181%_
                             _%len114182%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx114144%_)
                                                 '())))
                               _%stx114144%_)))
                          (_%$E114153114166%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e114150%_))
                (let* ((_%$tgt114157114187%_
                        (let () (declare (not safe)) (__AST-e _%$e114150%_)))
                       (_%$hd114158114190%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt114157114187%_)))
                       (_%$tl114159114193%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt114157114187%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl114159114193%_))
                      (let* ((_%$tgt114160114197%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl114159114193%_)))
                             (_%$hd114161114200%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt114160114197%_)))
                             (_%$tl114162114203%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt114160114197%_)))
                             (_%clause114207%_ _%$hd114161114200%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl114162114203%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause114207%_))
                            (_%$E114152114184%_)))
                      (_%$E114152114184%_)))
                (_%$E114152114184%_))))))
    (define __compile-let-form
      (lambda (_%stx113913%_ _%compile-simple113914%_ _%compile-values113915%_)
        (letrec ((_%simple-bind?113917%_
                  (lambda (_%hd114102%_)
                    (let* ((_%hd114103114113%_ _%hd114102%_)
                           (_%else114106114121%_ (lambda () '#f)))
                      (let ((_%K114109114134%_ (lambda (_%id114132%_) '#t))
                            (_%K114108114126%_ (lambda () '#t)))
                        (let ((_%try-match114105114129%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd114103114113%_ '#f))
                                     (_%K114108114126%_)
                                     (_%else114106114121%_)))))
                          (if (pair? _%hd114103114113%_)
                              (let ((_%tl114111114139%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd114103114113%_)))
                                    (_%hd114110114137%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd114103114113%_))))
                                (if (null? _%tl114111114139%_)
                                    (let ((_%id114142%_ _%hd114110114137%_))
                                      (_%K114109114134%_ _%id114142%_))
                                    (_%try-match114105114129%_)))
                              (_%try-match114105114129%_)))))))
                 (_%car-e113918%_
                  (lambda (_%hd114100%_)
                    (if (pair? _%hd114100%_)
                        (let () (declare (not safe)) (##car _%hd114100%_))
                        _%hd114100%_))))
          (let* ((_%$e113920%_ _%stx113913%_)
                 (_%$E113922114065%_
                  (lambda ()
                    (let ((_%$E113923113945%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e113920%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e113920%_))
                          (let* ((_%$tgt113924113948%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e113920%_)))
                                 (_%$hd113925113951%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113924113948%_)))
                                 (_%$tl113926113954%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113924113948%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl113926113954%_))
                                (let* ((_%$tgt113927113958%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl113926113954%_)))
                                       (_%$hd113928113961%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt113927113958%_)))
                                       (_%$tl113929113964%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt113927113958%_)))
                                       (_%hd113968%_ _%$hd113928113961%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl113929113964%_))
                                      (let* ((_%$tgt113930113970%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl113929113964%_)))
                                             (_%$hd113931113973%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt113930113970%_)))
                                             (_%$tl113932113976%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt113930113970%_)))
                                             (_%body113980%_
                                              _%$hd113931113973%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl113932113976%_))
                                                    '())
                                            (let* ((_%hd-ids114020%_
                                                    (map (lambda (_%bind113982%_)
                                                           (let* ((_%$e113984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind113982%_)
                          (_%$E113986113995%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e113984%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e113984%_))
                         (let* ((_%$tgt113987113998%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e113984%_)))
                                (_%$hd113988114001%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt113987113998%_)))
                                (_%$tl113989114004%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt113987113998%_)))
                                (_%ids114008%_ _%$hd113988114001%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl113989114004%_))
                               (let* ((_%$tgt113990114010%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl113989114004%_)))
                                      (_%$hd113991114013%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt113990114010%_)))
                                      (_%$tl113992114016%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt113990114010%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl113992114016%_))
                                             '())
                                     _%ids114008%_
                                     (_%$E113986113995%_)))
                               (_%$E113986113995%_)))
                         (_%$E113986113995%_))))
                 _%hd113968%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs114060%_
                                                    (map (lambda (_%bind114022%_)
                                                           (let* ((_%$e114024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind114022%_)
                          (_%$E114026114035%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e114024%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e114024%_))
                         (let* ((_%$tgt114027114038%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e114024%_)))
                                (_%$hd114028114041%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt114027114038%_)))
                                (_%$tl114029114044%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt114027114038%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl114029114044%_))
                               (let* ((_%$tgt114030114048%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl114029114044%_)))
                                      (_%$hd114031114051%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt114030114048%_)))
                                      (_%$tl114032114054%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt114030114048%_)))
                                      (_%expr114058%_ _%$hd114031114051%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl114032114054%_))
                                             '())
                                     (__compile _%expr114058%_)
                                     (_%$E114026114035%_)))
                               (_%$E114026114035%_)))
                         (_%$E114026114035%_))))
                 _%hd113968%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body114062%_
                                                    (__compile
                                                     _%body113980%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?113917%_
                                                     _%hd-ids114020%_))
                                                  (_%compile-simple113914%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e113918%_
                                                            _%hd-ids114020%_))
                                                   _%exprs114060%_
                                                   _%body114062%_)
                                                  (_%compile-values113915%_
                                                   _%hd-ids114020%_
                                                   _%exprs114060%_
                                                   _%body114062%_)))
                                            (_%$E113923113945%_)))
                                      (_%$E113923113945%_)))
                                (_%$E113923113945%_)))
                          (_%$E113923113945%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e113920%_))
                (let* ((_%$tgt113933114068%_
                        (let () (declare (not safe)) (__AST-e _%$e113920%_)))
                       (_%$hd113934114071%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt113933114068%_)))
                       (_%$tl113935114074%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt113933114068%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl113935114074%_))
                      (let* ((_%$tgt113936114078%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl113935114074%_)))
                             (_%$hd113937114081%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt113936114078%_)))
                             (_%$tl113938114084%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt113936114078%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd113937114081%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl113938114084%_))
                                (let* ((_%$tgt113939114088%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl113938114084%_)))
                                       (_%$hd113940114091%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt113939114088%_)))
                                       (_%$tl113941114094%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt113939114088%_)))
                                       (_%body114098%_ _%$hd113940114091%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl113941114094%_))
                                              '())
                                      (__compile _%body114098%_)
                                      (_%$E113922114065%_)))
                                (_%$E113922114065%_))
                            (_%$E113922114065%_)))
                      (_%$E113922114065%_)))
                (_%$E113922114065%_))))))
    (define __compile-let-values%
      (lambda (_%stx113725%_)
        (letrec ((_%compile-simple113727%_
                  (lambda (_%hd-ids113909%_ _%exprs113910%_ _%body113911%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp115028
                                        (map __compile-head-id
                                             _%hd-ids113909%_)))
                                   (declare (not safe))
                                   (##map list __tmp115028 _%exprs113910%_))
                                 (cons _%body113911%_ '())))
                     _%stx113725%_)))
                 (_%compile-values113728%_
                  (lambda (_%hd-ids113824%_ _%exprs113825%_ _%body113826%_)
                    (let _%lp113828%_ ((_%rest113830%_ _%hd-ids113824%_)
                                       (_%exprs113831%_ _%exprs113825%_)
                                       (_%bind113832%_ '())
                                       (_%post113833%_ '()))
                      (let* ((_%rest113834113848%_ _%rest113830%_)
                             (_%else113837113856%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind113832%_)
                                             (cons (_%compile-post113729%_
                                                    _%post113833%_
                                                    _%body113826%_)
                                                   '())))
                                 _%stx113725%_))))
                        (let ((_%K113842113892%_
                               (lambda (_%rest113889%_ _%id113890%_)
                                 (_%lp113828%_
                                  _%rest113889%_
                                  (cdr _%exprs113831%_)
                                  (cons (cons (__compile-head-id _%id113890%_)
                                              (cons (car _%exprs113831%_) '()))
                                        _%bind113832%_)
                                  _%post113833%_)))
                              (_%K113839113874%_
                               (lambda (_%rest113860%_ _%hd113861%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd113861%_))
                                     (_%lp113828%_
                                      _%rest113860%_
                                      (cdr _%exprs113831%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd113861%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs113831%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind113832%_)
                                      _%post113833%_)
                                     (if (list? _%hd113861%_)
                                         (let* ((_%len113865%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd113861%_)))
                                                (_%tmp113867%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp113828%_
                                            _%rest113860%_
                                            (cdr _%exprs113831%_)
                                            (cons (cons _%tmp113867%_
                                                        (cons (car _%exprs113831%_)
                                                              '()))
                                                  _%bind113832%_)
                                            (cons (cons _%tmp113867%_
                                                        (cons _%len113865%_
                                                              (let ((__tmp115030
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id113870%_ _%k113871%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id113870%_))
                                   (cons (__SRC__0 _%id113870%_) _%k113871%_)
                                   '#f)))
                            (__tmp115029
                             (let ()
                               (declare (not safe))
                               (##iota _%len113865%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp115030 _%hd113861%_ __tmp115029))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post113833%_)))
                                         (__compile-error__%
                                          _%stx113725%_
                                          _%hd113861%_))))))
                          (if (pair? _%rest113834113848%_)
                              (let ((_%tl113844113897%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest113834113848%_)))
                                    (_%hd113843113895%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest113834113848%_))))
                                (if (pair? _%hd113843113895%_)
                                    (let ((_%tl113846113902%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd113843113895%_)))
                                          (_%hd113845113900%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd113843113895%_))))
                                      (if (null? _%tl113846113902%_)
                                          (let ((_%id113905%_
                                                 _%hd113845113900%_)
                                                (_%rest113907%_
                                                 _%tl113844113897%_))
                                            (_%K113842113892%_
                                             _%rest113907%_
                                             _%id113905%_))
                                          (let ((_%hd113882%_
                                                 _%hd113843113895%_)
                                                (_%rest113884%_
                                                 _%tl113844113897%_))
                                            (_%K113839113874%_
                                             _%rest113884%_
                                             _%hd113882%_))))
                                    (let ((_%hd113882%_ _%hd113843113895%_)
                                          (_%rest113884%_ _%tl113844113897%_))
                                      (_%K113839113874%_
                                       _%rest113884%_
                                       _%hd113882%_))))
                              (_%else113837113856%_)))))))
                 (_%compile-post113729%_
                  (lambda (_%post113731%_ _%body113732%_)
                    (let _%lp113734%_ ((_%rest113736%_ _%post113731%_)
                                       (_%check113737%_ '())
                                       (_%bind113738%_ '()))
                      (let* ((_%rest113739113751%_ _%rest113736%_)
                             (_%else113741113759%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp115031
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind113738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body113732%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx113725%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp115031
                                          _%check113737%_)))
                                 _%stx113725%_)))
                             (_%K113743113798%_
                              (lambda (_%rest113762%_
                                       _%init113763%_
                                       _%len113764%_
                                       _%tmp113765%_)
                                (_%lp113734%_
                                 _%rest113762%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp113765%_
                                                    (cons _%len113764%_ '())))
                                        _%stx113725%_)
                                       _%check113737%_)
                                 (let ((__tmp115032
                                        (lambda (_%hd113767%_ _%r113768%_)
                                          (let* ((_%hd113769113776%_
                                                  _%hd113767%_)
                                                 (_%E113771113780%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd113769113776%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K113772113786%_
                                                  (lambda (_%k113783%_
                                                           _%id113784%_)
                                                    (cons (cons _%id113784%_
                                                                (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp113765%_
                                          (cons _%k113783%_ '())))
                              '()))
                  _%r113768%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd113769113776%_)
                                                (let ((_%hd113773113789%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd113769113776%_)))
                                                      (_%tl113774113791%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd113769113776%_))))
                                                  (let* ((_%id113794%_
                                                          _%hd113773113789%_)
                                                         (_%k113796%_
                                                          _%tl113774113791%_))
                                                    (_%K113772113786%_
                                                     _%k113796%_
                                                     _%id113794%_)))
                                                (_%E113771113780%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp115032
                                    _%bind113738%_
                                    _%init113763%_))))))
                        (if (pair? _%rest113739113751%_)
                            (let ((_%hd113744113801%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest113739113751%_)))
                                  (_%tl113745113803%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest113739113751%_))))
                              (if (pair? _%hd113744113801%_)
                                  (let ((_%hd113746113806%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd113744113801%_)))
                                        (_%tl113747113808%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd113744113801%_))))
                                    (let ((_%tmp113811%_ _%hd113746113806%_))
                                      (if (pair? _%tl113747113808%_)
                                          (let ((_%hd113748113813%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl113747113808%_)))
                                                (_%tl113749113815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl113747113808%_))))
                                            (let* ((_%len113818%_
                                                    _%hd113748113813%_)
                                                   (_%init113820%_
                                                    _%tl113749113815%_)
                                                   (_%rest113822%_
                                                    _%tl113745113803%_))
                                              (_%K113743113798%_
                                               _%rest113822%_
                                               _%init113820%_
                                               _%len113818%_
                                               _%tmp113811%_)))
                                          (_%else113741113759%_))))
                                  (_%else113741113759%_)))
                            (_%else113741113759%_)))))))
          (__compile-let-form
           _%stx113725%_
           _%compile-simple113727%_
           _%compile-values113728%_))))
    (define __compile-letrec-values%
      (lambda (_%stx113522%_)
        (letrec ((_%compile-simple113524%_
                  (lambda (_%hd-ids113721%_ _%exprs113722%_ _%body113723%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp115033
                                        (map __compile-head-id
                                             _%hd-ids113721%_)))
                                   (declare (not safe))
                                   (##map list __tmp115033 _%exprs113722%_))
                                 (cons _%body113723%_ '())))
                     _%stx113522%_)))
                 (_%compile-values113525%_
                  (lambda (_%hd-ids113632%_ _%exprs113633%_ _%body113634%_)
                    (let _%lp113636%_ ((_%rest113638%_ _%hd-ids113632%_)
                                       (_%exprs113639%_ _%exprs113633%_)
                                       (_%pre113640%_ '())
                                       (_%bind113641%_ '())
                                       (_%post113642%_ '()))
                      (let* ((_%rest113643113657%_ _%rest113638%_)
                             (_%else113646113665%_
                              (lambda ()
                                (_%compile-inner113526%_
                                 _%pre113640%_
                                 _%bind113641%_
                                 _%post113642%_
                                 _%body113634%_))))
                        (let ((_%K113651113704%_
                               (lambda (_%rest113701%_ _%id113702%_)
                                 (_%lp113636%_
                                  _%rest113701%_
                                  (cdr _%exprs113639%_)
                                  _%pre113640%_
                                  (cons (cons (__compile-head-id _%id113702%_)
                                              (cons (car _%exprs113639%_) '()))
                                        _%bind113641%_)
                                  _%post113642%_)))
                              (_%K113648113686%_
                               (lambda (_%rest113669%_ _%hd113670%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd113670%_))
                                     (_%lp113636%_
                                      _%rest113669%_
                                      (cdr _%exprs113639%_)
                                      _%pre113640%_
                                      (cons (cons (__compile-head-id
                                                   _%hd113670%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs113639%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind113641%_)
                                      _%post113642%_)
                                     (if (list? _%hd113670%_)
                                         (let* ((_%len113674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd113670%_)))
                                                (_%tmp113676%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp113636%_
                                            _%rest113669%_
                                            (cdr _%exprs113639%_)
                                            (let ((__tmp115034
                                                   (lambda (_%id113679%_
                                                            _%r113680%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id113679%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id113679%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r113680%_)
                 _%r113680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp115034
                                               _%pre113640%_
                                               _%hd113670%_))
                                            (cons (cons _%tmp113676%_
                                                        (cons (car _%exprs113639%_)
                                                              '()))
                                                  _%bind113641%_)
                                            (cons (cons _%tmp113676%_
                                                        (cons _%len113674%_
                                                              (let ((__tmp115036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id113682%_ _%k113683%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id113682%_))
                                   (cons (__SRC__0 _%id113682%_) _%k113683%_)
                                   '#f)))
                            (__tmp115035
                             (let ()
                               (declare (not safe))
                               (##iota _%len113674%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp115036 _%hd113670%_ __tmp115035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post113642%_)))
                                         (__compile-error__%
                                          _%stx113522%_
                                          _%hd113670%_))))))
                          (if (pair? _%rest113643113657%_)
                              (let ((_%tl113653113709%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest113643113657%_)))
                                    (_%hd113652113707%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest113643113657%_))))
                                (if (pair? _%hd113652113707%_)
                                    (let ((_%tl113655113714%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd113652113707%_)))
                                          (_%hd113654113712%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd113652113707%_))))
                                      (if (null? _%tl113655113714%_)
                                          (let ((_%id113717%_
                                                 _%hd113654113712%_)
                                                (_%rest113719%_
                                                 _%tl113653113709%_))
                                            (_%K113651113704%_
                                             _%rest113719%_
                                             _%id113717%_))
                                          (let ((_%hd113694%_
                                                 _%hd113652113707%_)
                                                (_%rest113696%_
                                                 _%tl113653113709%_))
                                            (_%K113648113686%_
                                             _%rest113696%_
                                             _%hd113694%_))))
                                    (let ((_%hd113694%_ _%hd113652113707%_)
                                          (_%rest113696%_ _%tl113653113709%_))
                                      (_%K113648113686%_
                                       _%rest113696%_
                                       _%hd113694%_))))
                              (_%else113646113665%_)))))))
                 (_%compile-inner113526%_
                  (lambda (_%pre113627%_
                           _%bind113628%_
                           _%post113629%_
                           _%body113630%_)
                    (if (null? _%pre113627%_)
                        (_%compile-bind113527%_
                         _%bind113628%_
                         _%post113629%_
                         _%body113630%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre113627%_)
                                     (cons (_%compile-bind113527%_
                                            _%bind113628%_
                                            _%post113629%_
                                            _%body113630%_)
                                           '())))
                         _%stx113522%_))))
                 (_%compile-bind113527%_
                  (lambda (_%bind113623%_ _%post113624%_ _%body113625%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind113623%_)
                                 (cons (_%compile-post113528%_
                                        _%post113624%_
                                        _%body113625%_)
                                       '())))
                     _%stx113522%_)))
                 (_%compile-post113528%_
                  (lambda (_%post113530%_ _%body113531%_)
                    (let _%lp113533%_ ((_%rest113535%_ _%post113530%_)
                                       (_%check113536%_ '())
                                       (_%bind113537%_ '()))
                      (let* ((_%rest113538113550%_ _%rest113535%_)
                             (_%else113540113558%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp115037
                                              (let ((__tmp115038
                                                     (cons _%body113531%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp115038
                                                 _%bind113537%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp115037
                                          _%check113536%_)))
                                 _%stx113522%_)))
                             (_%K113542113597%_
                              (lambda (_%rest113561%_
                                       _%init113562%_
                                       _%len113563%_
                                       _%tmp113564%_)
                                (_%lp113533%_
                                 _%rest113561%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp113564%_
                                                    (cons _%len113563%_ '())))
                                        _%stx113522%_)
                                       _%check113536%_)
                                 (let ((__tmp115039
                                        (lambda (_%hd113566%_ _%r113567%_)
                                          (let* ((_%hd113568113575%_
                                                  _%hd113566%_)
                                                 (_%E113570113579%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd113568113575%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K113571113585%_
                                                  (lambda (_%k113582%_
                                                           _%id113583%_)
                                                    (cons (cons 'set!
                                                                (cons _%id113583%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##vector-ref
                                          (cons _%tmp113564%_
                                                (cons _%k113582%_ '())))
                                    '())))
                  _%r113567%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd113568113575%_)
                                                (let ((_%hd113572113588%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd113568113575%_)))
                                                      (_%tl113573113590%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd113568113575%_))))
                                                  (let* ((_%id113593%_
                                                          _%hd113572113588%_)
                                                         (_%k113595%_
                                                          _%tl113573113590%_))
                                                    (_%K113571113585%_
                                                     _%k113595%_
                                                     _%id113593%_)))
                                                (_%E113570113579%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp115039
                                    _%bind113537%_
                                    _%init113562%_))))))
                        (if (pair? _%rest113538113550%_)
                            (let ((_%hd113543113600%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest113538113550%_)))
                                  (_%tl113544113602%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest113538113550%_))))
                              (if (pair? _%hd113543113600%_)
                                  (let ((_%hd113545113605%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd113543113600%_)))
                                        (_%tl113546113607%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd113543113600%_))))
                                    (let ((_%tmp113610%_ _%hd113545113605%_))
                                      (if (pair? _%tl113546113607%_)
                                          (let ((_%hd113547113612%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl113546113607%_)))
                                                (_%tl113548113614%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl113546113607%_))))
                                            (let* ((_%len113617%_
                                                    _%hd113547113612%_)
                                                   (_%init113619%_
                                                    _%tl113548113614%_)
                                                   (_%rest113621%_
                                                    _%tl113544113602%_))
                                              (_%K113542113597%_
                                               _%rest113621%_
                                               _%init113619%_
                                               _%len113617%_
                                               _%tmp113610%_)))
                                          (_%else113540113558%_))))
                                  (_%else113540113558%_)))
                            (_%else113540113558%_)))))))
          (__compile-let-form
           _%stx113522%_
           _%compile-simple113524%_
           _%compile-values113525%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx113273%_)
        (letrec ((_%compile-simple113275%_
                  (lambda (_%hd-ids113518%_ _%exprs113519%_ _%body113520%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp115040
                                        (map __compile-head-id
                                             _%hd-ids113518%_)))
                                   (declare (not safe))
                                   (##map list __tmp115040 _%exprs113519%_))
                                 (cons _%body113520%_ '())))
                     _%stx113273%_)))
                 (_%compile-values113276%_
                  (lambda (_%hd-ids113425%_ _%exprs113426%_ _%body113427%_)
                    (let _%lp113429%_ ((_%rest113431%_ _%hd-ids113425%_)
                                       (_%exprs113432%_ _%exprs113426%_)
                                       (_%bind113433%_ '())
                                       (_%post113434%_ '()))
                      (let* ((_%rest113435113449%_ _%rest113431%_)
                             (_%else113438113457%_
                              (lambda ()
                                (_%compile-bind113277%_
                                 _%bind113433%_
                                 _%post113434%_
                                 _%body113427%_))))
                        (let ((_%K113443113501%_
                               (lambda (_%rest113496%_ _%hd113497%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd113497%_))
                                     (let ((_%id113499%_
                                            (__SRC__0 _%hd113497%_)))
                                       (_%lp113429%_
                                        _%rest113496%_
                                        (cdr _%exprs113432%_)
                                        (cons (cons _%id113499%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind113433%_)
                                        (cons (cons _%id113499%_
                                                    (cons (car _%exprs113432%_)
                                                          '()))
                                              _%post113434%_)))
                                     (_%lp113429%_
                                      _%rest113496%_
                                      (cdr _%exprs113432%_)
                                      _%bind113433%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs113432%_)
                                                        '()))
                                            _%post113434%_)))))
                              (_%K113440113481%_
                               (lambda (_%rest113461%_ _%hd113462%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd113462%_))
                                     (let ((_%id113465%_
                                            (__SRC__0 _%hd113462%_)))
                                       (_%lp113429%_
                                        _%rest113461%_
                                        (cdr _%exprs113432%_)
                                        (cons (cons _%id113465%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind113433%_)
                                        (cons (cons _%id113465%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs113432%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post113434%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd113462%_))
                                         (if (list? _%hd113462%_)
                                             (let* ((_%len113469%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd113462%_)))
                                                    (_%tmp113471%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp113429%_
                                                _%rest113461%_
                                                (cdr _%exprs113432%_)
                                                (let ((__tmp115041
                                                       (lambda (_%id113474%_
                                                                _%r113475%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id113474%_))
                     (cons (cons (__SRC__0 _%id113474%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r113475%_)
                     _%r113475%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp115041
                                                   _%bind113433%_
                                                   _%hd113462%_))
                                                (cons (cons _%tmp113471%_
                                                            (cons (car _%exprs113432%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len113469%_
                                (let ((__tmp115043
                                       (lambda (_%id113477%_ _%k113478%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id113477%_))
                                             (cons (__SRC__0 _%id113477%_)
                                                   _%k113478%_)
                                             '#f)))
                                      (__tmp115042
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len113469%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp115043
                                   _%hd113462%_
                                   __tmp115042)))))
              _%post113434%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx113273%_
                                              _%hd113462%_))
                                         (_%lp113429%_
                                          _%rest113461%_
                                          (cdr _%exprs113432%_)
                                          _%bind113433%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs113432%_)
                                                            '()))
                                                _%post113434%_)))))))
                          (if (pair? _%rest113435113449%_)
                              (let ((_%tl113445113506%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest113435113449%_)))
                                    (_%hd113444113504%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest113435113449%_))))
                                (if (pair? _%hd113444113504%_)
                                    (let ((_%tl113447113511%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd113444113504%_)))
                                          (_%hd113446113509%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd113444113504%_))))
                                      (if (null? _%tl113447113511%_)
                                          (let ((_%hd113514%_
                                                 _%hd113446113509%_)
                                                (_%rest113516%_
                                                 _%tl113445113506%_))
                                            (_%K113443113501%_
                                             _%rest113516%_
                                             _%hd113514%_))
                                          (let ((_%hd113489%_
                                                 _%hd113444113504%_)
                                                (_%rest113491%_
                                                 _%tl113445113506%_))
                                            (_%K113440113481%_
                                             _%rest113491%_
                                             _%hd113489%_))))
                                    (let ((_%hd113489%_ _%hd113444113504%_)
                                          (_%rest113491%_ _%tl113445113506%_))
                                      (_%K113440113481%_
                                       _%rest113491%_
                                       _%hd113489%_))))
                              (_%else113438113457%_)))))))
                 (_%compile-bind113277%_
                  (lambda (_%bind113421%_ _%post113422%_ _%body113423%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind113421%_)
                                 (cons (_%compile-post113278%_
                                        _%post113422%_
                                        _%body113423%_)
                                       '())))
                     _%stx113273%_)))
                 (_%compile-post113278%_
                  (lambda (_%post113280%_ _%body113281%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp115044
                                  (let ((__tmp115046
                                         (lambda (_%hd113283%_ _%r113284%_)
                                           (let* ((_%hd113285113308%_
                                                   _%hd113283%_)
                                                  (_%E113289113312%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd113285113308%_
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
                                             (let ((_%K113302113406%_
                                                    (lambda (_%expr113404%_)
                                                      (cons _%expr113404%_
                                                            _%r113284%_)))
                                                   (_%K113297113384%_
                                                    (lambda (_%expr113381%_
                                                             _%id113382%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id113382%_ (cons _%expr113381%_ '())))
                     _%stx113273%_)
                    _%r113284%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K113290113351%_
                                                    (lambda (_%init113316%_
                                                             _%len113317%_
                                                             _%expr113318%_
                                                             _%tmp113319%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp113319%_
                                             (cons _%expr113318%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp113319%_
                                                    (cons _%len113317%_ '())))
                                        _%stx113273%_)
                                       (let ((__tmp115047
                                              (map (lambda (_%hd113321%_)
                                                     (let* ((_%hd113322113329%_
                                                             _%hd113321%_)
                                                            (_%E113324113333%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd113322113329%_
                                '([id . k])))
                       '#!void))
                    (_%K113325113339%_
                     (lambda (_%k113336%_ _%id113337%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id113337%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp113319%_
                                                      (cons _%k113336%_ '())))
                                          '())))
                        _%stx113273%_))))
               (if (pair? _%hd113322113329%_)
                   (let ((_%hd113326113342%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd113322113329%_)))
                         (_%tl113327113344%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd113322113329%_))))
                     (let* ((_%id113347%_ _%hd113326113342%_)
                            (_%k113349%_ _%tl113327113344%_))
                       (_%K113325113339%_ _%k113349%_ _%id113347%_)))
                   (_%E113324113333%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init113316%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp115047)))))
                     _%stx113273%_)
                    _%r113284%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match114900114901%_
                                                       (lambda (_%hd113291113354%_
                                                                _%tl113292113356%_
                                                                _%hd113293113361%_
                                                                _%tl113294113363%_)
                                                         (let ((_%tmp113359%_
                                                                _%hd113291113354%_)
                                                               (_%expr113366%_
                                                                _%hd113293113361%_))
                                                           (_%E113289113312%_))))
                                                      (_%__match114894114895%_
                                                       (lambda (_%hd113291113354%_
                                                                _%tl113292113356%_)
                                                         (let ((_%tmp113359%_
                                                                _%hd113291113354%_))
                                                           (_%E113289113312%_)))))
                                                 (if (pair? _%hd113285113308%_)
                                                     (let ((_%tl113304113411%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd113285113308%_)))
                                                           (_%hd113303113409%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd113285113308%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd113303113409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl113304113411%_)
                       (let ((_%tl113306113416%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl113304113411%_)))
                             (_%hd113305113414%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl113304113411%_))))
                         (if (null? _%tl113306113416%_)
                             (let ((_%expr113419%_ _%hd113305113414%_))
                               (_%K113302113406%_ _%expr113419%_))
                             (if (pair? _%tl113306113416%_)
                                 (let ((_%tl113296113370%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl113306113416%_)))
                                       (_%hd113295113368%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl113306113416%_))))
                                   (let ((_%tmp113359%_ _%hd113303113409%_)
                                         (_%expr113366%_ _%hd113305113414%_)
                                         (_%len113373%_ _%hd113295113368%_)
                                         (_%init113375%_ _%tl113296113370%_))
                                     (_%K113290113351%_
                                      _%init113375%_
                                      _%len113373%_
                                      _%expr113366%_
                                      _%tmp113359%_)))
                                 (_%__match114900114901%_
                                  _%hd113303113409%_
                                  _%tl113304113411%_
                                  _%hd113305113414%_
                                  _%tl113306113416%_))))
                       (_%__match114894114895%_
                        _%hd113303113409%_
                        _%tl113304113411%_))
                   (if (pair? _%tl113304113411%_)
                       (let ((_%tl113301113396%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl113304113411%_)))
                             (_%hd113300113394%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl113304113411%_))))
                         (if (null? _%tl113301113396%_)
                             (let ((_%id113392%_ _%hd113303113409%_)
                                   (_%expr113399%_ _%hd113300113394%_))
                               (_%K113297113384%_ _%expr113399%_ _%id113392%_))
                             (if (pair? _%tl113301113396%_)
                                 (let ((_%tl113296113370%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl113301113396%_)))
                                       (_%hd113295113368%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl113301113396%_))))
                                   (let ((_%tmp113359%_ _%hd113303113409%_)
                                         (_%expr113366%_ _%hd113300113394%_)
                                         (_%len113373%_ _%hd113295113368%_)
                                         (_%init113375%_ _%tl113296113370%_))
                                     (_%K113290113351%_
                                      _%init113375%_
                                      _%len113373%_
                                      _%expr113366%_
                                      _%tmp113359%_)))
                                 (_%__match114900114901%_
                                  _%hd113303113409%_
                                  _%tl113304113411%_
                                  _%hd113300113394%_
                                  _%tl113301113396%_))))
                       (_%__match114894114895%_
                        _%hd113303113409%_
                        _%tl113304113411%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E113289113312%_)))))))
                                        (__tmp115045 (list _%body113281%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp115046
                                     __tmp115045
                                     _%post113280%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp115044)))
                     _%stx113273%_))))
          (__compile-let-form
           _%stx113273%_
           _%compile-simple113275%_
           _%compile-values113276%_))))
    (define __compile-call%
      (lambda (_%stx113233%_)
        (let* ((_%$e113235%_ _%stx113233%_)
               (_%$E113237113246%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113235%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113235%_))
              (let* ((_%$tgt113238113249%_
                      (let () (declare (not safe)) (__AST-e _%$e113235%_)))
                     (_%$hd113239113252%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113238113249%_)))
                     (_%$tl113240113255%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113238113249%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113240113255%_))
                    (let* ((_%$tgt113241113259%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113240113255%_)))
                           (_%$hd113242113262%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113241113259%_)))
                           (_%$tl113243113265%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113241113259%_)))
                           (_%rator113269%_ _%$hd113242113262%_)
                           (_%rands113271%_ _%$tl113243113265%_))
                      (__SRC__%
                       (cons (__compile _%rator113269%_)
                             (map __compile _%rands113271%_))
                       _%stx113233%_))
                    (_%$E113237113246%_)))
              (_%$E113237113246%_)))))
    (define __compile-ref%
      (lambda (_%stx113195%_)
        (let* ((_%$e113197%_ _%stx113195%_)
               (_%$E113199113208%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113197%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113197%_))
              (let* ((_%$tgt113200113211%_
                      (let () (declare (not safe)) (__AST-e _%$e113197%_)))
                     (_%$hd113201113214%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113200113211%_)))
                     (_%$tl113202113217%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113200113211%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113202113217%_))
                    (let* ((_%$tgt113203113221%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113202113217%_)))
                           (_%$hd113204113224%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113203113221%_)))
                           (_%$tl113205113227%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113203113221%_)))
                           (_%id113231%_ _%$hd113204113224%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113205113227%_))
                                  '())
                          (__SRC__% _%id113231%_ _%stx113195%_)
                          (_%$E113199113208%_)))
                    (_%$E113199113208%_)))
              (_%$E113199113208%_)))))
    (define __compile-setq%
      (lambda (_%stx113142%_)
        (let* ((_%$e113144%_ _%stx113142%_)
               (_%$E113146113158%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113144%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113144%_))
              (let* ((_%$tgt113147113161%_
                      (let () (declare (not safe)) (__AST-e _%$e113144%_)))
                     (_%$hd113148113164%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113147113161%_)))
                     (_%$tl113149113167%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113147113161%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113149113167%_))
                    (let* ((_%$tgt113150113171%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113149113167%_)))
                           (_%$hd113151113174%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113150113171%_)))
                           (_%$tl113152113177%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113150113171%_)))
                           (_%id113181%_ _%$hd113151113174%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl113152113177%_))
                          (let* ((_%$tgt113153113183%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113152113177%_)))
                                 (_%$hd113154113186%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113153113183%_)))
                                 (_%$tl113155113189%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113153113183%_)))
                                 (_%expr113193%_ _%$hd113154113186%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl113155113189%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id113181%_
                                              _%stx113142%_)
                                             (cons (__compile _%expr113193%_)
                                                   '())))
                                 _%stx113142%_)
                                (_%$E113146113158%_)))
                          (_%$E113146113158%_)))
                    (_%$E113146113158%_)))
              (_%$E113146113158%_)))))
    (define __compile-if%
      (lambda (_%stx113074%_)
        (let* ((_%$e113076%_ _%stx113074%_)
               (_%$E113078113093%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113076%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113076%_))
              (let* ((_%$tgt113079113096%_
                      (let () (declare (not safe)) (__AST-e _%$e113076%_)))
                     (_%$hd113080113099%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113079113096%_)))
                     (_%$tl113081113102%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113079113096%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113081113102%_))
                    (let* ((_%$tgt113082113106%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113081113102%_)))
                           (_%$hd113083113109%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113082113106%_)))
                           (_%$tl113084113112%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113082113106%_)))
                           (_%p113116%_ _%$hd113083113109%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl113084113112%_))
                          (let* ((_%$tgt113085113118%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113084113112%_)))
                                 (_%$hd113086113121%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt113085113118%_)))
                                 (_%$tl113087113124%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt113085113118%_)))
                                 (_%t113128%_ _%$hd113086113121%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl113087113124%_))
                                (let* ((_%$tgt113088113130%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl113087113124%_)))
                                       (_%$hd113089113133%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt113088113130%_)))
                                       (_%$tl113090113136%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt113088113130%_)))
                                       (_%f113140%_ _%$hd113089113133%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl113090113136%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p113116%_)
                                                   (cons (__compile
                                                          _%t113128%_)
                                                         (cons (__compile
                                                                _%f113140%_)
                                                               '()))))
                                       _%stx113074%_)
                                      (_%$E113078113093%_)))
                                (_%$E113078113093%_)))
                          (_%$E113078113093%_)))
                    (_%$E113078113093%_)))
              (_%$E113078113093%_)))))
    (define __compile-quote%
      (lambda (_%stx113036%_)
        (let* ((_%$e113038%_ _%stx113036%_)
               (_%$E113040113049%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113038%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113038%_))
              (let* ((_%$tgt113041113052%_
                      (let () (declare (not safe)) (__AST-e _%$e113038%_)))
                     (_%$hd113042113055%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113041113052%_)))
                     (_%$tl113043113058%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113041113052%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113043113058%_))
                    (let* ((_%$tgt113044113062%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113043113058%_)))
                           (_%$hd113045113065%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113044113062%_)))
                           (_%$tl113046113068%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113044113062%_)))
                           (_%e113072%_ _%$hd113045113065%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113046113068%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e113072%_))
                                       '()))
                           _%stx113036%_)
                          (_%$E113040113049%_)))
                    (_%$E113040113049%_)))
              (_%$E113040113049%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx112998%_)
        (let* ((_%$e113000%_ _%stx112998%_)
               (_%$E113002113011%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e113000%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e113000%_))
              (let* ((_%$tgt113003113014%_
                      (let () (declare (not safe)) (__AST-e _%$e113000%_)))
                     (_%$hd113004113017%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt113003113014%_)))
                     (_%$tl113005113020%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt113003113014%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl113005113020%_))
                    (let* ((_%$tgt113006113024%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl113005113020%_)))
                           (_%$hd113007113027%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt113006113024%_)))
                           (_%$tl113008113030%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt113006113024%_)))
                           (_%e113034%_ _%$hd113007113027%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl113008113030%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e113034%_ '()))
                           _%stx112998%_)
                          (_%$E113002113011%_)))
                    (_%$E113002113011%_)))
              (_%$E113002113011%_)))))
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
