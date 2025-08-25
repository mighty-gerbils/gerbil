(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1756142919)
  (begin
    (define __syntax::t
      (let ((__tmp122115 (list)) (__tmp122114 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp122115
         '(e id)
         __tmp122114
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args121919%_
        (apply make-instance __syntax::t _%$args121919%_)))
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
      (let ((__tmp122117 (list __syntax::t))
            (__tmp122116 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp122117
         '()
         __tmp122116
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args121916%_
        (apply make-instance __core-form::t _%$args121916%_)))
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
      (let ((__tmp122119 (list __core-form::t))
            (__tmp122118 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp122119
         '()
         __tmp122118
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args121913%_
        (apply make-instance __core-expression::t _%$args121913%_)))
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
      (let ((__tmp122121 (list __core-form::t))
            (__tmp122120 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp122121
         '()
         __tmp122120
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args121910%_
        (apply make-instance __core-special-form::t _%$args121910%_)))
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
      (lambda (_%id121908%_)
        (let ((__tmp122122
               (let () (declare (not safe)) (__AST-e _%id121908%_))))
          (declare (not safe))
          (__hash-get __core __tmp122122))))
    (define __core-bound-id?__%
      (lambda (_%id121891%_ _%is?121892%_)
        (let ((_%$e121894%_ (__core-resolve _%id121891%_)))
          (if _%$e121894%_ (_%is?121892%_ _%$e121894%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id121901%_)
        (let ((_%is?121903%_ true))
          (__core-bound-id?__% _%id121901%_ _%is?121903%_))))
    (define __core-bound-id?
      (lambda _g122123_
        (let ((_g122124_ (let () (declare (not safe)) (##length _g122123_))))
          (cond ((let () (declare (not safe)) (##fx= _g122124_ 1))
                 (apply __core-bound-id?__0 _g122123_))
                ((let () (declare (not safe)) (##fx= _g122124_ 2))
                 (apply __core-bound-id?__% _g122123_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g122123_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id121874%_ _%e121875%_ _%make121876%_)
        (let ((__tmp122125
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _%e121875%_
                      'gerbil/runtime/eval#__syntax::t))
                   _%e121875%_
                   (_%make121876%_ _%e121875%_ _%id121874%_))))
          (declare (not safe))
          (__hash-put! __core _%id121874%_ __tmp122125))))
    (define __core-bind-syntax!__0
      (lambda (_%id121881%_ _%e121882%_)
        (let ((_%make121884%_ make-__syntax))
          (__core-bind-syntax!__% _%id121881%_ _%e121882%_ _%make121884%_))))
    (define __core-bind-syntax!
      (lambda _g122126_
        (let ((_g122127_ (let () (declare (not safe)) (##length _g122126_))))
          (cond ((let () (declare (not safe)) (##fx= _g122127_ 2))
                 (apply __core-bind-syntax!__0 _g122126_))
                ((let () (declare (not safe)) (##fx= _g122127_ 3))
                 (apply __core-bind-syntax!__% _g122126_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g122126_))))))
    (define __SRC__%
      (lambda (_%e121854%_ _%src-stx121855%_)
        (if (or (pair? _%e121854%_) (symbol? _%e121854%_))
            (let ((__tmp122128
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx121855%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx121855%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e121854%_ __tmp122128))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e121854%_ 'gerbil#AST::t))
                (let ((__tmp122130
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e121854%_ '1 '#f '#f)))
                      (__tmp122129
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e121854%_)))))
                  (declare (not safe))
                  (##make-source __tmp122130 __tmp122129))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e121854%_))))))
    (define __SRC__0
      (lambda (_%e121866%_)
        (let ((_%src-stx121868%_ '#f))
          (__SRC__% _%e121866%_ _%src-stx121868%_))))
    (define __SRC
      (lambda _g122131_
        (let ((_g122132_ (let () (declare (not safe)) (##length _g122131_))))
          (cond ((let () (declare (not safe)) (##fx= _g122132_ 1))
                 (apply __SRC__0 _g122131_))
                ((let () (declare (not safe)) (##fx= _g122132_ 2))
                 (apply __SRC__% _g122131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g122131_))))))
    (define __locat
      (lambda (_%loc121851%_)
        (if (let () (declare (not safe)) (##locat? _%loc121851%_))
            _%loc121851%_
            '#f)))
    (define __check-values
      (lambda (_%obj121846%_ _%k121847%_)
        (let ((_%count121849%_
               (if (let () (declare (not safe)) (##values? _%obj121846%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj121846%_))
                   '1)))
          (if (fx= _%count121849%_ _%k121847%_)
              '#!void
              (let ((__tmp122134
                     (if (fx< _%count121849%_ _%k121847%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp122133
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj121846%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj121846%_))
                         _%obj121846%_)))
                (declare (not safe))
                (error __tmp122134 __tmp122133 _%k121847%_))))))
    (define __compile
      (lambda (_%stx121815%_)
        (let* ((_%$e121817%_ _%stx121815%_)
               (_%$E121819121825%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121817%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121817%_))
              (let* ((_%$tgt121820121828%_
                      (let () (declare (not safe)) (__AST-e _%$e121817%_)))
                     (_%$hd121821121831%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121820121828%_)))
                     (_%$tl121822121834%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121820121828%_)))
                     (_%form121838%_ _%$hd121821121831%_)
                     (_%$e121840%_ (__core-resolve _%form121838%_)))
                (if _%$e121840%_
                    ((lambda (_%bind121843%_)
                       ((##structure-ref _%bind121843%_ '1 __syntax::t '#f)
                        _%stx121815%_))
                     _%$e121840%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx121815%_
                       _%form121838%_))))
              (_%$E121819121825%_)))))
    (define __compile-error__%
      (lambda (_%stx121802%_ _%detail121803%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx121802%_
           _%detail121803%_))))
    (define __compile-error__0
      (lambda (_%stx121808%_)
        (let ((_%detail121810%_ '#f))
          (__compile-error__% _%stx121808%_ _%detail121810%_))))
    (define __compile-error
      (lambda _g122135_
        (let ((_g122136_ (let () (declare (not safe)) (##length _g122135_))))
          (cond ((let () (declare (not safe)) (##fx= _g122136_ 1))
                 (apply __compile-error__0 _g122135_))
                ((let () (declare (not safe)) (##fx= _g122136_ 2))
                 (apply __compile-error__% _g122135_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g122135_))))))
    (define __compile-ignore%
      (lambda (_%stx121799%_) (__SRC__% ''#!void _%stx121799%_)))
    (define __compile-begin%
      (lambda (_%stx121774%_)
        (let* ((_%$e121776%_ _%stx121774%_)
               (_%$E121778121784%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121776%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121776%_))
              (let* ((_%$tgt121779121787%_
                      (let () (declare (not safe)) (__AST-e _%$e121776%_)))
                     (_%$hd121780121790%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121779121787%_)))
                     (_%$tl121781121793%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121779121787%_)))
                     (_%body121797%_ _%$tl121781121793%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body121797%_))
                 _%stx121774%_))
              (_%$E121778121784%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx121749%_)
        (let* ((_%$e121751%_ _%stx121749%_)
               (_%$E121753121759%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121751%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121751%_))
              (let* ((_%$tgt121754121762%_
                      (let () (declare (not safe)) (__AST-e _%$e121751%_)))
                     (_%$hd121755121765%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121754121762%_)))
                     (_%$tl121756121768%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121754121762%_)))
                     (_%body121772%_ _%$tl121756121768%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body121772%_)))
                 _%stx121749%_))
              (_%$E121753121759%_)))))
    (define __compile-import%
      (lambda (_%stx121724%_)
        (let* ((_%$e121726%_ _%stx121724%_)
               (_%$E121728121734%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121726%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121726%_))
              (let* ((_%$tgt121729121737%_
                      (let () (declare (not safe)) (__AST-e _%$e121726%_)))
                     (_%$hd121730121740%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121729121737%_)))
                     (_%$tl121731121743%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121729121737%_)))
                     (_%body121747%_ _%$tl121731121743%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body121747%_ '())) '()))
                 _%stx121724%_))
              (_%$E121728121734%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx121671%_)
        (let* ((_%$e121673%_ _%stx121671%_)
               (_%$E121675121687%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121673%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121673%_))
              (let* ((_%$tgt121676121690%_
                      (let () (declare (not safe)) (__AST-e _%$e121673%_)))
                     (_%$hd121677121693%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121676121690%_)))
                     (_%$tl121678121696%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121676121690%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121678121696%_))
                    (let* ((_%$tgt121679121700%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121678121696%_)))
                           (_%$hd121680121703%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121679121700%_)))
                           (_%$tl121681121706%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121679121700%_)))
                           (_%ann121710%_ _%$hd121680121703%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl121681121706%_))
                          (let* ((_%$tgt121682121712%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121681121706%_)))
                                 (_%$hd121683121715%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt121682121712%_)))
                                 (_%$tl121684121718%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt121682121712%_)))
                                 (_%expr121722%_ _%$hd121683121715%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl121684121718%_))
                                        '())
                                (__compile _%expr121722%_)
                                (_%$E121675121687%_)))
                          (_%$E121675121687%_)))
                    (_%$E121675121687%_)))
              (_%$E121675121687%_)))))
    (define __compile-define-values%
      (lambda (_%stx121562%_)
        (let* ((_%$e121564%_ _%stx121562%_)
               (_%$E121566121578%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121564%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121564%_))
              (let* ((_%$tgt121567121581%_
                      (let () (declare (not safe)) (__AST-e _%$e121564%_)))
                     (_%$hd121568121584%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121567121581%_)))
                     (_%$tl121569121587%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121567121581%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121569121587%_))
                    (let* ((_%$tgt121570121591%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121569121587%_)))
                           (_%$hd121571121594%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121570121591%_)))
                           (_%$tl121572121597%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121570121591%_)))
                           (_%hd121601%_ _%$hd121571121594%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl121572121597%_))
                          (let* ((_%$tgt121573121603%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121572121597%_)))
                                 (_%$hd121574121606%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt121573121603%_)))
                                 (_%$tl121575121609%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt121573121603%_)))
                                 (_%expr121613%_ _%$hd121574121606%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl121575121609%_))
                                        '())
                                (let* ((_%$e121615%_ _%hd121601%_)
                                       (_%$E121617121658%_
                                        (lambda ()
                                          (let ((_%$E121618121643%_
                                                 (lambda ()
                                                   (let* ((_%$E121619121630%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e121615%_))))
                  (_%ids121633%_ _%hd121601%_)
                  (_%len121635%_ (length _%ids121633%_))
                  (_%tmp121637%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp121637%_
                                       (cons (__compile _%expr121613%_) '())))
                           _%stx121562%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp121637%_
                                             (cons _%len121635%_ '())))
                                 _%stx121562%_)
                                (let ((__tmp122137
                                       (let ((__tmp122139
                                              (lambda (_%id121640%_
                                                       _%k121641%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id121640%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id121640%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp121637%_
                                           (cons _%k121641%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx121562%_)
                                                    '#f)))
                                             (__tmp122138
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len121635%_))))
                                         (declare (not safe))
                                         (__filter-map2
                                          __tmp122139
                                          _%ids121633%_
                                          __tmp122138))))
                                  (declare (not safe))
                                  (__foldr1 cons '() __tmp122137)))))
              _%stx121562%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e121615%_))
                                                (let* ((_%$tgt121620121646%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e121615%_)))
                                                       (_%$hd121621121649%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt121620121646%_)))
                                                       (_%$tl121622121652%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt121620121646%_)))
                                                       (_%id121656%_
                                                        _%$hd121621121649%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl121622121652%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id121656%_)
                           (cons (__compile _%expr121613%_) '())))
               _%stx121562%_)
              (_%$E121618121643%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E121618121643%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e121615%_))
                                      (let* ((_%$tgt121623121661%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e121615%_)))
                                             (_%$hd121624121664%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt121623121661%_)))
                                             (_%$tl121625121667%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt121623121661%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd121624121664%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl121625121667%_))
                                                        '())
                                                (__compile _%expr121613%_)
                                                (_%$E121617121658%_))
                                            (_%$E121617121658%_)))
                                      (_%$E121617121658%_)))
                                (_%$E121566121578%_)))
                          (_%$E121566121578%_)))
                    (_%$E121566121578%_)))
              (_%$E121566121578%_)))))
    (define __compile-head-id
      (lambda (_%e121560%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e121560%_))
             _%e121560%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd121517%_)
        (let _%recur121519%_ ((_%rest121521%_ _%hd121517%_))
          (let* ((_%$e121523%_ _%rest121521%_)
                 (_%$E121525121543%_
                  (lambda ()
                    (let ((_%$E121526121540%_
                           (lambda ()
                             (let* ((_%$E121527121535%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e121523%_))))
                                    (_%tail121538%_ _%$e121523%_))
                               (__compile-head-id _%tail121538%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e121523%_))
                                  '())
                          '()
                          (_%$E121526121540%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e121523%_))
                (let* ((_%$tgt121528121546%_
                        (let () (declare (not safe)) (__AST-e _%$e121523%_)))
                       (_%$hd121529121549%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt121528121546%_)))
                       (_%$tl121530121552%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt121528121546%_)))
                       (_%hd121556%_ _%$hd121529121549%_)
                       (_%rest121558%_ _%$tl121530121552%_))
                  (cons (__compile-head-id _%hd121556%_)
                        (_%recur121519%_ _%rest121558%_)))
                (_%$E121525121543%_))))))
    (define __compile-lambda%
      (lambda (_%stx121464%_)
        (let* ((_%$e121466%_ _%stx121464%_)
               (_%$E121468121480%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e121466%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e121466%_))
              (let* ((_%$tgt121469121483%_
                      (let () (declare (not safe)) (__AST-e _%$e121466%_)))
                     (_%$hd121470121486%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt121469121483%_)))
                     (_%$tl121471121489%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt121469121483%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl121471121489%_))
                    (let* ((_%$tgt121472121493%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl121471121489%_)))
                           (_%$hd121473121496%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt121472121493%_)))
                           (_%$tl121474121499%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt121472121493%_)))
                           (_%hd121503%_ _%$hd121473121496%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl121474121499%_))
                          (let* ((_%$tgt121475121505%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl121474121499%_)))
                                 (_%$hd121476121508%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt121475121505%_)))
                                 (_%$tl121477121511%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt121475121505%_)))
                                 (_%body121515%_ _%$hd121476121508%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl121477121511%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd121503%_)
                                             (cons (__compile _%body121515%_)
                                                   '())))
                                 _%stx121464%_)
                                (_%$E121468121480%_)))
                          (_%$E121468121480%_)))
                    (_%$E121468121480%_)))
              (_%$E121468121480%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx121256%_)
        (letrec ((_%variadic?121258%_
                  (lambda (_%hd121429%_)
                    (let* ((_%$e121431%_ _%hd121429%_)
                           (_%$E121433121449%_
                            (lambda ()
                              (let ((_%$E121434121446%_
                                     (lambda ()
                                       (let ((_%$E121435121443%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e121431%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e121431%_))
                                            '())
                                    '#f
                                    (_%$E121434121446%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e121431%_))
                          (let* ((_%$tgt121436121452%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e121431%_)))
                                 (_%$hd121437121455%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt121436121452%_)))
                                 (_%$tl121438121458%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt121436121452%_)))
                                 (_%rest121462%_ _%$tl121438121458%_))
                            (_%variadic?121258%_ _%rest121462%_))
                          (_%$E121433121449%_)))))
                 (_%arity121259%_
                  (lambda (_%hd121394%_)
                    (let _%lp121396%_ ((_%rest121398%_ _%hd121394%_)
                                       (_%k121399%_ '0))
                      (let* ((_%$e121401%_ _%rest121398%_)
                             (_%$E121403121414%_
                              (lambda ()
                                (let ((_%$E121404121411%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e121401%_)))))
                                  _%k121399%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e121401%_))
                            (let* ((_%$tgt121405121417%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e121401%_)))
                                   (_%$hd121406121420%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt121405121417%_)))
                                   (_%$tl121407121423%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt121405121417%_)))
                                   (_%rest121427%_ _%$tl121407121423%_))
                              (_%lp121396%_
                               _%rest121427%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%k121399%_ '1))))
                            (_%$E121403121414%_))))))
                 (_%generate121260%_
                  (lambda (_%rest121321%_ _%args121322%_ _%len121323%_)
                    (let* ((_%$e121325%_ _%rest121321%_)
                           (_%$E121327121338%_
                            (lambda ()
                              (let ((_%$E121328121335%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e121325%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args121322%_ '())))
                                 _%stx121256%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e121325%_))
                          (let* ((_%$tgt121329121341%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e121325%_)))
                                 (_%$hd121330121344%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt121329121341%_)))
                                 (_%$tl121331121347%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt121329121341%_)))
                                 (_%clause121351%_ _%$hd121330121344%_)
                                 (_%rest121353%_ _%$tl121331121347%_)
                                 (_%$e121355%_ _%clause121351%_)
                                 (_%$E121357121366%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e121355%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e121355%_))
                                (let* ((_%$tgt121358121369%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e121355%_)))
                                       (_%$hd121359121372%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt121358121369%_)))
                                       (_%$tl121360121375%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt121358121369%_)))
                                       (_%hd121379%_ _%$hd121359121372%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl121360121375%_))
                                      (let* ((_%$tgt121361121381%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl121360121375%_)))
                                             (_%$hd121362121384%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt121361121381%_)))
                                             (_%$tl121363121387%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt121361121381%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl121363121387%_))
                                                    '())
                                            (let ((_%clen121391%_
                                                   (_%arity121259%_
                                                    _%hd121379%_))
                                                  (_%cmp121392%_
                                                   (if (_%variadic?121258%_
                                                        _%hd121379%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp121392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len121323%_ (cons _%clen121391%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause121351%_))
                                      (cons _%args121322%_ '())))
                          _%stx121256%_)
                         (cons (_%generate121260%_
                                _%rest121353%_
                                _%args121322%_
                                _%len121323%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx121256%_))
                                            (_%$E121357121366%_)))
                                      (_%$E121357121366%_)))
                                (_%$E121357121366%_)))
                          (_%$E121327121338%_))))))
          (let* ((_%$e121262%_ _%stx121256%_)
                 (_%$E121264121296%_
                  (lambda ()
                    (let ((_%$E121265121278%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e121262%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e121262%_))
                          (let* ((_%$tgt121266121281%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e121262%_)))
                                 (_%$hd121267121284%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt121266121281%_)))
                                 (_%$tl121268121287%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt121266121281%_)))
                                 (_%clauses121291%_ _%$tl121268121287%_))
                            (let ((_%args121293%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx121256%_))
                                  (_%len121294%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx121256%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args121293%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len121294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args121293%_ '()))
                                         _%stx121256%_)
                                        '()))
                            '())
                      (cons (_%generate121260%_
                             _%clauses121291%_
                             _%args121293%_
                             _%len121294%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx121256%_)
                                                 '())))
                               _%stx121256%_)))
                          (_%$E121265121278%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e121262%_))
                (let* ((_%$tgt121269121299%_
                        (let () (declare (not safe)) (__AST-e _%$e121262%_)))
                       (_%$hd121270121302%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt121269121299%_)))
                       (_%$tl121271121305%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt121269121299%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl121271121305%_))
                      (let* ((_%$tgt121272121309%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl121271121305%_)))
                             (_%$hd121273121312%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt121272121309%_)))
                             (_%$tl121274121315%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt121272121309%_)))
                             (_%clause121319%_ _%$hd121273121312%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl121274121315%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause121319%_))
                            (_%$E121264121296%_)))
                      (_%$E121264121296%_)))
                (_%$E121264121296%_))))))
    (define __compile-let-form
      (lambda (_%stx121025%_ _%compile-simple121026%_ _%compile-values121027%_)
        (letrec ((_%simple-bind?121029%_
                  (lambda (_%hd121214%_)
                    (let* ((_%hd121215121225%_ _%hd121214%_)
                           (_%else121218121233%_ (lambda () '#f)))
                      (let ((_%K121221121246%_ (lambda (_%id121244%_) '#t))
                            (_%K121220121238%_ (lambda () '#t)))
                        (let ((_%try-match121217121241%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd121215121225%_ '#f))
                                     (_%K121220121238%_)
                                     (_%else121218121233%_)))))
                          (if (pair? _%hd121215121225%_)
                              (let ((_%tl121223121251%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd121215121225%_)))
                                    (_%hd121222121249%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd121215121225%_))))
                                (if (null? _%tl121223121251%_)
                                    (let ((_%id121254%_ _%hd121222121249%_))
                                      (_%K121221121246%_ _%id121254%_))
                                    (_%try-match121217121241%_)))
                              (_%try-match121217121241%_)))))))
                 (_%car-e121030%_
                  (lambda (_%hd121212%_)
                    (if (pair? _%hd121212%_)
                        (let () (declare (not safe)) (##car _%hd121212%_))
                        _%hd121212%_))))
          (let* ((_%$e121032%_ _%stx121025%_)
                 (_%$E121034121177%_
                  (lambda ()
                    (let ((_%$E121035121057%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e121032%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e121032%_))
                          (let* ((_%$tgt121036121060%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e121032%_)))
                                 (_%$hd121037121063%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt121036121060%_)))
                                 (_%$tl121038121066%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt121036121060%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl121038121066%_))
                                (let* ((_%$tgt121039121070%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl121038121066%_)))
                                       (_%$hd121040121073%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt121039121070%_)))
                                       (_%$tl121041121076%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt121039121070%_)))
                                       (_%hd121080%_ _%$hd121040121073%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl121041121076%_))
                                      (let* ((_%$tgt121042121082%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl121041121076%_)))
                                             (_%$hd121043121085%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt121042121082%_)))
                                             (_%$tl121044121088%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt121042121082%_)))
                                             (_%body121092%_
                                              _%$hd121043121085%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl121044121088%_))
                                                    '())
                                            (let* ((_%hd-ids121132%_
                                                    (map (lambda (_%bind121094%_)
                                                           (let* ((_%$e121096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind121094%_)
                          (_%$E121098121107%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e121096%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e121096%_))
                         (let* ((_%$tgt121099121110%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e121096%_)))
                                (_%$hd121100121113%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt121099121110%_)))
                                (_%$tl121101121116%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt121099121110%_)))
                                (_%ids121120%_ _%$hd121100121113%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl121101121116%_))
                               (let* ((_%$tgt121102121122%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl121101121116%_)))
                                      (_%$hd121103121125%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt121102121122%_)))
                                      (_%$tl121104121128%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt121102121122%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl121104121128%_))
                                             '())
                                     _%ids121120%_
                                     (_%$E121098121107%_)))
                               (_%$E121098121107%_)))
                         (_%$E121098121107%_))))
                 _%hd121080%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs121172%_
                                                    (map (lambda (_%bind121134%_)
                                                           (let* ((_%$e121136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind121134%_)
                          (_%$E121138121147%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e121136%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e121136%_))
                         (let* ((_%$tgt121139121150%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e121136%_)))
                                (_%$hd121140121153%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt121139121150%_)))
                                (_%$tl121141121156%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt121139121150%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl121141121156%_))
                               (let* ((_%$tgt121142121160%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl121141121156%_)))
                                      (_%$hd121143121163%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt121142121160%_)))
                                      (_%$tl121144121166%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt121142121160%_)))
                                      (_%expr121170%_ _%$hd121143121163%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl121144121166%_))
                                             '())
                                     (__compile _%expr121170%_)
                                     (_%$E121138121147%_)))
                               (_%$E121138121147%_)))
                         (_%$E121138121147%_))))
                 _%hd121080%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body121174%_
                                                    (__compile
                                                     _%body121092%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (__andmap1
                                                     _%simple-bind?121029%_
                                                     _%hd-ids121132%_))
                                                  (_%compile-simple121026%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e121030%_
                                                            _%hd-ids121132%_))
                                                   _%exprs121172%_
                                                   _%body121174%_)
                                                  (_%compile-values121027%_
                                                   _%hd-ids121132%_
                                                   _%exprs121172%_
                                                   _%body121174%_)))
                                            (_%$E121035121057%_)))
                                      (_%$E121035121057%_)))
                                (_%$E121035121057%_)))
                          (_%$E121035121057%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e121032%_))
                (let* ((_%$tgt121045121180%_
                        (let () (declare (not safe)) (__AST-e _%$e121032%_)))
                       (_%$hd121046121183%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt121045121180%_)))
                       (_%$tl121047121186%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt121045121180%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl121047121186%_))
                      (let* ((_%$tgt121048121190%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl121047121186%_)))
                             (_%$hd121049121193%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt121048121190%_)))
                             (_%$tl121050121196%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt121048121190%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd121049121193%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl121050121196%_))
                                (let* ((_%$tgt121051121200%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl121050121196%_)))
                                       (_%$hd121052121203%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt121051121200%_)))
                                       (_%$tl121053121206%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt121051121200%_)))
                                       (_%body121210%_ _%$hd121052121203%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl121053121206%_))
                                              '())
                                      (__compile _%body121210%_)
                                      (_%$E121034121177%_)))
                                (_%$E121034121177%_))
                            (_%$E121034121177%_)))
                      (_%$E121034121177%_)))
                (_%$E121034121177%_))))))
    (define __compile-let-values%
      (lambda (_%stx120837%_)
        (letrec ((_%compile-simple120839%_
                  (lambda (_%hd-ids121021%_ _%exprs121022%_ _%body121023%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp122140
                                        (map __compile-head-id
                                             _%hd-ids121021%_)))
                                   (declare (not safe))
                                   (##map list __tmp122140 _%exprs121022%_))
                                 (cons _%body121023%_ '())))
                     _%stx120837%_)))
                 (_%compile-values120840%_
                  (lambda (_%hd-ids120936%_ _%exprs120937%_ _%body120938%_)
                    (let _%lp120940%_ ((_%rest120942%_ _%hd-ids120936%_)
                                       (_%exprs120943%_ _%exprs120937%_)
                                       (_%bind120944%_ '())
                                       (_%post120945%_ '()))
                      (let* ((_%rest120946120960%_ _%rest120942%_)
                             (_%else120949120968%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind120944%_)
                                             (cons (_%compile-post120841%_
                                                    _%post120945%_
                                                    _%body120938%_)
                                                   '())))
                                 _%stx120837%_))))
                        (let ((_%K120954121004%_
                               (lambda (_%rest121001%_ _%id121002%_)
                                 (_%lp120940%_
                                  _%rest121001%_
                                  (cdr _%exprs120943%_)
                                  (cons (cons (__compile-head-id _%id121002%_)
                                              (cons (car _%exprs120943%_) '()))
                                        _%bind120944%_)
                                  _%post120945%_)))
                              (_%K120951120986%_
                               (lambda (_%rest120972%_ _%hd120973%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd120973%_))
                                     (_%lp120940%_
                                      _%rest120972%_
                                      (cdr _%exprs120943%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd120973%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs120943%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind120944%_)
                                      _%post120945%_)
                                     (if (list? _%hd120973%_)
                                         (let* ((_%len120977%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd120973%_)))
                                                (_%tmp120979%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp120940%_
                                            _%rest120972%_
                                            (cdr _%exprs120943%_)
                                            (cons (cons _%tmp120979%_
                                                        (cons (car _%exprs120943%_)
                                                              '()))
                                                  _%bind120944%_)
                                            (cons (cons _%tmp120979%_
                                                        (cons _%len120977%_
                                                              (let ((__tmp122142
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id120982%_ _%k120983%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id120982%_))
                                   (cons (__SRC__0 _%id120982%_) _%k120983%_)
                                   '#f)))
                            (__tmp122141
                             (let ()
                               (declare (not safe))
                               (##iota _%len120977%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp122142 _%hd120973%_ __tmp122141))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post120945%_)))
                                         (__compile-error__%
                                          _%stx120837%_
                                          _%hd120973%_))))))
                          (if (pair? _%rest120946120960%_)
                              (let ((_%tl120956121009%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest120946120960%_)))
                                    (_%hd120955121007%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest120946120960%_))))
                                (if (pair? _%hd120955121007%_)
                                    (let ((_%tl120958121014%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd120955121007%_)))
                                          (_%hd120957121012%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd120955121007%_))))
                                      (if (null? _%tl120958121014%_)
                                          (let ((_%id121017%_
                                                 _%hd120957121012%_)
                                                (_%rest121019%_
                                                 _%tl120956121009%_))
                                            (_%K120954121004%_
                                             _%rest121019%_
                                             _%id121017%_))
                                          (let ((_%hd120994%_
                                                 _%hd120955121007%_)
                                                (_%rest120996%_
                                                 _%tl120956121009%_))
                                            (_%K120951120986%_
                                             _%rest120996%_
                                             _%hd120994%_))))
                                    (let ((_%hd120994%_ _%hd120955121007%_)
                                          (_%rest120996%_ _%tl120956121009%_))
                                      (_%K120951120986%_
                                       _%rest120996%_
                                       _%hd120994%_))))
                              (_%else120949120968%_)))))))
                 (_%compile-post120841%_
                  (lambda (_%post120843%_ _%body120844%_)
                    (let _%lp120846%_ ((_%rest120848%_ _%post120843%_)
                                       (_%check120849%_ '())
                                       (_%bind120850%_ '()))
                      (let* ((_%rest120851120863%_ _%rest120848%_)
                             (_%else120853120871%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp122143
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind120850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body120844%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx120837%_)
                                                    '())))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp122143
                                          _%check120849%_)))
                                 _%stx120837%_)))
                             (_%K120855120910%_
                              (lambda (_%rest120874%_
                                       _%init120875%_
                                       _%len120876%_
                                       _%tmp120877%_)
                                (_%lp120846%_
                                 _%rest120874%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp120877%_
                                                    (cons _%len120876%_ '())))
                                        _%stx120837%_)
                                       _%check120849%_)
                                 (let ((__tmp122144
                                        (lambda (_%hd120879%_ _%r120880%_)
                                          (let* ((_%hd120881120888%_
                                                  _%hd120879%_)
                                                 (_%E120883120892%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd120881120888%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K120884120898%_
                                                  (lambda (_%k120895%_
                                                           _%id120896%_)
                                                    (cons (cons _%id120896%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp120877%_
                                          (cons _%k120895%_ '())))
                              '()))
                  _%r120880%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd120881120888%_)
                                                (let ((_%hd120885120901%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd120881120888%_)))
                                                      (_%tl120886120903%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd120881120888%_))))
                                                  (let* ((_%id120906%_
                                                          _%hd120885120901%_)
                                                         (_%k120908%_
                                                          _%tl120886120903%_))
                                                    (_%K120884120898%_
                                                     _%k120908%_
                                                     _%id120906%_)))
                                                (_%E120883120892%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp122144
                                    _%bind120850%_
                                    _%init120875%_))))))
                        (if (pair? _%rest120851120863%_)
                            (let ((_%hd120856120913%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest120851120863%_)))
                                  (_%tl120857120915%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest120851120863%_))))
                              (if (pair? _%hd120856120913%_)
                                  (let ((_%hd120858120918%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd120856120913%_)))
                                        (_%tl120859120920%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd120856120913%_))))
                                    (let ((_%tmp120923%_ _%hd120858120918%_))
                                      (if (pair? _%tl120859120920%_)
                                          (let ((_%hd120860120925%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl120859120920%_)))
                                                (_%tl120861120927%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl120859120920%_))))
                                            (let* ((_%len120930%_
                                                    _%hd120860120925%_)
                                                   (_%init120932%_
                                                    _%tl120861120927%_)
                                                   (_%rest120934%_
                                                    _%tl120857120915%_))
                                              (_%K120855120910%_
                                               _%rest120934%_
                                               _%init120932%_
                                               _%len120930%_
                                               _%tmp120923%_)))
                                          (_%else120853120871%_))))
                                  (_%else120853120871%_)))
                            (_%else120853120871%_)))))))
          (__compile-let-form
           _%stx120837%_
           _%compile-simple120839%_
           _%compile-values120840%_))))
    (define __compile-letrec-values%
      (lambda (_%stx120634%_)
        (letrec ((_%compile-simple120636%_
                  (lambda (_%hd-ids120833%_ _%exprs120834%_ _%body120835%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp122145
                                        (map __compile-head-id
                                             _%hd-ids120833%_)))
                                   (declare (not safe))
                                   (##map list __tmp122145 _%exprs120834%_))
                                 (cons _%body120835%_ '())))
                     _%stx120634%_)))
                 (_%compile-values120637%_
                  (lambda (_%hd-ids120744%_ _%exprs120745%_ _%body120746%_)
                    (let _%lp120748%_ ((_%rest120750%_ _%hd-ids120744%_)
                                       (_%exprs120751%_ _%exprs120745%_)
                                       (_%pre120752%_ '())
                                       (_%bind120753%_ '())
                                       (_%post120754%_ '()))
                      (let* ((_%rest120755120769%_ _%rest120750%_)
                             (_%else120758120777%_
                              (lambda ()
                                (_%compile-inner120638%_
                                 _%pre120752%_
                                 _%bind120753%_
                                 _%post120754%_
                                 _%body120746%_))))
                        (let ((_%K120763120816%_
                               (lambda (_%rest120813%_ _%id120814%_)
                                 (_%lp120748%_
                                  _%rest120813%_
                                  (cdr _%exprs120751%_)
                                  _%pre120752%_
                                  (cons (cons (__compile-head-id _%id120814%_)
                                              (cons (car _%exprs120751%_) '()))
                                        _%bind120753%_)
                                  _%post120754%_)))
                              (_%K120760120798%_
                               (lambda (_%rest120781%_ _%hd120782%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd120782%_))
                                     (_%lp120748%_
                                      _%rest120781%_
                                      (cdr _%exprs120751%_)
                                      _%pre120752%_
                                      (cons (cons (__compile-head-id
                                                   _%hd120782%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs120751%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind120753%_)
                                      _%post120754%_)
                                     (if (list? _%hd120782%_)
                                         (let* ((_%len120786%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd120782%_)))
                                                (_%tmp120788%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp120748%_
                                            _%rest120781%_
                                            (cdr _%exprs120751%_)
                                            (let ((__tmp122146
                                                   (lambda (_%id120791%_
                                                            _%r120792%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id120791%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id120791%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r120792%_)
                 _%r120792%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (__foldl1
                                               __tmp122146
                                               _%pre120752%_
                                               _%hd120782%_))
                                            (cons (cons _%tmp120788%_
                                                        (cons (car _%exprs120751%_)
                                                              '()))
                                                  _%bind120753%_)
                                            (cons (cons _%tmp120788%_
                                                        (cons _%len120786%_
                                                              (let ((__tmp122148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id120794%_ _%k120795%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id120794%_))
                                   (cons (__SRC__0 _%id120794%_) _%k120795%_)
                                   '#f)))
                            (__tmp122147
                             (let ()
                               (declare (not safe))
                               (##iota _%len120786%_))))
                        (declare (not safe))
                        (__filter-map2 __tmp122148 _%hd120782%_ __tmp122147))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post120754%_)))
                                         (__compile-error__%
                                          _%stx120634%_
                                          _%hd120782%_))))))
                          (if (pair? _%rest120755120769%_)
                              (let ((_%tl120765120821%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest120755120769%_)))
                                    (_%hd120764120819%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest120755120769%_))))
                                (if (pair? _%hd120764120819%_)
                                    (let ((_%tl120767120826%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd120764120819%_)))
                                          (_%hd120766120824%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd120764120819%_))))
                                      (if (null? _%tl120767120826%_)
                                          (let ((_%id120829%_
                                                 _%hd120766120824%_)
                                                (_%rest120831%_
                                                 _%tl120765120821%_))
                                            (_%K120763120816%_
                                             _%rest120831%_
                                             _%id120829%_))
                                          (let ((_%hd120806%_
                                                 _%hd120764120819%_)
                                                (_%rest120808%_
                                                 _%tl120765120821%_))
                                            (_%K120760120798%_
                                             _%rest120808%_
                                             _%hd120806%_))))
                                    (let ((_%hd120806%_ _%hd120764120819%_)
                                          (_%rest120808%_ _%tl120765120821%_))
                                      (_%K120760120798%_
                                       _%rest120808%_
                                       _%hd120806%_))))
                              (_%else120758120777%_)))))))
                 (_%compile-inner120638%_
                  (lambda (_%pre120739%_
                           _%bind120740%_
                           _%post120741%_
                           _%body120742%_)
                    (if (null? _%pre120739%_)
                        (_%compile-bind120639%_
                         _%bind120740%_
                         _%post120741%_
                         _%body120742%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre120739%_)
                                     (cons (_%compile-bind120639%_
                                            _%bind120740%_
                                            _%post120741%_
                                            _%body120742%_)
                                           '())))
                         _%stx120634%_))))
                 (_%compile-bind120639%_
                  (lambda (_%bind120735%_ _%post120736%_ _%body120737%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind120735%_)
                                 (cons (_%compile-post120640%_
                                        _%post120736%_
                                        _%body120737%_)
                                       '())))
                     _%stx120634%_)))
                 (_%compile-post120640%_
                  (lambda (_%post120642%_ _%body120643%_)
                    (let _%lp120645%_ ((_%rest120647%_ _%post120642%_)
                                       (_%check120648%_ '())
                                       (_%bind120649%_ '()))
                      (let* ((_%rest120650120662%_ _%rest120647%_)
                             (_%else120652120670%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp122149
                                              (let ((__tmp122150
                                                     (cons _%body120643%_
                                                           '())))
                                                (declare (not safe))
                                                (__foldr1
                                                 cons
                                                 __tmp122150
                                                 _%bind120649%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          cons
                                          __tmp122149
                                          _%check120648%_)))
                                 _%stx120634%_)))
                             (_%K120654120709%_
                              (lambda (_%rest120673%_
                                       _%init120674%_
                                       _%len120675%_
                                       _%tmp120676%_)
                                (_%lp120645%_
                                 _%rest120673%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp120676%_
                                                    (cons _%len120675%_ '())))
                                        _%stx120634%_)
                                       _%check120648%_)
                                 (let ((__tmp122151
                                        (lambda (_%hd120678%_ _%r120679%_)
                                          (let* ((_%hd120680120687%_
                                                  _%hd120678%_)
                                                 (_%E120682120691%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd120680120687%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K120683120697%_
                                                  (lambda (_%k120694%_
                                                           _%id120695%_)
                                                    (cons (cons 'set!
                                                                (cons _%id120695%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp120676%_
                                                (cons _%k120694%_ '())))
                                    '())))
                  _%r120679%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd120680120687%_)
                                                (let ((_%hd120684120700%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd120680120687%_)))
                                                      (_%tl120685120702%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd120680120687%_))))
                                                  (let* ((_%id120705%_
                                                          _%hd120684120700%_)
                                                         (_%k120707%_
                                                          _%tl120685120702%_))
                                                    (_%K120683120697%_
                                                     _%k120707%_
                                                     _%id120705%_)))
                                                (_%E120682120691%_))))))
                                   (declare (not safe))
                                   (__foldr1
                                    __tmp122151
                                    _%bind120649%_
                                    _%init120674%_))))))
                        (if (pair? _%rest120650120662%_)
                            (let ((_%hd120655120712%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest120650120662%_)))
                                  (_%tl120656120714%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest120650120662%_))))
                              (if (pair? _%hd120655120712%_)
                                  (let ((_%hd120657120717%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd120655120712%_)))
                                        (_%tl120658120719%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd120655120712%_))))
                                    (let ((_%tmp120722%_ _%hd120657120717%_))
                                      (if (pair? _%tl120658120719%_)
                                          (let ((_%hd120659120724%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl120658120719%_)))
                                                (_%tl120660120726%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl120658120719%_))))
                                            (let* ((_%len120729%_
                                                    _%hd120659120724%_)
                                                   (_%init120731%_
                                                    _%tl120660120726%_)
                                                   (_%rest120733%_
                                                    _%tl120656120714%_))
                                              (_%K120654120709%_
                                               _%rest120733%_
                                               _%init120731%_
                                               _%len120729%_
                                               _%tmp120722%_)))
                                          (_%else120652120670%_))))
                                  (_%else120652120670%_)))
                            (_%else120652120670%_)))))))
          (__compile-let-form
           _%stx120634%_
           _%compile-simple120636%_
           _%compile-values120637%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx120385%_)
        (letrec ((_%compile-simple120387%_
                  (lambda (_%hd-ids120630%_ _%exprs120631%_ _%body120632%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp122152
                                        (map __compile-head-id
                                             _%hd-ids120630%_)))
                                   (declare (not safe))
                                   (##map list __tmp122152 _%exprs120631%_))
                                 (cons _%body120632%_ '())))
                     _%stx120385%_)))
                 (_%compile-values120388%_
                  (lambda (_%hd-ids120537%_ _%exprs120538%_ _%body120539%_)
                    (let _%lp120541%_ ((_%rest120543%_ _%hd-ids120537%_)
                                       (_%exprs120544%_ _%exprs120538%_)
                                       (_%bind120545%_ '())
                                       (_%post120546%_ '()))
                      (let* ((_%rest120547120561%_ _%rest120543%_)
                             (_%else120550120569%_
                              (lambda ()
                                (_%compile-bind120389%_
                                 _%bind120545%_
                                 _%post120546%_
                                 _%body120539%_))))
                        (let ((_%K120555120613%_
                               (lambda (_%rest120608%_ _%hd120609%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd120609%_))
                                     (let ((_%id120611%_
                                            (__SRC__0 _%hd120609%_)))
                                       (_%lp120541%_
                                        _%rest120608%_
                                        (cdr _%exprs120544%_)
                                        (cons (cons _%id120611%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind120545%_)
                                        (cons (cons _%id120611%_
                                                    (cons (car _%exprs120544%_)
                                                          '()))
                                              _%post120546%_)))
                                     (_%lp120541%_
                                      _%rest120608%_
                                      (cdr _%exprs120544%_)
                                      _%bind120545%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs120544%_)
                                                        '()))
                                            _%post120546%_)))))
                              (_%K120552120593%_
                               (lambda (_%rest120573%_ _%hd120574%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd120574%_))
                                     (let ((_%id120577%_
                                            (__SRC__0 _%hd120574%_)))
                                       (_%lp120541%_
                                        _%rest120573%_
                                        (cdr _%exprs120544%_)
                                        (cons (cons _%id120577%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind120545%_)
                                        (cons (cons _%id120577%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs120544%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post120546%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd120574%_))
                                         (if (list? _%hd120574%_)
                                             (let* ((_%len120581%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd120574%_)))
                                                    (_%tmp120583%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp120541%_
                                                _%rest120573%_
                                                (cdr _%exprs120544%_)
                                                (let ((__tmp122153
                                                       (lambda (_%id120586%_
                                                                _%r120587%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id120586%_))
                     (cons (cons (__SRC__0 _%id120586%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r120587%_)
                     _%r120587%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (__foldl1
                                                   __tmp122153
                                                   _%bind120545%_
                                                   _%hd120574%_))
                                                (cons (cons _%tmp120583%_
                                                            (cons (car _%exprs120544%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len120581%_
                                (let ((__tmp122155
                                       (lambda (_%id120589%_ _%k120590%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id120589%_))
                                             (cons (__SRC__0 _%id120589%_)
                                                   _%k120590%_)
                                             '#f)))
                                      (__tmp122154
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len120581%_))))
                                  (declare (not safe))
                                  (__filter-map2
                                   __tmp122155
                                   _%hd120574%_
                                   __tmp122154)))))
              _%post120546%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx120385%_
                                              _%hd120574%_))
                                         (_%lp120541%_
                                          _%rest120573%_
                                          (cdr _%exprs120544%_)
                                          _%bind120545%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs120544%_)
                                                            '()))
                                                _%post120546%_)))))))
                          (if (pair? _%rest120547120561%_)
                              (let ((_%tl120557120618%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest120547120561%_)))
                                    (_%hd120556120616%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest120547120561%_))))
                                (if (pair? _%hd120556120616%_)
                                    (let ((_%tl120559120623%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd120556120616%_)))
                                          (_%hd120558120621%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd120556120616%_))))
                                      (if (null? _%tl120559120623%_)
                                          (let ((_%hd120626%_
                                                 _%hd120558120621%_)
                                                (_%rest120628%_
                                                 _%tl120557120618%_))
                                            (_%K120555120613%_
                                             _%rest120628%_
                                             _%hd120626%_))
                                          (let ((_%hd120601%_
                                                 _%hd120556120616%_)
                                                (_%rest120603%_
                                                 _%tl120557120618%_))
                                            (_%K120552120593%_
                                             _%rest120603%_
                                             _%hd120601%_))))
                                    (let ((_%hd120601%_ _%hd120556120616%_)
                                          (_%rest120603%_ _%tl120557120618%_))
                                      (_%K120552120593%_
                                       _%rest120603%_
                                       _%hd120601%_))))
                              (_%else120550120569%_)))))))
                 (_%compile-bind120389%_
                  (lambda (_%bind120533%_ _%post120534%_ _%body120535%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind120533%_)
                                 (cons (_%compile-post120390%_
                                        _%post120534%_
                                        _%body120535%_)
                                       '())))
                     _%stx120385%_)))
                 (_%compile-post120390%_
                  (lambda (_%post120392%_ _%body120393%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp122156
                                  (let ((__tmp122158
                                         (lambda (_%hd120395%_ _%r120396%_)
                                           (let* ((_%hd120397120420%_
                                                   _%hd120395%_)
                                                  (_%E120401120424%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd120397120420%_
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
                                             (let ((_%K120414120518%_
                                                    (lambda (_%expr120516%_)
                                                      (cons _%expr120516%_
                                                            _%r120396%_)))
                                                   (_%K120409120496%_
                                                    (lambda (_%expr120493%_
                                                             _%id120494%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id120494%_ (cons _%expr120493%_ '())))
                     _%stx120385%_)
                    _%r120396%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K120402120463%_
                                                    (lambda (_%init120428%_
                                                             _%len120429%_
                                                             _%expr120430%_
                                                             _%tmp120431%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp120431%_
                                             (cons _%expr120430%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp120431%_
                                                    (cons _%len120429%_ '())))
                                        _%stx120385%_)
                                       (let ((__tmp122159
                                              (map (lambda (_%hd120433%_)
                                                     (let* ((_%hd120434120441%_
                                                             _%hd120433%_)
                                                            (_%E120436120445%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd120434120441%_
                                '([id . k])))
                       '#!void))
                    (_%K120437120451%_
                     (lambda (_%k120448%_ _%id120449%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id120449%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp120431%_
                                                      (cons _%k120448%_ '())))
                                          '())))
                        _%stx120385%_))))
               (if (pair? _%hd120434120441%_)
                   (let ((_%hd120438120454%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd120434120441%_)))
                         (_%tl120439120456%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd120434120441%_))))
                     (let* ((_%id120459%_ _%hd120438120454%_)
                            (_%k120461%_ _%tl120439120456%_))
                       (_%K120437120451%_ _%k120461%_ _%id120459%_)))
                   (_%E120436120445%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init120428%_)))
                                         (declare (not safe))
                                         (__foldr1 cons '() __tmp122159)))))
                     _%stx120385%_)
                    _%r120396%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match122012122013%_
                                                       (lambda (_%hd120403120466%_
                                                                _%tl120404120468%_
                                                                _%hd120405120473%_
                                                                _%tl120406120475%_)
                                                         (let ((_%tmp120471%_
                                                                _%hd120403120466%_)
                                                               (_%expr120478%_
                                                                _%hd120405120473%_))
                                                           (_%E120401120424%_))))
                                                      (_%__match122006122007%_
                                                       (lambda (_%hd120403120466%_
                                                                _%tl120404120468%_)
                                                         (let ((_%tmp120471%_
                                                                _%hd120403120466%_))
                                                           (_%E120401120424%_)))))
                                                 (if (pair? _%hd120397120420%_)
                                                     (let ((_%tl120416120523%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd120397120420%_)))
                                                           (_%hd120415120521%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd120397120420%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd120415120521%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl120416120523%_)
                       (let ((_%tl120418120528%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl120416120523%_)))
                             (_%hd120417120526%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl120416120523%_))))
                         (if (null? _%tl120418120528%_)
                             (let ((_%expr120531%_ _%hd120417120526%_))
                               (_%K120414120518%_ _%expr120531%_))
                             (if (pair? _%tl120418120528%_)
                                 (let ((_%tl120408120482%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl120418120528%_)))
                                       (_%hd120407120480%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl120418120528%_))))
                                   (let ((_%tmp120471%_ _%hd120415120521%_)
                                         (_%expr120478%_ _%hd120417120526%_)
                                         (_%len120485%_ _%hd120407120480%_)
                                         (_%init120487%_ _%tl120408120482%_))
                                     (_%K120402120463%_
                                      _%init120487%_
                                      _%len120485%_
                                      _%expr120478%_
                                      _%tmp120471%_)))
                                 (_%__match122012122013%_
                                  _%hd120415120521%_
                                  _%tl120416120523%_
                                  _%hd120417120526%_
                                  _%tl120418120528%_))))
                       (_%__match122006122007%_
                        _%hd120415120521%_
                        _%tl120416120523%_))
                   (if (pair? _%tl120416120523%_)
                       (let ((_%tl120413120508%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl120416120523%_)))
                             (_%hd120412120506%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl120416120523%_))))
                         (if (null? _%tl120413120508%_)
                             (let ((_%id120504%_ _%hd120415120521%_)
                                   (_%expr120511%_ _%hd120412120506%_))
                               (_%K120409120496%_ _%expr120511%_ _%id120504%_))
                             (if (pair? _%tl120413120508%_)
                                 (let ((_%tl120408120482%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl120413120508%_)))
                                       (_%hd120407120480%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl120413120508%_))))
                                   (let ((_%tmp120471%_ _%hd120415120521%_)
                                         (_%expr120478%_ _%hd120412120506%_)
                                         (_%len120485%_ _%hd120407120480%_)
                                         (_%init120487%_ _%tl120408120482%_))
                                     (_%K120402120463%_
                                      _%init120487%_
                                      _%len120485%_
                                      _%expr120478%_
                                      _%tmp120471%_)))
                                 (_%__match122012122013%_
                                  _%hd120415120521%_
                                  _%tl120416120523%_
                                  _%hd120412120506%_
                                  _%tl120413120508%_))))
                       (_%__match122006122007%_
                        _%hd120415120521%_
                        _%tl120416120523%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E120401120424%_)))))))
                                        (__tmp122157 (list _%body120393%_)))
                                    (declare (not safe))
                                    (__foldl1
                                     __tmp122158
                                     __tmp122157
                                     _%post120392%_))))
                             (declare (not safe))
                             (__foldr1 cons '() __tmp122156)))
                     _%stx120385%_))))
          (__compile-let-form
           _%stx120385%_
           _%compile-simple120387%_
           _%compile-values120388%_))))
    (define __compile-call%
      (lambda (_%stx120345%_)
        (let* ((_%$e120347%_ _%stx120345%_)
               (_%$E120349120358%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e120347%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e120347%_))
              (let* ((_%$tgt120350120361%_
                      (let () (declare (not safe)) (__AST-e _%$e120347%_)))
                     (_%$hd120351120364%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt120350120361%_)))
                     (_%$tl120352120367%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt120350120361%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl120352120367%_))
                    (let* ((_%$tgt120353120371%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl120352120367%_)))
                           (_%$hd120354120374%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt120353120371%_)))
                           (_%$tl120355120377%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt120353120371%_)))
                           (_%rator120381%_ _%$hd120354120374%_)
                           (_%rands120383%_ _%$tl120355120377%_))
                      (__SRC__%
                       (cons (__compile _%rator120381%_)
                             (map __compile _%rands120383%_))
                       _%stx120345%_))
                    (_%$E120349120358%_)))
              (_%$E120349120358%_)))))
    (define __compile-ref%
      (lambda (_%stx120307%_)
        (let* ((_%$e120309%_ _%stx120307%_)
               (_%$E120311120320%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e120309%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e120309%_))
              (let* ((_%$tgt120312120323%_
                      (let () (declare (not safe)) (__AST-e _%$e120309%_)))
                     (_%$hd120313120326%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt120312120323%_)))
                     (_%$tl120314120329%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt120312120323%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl120314120329%_))
                    (let* ((_%$tgt120315120333%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl120314120329%_)))
                           (_%$hd120316120336%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt120315120333%_)))
                           (_%$tl120317120339%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt120315120333%_)))
                           (_%id120343%_ _%$hd120316120336%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl120317120339%_))
                                  '())
                          (__SRC__% _%id120343%_ _%stx120307%_)
                          (_%$E120311120320%_)))
                    (_%$E120311120320%_)))
              (_%$E120311120320%_)))))
    (define __compile-setq%
      (lambda (_%stx120254%_)
        (let* ((_%$e120256%_ _%stx120254%_)
               (_%$E120258120270%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e120256%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e120256%_))
              (let* ((_%$tgt120259120273%_
                      (let () (declare (not safe)) (__AST-e _%$e120256%_)))
                     (_%$hd120260120276%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt120259120273%_)))
                     (_%$tl120261120279%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt120259120273%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl120261120279%_))
                    (let* ((_%$tgt120262120283%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl120261120279%_)))
                           (_%$hd120263120286%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt120262120283%_)))
                           (_%$tl120264120289%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt120262120283%_)))
                           (_%id120293%_ _%$hd120263120286%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl120264120289%_))
                          (let* ((_%$tgt120265120295%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl120264120289%_)))
                                 (_%$hd120266120298%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt120265120295%_)))
                                 (_%$tl120267120301%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt120265120295%_)))
                                 (_%expr120305%_ _%$hd120266120298%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl120267120301%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id120293%_
                                              _%stx120254%_)
                                             (cons (__compile _%expr120305%_)
                                                   '())))
                                 _%stx120254%_)
                                (_%$E120258120270%_)))
                          (_%$E120258120270%_)))
                    (_%$E120258120270%_)))
              (_%$E120258120270%_)))))
    (define __compile-if%
      (lambda (_%stx120186%_)
        (let* ((_%$e120188%_ _%stx120186%_)
               (_%$E120190120205%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e120188%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e120188%_))
              (let* ((_%$tgt120191120208%_
                      (let () (declare (not safe)) (__AST-e _%$e120188%_)))
                     (_%$hd120192120211%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt120191120208%_)))
                     (_%$tl120193120214%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt120191120208%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl120193120214%_))
                    (let* ((_%$tgt120194120218%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl120193120214%_)))
                           (_%$hd120195120221%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt120194120218%_)))
                           (_%$tl120196120224%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt120194120218%_)))
                           (_%p120228%_ _%$hd120195120221%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl120196120224%_))
                          (let* ((_%$tgt120197120230%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl120196120224%_)))
                                 (_%$hd120198120233%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt120197120230%_)))
                                 (_%$tl120199120236%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt120197120230%_)))
                                 (_%t120240%_ _%$hd120198120233%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl120199120236%_))
                                (let* ((_%$tgt120200120242%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl120199120236%_)))
                                       (_%$hd120201120245%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt120200120242%_)))
                                       (_%$tl120202120248%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt120200120242%_)))
                                       (_%f120252%_ _%$hd120201120245%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl120202120248%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p120228%_)
                                                   (cons (__compile
                                                          _%t120240%_)
                                                         (cons (__compile
                                                                _%f120252%_)
                                                               '()))))
                                       _%stx120186%_)
                                      (_%$E120190120205%_)))
                                (_%$E120190120205%_)))
                          (_%$E120190120205%_)))
                    (_%$E120190120205%_)))
              (_%$E120190120205%_)))))
    (define __compile-quote%
      (lambda (_%stx120148%_)
        (let* ((_%$e120150%_ _%stx120148%_)
               (_%$E120152120161%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e120150%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e120150%_))
              (let* ((_%$tgt120153120164%_
                      (let () (declare (not safe)) (__AST-e _%$e120150%_)))
                     (_%$hd120154120167%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt120153120164%_)))
                     (_%$tl120155120170%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt120153120164%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl120155120170%_))
                    (let* ((_%$tgt120156120174%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl120155120170%_)))
                           (_%$hd120157120177%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt120156120174%_)))
                           (_%$tl120158120180%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt120156120174%_)))
                           (_%e120184%_ _%$hd120157120177%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl120158120180%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e120184%_))
                                       '()))
                           _%stx120148%_)
                          (_%$E120152120161%_)))
                    (_%$E120152120161%_)))
              (_%$E120152120161%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx120110%_)
        (let* ((_%$e120112%_ _%stx120110%_)
               (_%$E120114120123%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e120112%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e120112%_))
              (let* ((_%$tgt120115120126%_
                      (let () (declare (not safe)) (__AST-e _%$e120112%_)))
                     (_%$hd120116120129%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt120115120126%_)))
                     (_%$tl120117120132%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt120115120126%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl120117120132%_))
                    (let* ((_%$tgt120118120136%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl120117120132%_)))
                           (_%$hd120119120139%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt120118120136%_)))
                           (_%$tl120120120142%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt120118120136%_)))
                           (_%e120146%_ _%$hd120119120139%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl120120120142%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e120146%_ '()))
                           _%stx120110%_)
                          (_%$E120114120123%_)))
                    (_%$E120114120123%_)))
              (_%$E120114120123%_)))))
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
