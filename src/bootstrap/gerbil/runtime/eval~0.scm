(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1712773524)
  (begin
    (define __syntax::t
      (let ((__tmp111879 (list)) (__tmp111878 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp111879
         '(e id)
         __tmp111878
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args111683%_
        (apply make-instance __syntax::t _%$args111683%_)))
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
      (let ((__tmp111881 (list __syntax::t))
            (__tmp111880 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp111881
         '()
         __tmp111880
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args111680%_
        (apply make-instance __core-form::t _%$args111680%_)))
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
      (let ((__tmp111883 (list __core-form::t))
            (__tmp111882 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp111883
         '()
         __tmp111882
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args111677%_
        (apply make-instance __core-expression::t _%$args111677%_)))
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
      (let ((__tmp111885 (list __core-form::t))
            (__tmp111884 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp111885
         '()
         __tmp111884
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args111674%_
        (apply make-instance __core-special-form::t _%$args111674%_)))
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
      (lambda (_%id111672%_)
        (let ((__tmp111886
               (let () (declare (not safe)) (__AST-e _%id111672%_))))
          (declare (not safe))
          (hash-get __core __tmp111886))))
    (define __core-bound-id?__%
      (lambda (_%id111655%_ _%is?111656%_)
        (let ((_%$e111658%_ (__core-resolve _%id111655%_)))
          (if _%$e111658%_ (_%is?111656%_ _%$e111658%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id111665%_)
        (let ((_%is?111667%_ true))
          (__core-bound-id?__% _%id111665%_ _%is?111667%_))))
    (define __core-bound-id?
      (lambda _g111888_
        (let ((_g111887_ (let () (declare (not safe)) (##length _g111888_))))
          (cond ((let () (declare (not safe)) (##fx= _g111887_ 1))
                 (apply __core-bound-id?__0 _g111888_))
                ((let () (declare (not safe)) (##fx= _g111887_ 2))
                 (apply __core-bound-id?__% _g111888_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g111888_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id111638%_ _%e111639%_ _%make111640%_)
        (let ((__tmp111889
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e111639%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e111639%_
                   (_%make111640%_ _%e111639%_ _%id111638%_))))
          (declare (not safe))
          (hash-put! __core _%id111638%_ __tmp111889))))
    (define __core-bind-syntax!__0
      (lambda (_%id111645%_ _%e111646%_)
        (let ((_%make111648%_ make-__syntax))
          (__core-bind-syntax!__% _%id111645%_ _%e111646%_ _%make111648%_))))
    (define __core-bind-syntax!
      (lambda _g111891_
        (let ((_g111890_ (let () (declare (not safe)) (##length _g111891_))))
          (cond ((let () (declare (not safe)) (##fx= _g111890_ 2))
                 (apply __core-bind-syntax!__0 _g111891_))
                ((let () (declare (not safe)) (##fx= _g111890_ 3))
                 (apply __core-bind-syntax!__% _g111891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g111891_))))))
    (define __SRC__%
      (lambda (_%e111618%_ _%src-stx111619%_)
        (if (or (pair? _%e111618%_) (symbol? _%e111618%_))
            (let ((__tmp111892
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx111619%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx111619%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e111618%_ __tmp111892))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e111618%_ 'gerbil#AST::t))
                (let ((__tmp111894
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e111618%_ '1 '#f '#f)))
                      (__tmp111893
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e111618%_)))))
                  (declare (not safe))
                  (##make-source __tmp111894 __tmp111893))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e111618%_))))))
    (define __SRC__0
      (lambda (_%e111630%_)
        (let ((_%src-stx111632%_ '#f))
          (__SRC__% _%e111630%_ _%src-stx111632%_))))
    (define __SRC
      (lambda _g111896_
        (let ((_g111895_ (let () (declare (not safe)) (##length _g111896_))))
          (cond ((let () (declare (not safe)) (##fx= _g111895_ 1))
                 (apply __SRC__0 _g111896_))
                ((let () (declare (not safe)) (##fx= _g111895_ 2))
                 (apply __SRC__% _g111896_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g111896_))))))
    (define __locat
      (lambda (_%loc111615%_)
        (if (let () (declare (not safe)) (##locat? _%loc111615%_))
            _%loc111615%_
            '#f)))
    (define __check-values
      (lambda (_%obj111610%_ _%k111611%_)
        (let ((_%count111613%_
               (if (let () (declare (not safe)) (##values? _%obj111610%_))
                   (let ()
                     (declare (not safe))
                     (##vector-length _%obj111610%_))
                   '1)))
          (if (fx= _%count111613%_ _%k111611%_)
              '#!void
              (let ((__tmp111898
                     (if (fx< _%count111613%_ _%k111611%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp111897
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj111610%_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _%obj111610%_))
                         _%obj111610%_)))
                (declare (not safe))
                (error __tmp111898 __tmp111897 _%k111611%_))))))
    (define __compile
      (lambda (_%stx111579%_)
        (let* ((_%$e111581%_ _%stx111579%_)
               (_%$E111583111589%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111581%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111581%_))
              (let* ((_%$tgt111584111592%_
                      (let () (declare (not safe)) (__AST-e _%$e111581%_)))
                     (_%$hd111585111595%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111584111592%_)))
                     (_%$tl111586111598%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111584111592%_)))
                     (_%form111602%_ _%$hd111585111595%_)
                     (_%$e111604%_ (__core-resolve _%form111602%_)))
                (if _%$e111604%_
                    ((lambda (_%bind111607%_)
                       ((##structure-ref _%bind111607%_ '1 __syntax::t '#f)
                        _%stx111579%_))
                     _%$e111604%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx111579%_
                       _%form111602%_))))
              (_%$E111583111589%_)))))
    (define __compile-error__%
      (lambda (_%stx111566%_ _%detail111567%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx111566%_
           _%detail111567%_))))
    (define __compile-error__0
      (lambda (_%stx111572%_)
        (let ((_%detail111574%_ '#f))
          (__compile-error__% _%stx111572%_ _%detail111574%_))))
    (define __compile-error
      (lambda _g111900_
        (let ((_g111899_ (let () (declare (not safe)) (##length _g111900_))))
          (cond ((let () (declare (not safe)) (##fx= _g111899_ 1))
                 (apply __compile-error__0 _g111900_))
                ((let () (declare (not safe)) (##fx= _g111899_ 2))
                 (apply __compile-error__% _g111900_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g111900_))))))
    (define __compile-ignore%
      (lambda (_%stx111563%_) (__SRC__% ''#!void _%stx111563%_)))
    (define __compile-begin%
      (lambda (_%stx111538%_)
        (let* ((_%$e111540%_ _%stx111538%_)
               (_%$E111542111548%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111540%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111540%_))
              (let* ((_%$tgt111543111551%_
                      (let () (declare (not safe)) (__AST-e _%$e111540%_)))
                     (_%$hd111544111554%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111543111551%_)))
                     (_%$tl111545111557%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111543111551%_)))
                     (_%body111561%_ _%$tl111545111557%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body111561%_))
                 _%stx111538%_))
              (_%$E111542111548%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx111513%_)
        (let* ((_%$e111515%_ _%stx111513%_)
               (_%$E111517111523%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111515%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111515%_))
              (let* ((_%$tgt111518111526%_
                      (let () (declare (not safe)) (__AST-e _%$e111515%_)))
                     (_%$hd111519111529%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111518111526%_)))
                     (_%$tl111520111532%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111518111526%_)))
                     (_%body111536%_ _%$tl111520111532%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body111536%_)))
                 _%stx111513%_))
              (_%$E111517111523%_)))))
    (define __compile-import%
      (lambda (_%stx111488%_)
        (let* ((_%$e111490%_ _%stx111488%_)
               (_%$E111492111498%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111490%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111490%_))
              (let* ((_%$tgt111493111501%_
                      (let () (declare (not safe)) (__AST-e _%$e111490%_)))
                     (_%$hd111494111504%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111493111501%_)))
                     (_%$tl111495111507%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111493111501%_)))
                     (_%body111511%_ _%$tl111495111507%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body111511%_ '())) '()))
                 _%stx111488%_))
              (_%$E111492111498%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx111435%_)
        (let* ((_%$e111437%_ _%stx111435%_)
               (_%$E111439111451%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111437%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111437%_))
              (let* ((_%$tgt111440111454%_
                      (let () (declare (not safe)) (__AST-e _%$e111437%_)))
                     (_%$hd111441111457%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111440111454%_)))
                     (_%$tl111442111460%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111440111454%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111442111460%_))
                    (let* ((_%$tgt111443111464%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111442111460%_)))
                           (_%$hd111444111467%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111443111464%_)))
                           (_%$tl111445111470%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111443111464%_)))
                           (_%ann111474%_ _%$hd111444111467%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111445111470%_))
                          (let* ((_%$tgt111446111476%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111445111470%_)))
                                 (_%$hd111447111479%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111446111476%_)))
                                 (_%$tl111448111482%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111446111476%_)))
                                 (_%expr111486%_ _%$hd111447111479%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111448111482%_))
                                        '())
                                (__compile _%expr111486%_)
                                (_%$E111439111451%_)))
                          (_%$E111439111451%_)))
                    (_%$E111439111451%_)))
              (_%$E111439111451%_)))))
    (define __compile-define-values%
      (lambda (_%stx111326%_)
        (let* ((_%$e111328%_ _%stx111326%_)
               (_%$E111330111342%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111328%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111328%_))
              (let* ((_%$tgt111331111345%_
                      (let () (declare (not safe)) (__AST-e _%$e111328%_)))
                     (_%$hd111332111348%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111331111345%_)))
                     (_%$tl111333111351%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111331111345%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111333111351%_))
                    (let* ((_%$tgt111334111355%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111333111351%_)))
                           (_%$hd111335111358%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111334111355%_)))
                           (_%$tl111336111361%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111334111355%_)))
                           (_%hd111365%_ _%$hd111335111358%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111336111361%_))
                          (let* ((_%$tgt111337111367%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111336111361%_)))
                                 (_%$hd111338111370%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111337111367%_)))
                                 (_%$tl111339111373%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111337111367%_)))
                                 (_%expr111377%_ _%$hd111338111370%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111339111373%_))
                                        '())
                                (let* ((_%$e111379%_ _%hd111365%_)
                                       (_%$E111381111422%_
                                        (lambda ()
                                          (let ((_%$E111382111407%_
                                                 (lambda ()
                                                   (let* ((_%$E111383111394%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e111379%_))))
                  (_%ids111397%_ _%hd111365%_)
                  (_%len111399%_ (length _%ids111397%_))
                  (_%tmp111401%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp111401%_
                                       (cons (__compile _%expr111377%_) '())))
                           _%stx111326%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp111401%_
                                             (cons _%len111399%_ '())))
                                 _%stx111326%_)
                                (let ((__tmp111901
                                       (let ((__tmp111903
                                              (lambda (_%id111404%_
                                                       _%k111405%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id111404%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id111404%_)
                         (cons (cons '##vector-ref
                                     (cons _%tmp111401%_
                                           (cons _%k111405%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx111326%_)
                                                    '#f)))
                                             (__tmp111902
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len111399%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp111903
                                          _%ids111397%_
                                          __tmp111902))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp111901)))))
              _%stx111326%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e111379%_))
                                                (let* ((_%$tgt111384111410%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e111379%_)))
                                                       (_%$hd111385111413%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt111384111410%_)))
                                                       (_%$tl111386111416%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt111384111410%_)))
                                                       (_%id111420%_
                                                        _%$hd111385111413%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl111386111416%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id111420%_)
                           (cons (__compile _%expr111377%_) '())))
               _%stx111326%_)
              (_%$E111382111407%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E111382111407%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e111379%_))
                                      (let* ((_%$tgt111387111425%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e111379%_)))
                                             (_%$hd111388111428%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt111387111425%_)))
                                             (_%$tl111389111431%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt111387111425%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd111388111428%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl111389111431%_))
                                                        '())
                                                (__compile _%expr111377%_)
                                                (_%$E111381111422%_))
                                            (_%$E111381111422%_)))
                                      (_%$E111381111422%_)))
                                (_%$E111330111342%_)))
                          (_%$E111330111342%_)))
                    (_%$E111330111342%_)))
              (_%$E111330111342%_)))))
    (define __compile-head-id
      (lambda (_%e111324%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e111324%_))
             _%e111324%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd111281%_)
        (let _%recur111283%_ ((_%rest111285%_ _%hd111281%_))
          (let* ((_%$e111287%_ _%rest111285%_)
                 (_%$E111289111307%_
                  (lambda ()
                    (let ((_%$E111290111304%_
                           (lambda ()
                             (let* ((_%$E111291111299%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e111287%_))))
                                    (_%tail111302%_ _%$e111287%_))
                               (__compile-head-id _%tail111302%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111287%_))
                                  '())
                          '()
                          (_%$E111290111304%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e111287%_))
                (let* ((_%$tgt111292111310%_
                        (let () (declare (not safe)) (__AST-e _%$e111287%_)))
                       (_%$hd111293111313%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt111292111310%_)))
                       (_%$tl111294111316%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt111292111310%_)))
                       (_%hd111320%_ _%$hd111293111313%_)
                       (_%rest111322%_ _%$tl111294111316%_))
                  (cons (__compile-head-id _%hd111320%_)
                        (_%recur111283%_ _%rest111322%_)))
                (_%$E111289111307%_))))))
    (define __compile-lambda%
      (lambda (_%stx111228%_)
        (let* ((_%$e111230%_ _%stx111228%_)
               (_%$E111232111244%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e111230%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e111230%_))
              (let* ((_%$tgt111233111247%_
                      (let () (declare (not safe)) (__AST-e _%$e111230%_)))
                     (_%$hd111234111250%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt111233111247%_)))
                     (_%$tl111235111253%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt111233111247%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl111235111253%_))
                    (let* ((_%$tgt111236111257%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl111235111253%_)))
                           (_%$hd111237111260%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt111236111257%_)))
                           (_%$tl111238111263%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt111236111257%_)))
                           (_%hd111267%_ _%$hd111237111260%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl111238111263%_))
                          (let* ((_%$tgt111239111269%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl111238111263%_)))
                                 (_%$hd111240111272%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111239111269%_)))
                                 (_%$tl111241111275%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111239111269%_)))
                                 (_%body111279%_ _%$hd111240111272%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl111241111275%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd111267%_)
                                             (cons (__compile _%body111279%_)
                                                   '())))
                                 _%stx111228%_)
                                (_%$E111232111244%_)))
                          (_%$E111232111244%_)))
                    (_%$E111232111244%_)))
              (_%$E111232111244%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx111020%_)
        (letrec ((_%variadic?111022%_
                  (lambda (_%hd111193%_)
                    (let* ((_%$e111195%_ _%hd111193%_)
                           (_%$E111197111213%_
                            (lambda ()
                              (let ((_%$E111198111210%_
                                     (lambda ()
                                       (let ((_%$E111199111207%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e111195%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e111195%_))
                                            '())
                                    '#f
                                    (_%$E111198111210%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e111195%_))
                          (let* ((_%$tgt111200111216%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111195%_)))
                                 (_%$hd111201111219%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111200111216%_)))
                                 (_%$tl111202111222%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111200111216%_)))
                                 (_%rest111226%_ _%$tl111202111222%_))
                            (_%variadic?111022%_ _%rest111226%_))
                          (_%$E111197111213%_)))))
                 (_%arity111023%_
                  (lambda (_%hd111158%_)
                    (let _%lp111160%_ ((_%rest111162%_ _%hd111158%_)
                                       (_%k111163%_ '0))
                      (let* ((_%$e111165%_ _%rest111162%_)
                             (_%$E111167111178%_
                              (lambda ()
                                (let ((_%$E111168111175%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e111165%_)))))
                                  _%k111163%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e111165%_))
                            (let* ((_%$tgt111169111181%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e111165%_)))
                                   (_%$hd111170111184%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt111169111181%_)))
                                   (_%$tl111171111187%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt111169111181%_)))
                                   (_%rest111191%_ _%$tl111171111187%_))
                              (_%lp111160%_
                               _%rest111191%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k111163%_ '1))))
                            (_%$E111167111178%_))))))
                 (_%generate111024%_
                  (lambda (_%rest111085%_ _%args111086%_ _%len111087%_)
                    (let* ((_%$e111089%_ _%rest111085%_)
                           (_%$E111091111102%_
                            (lambda ()
                              (let ((_%$E111092111099%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e111089%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args111086%_ '())))
                                 _%stx111020%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e111089%_))
                          (let* ((_%$tgt111093111105%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111089%_)))
                                 (_%$hd111094111108%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111093111105%_)))
                                 (_%$tl111095111111%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111093111105%_)))
                                 (_%clause111115%_ _%$hd111094111108%_)
                                 (_%rest111117%_ _%$tl111095111111%_)
                                 (_%$e111119%_ _%clause111115%_)
                                 (_%$E111121111130%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e111119%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e111119%_))
                                (let* ((_%$tgt111122111133%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e111119%_)))
                                       (_%$hd111123111136%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt111122111133%_)))
                                       (_%$tl111124111139%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt111122111133%_)))
                                       (_%hd111143%_ _%$hd111123111136%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl111124111139%_))
                                      (let* ((_%$tgt111125111145%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl111124111139%_)))
                                             (_%$hd111126111148%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt111125111145%_)))
                                             (_%$tl111127111151%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt111125111145%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl111127111151%_))
                                                    '())
                                            (let ((_%clen111155%_
                                                   (_%arity111023%_
                                                    _%hd111143%_))
                                                  (_%cmp111156%_
                                                   (if (_%variadic?111022%_
                                                        _%hd111143%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp111156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len111087%_ (cons _%clen111155%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause111115%_))
                                      (cons _%args111086%_ '())))
                          _%stx111020%_)
                         (cons (_%generate111024%_
                                _%rest111117%_
                                _%args111086%_
                                _%len111087%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx111020%_))
                                            (_%$E111121111130%_)))
                                      (_%$E111121111130%_)))
                                (_%$E111121111130%_)))
                          (_%$E111091111102%_))))))
          (let* ((_%$e111026%_ _%stx111020%_)
                 (_%$E111028111060%_
                  (lambda ()
                    (let ((_%$E111029111042%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e111026%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e111026%_))
                          (let* ((_%$tgt111030111045%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e111026%_)))
                                 (_%$hd111031111048%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt111030111045%_)))
                                 (_%$tl111032111051%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt111030111045%_)))
                                 (_%clauses111055%_ _%$tl111032111051%_))
                            (let ((_%args111057%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx111020%_))
                                  (_%len111058%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx111020%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args111057%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len111058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args111057%_ '()))
                                         _%stx111020%_)
                                        '()))
                            '())
                      (cons (_%generate111024%_
                             _%clauses111055%_
                             _%args111057%_
                             _%len111058%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx111020%_)
                                                 '())))
                               _%stx111020%_)))
                          (_%$E111029111042%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e111026%_))
                (let* ((_%$tgt111033111063%_
                        (let () (declare (not safe)) (__AST-e _%$e111026%_)))
                       (_%$hd111034111066%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt111033111063%_)))
                       (_%$tl111035111069%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt111033111063%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl111035111069%_))
                      (let* ((_%$tgt111036111073%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl111035111069%_)))
                             (_%$hd111037111076%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt111036111073%_)))
                             (_%$tl111038111079%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt111036111073%_)))
                             (_%clause111083%_ _%$hd111037111076%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl111038111079%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause111083%_))
                            (_%$E111028111060%_)))
                      (_%$E111028111060%_)))
                (_%$E111028111060%_))))))
    (define __compile-let-form
      (lambda (_%stx110789%_ _%compile-simple110790%_ _%compile-values110791%_)
        (letrec ((_%simple-bind?110793%_
                  (lambda (_%hd110978%_)
                    (let* ((_%hd110979110989%_ _%hd110978%_)
                           (_%else110982110997%_ (lambda () '#f)))
                      (let ((_%K110985111010%_ (lambda (_%id111008%_) '#t))
                            (_%K110984111002%_ (lambda () '#t)))
                        (let ((_%try-match110981111005%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd110979110989%_ '#f))
                                     (_%K110984111002%_)
                                     (_%else110982110997%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%hd110979110989%_))
                              (let ((_%tl110987111015%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd110979110989%_)))
                                    (_%hd110986111013%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd110979110989%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _%tl110987111015%_))
                                    (let ((_%id111018%_ _%hd110986111013%_))
                                      (_%K110985111010%_ _%id111018%_))
                                    (_%try-match110981111005%_)))
                              (_%try-match110981111005%_)))))))
                 (_%car-e110794%_
                  (lambda (_%hd110976%_)
                    (if (pair? _%hd110976%_)
                        (car _%hd110976%_)
                        _%hd110976%_))))
          (let* ((_%$e110796%_ _%stx110789%_)
                 (_%$E110798110941%_
                  (lambda ()
                    (let ((_%$E110799110821%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110796%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e110796%_))
                          (let* ((_%$tgt110800110824%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e110796%_)))
                                 (_%$hd110801110827%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110800110824%_)))
                                 (_%$tl110802110830%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110800110824%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110802110830%_))
                                (let* ((_%$tgt110803110834%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110802110830%_)))
                                       (_%$hd110804110837%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110803110834%_)))
                                       (_%$tl110805110840%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110803110834%_)))
                                       (_%hd110844%_ _%$hd110804110837%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl110805110840%_))
                                      (let* ((_%$tgt110806110846%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl110805110840%_)))
                                             (_%$hd110807110849%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt110806110846%_)))
                                             (_%$tl110808110852%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt110806110846%_)))
                                             (_%body110856%_
                                              _%$hd110807110849%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl110808110852%_))
                                                    '())
                                            (let* ((_%hd-ids110896%_
                                                    (map (lambda (_%bind110858%_)
                                                           (let* ((_%$e110860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind110858%_)
                          (_%$E110862110871%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110860%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e110860%_))
                         (let* ((_%$tgt110863110874%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e110860%_)))
                                (_%$hd110864110877%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt110863110874%_)))
                                (_%$tl110865110880%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt110863110874%_)))
                                (_%ids110884%_ _%$hd110864110877%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl110865110880%_))
                               (let* ((_%$tgt110866110886%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl110865110880%_)))
                                      (_%$hd110867110889%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt110866110886%_)))
                                      (_%$tl110868110892%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt110866110886%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110868110892%_))
                                             '())
                                     _%ids110884%_
                                     (_%$E110862110871%_)))
                               (_%$E110862110871%_)))
                         (_%$E110862110871%_))))
                 _%hd110844%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs110936%_
                                                    (map (lambda (_%bind110898%_)
                                                           (let* ((_%$e110900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind110898%_)
                          (_%$E110902110911%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e110900%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e110900%_))
                         (let* ((_%$tgt110903110914%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e110900%_)))
                                (_%$hd110904110917%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt110903110914%_)))
                                (_%$tl110905110920%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt110903110914%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl110905110920%_))
                               (let* ((_%$tgt110906110924%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl110905110920%_)))
                                      (_%$hd110907110927%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt110906110924%_)))
                                      (_%$tl110908110930%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt110906110924%_)))
                                      (_%expr110934%_ _%$hd110907110927%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl110908110930%_))
                                             '())
                                     (__compile _%expr110934%_)
                                     (_%$E110902110911%_)))
                               (_%$E110902110911%_)))
                         (_%$E110902110911%_))))
                 _%hd110844%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body110938%_
                                                    (__compile
                                                     _%body110856%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?110793%_
                                                     _%hd-ids110896%_))
                                                  (_%compile-simple110790%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e110794%_
                                                            _%hd-ids110896%_))
                                                   _%exprs110936%_
                                                   _%body110938%_)
                                                  (_%compile-values110791%_
                                                   _%hd-ids110896%_
                                                   _%exprs110936%_
                                                   _%body110938%_)))
                                            (_%$E110799110821%_)))
                                      (_%$E110799110821%_)))
                                (_%$E110799110821%_)))
                          (_%$E110799110821%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e110796%_))
                (let* ((_%$tgt110809110944%_
                        (let () (declare (not safe)) (__AST-e _%$e110796%_)))
                       (_%$hd110810110947%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt110809110944%_)))
                       (_%$tl110811110950%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt110809110944%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl110811110950%_))
                      (let* ((_%$tgt110812110954%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl110811110950%_)))
                             (_%$hd110813110957%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt110812110954%_)))
                             (_%$tl110814110960%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt110812110954%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd110813110957%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl110814110960%_))
                                (let* ((_%$tgt110815110964%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110814110960%_)))
                                       (_%$hd110816110967%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt110815110964%_)))
                                       (_%$tl110817110970%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt110815110964%_)))
                                       (_%body110974%_ _%$hd110816110967%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl110817110970%_))
                                              '())
                                      (__compile _%body110974%_)
                                      (_%$E110798110941%_)))
                                (_%$E110798110941%_))
                            (_%$E110798110941%_)))
                      (_%$E110798110941%_)))
                (_%$E110798110941%_))))))
    (define __compile-let-values%
      (lambda (_%stx110601%_)
        (letrec ((_%compile-simple110603%_
                  (lambda (_%hd-ids110785%_ _%exprs110786%_ _%body110787%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp111904
                                        (map __compile-head-id
                                             _%hd-ids110785%_)))
                                   (declare (not safe))
                                   (##map list __tmp111904 _%exprs110786%_))
                                 (cons _%body110787%_ '())))
                     _%stx110601%_)))
                 (_%compile-values110604%_
                  (lambda (_%hd-ids110700%_ _%exprs110701%_ _%body110702%_)
                    (let _%lp110704%_ ((_%rest110706%_ _%hd-ids110700%_)
                                       (_%exprs110707%_ _%exprs110701%_)
                                       (_%bind110708%_ '())
                                       (_%post110709%_ '()))
                      (let* ((_%rest110710110724%_ _%rest110706%_)
                             (_%else110713110732%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind110708%_)
                                             (cons (_%compile-post110605%_
                                                    _%post110709%_
                                                    _%body110702%_)
                                                   '())))
                                 _%stx110601%_))))
                        (let ((_%K110718110768%_
                               (lambda (_%rest110765%_ _%id110766%_)
                                 (_%lp110704%_
                                  _%rest110765%_
                                  (cdr _%exprs110707%_)
                                  (cons (cons (__compile-head-id _%id110766%_)
                                              (cons (car _%exprs110707%_) '()))
                                        _%bind110708%_)
                                  _%post110709%_)))
                              (_%K110715110750%_
                               (lambda (_%rest110736%_ _%hd110737%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110737%_))
                                     (_%lp110704%_
                                      _%rest110736%_
                                      (cdr _%exprs110707%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd110737%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs110707%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind110708%_)
                                      _%post110709%_)
                                     (if (list? _%hd110737%_)
                                         (let* ((_%len110741%_
                                                 (length _%hd110737%_))
                                                (_%tmp110743%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp110704%_
                                            _%rest110736%_
                                            (cdr _%exprs110707%_)
                                            (cons (cons _%tmp110743%_
                                                        (cons (car _%exprs110707%_)
                                                              '()))
                                                  _%bind110708%_)
                                            (cons (cons _%tmp110743%_
                                                        (cons _%len110741%_
                                                              (let ((__tmp111906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id110746%_ _%k110747%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id110746%_))
                                   (cons (__SRC__0 _%id110746%_) _%k110747%_)
                                   '#f)))
                            (__tmp111905
                             (let ()
                               (declare (not safe))
                               (##iota _%len110741%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp111906 _%hd110737%_ __tmp111905))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post110709%_)))
                                         (__compile-error__%
                                          _%stx110601%_
                                          _%hd110737%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110710110724%_))
                              (let ((_%tl110720110773%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110710110724%_)))
                                    (_%hd110719110771%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110710110724%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110719110771%_))
                                    (let ((_%tl110722110778%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110719110771%_)))
                                          (_%hd110721110776%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110719110771%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110722110778%_))
                                          (let ((_%id110781%_
                                                 _%hd110721110776%_)
                                                (_%rest110783%_
                                                 _%tl110720110773%_))
                                            (_%K110718110768%_
                                             _%rest110783%_
                                             _%id110781%_))
                                          (let ((_%hd110758%_
                                                 _%hd110719110771%_)
                                                (_%rest110760%_
                                                 _%tl110720110773%_))
                                            (_%K110715110750%_
                                             _%rest110760%_
                                             _%hd110758%_))))
                                    (let ((_%hd110758%_ _%hd110719110771%_)
                                          (_%rest110760%_ _%tl110720110773%_))
                                      (_%K110715110750%_
                                       _%rest110760%_
                                       _%hd110758%_))))
                              (_%else110713110732%_)))))))
                 (_%compile-post110605%_
                  (lambda (_%post110607%_ _%body110608%_)
                    (let _%lp110610%_ ((_%rest110612%_ _%post110607%_)
                                       (_%check110613%_ '())
                                       (_%bind110614%_ '()))
                      (let* ((_%rest110615110627%_ _%rest110612%_)
                             (_%else110617110635%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp111907
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind110614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body110608%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx110601%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp111907
                                          _%check110613%_)))
                                 _%stx110601%_)))
                             (_%K110619110674%_
                              (lambda (_%rest110638%_
                                       _%init110639%_
                                       _%len110640%_
                                       _%tmp110641%_)
                                (_%lp110610%_
                                 _%rest110638%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp110641%_
                                                    (cons _%len110640%_ '())))
                                        _%stx110601%_)
                                       _%check110613%_)
                                 (let ((__tmp111908
                                        (lambda (_%hd110643%_ _%r110644%_)
                                          (let* ((_%hd110645110652%_
                                                  _%hd110643%_)
                                                 (_%E110647110656%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd110645110652%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K110648110662%_
                                                  (lambda (_%k110659%_
                                                           _%id110660%_)
                                                    (cons (cons _%id110660%_
                                                                (cons (cons '##vector-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp110641%_
                                          (cons _%k110659%_ '())))
                              '()))
                  _%r110644%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd110645110652%_))
                                                (let ((_%hd110649110665%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd110645110652%_)))
                                                      (_%tl110650110667%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd110645110652%_))))
                                                  (let* ((_%id110670%_
                                                          _%hd110649110665%_)
                                                         (_%k110672%_
                                                          _%tl110650110667%_))
                                                    (_%K110648110662%_
                                                     _%k110672%_
                                                     _%id110670%_)))
                                                (_%E110647110656%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp111908
                                    _%bind110614%_
                                    _%init110639%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest110615110627%_))
                            (let ((_%hd110620110677%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest110615110627%_)))
                                  (_%tl110621110679%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest110615110627%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd110620110677%_))
                                  (let ((_%hd110622110682%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd110620110677%_)))
                                        (_%tl110623110684%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd110620110677%_))))
                                    (let ((_%tmp110687%_ _%hd110622110682%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl110623110684%_))
                                          (let ((_%hd110624110689%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl110623110684%_)))
                                                (_%tl110625110691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl110623110684%_))))
                                            (let* ((_%len110694%_
                                                    _%hd110624110689%_)
                                                   (_%init110696%_
                                                    _%tl110625110691%_)
                                                   (_%rest110698%_
                                                    _%tl110621110679%_))
                                              (_%K110619110674%_
                                               _%rest110698%_
                                               _%init110696%_
                                               _%len110694%_
                                               _%tmp110687%_)))
                                          (_%else110617110635%_))))
                                  (_%else110617110635%_)))
                            (_%else110617110635%_)))))))
          (__compile-let-form
           _%stx110601%_
           _%compile-simple110603%_
           _%compile-values110604%_))))
    (define __compile-letrec-values%
      (lambda (_%stx110398%_)
        (letrec ((_%compile-simple110400%_
                  (lambda (_%hd-ids110597%_ _%exprs110598%_ _%body110599%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp111909
                                        (map __compile-head-id
                                             _%hd-ids110597%_)))
                                   (declare (not safe))
                                   (##map list __tmp111909 _%exprs110598%_))
                                 (cons _%body110599%_ '())))
                     _%stx110398%_)))
                 (_%compile-values110401%_
                  (lambda (_%hd-ids110508%_ _%exprs110509%_ _%body110510%_)
                    (let _%lp110512%_ ((_%rest110514%_ _%hd-ids110508%_)
                                       (_%exprs110515%_ _%exprs110509%_)
                                       (_%pre110516%_ '())
                                       (_%bind110517%_ '())
                                       (_%post110518%_ '()))
                      (let* ((_%rest110519110533%_ _%rest110514%_)
                             (_%else110522110541%_
                              (lambda ()
                                (_%compile-inner110402%_
                                 _%pre110516%_
                                 _%bind110517%_
                                 _%post110518%_
                                 _%body110510%_))))
                        (let ((_%K110527110580%_
                               (lambda (_%rest110577%_ _%id110578%_)
                                 (_%lp110512%_
                                  _%rest110577%_
                                  (cdr _%exprs110515%_)
                                  _%pre110516%_
                                  (cons (cons (__compile-head-id _%id110578%_)
                                              (cons (car _%exprs110515%_) '()))
                                        _%bind110517%_)
                                  _%post110518%_)))
                              (_%K110524110562%_
                               (lambda (_%rest110545%_ _%hd110546%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110546%_))
                                     (_%lp110512%_
                                      _%rest110545%_
                                      (cdr _%exprs110515%_)
                                      _%pre110516%_
                                      (cons (cons (__compile-head-id
                                                   _%hd110546%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs110515%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind110517%_)
                                      _%post110518%_)
                                     (if (list? _%hd110546%_)
                                         (let* ((_%len110550%_
                                                 (length _%hd110546%_))
                                                (_%tmp110552%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp110512%_
                                            _%rest110545%_
                                            (cdr _%exprs110515%_)
                                            (let ((__tmp111910
                                                   (lambda (_%id110555%_
                                                            _%r110556%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id110555%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id110555%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r110556%_)
                 _%r110556%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp111910
                                               _%pre110516%_
                                               _%hd110546%_))
                                            (cons (cons _%tmp110552%_
                                                        (cons (car _%exprs110515%_)
                                                              '()))
                                                  _%bind110517%_)
                                            (cons (cons _%tmp110552%_
                                                        (cons _%len110550%_
                                                              (let ((__tmp111912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id110558%_ _%k110559%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id110558%_))
                                   (cons (__SRC__0 _%id110558%_) _%k110559%_)
                                   '#f)))
                            (__tmp111911
                             (let ()
                               (declare (not safe))
                               (##iota _%len110550%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp111912 _%hd110546%_ __tmp111911))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post110518%_)))
                                         (__compile-error__%
                                          _%stx110398%_
                                          _%hd110546%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110519110533%_))
                              (let ((_%tl110529110585%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110519110533%_)))
                                    (_%hd110528110583%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110519110533%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110528110583%_))
                                    (let ((_%tl110531110590%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110528110583%_)))
                                          (_%hd110530110588%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110528110583%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110531110590%_))
                                          (let ((_%id110593%_
                                                 _%hd110530110588%_)
                                                (_%rest110595%_
                                                 _%tl110529110585%_))
                                            (_%K110527110580%_
                                             _%rest110595%_
                                             _%id110593%_))
                                          (let ((_%hd110570%_
                                                 _%hd110528110583%_)
                                                (_%rest110572%_
                                                 _%tl110529110585%_))
                                            (_%K110524110562%_
                                             _%rest110572%_
                                             _%hd110570%_))))
                                    (let ((_%hd110570%_ _%hd110528110583%_)
                                          (_%rest110572%_ _%tl110529110585%_))
                                      (_%K110524110562%_
                                       _%rest110572%_
                                       _%hd110570%_))))
                              (_%else110522110541%_)))))))
                 (_%compile-inner110402%_
                  (lambda (_%pre110503%_
                           _%bind110504%_
                           _%post110505%_
                           _%body110506%_)
                    (if (null? _%pre110503%_)
                        (_%compile-bind110403%_
                         _%bind110504%_
                         _%post110505%_
                         _%body110506%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre110503%_)
                                     (cons (_%compile-bind110403%_
                                            _%bind110504%_
                                            _%post110505%_
                                            _%body110506%_)
                                           '())))
                         _%stx110398%_))))
                 (_%compile-bind110403%_
                  (lambda (_%bind110499%_ _%post110500%_ _%body110501%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind110499%_)
                                 (cons (_%compile-post110404%_
                                        _%post110500%_
                                        _%body110501%_)
                                       '())))
                     _%stx110398%_)))
                 (_%compile-post110404%_
                  (lambda (_%post110406%_ _%body110407%_)
                    (let _%lp110409%_ ((_%rest110411%_ _%post110406%_)
                                       (_%check110412%_ '())
                                       (_%bind110413%_ '()))
                      (let* ((_%rest110414110426%_ _%rest110411%_)
                             (_%else110416110434%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp111913
                                              (let ((__tmp111914
                                                     (cons _%body110407%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp111914
                                                 _%bind110413%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp111913
                                          _%check110412%_)))
                                 _%stx110398%_)))
                             (_%K110418110473%_
                              (lambda (_%rest110437%_
                                       _%init110438%_
                                       _%len110439%_
                                       _%tmp110440%_)
                                (_%lp110409%_
                                 _%rest110437%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp110440%_
                                                    (cons _%len110439%_ '())))
                                        _%stx110398%_)
                                       _%check110412%_)
                                 (let ((__tmp111915
                                        (lambda (_%hd110442%_ _%r110443%_)
                                          (let* ((_%hd110444110451%_
                                                  _%hd110442%_)
                                                 (_%E110446110455%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd110444110451%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K110447110461%_
                                                  (lambda (_%k110458%_
                                                           _%id110459%_)
                                                    (cons (cons 'set!
                                                                (cons _%id110459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##vector-ref
                                          (cons _%tmp110440%_
                                                (cons _%k110458%_ '())))
                                    '())))
                  _%r110443%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd110444110451%_))
                                                (let ((_%hd110448110464%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd110444110451%_)))
                                                      (_%tl110449110466%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd110444110451%_))))
                                                  (let* ((_%id110469%_
                                                          _%hd110448110464%_)
                                                         (_%k110471%_
                                                          _%tl110449110466%_))
                                                    (_%K110447110461%_
                                                     _%k110471%_
                                                     _%id110469%_)))
                                                (_%E110446110455%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp111915
                                    _%bind110413%_
                                    _%init110438%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest110414110426%_))
                            (let ((_%hd110419110476%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest110414110426%_)))
                                  (_%tl110420110478%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest110414110426%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%hd110419110476%_))
                                  (let ((_%hd110421110481%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd110419110476%_)))
                                        (_%tl110422110483%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd110419110476%_))))
                                    (let ((_%tmp110486%_ _%hd110421110481%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl110422110483%_))
                                          (let ((_%hd110423110488%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl110422110483%_)))
                                                (_%tl110424110490%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl110422110483%_))))
                                            (let* ((_%len110493%_
                                                    _%hd110423110488%_)
                                                   (_%init110495%_
                                                    _%tl110424110490%_)
                                                   (_%rest110497%_
                                                    _%tl110420110478%_))
                                              (_%K110418110473%_
                                               _%rest110497%_
                                               _%init110495%_
                                               _%len110493%_
                                               _%tmp110486%_)))
                                          (_%else110416110434%_))))
                                  (_%else110416110434%_)))
                            (_%else110416110434%_)))))))
          (__compile-let-form
           _%stx110398%_
           _%compile-simple110400%_
           _%compile-values110401%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx110149%_)
        (letrec ((_%compile-simple110151%_
                  (lambda (_%hd-ids110394%_ _%exprs110395%_ _%body110396%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp111916
                                        (map __compile-head-id
                                             _%hd-ids110394%_)))
                                   (declare (not safe))
                                   (##map list __tmp111916 _%exprs110395%_))
                                 (cons _%body110396%_ '())))
                     _%stx110149%_)))
                 (_%compile-values110152%_
                  (lambda (_%hd-ids110301%_ _%exprs110302%_ _%body110303%_)
                    (let _%lp110305%_ ((_%rest110307%_ _%hd-ids110301%_)
                                       (_%exprs110308%_ _%exprs110302%_)
                                       (_%bind110309%_ '())
                                       (_%post110310%_ '()))
                      (let* ((_%rest110311110325%_ _%rest110307%_)
                             (_%else110314110333%_
                              (lambda ()
                                (_%compile-bind110153%_
                                 _%bind110309%_
                                 _%post110310%_
                                 _%body110303%_))))
                        (let ((_%K110319110377%_
                               (lambda (_%rest110372%_ _%hd110373%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110373%_))
                                     (let ((_%id110375%_
                                            (__SRC__0 _%hd110373%_)))
                                       (_%lp110305%_
                                        _%rest110372%_
                                        (cdr _%exprs110308%_)
                                        (cons (cons _%id110375%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind110309%_)
                                        (cons (cons _%id110375%_
                                                    (cons (car _%exprs110308%_)
                                                          '()))
                                              _%post110310%_)))
                                     (_%lp110305%_
                                      _%rest110372%_
                                      (cdr _%exprs110308%_)
                                      _%bind110309%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs110308%_)
                                                        '()))
                                            _%post110310%_)))))
                              (_%K110316110357%_
                               (lambda (_%rest110337%_ _%hd110338%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd110338%_))
                                     (let ((_%id110341%_
                                            (__SRC__0 _%hd110338%_)))
                                       (_%lp110305%_
                                        _%rest110337%_
                                        (cdr _%exprs110308%_)
                                        (cons (cons _%id110341%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind110309%_)
                                        (cons (cons _%id110341%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs110308%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post110310%_)))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (__AST-e _%hd110338%_)))
                                         (_%lp110305%_
                                          _%rest110337%_
                                          (cdr _%exprs110308%_)
                                          _%bind110309%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs110308%_)
                                                            '()))
                                                _%post110310%_))
                                         (if (list? _%hd110338%_)
                                             (let* ((_%len110345%_
                                                     (length _%hd110338%_))
                                                    (_%tmp110347%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp110305%_
                                                _%rest110337%_
                                                (cdr _%exprs110308%_)
                                                (let ((__tmp111917
                                                       (lambda (_%id110350%_
                                                                _%r110351%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id110350%_))
                     (cons (cons (__SRC__0 _%id110350%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r110351%_)
                     _%r110351%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp111917
                                                   _%bind110309%_
                                                   _%hd110338%_))
                                                (cons (cons _%tmp110347%_
                                                            (cons (car _%exprs110308%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len110345%_
                                (let ((__tmp111919
                                       (lambda (_%id110353%_ _%k110354%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id110353%_))
                                             (cons (__SRC__0 _%id110353%_)
                                                   _%k110354%_)
                                             '#f)))
                                      (__tmp111918
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len110345%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp111919
                                   _%hd110338%_
                                   __tmp111918)))))
              _%post110310%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx110149%_
                                              _%hd110338%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest110311110325%_))
                              (let ((_%tl110321110382%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest110311110325%_)))
                                    (_%hd110320110380%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest110311110325%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%hd110320110380%_))
                                    (let ((_%tl110323110387%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd110320110380%_)))
                                          (_%hd110322110385%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd110320110380%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl110323110387%_))
                                          (let ((_%hd110390%_
                                                 _%hd110322110385%_)
                                                (_%rest110392%_
                                                 _%tl110321110382%_))
                                            (_%K110319110377%_
                                             _%rest110392%_
                                             _%hd110390%_))
                                          (let ((_%hd110365%_
                                                 _%hd110320110380%_)
                                                (_%rest110367%_
                                                 _%tl110321110382%_))
                                            (_%K110316110357%_
                                             _%rest110367%_
                                             _%hd110365%_))))
                                    (let ((_%hd110365%_ _%hd110320110380%_)
                                          (_%rest110367%_ _%tl110321110382%_))
                                      (_%K110316110357%_
                                       _%rest110367%_
                                       _%hd110365%_))))
                              (_%else110314110333%_)))))))
                 (_%compile-bind110153%_
                  (lambda (_%bind110297%_ _%post110298%_ _%body110299%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind110297%_)
                                 (cons (_%compile-post110154%_
                                        _%post110298%_
                                        _%body110299%_)
                                       '())))
                     _%stx110149%_)))
                 (_%compile-post110154%_
                  (lambda (_%post110156%_ _%body110157%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp111920
                                  (let ((__tmp111922
                                         (lambda (_%hd110159%_ _%r110160%_)
                                           (let* ((_%hd110161110184%_
                                                   _%hd110159%_)
                                                  (_%E110165110188%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd110161110184%_
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
                                             (let ((_%K110178110282%_
                                                    (lambda (_%expr110280%_)
                                                      (cons _%expr110280%_
                                                            _%r110160%_)))
                                                   (_%K110173110260%_
                                                    (lambda (_%expr110257%_
                                                             _%id110258%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id110258%_ (cons _%expr110257%_ '())))
                     _%stx110149%_)
                    _%r110160%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K110166110227%_
                                                    (lambda (_%init110192%_
                                                             _%len110193%_
                                                             _%expr110194%_
                                                             _%tmp110195%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp110195%_
                                             (cons _%expr110194%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp110195%_
                                                    (cons _%len110193%_ '())))
                                        _%stx110149%_)
                                       (let ((__tmp111923
                                              (map (lambda (_%hd110197%_)
                                                     (let* ((_%hd110198110205%_
                                                             _%hd110197%_)
                                                            (_%E110200110209%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd110198110205%_
                                '([id . k])))
                       '#!void))
                    (_%K110201110215%_
                     (lambda (_%k110212%_ _%id110213%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id110213%_
                                    (cons (cons '##vector-ref
                                                (cons _%tmp110195%_
                                                      (cons _%k110212%_ '())))
                                          '())))
                        _%stx110149%_))))
               (if (let () (declare (not safe)) (##pair? _%hd110198110205%_))
                   (let ((_%hd110202110218%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd110198110205%_)))
                         (_%tl110203110220%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd110198110205%_))))
                     (let* ((_%id110223%_ _%hd110202110218%_)
                            (_%k110225%_ _%tl110203110220%_))
                       (_%K110201110215%_ _%k110225%_ _%id110223%_)))
                   (_%E110200110209%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init110192%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp111923)))))
                     _%stx110149%_)
                    _%r110160%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match111776111777%_
                                                       (lambda (_%hd110167110230%_
                                                                _%tl110168110232%_
                                                                _%hd110169110237%_
                                                                _%tl110170110239%_)
                                                         (let ((_%tmp110235%_
                                                                _%hd110167110230%_)
                                                               (_%expr110242%_
                                                                _%hd110169110237%_))
                                                           (_%E110165110188%_))))
                                                      (_%__match111770111771%_
                                                       (lambda (_%hd110167110230%_
                                                                _%tl110168110232%_)
                                                         (let ((_%tmp110235%_
                                                                _%hd110167110230%_))
                                                           (_%E110165110188%_)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##pair? _%hd110161110184%_))
                                                     (let ((_%tl110180110287%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd110161110184%_)))
                                                           (_%hd110179110285%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd110161110184%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd110179110285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl110180110287%_))
                       (let ((_%tl110182110292%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl110180110287%_)))
                             (_%hd110181110290%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl110180110287%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl110182110292%_))
                             (let ((_%expr110295%_ _%hd110181110290%_))
                               (_%K110178110282%_ _%expr110295%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl110182110292%_))
                                 (let ((_%tl110172110246%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl110182110292%_)))
                                       (_%hd110171110244%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl110182110292%_))))
                                   (let ((_%tmp110235%_ _%hd110179110285%_)
                                         (_%expr110242%_ _%hd110181110290%_)
                                         (_%len110249%_ _%hd110171110244%_)
                                         (_%init110251%_ _%tl110172110246%_))
                                     (_%K110166110227%_
                                      _%init110251%_
                                      _%len110249%_
                                      _%expr110242%_
                                      _%tmp110235%_)))
                                 (_%__match111776111777%_
                                  _%hd110179110285%_
                                  _%tl110180110287%_
                                  _%hd110181110290%_
                                  _%tl110182110292%_))))
                       (_%__match111770111771%_
                        _%hd110179110285%_
                        _%tl110180110287%_))
                   (if (let ()
                         (declare (not safe))
                         (##pair? _%tl110180110287%_))
                       (let ((_%tl110177110272%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl110180110287%_)))
                             (_%hd110176110270%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl110180110287%_))))
                         (if (let ()
                               (declare (not safe))
                               (##null? _%tl110177110272%_))
                             (let ((_%id110268%_ _%hd110179110285%_)
                                   (_%expr110275%_ _%hd110176110270%_))
                               (_%K110173110260%_ _%expr110275%_ _%id110268%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%tl110177110272%_))
                                 (let ((_%tl110172110246%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl110177110272%_)))
                                       (_%hd110171110244%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl110177110272%_))))
                                   (let ((_%tmp110235%_ _%hd110179110285%_)
                                         (_%expr110242%_ _%hd110176110270%_)
                                         (_%len110249%_ _%hd110171110244%_)
                                         (_%init110251%_ _%tl110172110246%_))
                                     (_%K110166110227%_
                                      _%init110251%_
                                      _%len110249%_
                                      _%expr110242%_
                                      _%tmp110235%_)))
                                 (_%__match111776111777%_
                                  _%hd110179110285%_
                                  _%tl110180110287%_
                                  _%hd110176110270%_
                                  _%tl110177110272%_))))
                       (_%__match111770111771%_
                        _%hd110179110285%_
                        _%tl110180110287%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E110165110188%_)))))))
                                        (__tmp111921 (list _%body110157%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp111922
                                     __tmp111921
                                     _%post110156%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp111920)))
                     _%stx110149%_))))
          (__compile-let-form
           _%stx110149%_
           _%compile-simple110151%_
           _%compile-values110152%_))))
    (define __compile-call%
      (lambda (_%stx110109%_)
        (let* ((_%$e110111%_ _%stx110109%_)
               (_%$E110113110122%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110111%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110111%_))
              (let* ((_%$tgt110114110125%_
                      (let () (declare (not safe)) (__AST-e _%$e110111%_)))
                     (_%$hd110115110128%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110114110125%_)))
                     (_%$tl110116110131%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110114110125%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110116110131%_))
                    (let* ((_%$tgt110117110135%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110116110131%_)))
                           (_%$hd110118110138%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110117110135%_)))
                           (_%$tl110119110141%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110117110135%_)))
                           (_%rator110145%_ _%$hd110118110138%_)
                           (_%rands110147%_ _%$tl110119110141%_))
                      (__SRC__%
                       (cons (__compile _%rator110145%_)
                             (map __compile _%rands110147%_))
                       _%stx110109%_))
                    (_%$E110113110122%_)))
              (_%$E110113110122%_)))))
    (define __compile-ref%
      (lambda (_%stx110071%_)
        (let* ((_%$e110073%_ _%stx110071%_)
               (_%$E110075110084%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110073%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110073%_))
              (let* ((_%$tgt110076110087%_
                      (let () (declare (not safe)) (__AST-e _%$e110073%_)))
                     (_%$hd110077110090%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110076110087%_)))
                     (_%$tl110078110093%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110076110087%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110078110093%_))
                    (let* ((_%$tgt110079110097%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110078110093%_)))
                           (_%$hd110080110100%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110079110097%_)))
                           (_%$tl110081110103%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110079110097%_)))
                           (_%id110107%_ _%$hd110080110100%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl110081110103%_))
                                  '())
                          (__SRC__% _%id110107%_ _%stx110071%_)
                          (_%$E110075110084%_)))
                    (_%$E110075110084%_)))
              (_%$E110075110084%_)))))
    (define __compile-setq%
      (lambda (_%stx110018%_)
        (let* ((_%$e110020%_ _%stx110018%_)
               (_%$E110022110034%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e110020%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e110020%_))
              (let* ((_%$tgt110023110037%_
                      (let () (declare (not safe)) (__AST-e _%$e110020%_)))
                     (_%$hd110024110040%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt110023110037%_)))
                     (_%$tl110025110043%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt110023110037%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl110025110043%_))
                    (let* ((_%$tgt110026110047%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl110025110043%_)))
                           (_%$hd110027110050%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt110026110047%_)))
                           (_%$tl110028110053%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt110026110047%_)))
                           (_%id110057%_ _%$hd110027110050%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl110028110053%_))
                          (let* ((_%$tgt110029110059%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl110028110053%_)))
                                 (_%$hd110030110062%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt110029110059%_)))
                                 (_%$tl110031110065%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt110029110059%_)))
                                 (_%expr110069%_ _%$hd110030110062%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl110031110065%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id110057%_
                                              _%stx110018%_)
                                             (cons (__compile _%expr110069%_)
                                                   '())))
                                 _%stx110018%_)
                                (_%$E110022110034%_)))
                          (_%$E110022110034%_)))
                    (_%$E110022110034%_)))
              (_%$E110022110034%_)))))
    (define __compile-if%
      (lambda (_%stx109950%_)
        (let* ((_%$e109952%_ _%stx109950%_)
               (_%$E109954109969%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109952%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109952%_))
              (let* ((_%$tgt109955109972%_
                      (let () (declare (not safe)) (__AST-e _%$e109952%_)))
                     (_%$hd109956109975%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109955109972%_)))
                     (_%$tl109957109978%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109955109972%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109957109978%_))
                    (let* ((_%$tgt109958109982%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109957109978%_)))
                           (_%$hd109959109985%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109958109982%_)))
                           (_%$tl109960109988%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109958109982%_)))
                           (_%p109992%_ _%$hd109959109985%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl109960109988%_))
                          (let* ((_%$tgt109961109994%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109960109988%_)))
                                 (_%$hd109962109997%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt109961109994%_)))
                                 (_%$tl109963110000%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt109961109994%_)))
                                 (_%t110004%_ _%$hd109962109997%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl109963110000%_))
                                (let* ((_%$tgt109964110006%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl109963110000%_)))
                                       (_%$hd109965110009%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt109964110006%_)))
                                       (_%$tl109966110012%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt109964110006%_)))
                                       (_%f110016%_ _%$hd109965110009%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl109966110012%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p109992%_)
                                                   (cons (__compile
                                                          _%t110004%_)
                                                         (cons (__compile
                                                                _%f110016%_)
                                                               '()))))
                                       _%stx109950%_)
                                      (_%$E109954109969%_)))
                                (_%$E109954109969%_)))
                          (_%$E109954109969%_)))
                    (_%$E109954109969%_)))
              (_%$E109954109969%_)))))
    (define __compile-quote%
      (lambda (_%stx109912%_)
        (let* ((_%$e109914%_ _%stx109912%_)
               (_%$E109916109925%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109914%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109914%_))
              (let* ((_%$tgt109917109928%_
                      (let () (declare (not safe)) (__AST-e _%$e109914%_)))
                     (_%$hd109918109931%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109917109928%_)))
                     (_%$tl109919109934%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109917109928%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109919109934%_))
                    (let* ((_%$tgt109920109938%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109919109934%_)))
                           (_%$hd109921109941%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109920109938%_)))
                           (_%$tl109922109944%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109920109938%_)))
                           (_%e109948%_ _%$hd109921109941%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109922109944%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e109948%_))
                                       '()))
                           _%stx109912%_)
                          (_%$E109916109925%_)))
                    (_%$E109916109925%_)))
              (_%$E109916109925%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx109874%_)
        (let* ((_%$e109876%_ _%stx109874%_)
               (_%$E109878109887%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e109876%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e109876%_))
              (let* ((_%$tgt109879109890%_
                      (let () (declare (not safe)) (__AST-e _%$e109876%_)))
                     (_%$hd109880109893%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt109879109890%_)))
                     (_%$tl109881109896%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt109879109890%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl109881109896%_))
                    (let* ((_%$tgt109882109900%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl109881109896%_)))
                           (_%$hd109883109903%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt109882109900%_)))
                           (_%$tl109884109906%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt109882109900%_)))
                           (_%e109910%_ _%$hd109883109903%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl109884109906%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e109910%_ '()))
                           _%stx109874%_)
                          (_%$E109878109887%_)))
                    (_%$E109878109887%_)))
              (_%$E109878109887%_)))))
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
