(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1781138352)
  (begin
    (define __syntax::t
      (let ((__tmp171009 (list)) (__tmp171008 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__syntax::t
         '__syntax
         __tmp171009
         '(e id)
         __tmp171008
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args170813%_
        (apply make-instance __syntax::t _%$args170813%_)))
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
      (let ((__tmp171011 (list __syntax::t))
            (__tmp171010 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-form::t
         '__core-form
         __tmp171011
         '()
         __tmp171010
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args170810%_
        (apply make-instance __core-form::t _%$args170810%_)))
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
      (let ((__tmp171013 (list __core-form::t))
            (__tmp171012 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-expression::t
         '__core-expression
         __tmp171013
         '()
         __tmp171012
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args170807%_
        (apply make-instance __core-expression::t _%$args170807%_)))
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
      (let ((__tmp171015 (list __core-form::t))
            (__tmp171014 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-special-form::t
         '__core-special-form
         __tmp171015
         '()
         __tmp171014
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args170804%_
        (apply make-instance __core-special-form::t _%$args170804%_)))
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
      (lambda (_%id170778%_)
        (let* ((_%h170780%_ __core)
               (_%key170783%_
                (let () (declare (not safe)) (__AST-e _%id170778%_)))
               (_%h170790%_
                (let ((_%$obj170787%_ _%h170780%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj170787%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj170787%_)))
                           '#t)
                      _%$obj170787%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj170787%_)))))
               (_%h170792%_ _%h170790%_))
          (declare (not safe))
          (__hash-get _%h170792%_ _%key170783%_))))
    (define __core-bound-id?__%
      (lambda (_%id170761%_ _%is?170762%_)
        (let ((_%$e170764%_ (__core-resolve _%id170761%_)))
          (if _%$e170764%_ (_%is?170762%_ _%$e170764%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id170771%_)
        (let ((_%is?170773%_ true))
          (__core-bound-id?__% _%id170771%_ _%is?170773%_))))
    (define __core-bound-id?
      (lambda _g171016_
        (let ((_g171017_ (let () (declare (not safe)) (##length _g171016_))))
          (cond ((let () (declare (not safe)) (##fx= _g171017_ 1))
                 (apply __core-bound-id?__0 _g171016_))
                ((let () (declare (not safe)) (##fx= _g171017_ 2))
                 (apply __core-bound-id?__% _g171016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g171016_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id170716%_ _%e170717%_ _%make170718%_)
        (let* ((_%h170720%_ __core)
               (_%key170723%_ _%id170716%_)
               (_%value170726%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%e170717%_ '__syntax::t))
                    _%e170717%_
                    (_%make170718%_ _%e170717%_ _%id170716%_)))
               (_%h170733%_
                (let ((_%$obj170730%_ _%h170720%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj170730%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj170730%_)))
                           '#t)
                      _%$obj170730%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj170730%_)))))
               (_%h170735%_ _%h170733%_))
          (declare (not safe))
          (__hash-put! _%h170735%_ _%key170723%_ _%value170726%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id170751%_ _%e170752%_)
        (let ((_%make170754%_ make-__syntax))
          (__core-bind-syntax!__% _%id170751%_ _%e170752%_ _%make170754%_))))
    (define __core-bind-syntax!
      (lambda _g171018_
        (let ((_g171019_ (let () (declare (not safe)) (##length _g171018_))))
          (cond ((let () (declare (not safe)) (##fx= _g171019_ 2))
                 (apply __core-bind-syntax!__0 _g171018_))
                ((let () (declare (not safe)) (##fx= _g171019_ 3))
                 (apply __core-bind-syntax!__% _g171018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g171018_))))))
    (define __SRC__%
      (lambda (_%e170696%_ _%src-stx170697%_)
        (if (or (pair? _%e170696%_) (symbol? _%e170696%_))
            (let ((__tmp171020
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx170697%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx170697%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e170696%_ __tmp171020))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e170696%_ 'gerbil#AST::t))
                (let ((__tmp171022
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e170696%_ '1 '#f '#f)))
                      (__tmp171021
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e170696%_)))))
                  (declare (not safe))
                  (##make-source __tmp171022 __tmp171021))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e170696%_))))))
    (define __SRC__0
      (lambda (_%e170708%_)
        (let ((_%src-stx170710%_ '#f))
          (__SRC__% _%e170708%_ _%src-stx170710%_))))
    (define __SRC
      (lambda _g171023_
        (let ((_g171024_ (let () (declare (not safe)) (##length _g171023_))))
          (cond ((let () (declare (not safe)) (##fx= _g171024_ 1))
                 (apply __SRC__0 _g171023_))
                ((let () (declare (not safe)) (##fx= _g171024_ 2))
                 (apply __SRC__% _g171023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g171023_))))))
    (define __locat
      (lambda (_%loc170693%_)
        (if (let () (declare (not safe)) (##locat? _%loc170693%_))
            _%loc170693%_
            '#f)))
    (define __check-values
      (lambda (_%obj170688%_ _%k170689%_)
        (let ((_%count170691%_
               (if (let () (declare (not safe)) (##values? _%obj170688%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj170688%_))
                   '1)))
          (if (fx= _%count170691%_ _%k170689%_)
              '#!void
              (let ((__tmp171026
                     (if (fx< _%count170691%_ _%k170689%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp171025
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj170688%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj170688%_))
                         _%obj170688%_)))
                (declare (not safe))
                (error __tmp171026 __tmp171025 _%k170689%_))))))
    (define __compile
      (lambda (_%stx170657%_)
        (let* ((_%$e170659%_ _%stx170657%_)
               (_%$%$E170661170667%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e170659%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e170659%_))
              (let* ((_%$%$tgt170662170670%_
                      (let () (declare (not safe)) (__AST-e _%$e170659%_)))
                     (_%$%$hd170663170673%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt170662170670%_)))
                     (_%$%$tl170664170676%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt170662170670%_)))
                     (_%form170680%_ _%$%$hd170663170673%_)
                     (_%$e170682%_ (__core-resolve _%form170680%_)))
                (if _%$e170682%_
                    ((##structure-ref _%$e170682%_ '1 __syntax::t '#f)
                     _%stx170657%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx170657%_
                       _%form170680%_))))
              (_%$%$E170661170667%_)))))
    (define __compile-error__%
      (lambda (_%stx170644%_ _%detail170645%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx170644%_
           _%detail170645%_))))
    (define __compile-error__0
      (lambda (_%stx170650%_)
        (let ((_%detail170652%_ '#f))
          (__compile-error__% _%stx170650%_ _%detail170652%_))))
    (define __compile-error
      (lambda _g171027_
        (let ((_g171028_ (let () (declare (not safe)) (##length _g171027_))))
          (cond ((let () (declare (not safe)) (##fx= _g171028_ 1))
                 (apply __compile-error__0 _g171027_))
                ((let () (declare (not safe)) (##fx= _g171028_ 2))
                 (apply __compile-error__% _g171027_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g171027_))))))
    (define __compile-ignore%
      (lambda (_%stx170641%_) (__SRC__% ''#!void _%stx170641%_)))
    (define __compile-begin%
      (lambda (_%stx170616%_)
        (let* ((_%$e170618%_ _%stx170616%_)
               (_%$%$E170620170626%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e170618%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e170618%_))
              (let* ((_%$%$tgt170621170629%_
                      (let () (declare (not safe)) (__AST-e _%$e170618%_)))
                     (_%$%$hd170622170632%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt170621170629%_)))
                     (_%$%$tl170623170635%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt170621170629%_)))
                     (_%body170639%_ _%$%$tl170623170635%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body170639%_))
                 _%stx170616%_))
              (_%$%$E170620170626%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx170591%_)
        (let* ((_%$e170593%_ _%stx170591%_)
               (_%$%$E170595170601%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e170593%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e170593%_))
              (let* ((_%$%$tgt170596170604%_
                      (let () (declare (not safe)) (__AST-e _%$e170593%_)))
                     (_%$%$hd170597170607%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt170596170604%_)))
                     (_%$%$tl170598170610%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt170596170604%_)))
                     (_%body170614%_ _%$%$tl170598170610%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body170614%_)))
                 _%stx170591%_))
              (_%$%$E170595170601%_)))))
    (define __compile-import%
      (lambda (_%stx170566%_)
        (let* ((_%$e170568%_ _%stx170566%_)
               (_%$%$E170570170576%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e170568%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e170568%_))
              (let* ((_%$%$tgt170571170579%_
                      (let () (declare (not safe)) (__AST-e _%$e170568%_)))
                     (_%$%$hd170572170582%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt170571170579%_)))
                     (_%$%$tl170573170585%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt170571170579%_)))
                     (_%body170589%_ _%$%$tl170573170585%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body170589%_ '())) '()))
                 _%stx170566%_))
              (_%$%$E170570170576%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx170513%_)
        (let* ((_%$e170515%_ _%stx170513%_)
               (_%$%$E170517170529%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e170515%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e170515%_))
              (let* ((_%$%$tgt170518170532%_
                      (let () (declare (not safe)) (__AST-e _%$e170515%_)))
                     (_%$%$hd170519170535%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt170518170532%_)))
                     (_%$%$tl170520170538%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt170518170532%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl170520170538%_))
                    (let* ((_%$%$tgt170521170542%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl170520170538%_)))
                           (_%$%$hd170522170545%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt170521170542%_)))
                           (_%$%$tl170523170548%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt170521170542%_)))
                           (_%ann170552%_ _%$%$hd170522170545%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl170523170548%_))
                          (let* ((_%$%$tgt170524170554%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl170523170548%_)))
                                 (_%$%$hd170525170557%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt170524170554%_)))
                                 (_%$%$tl170526170560%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt170524170554%_)))
                                 (_%expr170564%_ _%$%$hd170525170557%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl170526170560%_))
                                        '())
                                (__compile _%expr170564%_)
                                (_%$%$E170517170529%_)))
                          (_%$%$E170517170529%_)))
                    (_%$%$E170517170529%_)))
              (_%$%$E170517170529%_)))))
    (define __compile-define-values%
      (lambda (_%stx170404%_)
        (let* ((_%$e170406%_ _%stx170404%_)
               (_%$%$E170408170420%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e170406%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e170406%_))
              (let* ((_%$%$tgt170409170423%_
                      (let () (declare (not safe)) (__AST-e _%$e170406%_)))
                     (_%$%$hd170410170426%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt170409170423%_)))
                     (_%$%$tl170411170429%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt170409170423%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl170411170429%_))
                    (let* ((_%$%$tgt170412170433%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl170411170429%_)))
                           (_%$%$hd170413170436%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt170412170433%_)))
                           (_%$%$tl170414170439%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt170412170433%_)))
                           (_%hd170443%_ _%$%$hd170413170436%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl170414170439%_))
                          (let* ((_%$%$tgt170415170445%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl170414170439%_)))
                                 (_%$%$hd170416170448%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt170415170445%_)))
                                 (_%$%$tl170417170451%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt170415170445%_)))
                                 (_%expr170455%_ _%$%$hd170416170448%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl170417170451%_))
                                        '())
                                (let* ((_%$e170457%_ _%hd170443%_)
                                       (_%$%$E170459170500%_
                                        (lambda ()
                                          (let ((_%$%$E170460170485%_
                                                 (lambda ()
                                                   (let* ((_%$%$E170461170472%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e170457%_))))
                  (_%ids170475%_ _%hd170443%_)
                  (_%len170477%_ (length _%ids170475%_))
                  (_%tmp170479%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp170479%_
                                       (cons (__compile _%expr170455%_) '())))
                           _%stx170404%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp170479%_
                                             (cons _%len170477%_ '())))
                                 _%stx170404%_)
                                (let ((__tmp171029
                                       (let ((__tmp171031
                                              (lambda (_%id170482%_
                                                       _%k170483%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id170482%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id170482%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp170479%_
                                           (cons _%k170483%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx170404%_)
                                                    '#f)))
                                             (__tmp171030
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len170477%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp171031
                                          _%ids170475%_
                                          __tmp171030))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp171029)))))
              _%stx170404%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e170457%_))
                                                (let* ((_%$%$tgt170462170488%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e170457%_)))
                                                       (_%$%$hd170463170491%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%$tgt170462170488%_)))
                                                       (_%$%$tl170464170494%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%$tgt170462170488%_)))
                                                       (_%id170498%_
                                                        _%$%$hd170463170491%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$%$tl170464170494%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id170498%_)
                           (cons (__compile _%expr170455%_) '())))
               _%stx170404%_)
              (_%$%$E170460170485%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%$E170460170485%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e170457%_))
                                      (let* ((_%$%$tgt170465170503%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e170457%_)))
                                             (_%$%$hd170466170506%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt170465170503%_)))
                                             (_%$%$tl170467170509%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt170465170503%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$hd170466170506%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$%$tl170467170509%_))
                                                        '())
                                                (__compile _%expr170455%_)
                                                (_%$%$E170459170500%_))
                                            (_%$%$E170459170500%_)))
                                      (_%$%$E170459170500%_)))
                                (_%$%$E170408170420%_)))
                          (_%$%$E170408170420%_)))
                    (_%$%$E170408170420%_)))
              (_%$%$E170408170420%_)))))
    (define __compile-head-id
      (lambda (_%e170402%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e170402%_))
             _%e170402%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd170359%_)
        (let _%recur170361%_ ((_%rest170363%_ _%hd170359%_))
          (let* ((_%$e170365%_ _%rest170363%_)
                 (_%$%$E170367170385%_
                  (lambda ()
                    (let ((_%$%$E170368170382%_
                           (lambda ()
                             (let* ((_%$%$E170369170377%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e170365%_))))
                                    (_%tail170380%_ _%$e170365%_))
                               (__compile-head-id _%tail170380%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e170365%_))
                                  '())
                          '()
                          (_%$%$E170368170382%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e170365%_))
                (let* ((_%$%$tgt170370170388%_
                        (let () (declare (not safe)) (__AST-e _%$e170365%_)))
                       (_%$%$hd170371170391%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt170370170388%_)))
                       (_%$%$tl170372170394%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt170370170388%_)))
                       (_%hd170398%_ _%$%$hd170371170391%_)
                       (_%rest170400%_ _%$%$tl170372170394%_))
                  (cons (__compile-head-id _%hd170398%_)
                        (_%recur170361%_ _%rest170400%_)))
                (_%$%$E170367170385%_))))))
    (define __compile-lambda%
      (lambda (_%stx170306%_)
        (let* ((_%$e170308%_ _%stx170306%_)
               (_%$%$E170310170322%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e170308%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e170308%_))
              (let* ((_%$%$tgt170311170325%_
                      (let () (declare (not safe)) (__AST-e _%$e170308%_)))
                     (_%$%$hd170312170328%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt170311170325%_)))
                     (_%$%$tl170313170331%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt170311170325%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl170313170331%_))
                    (let* ((_%$%$tgt170314170335%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl170313170331%_)))
                           (_%$%$hd170315170338%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt170314170335%_)))
                           (_%$%$tl170316170341%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt170314170335%_)))
                           (_%hd170345%_ _%$%$hd170315170338%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl170316170341%_))
                          (let* ((_%$%$tgt170317170347%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl170316170341%_)))
                                 (_%$%$hd170318170350%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt170317170347%_)))
                                 (_%$%$tl170319170353%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt170317170347%_)))
                                 (_%body170357%_ _%$%$hd170318170350%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl170319170353%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd170345%_)
                                             (cons (__compile _%body170357%_)
                                                   '())))
                                 _%stx170306%_)
                                (_%$%$E170310170322%_)))
                          (_%$%$E170310170322%_)))
                    (_%$%$E170310170322%_)))
              (_%$%$E170310170322%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx170071%_)
        (letrec ((_%variadic?170073%_
                  (lambda (_%hd170271%_)
                    (let* ((_%$e170273%_ _%hd170271%_)
                           (_%$%$E170275170291%_
                            (lambda ()
                              (let ((_%$%$E170276170288%_
                                     (lambda ()
                                       (let ((_%$%$E170277170285%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e170273%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e170273%_))
                                            '())
                                    '#f
                                    (_%$%$E170276170288%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e170273%_))
                          (let* ((_%$%$tgt170278170294%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e170273%_)))
                                 (_%$%$hd170279170297%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt170278170294%_)))
                                 (_%$%$tl170280170300%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt170278170294%_)))
                                 (_%rest170304%_ _%$%$tl170280170300%_))
                            (_%variadic?170073%_ _%rest170304%_))
                          (_%$%$E170275170291%_)))))
                 (_%arity170074%_
                  (lambda (_%hd170209%_)
                    (let _%lp170211%_ ((_%rest170213%_ _%hd170209%_)
                                       (_%k170214%_ '0))
                      (let* ((_%$e170216%_ _%rest170213%_)
                             (_%$%$E170218170229%_
                              (lambda ()
                                (let ((_%$%$E170219170226%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e170216%_)))))
                                  _%k170214%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e170216%_))
                            (let* ((_%$%$tgt170220170232%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e170216%_)))
                                   (_%$%$hd170221170235%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%$tgt170220170232%_)))
                                   (_%$%$tl170222170238%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%$tgt170220170232%_)))
                                   (_%rest170242%_ _%$%$tl170222170238%_))
                              (_%lp170211%_
                               _%rest170242%_
                               (let ((_%x170244%_ _%k170214%_))
                                 (if (fixnum? _%x170244%_)
                                     (let ((_%x170249%_ _%x170244%_))
                                       (declare (not safe))
                                       (__fx1+ _%x170249%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x170244%_)
                                       '#!void)))))
                            (_%$%$E170218170229%_))))))
                 (_%generate170075%_
                  (lambda (_%rest170136%_ _%args170137%_ _%len170138%_)
                    (let* ((_%$e170140%_ _%rest170136%_)
                           (_%$%$E170142170153%_
                            (lambda ()
                              (let ((_%$%$E170143170150%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e170140%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args170137%_ '())))
                                 _%stx170071%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e170140%_))
                          (let* ((_%$%$tgt170144170156%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e170140%_)))
                                 (_%$%$hd170145170159%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt170144170156%_)))
                                 (_%$%$tl170146170162%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt170144170156%_)))
                                 (_%clause170166%_ _%$%$hd170145170159%_)
                                 (_%rest170168%_ _%$%$tl170146170162%_)
                                 (_%$e170170%_ _%clause170166%_)
                                 (_%$%$E170172170181%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e170170%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e170170%_))
                                (let* ((_%$%$tgt170173170184%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e170170%_)))
                                       (_%$%$hd170174170187%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt170173170184%_)))
                                       (_%$%$tl170175170190%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt170173170184%_)))
                                       (_%hd170194%_ _%$%$hd170174170187%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl170175170190%_))
                                      (let* ((_%$%$tgt170176170196%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl170175170190%_)))
                                             (_%$%$hd170177170199%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt170176170196%_)))
                                             (_%$%$tl170178170202%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt170176170196%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl170178170202%_))
                                                    '())
                                            (let ((_%clen170206%_
                                                   (_%arity170074%_
                                                    _%hd170194%_))
                                                  (_%cmp170207%_
                                                   (if (_%variadic?170073%_
                                                        _%hd170194%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp170207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len170138%_ (cons _%clen170206%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause170166%_))
                                      (cons _%args170137%_ '())))
                          _%stx170071%_)
                         (cons (_%generate170075%_
                                _%rest170168%_
                                _%args170137%_
                                _%len170138%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx170071%_))
                                            (_%$%$E170172170181%_)))
                                      (_%$%$E170172170181%_)))
                                (_%$%$E170172170181%_)))
                          (_%$%$E170142170153%_))))))
          (let* ((_%$e170077%_ _%stx170071%_)
                 (_%$%$E170079170111%_
                  (lambda ()
                    (let ((_%$%$E170080170093%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e170077%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e170077%_))
                          (let* ((_%$%$tgt170081170096%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e170077%_)))
                                 (_%$%$hd170082170099%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt170081170096%_)))
                                 (_%$%$tl170083170102%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt170081170096%_)))
                                 (_%clauses170106%_ _%$%$tl170083170102%_))
                            (let ((_%args170108%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx170071%_))
                                  (_%len170109%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx170071%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args170108%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len170109%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args170108%_ '()))
                                         _%stx170071%_)
                                        '()))
                            '())
                      (cons (_%generate170075%_
                             _%clauses170106%_
                             _%args170108%_
                             _%len170109%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx170071%_)
                                                 '())))
                               _%stx170071%_)))
                          (_%$%$E170080170093%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e170077%_))
                (let* ((_%$%$tgt170084170114%_
                        (let () (declare (not safe)) (__AST-e _%$e170077%_)))
                       (_%$%$hd170085170117%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt170084170114%_)))
                       (_%$%$tl170086170120%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt170084170114%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl170086170120%_))
                      (let* ((_%$%$tgt170087170124%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl170086170120%_)))
                             (_%$%$hd170088170127%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt170087170124%_)))
                             (_%$%$tl170089170130%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt170087170124%_)))
                             (_%clause170134%_ _%$%$hd170088170127%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$tl170089170130%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause170134%_))
                            (_%$%$E170079170111%_)))
                      (_%$%$E170079170111%_)))
                (_%$%$E170079170111%_))))))
    (define __compile-let-form
      (lambda (_%stx169840%_ _%compile-simple169841%_ _%compile-values169842%_)
        (letrec ((_%simple-bind?169844%_
                  (lambda (_%hd170029%_)
                    (let* ((_%$%hd170030170040%_ _%hd170029%_)
                           (_%$%else170033170048%_ (lambda () '#f)))
                      (let ((_%$%K170036170061%_ (lambda (_%id170059%_) '#t))
                            (_%$%K170035170053%_ (lambda () '#t)))
                        (let ((_%$%try-match170032170056%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%$%hd170030170040%_ '#f))
                                     (_%$%K170035170053%_)
                                     (_%$%else170033170048%_)))))
                          (if (pair? _%$%hd170030170040%_)
                              (let ((_%$%tl170038170066%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%hd170030170040%_)))
                                    (_%$%hd170037170064%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%hd170030170040%_))))
                                (if (null? _%$%tl170038170066%_)
                                    (let ((_%id170069%_ _%$%hd170037170064%_))
                                      (_%$%K170036170061%_ _%id170069%_))
                                    (_%$%try-match170032170056%_)))
                              (_%$%try-match170032170056%_)))))))
                 (_%car-e169845%_
                  (lambda (_%hd170027%_)
                    (if (pair? _%hd170027%_)
                        (let () (declare (not safe)) (##car _%hd170027%_))
                        _%hd170027%_))))
          (let* ((_%$e169847%_ _%stx169840%_)
                 (_%$%$E169849169992%_
                  (lambda ()
                    (let ((_%$%$E169850169872%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e169847%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e169847%_))
                          (let* ((_%$%$tgt169851169875%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e169847%_)))
                                 (_%$%$hd169852169878%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt169851169875%_)))
                                 (_%$%$tl169853169881%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt169851169875%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl169853169881%_))
                                (let* ((_%$%$tgt169854169885%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl169853169881%_)))
                                       (_%$%$hd169855169888%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt169854169885%_)))
                                       (_%$%$tl169856169891%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt169854169885%_)))
                                       (_%hd169895%_ _%$%$hd169855169888%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl169856169891%_))
                                      (let* ((_%$%$tgt169857169897%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl169856169891%_)))
                                             (_%$%$hd169858169900%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt169857169897%_)))
                                             (_%$%$tl169859169903%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt169857169897%_)))
                                             (_%body169907%_
                                              _%$%$hd169858169900%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl169859169903%_))
                                                    '())
                                            (let* ((_%hd-ids169947%_
                                                    (map (lambda (_%bind169909%_)
                                                           (let* ((_%$e169911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind169909%_)
                          (_%$%$E169913169922%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e169911%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e169911%_))
                         (let* ((_%$%$tgt169914169925%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e169911%_)))
                                (_%$%$hd169915169928%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt169914169925%_)))
                                (_%$%$tl169916169931%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt169914169925%_)))
                                (_%ids169935%_ _%$%$hd169915169928%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl169916169931%_))
                               (let* ((_%$%$tgt169917169937%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl169916169931%_)))
                                      (_%$%$hd169918169940%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt169917169937%_)))
                                      (_%$%$tl169919169943%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt169917169937%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl169919169943%_))
                                             '())
                                     _%ids169935%_
                                     (_%$%$E169913169922%_)))
                               (_%$%$E169913169922%_)))
                         (_%$%$E169913169922%_))))
                 _%hd169895%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs169987%_
                                                    (map (lambda (_%bind169949%_)
                                                           (let* ((_%$e169951%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind169949%_)
                          (_%$%$E169953169962%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e169951%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e169951%_))
                         (let* ((_%$%$tgt169954169965%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e169951%_)))
                                (_%$%$hd169955169968%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt169954169965%_)))
                                (_%$%$tl169956169971%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt169954169965%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl169956169971%_))
                               (let* ((_%$%$tgt169957169975%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl169956169971%_)))
                                      (_%$%$hd169958169978%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt169957169975%_)))
                                      (_%$%$tl169959169981%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt169957169975%_)))
                                      (_%expr169985%_ _%$%$hd169958169978%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl169959169981%_))
                                             '())
                                     (__compile _%expr169985%_)
                                     (_%$%$E169953169962%_)))
                               (_%$%$E169953169962%_)))
                         (_%$%$E169953169962%_))))
                 _%hd169895%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body169989%_
                                                    (__compile
                                                     _%body169907%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?169844%_
                                                     _%hd-ids169947%_))
                                                  (_%compile-simple169841%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e169845%_
                                                            _%hd-ids169947%_))
                                                   _%exprs169987%_
                                                   _%body169989%_)
                                                  (_%compile-values169842%_
                                                   _%hd-ids169947%_
                                                   _%exprs169987%_
                                                   _%body169989%_)))
                                            (_%$%$E169850169872%_)))
                                      (_%$%$E169850169872%_)))
                                (_%$%$E169850169872%_)))
                          (_%$%$E169850169872%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e169847%_))
                (let* ((_%$%$tgt169860169995%_
                        (let () (declare (not safe)) (__AST-e _%$e169847%_)))
                       (_%$%$hd169861169998%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt169860169995%_)))
                       (_%$%$tl169862170001%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt169860169995%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl169862170001%_))
                      (let* ((_%$%$tgt169863170005%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl169862170001%_)))
                             (_%$%$hd169864170008%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt169863170005%_)))
                             (_%$%$tl169865170011%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt169863170005%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$hd169864170008%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl169865170011%_))
                                (let* ((_%$%$tgt169866170015%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl169865170011%_)))
                                       (_%$%$hd169867170018%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt169866170015%_)))
                                       (_%$%$tl169868170021%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt169866170015%_)))
                                       (_%body170025%_ _%$%$hd169867170018%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl169868170021%_))
                                              '())
                                      (__compile _%body170025%_)
                                      (_%$%$E169849169992%_)))
                                (_%$%$E169849169992%_))
                            (_%$%$E169849169992%_)))
                      (_%$%$E169849169992%_)))
                (_%$%$E169849169992%_))))))
    (define __compile-let-values%
      (lambda (_%stx169652%_)
        (letrec ((_%compile-simple169654%_
                  (lambda (_%hd-ids169836%_ _%exprs169837%_ _%body169838%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp171032
                                        (map __compile-head-id
                                             _%hd-ids169836%_)))
                                   (declare (not safe))
                                   (##map list __tmp171032 _%exprs169837%_))
                                 (cons _%body169838%_ '())))
                     _%stx169652%_)))
                 (_%compile-values169655%_
                  (lambda (_%hd-ids169751%_ _%exprs169752%_ _%body169753%_)
                    (let _%lp169755%_ ((_%rest169757%_ _%hd-ids169751%_)
                                       (_%exprs169758%_ _%exprs169752%_)
                                       (_%bind169759%_ '())
                                       (_%post169760%_ '()))
                      (let* ((_%$%rest169761169775%_ _%rest169757%_)
                             (_%$%else169764169783%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind169759%_)
                                             (cons (_%compile-post169656%_
                                                    _%post169760%_
                                                    _%body169753%_)
                                                   '())))
                                 _%stx169652%_))))
                        (let ((_%$%K169769169819%_
                               (lambda (_%rest169816%_ _%id169817%_)
                                 (_%lp169755%_
                                  _%rest169816%_
                                  (cdr _%exprs169758%_)
                                  (cons (cons (__compile-head-id _%id169817%_)
                                              (cons (car _%exprs169758%_) '()))
                                        _%bind169759%_)
                                  _%post169760%_)))
                              (_%$%K169766169801%_
                               (lambda (_%rest169787%_ _%hd169788%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd169788%_))
                                     (_%lp169755%_
                                      _%rest169787%_
                                      (cdr _%exprs169758%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd169788%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs169758%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind169759%_)
                                      _%post169760%_)
                                     (if (list? _%hd169788%_)
                                         (let* ((_%len169792%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd169788%_)))
                                                (_%tmp169794%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp169755%_
                                            _%rest169787%_
                                            (cdr _%exprs169758%_)
                                            (cons (cons _%tmp169794%_
                                                        (cons (car _%exprs169758%_)
                                                              '()))
                                                  _%bind169759%_)
                                            (cons (cons _%tmp169794%_
                                                        (cons _%len169792%_
                                                              (let ((__tmp171034
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id169797%_ _%k169798%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id169797%_))
                                   (cons (__SRC__0 _%id169797%_) _%k169798%_)
                                   '#f)))
                            (__tmp171033
                             (let ()
                               (declare (not safe))
                               (##iota _%len169792%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp171034 _%hd169788%_ __tmp171033))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post169760%_)))
                                         (__compile-error__%
                                          _%stx169652%_
                                          _%hd169788%_))))))
                          (if (pair? _%$%rest169761169775%_)
                              (let ((_%$%tl169771169824%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest169761169775%_)))
                                    (_%$%hd169770169822%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest169761169775%_))))
                                (if (pair? _%$%hd169770169822%_)
                                    (let ((_%$%tl169773169829%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd169770169822%_)))
                                          (_%$%hd169772169827%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd169770169822%_))))
                                      (if (null? _%$%tl169773169829%_)
                                          (let ((_%id169832%_
                                                 _%$%hd169772169827%_)
                                                (_%rest169834%_
                                                 _%$%tl169771169824%_))
                                            (_%$%K169769169819%_
                                             _%rest169834%_
                                             _%id169832%_))
                                          (let ((_%hd169809%_
                                                 _%$%hd169770169822%_)
                                                (_%rest169811%_
                                                 _%$%tl169771169824%_))
                                            (_%$%K169766169801%_
                                             _%rest169811%_
                                             _%hd169809%_))))
                                    (let ((_%hd169809%_ _%$%hd169770169822%_)
                                          (_%rest169811%_
                                           _%$%tl169771169824%_))
                                      (_%$%K169766169801%_
                                       _%rest169811%_
                                       _%hd169809%_))))
                              (_%$%else169764169783%_)))))))
                 (_%compile-post169656%_
                  (lambda (_%post169658%_ _%body169659%_)
                    (let _%lp169661%_ ((_%rest169663%_ _%post169658%_)
                                       (_%check169664%_ '())
                                       (_%bind169665%_ '()))
                      (let* ((_%$%rest169666169678%_ _%rest169663%_)
                             (_%$%else169668169686%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp171035
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind169665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body169659%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx169652%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp171035
                                          _%check169664%_)))
                                 _%stx169652%_)))
                             (_%$%K169670169725%_
                              (lambda (_%rest169689%_
                                       _%init169690%_
                                       _%len169691%_
                                       _%tmp169692%_)
                                (_%lp169661%_
                                 _%rest169689%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp169692%_
                                                    (cons _%len169691%_ '())))
                                        _%stx169652%_)
                                       _%check169664%_)
                                 (let ((__tmp171036
                                        (lambda (_%hd169694%_ _%r169695%_)
                                          (let* ((_%$%hd169696169703%_
                                                  _%hd169694%_)
                                                 (_%$%E169698169707%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd169696169703%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K169699169713%_
                                                  (lambda (_%k169710%_
                                                           _%id169711%_)
                                                    (cons (cons _%id169711%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp169692%_
                                          (cons _%k169710%_ '())))
                              '()))
                  _%r169695%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd169696169703%_)
                                                (let ((_%$%hd169700169716%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd169696169703%_)))
                                                      (_%$%tl169701169718%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd169696169703%_))))
                                                  (let* ((_%id169721%_
                                                          _%$%hd169700169716%_)
                                                         (_%k169723%_
                                                          _%$%tl169701169718%_))
                                                    (_%$%K169699169713%_
                                                     _%k169723%_
                                                     _%id169721%_)))
                                                (_%$%E169698169707%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp171036
                                    _%bind169665%_
                                    _%init169690%_))))))
                        (if (pair? _%$%rest169666169678%_)
                            (let ((_%$%hd169671169728%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest169666169678%_)))
                                  (_%$%tl169672169730%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest169666169678%_))))
                              (if (pair? _%$%hd169671169728%_)
                                  (let ((_%$%hd169673169733%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd169671169728%_)))
                                        (_%$%tl169674169735%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd169671169728%_))))
                                    (let ((_%tmp169738%_ _%$%hd169673169733%_))
                                      (if (pair? _%$%tl169674169735%_)
                                          (let ((_%$%hd169675169740%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl169674169735%_)))
                                                (_%$%tl169676169742%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl169674169735%_))))
                                            (let* ((_%len169745%_
                                                    _%$%hd169675169740%_)
                                                   (_%init169747%_
                                                    _%$%tl169676169742%_)
                                                   (_%rest169749%_
                                                    _%$%tl169672169730%_))
                                              (_%$%K169670169725%_
                                               _%rest169749%_
                                               _%init169747%_
                                               _%len169745%_
                                               _%tmp169738%_)))
                                          (_%$%else169668169686%_))))
                                  (_%$%else169668169686%_)))
                            (_%$%else169668169686%_)))))))
          (__compile-let-form
           _%stx169652%_
           _%compile-simple169654%_
           _%compile-values169655%_))))
    (define __compile-letrec-values%
      (lambda (_%stx169449%_)
        (letrec ((_%compile-simple169451%_
                  (lambda (_%hd-ids169648%_ _%exprs169649%_ _%body169650%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp171037
                                        (map __compile-head-id
                                             _%hd-ids169648%_)))
                                   (declare (not safe))
                                   (##map list __tmp171037 _%exprs169649%_))
                                 (cons _%body169650%_ '())))
                     _%stx169449%_)))
                 (_%compile-values169452%_
                  (lambda (_%hd-ids169559%_ _%exprs169560%_ _%body169561%_)
                    (let _%lp169563%_ ((_%rest169565%_ _%hd-ids169559%_)
                                       (_%exprs169566%_ _%exprs169560%_)
                                       (_%pre169567%_ '())
                                       (_%bind169568%_ '())
                                       (_%post169569%_ '()))
                      (let* ((_%$%rest169570169584%_ _%rest169565%_)
                             (_%$%else169573169592%_
                              (lambda ()
                                (_%compile-inner169453%_
                                 _%pre169567%_
                                 _%bind169568%_
                                 _%post169569%_
                                 _%body169561%_))))
                        (let ((_%$%K169578169631%_
                               (lambda (_%rest169628%_ _%id169629%_)
                                 (_%lp169563%_
                                  _%rest169628%_
                                  (cdr _%exprs169566%_)
                                  _%pre169567%_
                                  (cons (cons (__compile-head-id _%id169629%_)
                                              (cons (car _%exprs169566%_) '()))
                                        _%bind169568%_)
                                  _%post169569%_)))
                              (_%$%K169575169613%_
                               (lambda (_%rest169596%_ _%hd169597%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd169597%_))
                                     (_%lp169563%_
                                      _%rest169596%_
                                      (cdr _%exprs169566%_)
                                      _%pre169567%_
                                      (cons (cons (__compile-head-id
                                                   _%hd169597%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs169566%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind169568%_)
                                      _%post169569%_)
                                     (if (list? _%hd169597%_)
                                         (let* ((_%len169601%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd169597%_)))
                                                (_%tmp169603%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp169563%_
                                            _%rest169596%_
                                            (cdr _%exprs169566%_)
                                            (let ((__tmp171038
                                                   (lambda (_%id169606%_
                                                            _%r169607%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id169606%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id169606%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r169607%_)
                 _%r169607%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp171038
                                               _%pre169567%_
                                               _%hd169597%_))
                                            (cons (cons _%tmp169603%_
                                                        (cons (car _%exprs169566%_)
                                                              '()))
                                                  _%bind169568%_)
                                            (cons (cons _%tmp169603%_
                                                        (cons _%len169601%_
                                                              (let ((__tmp171040
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id169609%_ _%k169610%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id169609%_))
                                   (cons (__SRC__0 _%id169609%_) _%k169610%_)
                                   '#f)))
                            (__tmp171039
                             (let ()
                               (declare (not safe))
                               (##iota _%len169601%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp171040 _%hd169597%_ __tmp171039))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post169569%_)))
                                         (__compile-error__%
                                          _%stx169449%_
                                          _%hd169597%_))))))
                          (if (pair? _%$%rest169570169584%_)
                              (let ((_%$%tl169580169636%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest169570169584%_)))
                                    (_%$%hd169579169634%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest169570169584%_))))
                                (if (pair? _%$%hd169579169634%_)
                                    (let ((_%$%tl169582169641%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd169579169634%_)))
                                          (_%$%hd169581169639%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd169579169634%_))))
                                      (if (null? _%$%tl169582169641%_)
                                          (let ((_%id169644%_
                                                 _%$%hd169581169639%_)
                                                (_%rest169646%_
                                                 _%$%tl169580169636%_))
                                            (_%$%K169578169631%_
                                             _%rest169646%_
                                             _%id169644%_))
                                          (let ((_%hd169621%_
                                                 _%$%hd169579169634%_)
                                                (_%rest169623%_
                                                 _%$%tl169580169636%_))
                                            (_%$%K169575169613%_
                                             _%rest169623%_
                                             _%hd169621%_))))
                                    (let ((_%hd169621%_ _%$%hd169579169634%_)
                                          (_%rest169623%_
                                           _%$%tl169580169636%_))
                                      (_%$%K169575169613%_
                                       _%rest169623%_
                                       _%hd169621%_))))
                              (_%$%else169573169592%_)))))))
                 (_%compile-inner169453%_
                  (lambda (_%pre169554%_
                           _%bind169555%_
                           _%post169556%_
                           _%body169557%_)
                    (if (null? _%pre169554%_)
                        (_%compile-bind169454%_
                         _%bind169555%_
                         _%post169556%_
                         _%body169557%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre169554%_)
                                     (cons (_%compile-bind169454%_
                                            _%bind169555%_
                                            _%post169556%_
                                            _%body169557%_)
                                           '())))
                         _%stx169449%_))))
                 (_%compile-bind169454%_
                  (lambda (_%bind169550%_ _%post169551%_ _%body169552%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind169550%_)
                                 (cons (_%compile-post169455%_
                                        _%post169551%_
                                        _%body169552%_)
                                       '())))
                     _%stx169449%_)))
                 (_%compile-post169455%_
                  (lambda (_%post169457%_ _%body169458%_)
                    (let _%lp169460%_ ((_%rest169462%_ _%post169457%_)
                                       (_%check169463%_ '())
                                       (_%bind169464%_ '()))
                      (let* ((_%$%rest169465169477%_ _%rest169462%_)
                             (_%$%else169467169485%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp171041
                                              (let ((__tmp171042
                                                     (cons _%body169458%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp171042
                                                 _%bind169464%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp171041
                                          _%check169463%_)))
                                 _%stx169449%_)))
                             (_%$%K169469169524%_
                              (lambda (_%rest169488%_
                                       _%init169489%_
                                       _%len169490%_
                                       _%tmp169491%_)
                                (_%lp169460%_
                                 _%rest169488%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp169491%_
                                                    (cons _%len169490%_ '())))
                                        _%stx169449%_)
                                       _%check169463%_)
                                 (let ((__tmp171043
                                        (lambda (_%hd169493%_ _%r169494%_)
                                          (let* ((_%$%hd169495169502%_
                                                  _%hd169493%_)
                                                 (_%$%E169497169506%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd169495169502%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K169498169512%_
                                                  (lambda (_%k169509%_
                                                           _%id169510%_)
                                                    (cons (cons 'set!
                                                                (cons _%id169510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp169491%_
                                                (cons _%k169509%_ '())))
                                    '())))
                  _%r169494%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd169495169502%_)
                                                (let ((_%$%hd169499169515%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd169495169502%_)))
                                                      (_%$%tl169500169517%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd169495169502%_))))
                                                  (let* ((_%id169520%_
                                                          _%$%hd169499169515%_)
                                                         (_%k169522%_
                                                          _%$%tl169500169517%_))
                                                    (_%$%K169498169512%_
                                                     _%k169522%_
                                                     _%id169520%_)))
                                                (_%$%E169497169506%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp171043
                                    _%bind169464%_
                                    _%init169489%_))))))
                        (if (pair? _%$%rest169465169477%_)
                            (let ((_%$%hd169470169527%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest169465169477%_)))
                                  (_%$%tl169471169529%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest169465169477%_))))
                              (if (pair? _%$%hd169470169527%_)
                                  (let ((_%$%hd169472169532%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd169470169527%_)))
                                        (_%$%tl169473169534%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd169470169527%_))))
                                    (let ((_%tmp169537%_ _%$%hd169472169532%_))
                                      (if (pair? _%$%tl169473169534%_)
                                          (let ((_%$%hd169474169539%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl169473169534%_)))
                                                (_%$%tl169475169541%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl169473169534%_))))
                                            (let* ((_%len169544%_
                                                    _%$%hd169474169539%_)
                                                   (_%init169546%_
                                                    _%$%tl169475169541%_)
                                                   (_%rest169548%_
                                                    _%$%tl169471169529%_))
                                              (_%$%K169469169524%_
                                               _%rest169548%_
                                               _%init169546%_
                                               _%len169544%_
                                               _%tmp169537%_)))
                                          (_%$%else169467169485%_))))
                                  (_%$%else169467169485%_)))
                            (_%$%else169467169485%_)))))))
          (__compile-let-form
           _%stx169449%_
           _%compile-simple169451%_
           _%compile-values169452%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx169200%_)
        (letrec ((_%compile-simple169202%_
                  (lambda (_%hd-ids169445%_ _%exprs169446%_ _%body169447%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp171044
                                        (map __compile-head-id
                                             _%hd-ids169445%_)))
                                   (declare (not safe))
                                   (##map list __tmp171044 _%exprs169446%_))
                                 (cons _%body169447%_ '())))
                     _%stx169200%_)))
                 (_%compile-values169203%_
                  (lambda (_%hd-ids169352%_ _%exprs169353%_ _%body169354%_)
                    (let _%lp169356%_ ((_%rest169358%_ _%hd-ids169352%_)
                                       (_%exprs169359%_ _%exprs169353%_)
                                       (_%bind169360%_ '())
                                       (_%post169361%_ '()))
                      (let* ((_%$%rest169362169376%_ _%rest169358%_)
                             (_%$%else169365169384%_
                              (lambda ()
                                (_%compile-bind169204%_
                                 _%bind169360%_
                                 _%post169361%_
                                 _%body169354%_))))
                        (let ((_%$%K169370169428%_
                               (lambda (_%rest169423%_ _%hd169424%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd169424%_))
                                     (let ((_%id169426%_
                                            (__SRC__0 _%hd169424%_)))
                                       (_%lp169356%_
                                        _%rest169423%_
                                        (cdr _%exprs169359%_)
                                        (cons (cons _%id169426%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind169360%_)
                                        (cons (cons _%id169426%_
                                                    (cons (car _%exprs169359%_)
                                                          '()))
                                              _%post169361%_)))
                                     (_%lp169356%_
                                      _%rest169423%_
                                      (cdr _%exprs169359%_)
                                      _%bind169360%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs169359%_)
                                                        '()))
                                            _%post169361%_)))))
                              (_%$%K169367169408%_
                               (lambda (_%rest169388%_ _%hd169389%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd169389%_))
                                     (let ((_%id169392%_
                                            (__SRC__0 _%hd169389%_)))
                                       (_%lp169356%_
                                        _%rest169388%_
                                        (cdr _%exprs169359%_)
                                        (cons (cons _%id169392%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind169360%_)
                                        (cons (cons _%id169392%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs169359%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post169361%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd169389%_))
                                         (if (list? _%hd169389%_)
                                             (let* ((_%len169396%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd169389%_)))
                                                    (_%tmp169398%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp169356%_
                                                _%rest169388%_
                                                (cdr _%exprs169359%_)
                                                (let ((__tmp171045
                                                       (lambda (_%id169401%_
                                                                _%r169402%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id169401%_))
                     (cons (cons (__SRC__0 _%id169401%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r169402%_)
                     _%r169402%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp171045
                                                   _%bind169360%_
                                                   _%hd169389%_))
                                                (cons (cons _%tmp169398%_
                                                            (cons (car _%exprs169359%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len169396%_
                                (let ((__tmp171047
                                       (lambda (_%id169404%_ _%k169405%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id169404%_))
                                             (cons (__SRC__0 _%id169404%_)
                                                   _%k169405%_)
                                             '#f)))
                                      (__tmp171046
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len169396%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp171047
                                   _%hd169389%_
                                   __tmp171046)))))
              _%post169361%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx169200%_
                                              _%hd169389%_))
                                         (_%lp169356%_
                                          _%rest169388%_
                                          (cdr _%exprs169359%_)
                                          _%bind169360%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs169359%_)
                                                            '()))
                                                _%post169361%_)))))))
                          (if (pair? _%$%rest169362169376%_)
                              (let ((_%$%tl169372169433%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest169362169376%_)))
                                    (_%$%hd169371169431%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest169362169376%_))))
                                (if (pair? _%$%hd169371169431%_)
                                    (let ((_%$%tl169374169438%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd169371169431%_)))
                                          (_%$%hd169373169436%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd169371169431%_))))
                                      (if (null? _%$%tl169374169438%_)
                                          (let ((_%hd169441%_
                                                 _%$%hd169373169436%_)
                                                (_%rest169443%_
                                                 _%$%tl169372169433%_))
                                            (_%$%K169370169428%_
                                             _%rest169443%_
                                             _%hd169441%_))
                                          (let ((_%hd169416%_
                                                 _%$%hd169371169431%_)
                                                (_%rest169418%_
                                                 _%$%tl169372169433%_))
                                            (_%$%K169367169408%_
                                             _%rest169418%_
                                             _%hd169416%_))))
                                    (let ((_%hd169416%_ _%$%hd169371169431%_)
                                          (_%rest169418%_
                                           _%$%tl169372169433%_))
                                      (_%$%K169367169408%_
                                       _%rest169418%_
                                       _%hd169416%_))))
                              (_%$%else169365169384%_)))))))
                 (_%compile-bind169204%_
                  (lambda (_%bind169348%_ _%post169349%_ _%body169350%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind169348%_)
                                 (cons (_%compile-post169205%_
                                        _%post169349%_
                                        _%body169350%_)
                                       '())))
                     _%stx169200%_)))
                 (_%compile-post169205%_
                  (lambda (_%post169207%_ _%body169208%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp171048
                                  (let ((__tmp171050
                                         (lambda (_%hd169210%_ _%r169211%_)
                                           (let* ((_%$%hd169212169235%_
                                                   _%hd169210%_)
                                                  (_%$%E169216169239%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%$%hd169212169235%_
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
                                             (let ((_%$%K169229169333%_
                                                    (lambda (_%expr169331%_)
                                                      (cons _%expr169331%_
                                                            _%r169211%_)))
                                                   (_%$%K169224169311%_
                                                    (lambda (_%expr169308%_
                                                             _%id169309%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id169309%_ (cons _%expr169308%_ '())))
                     _%stx169200%_)
                    _%r169211%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%K169217169278%_
                                                    (lambda (_%init169243%_
                                                             _%len169244%_
                                                             _%expr169245%_
                                                             _%tmp169246%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp169246%_
                                             (cons _%expr169245%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp169246%_
                                                    (cons _%len169244%_ '())))
                                        _%stx169200%_)
                                       (let ((__tmp171051
                                              (map (lambda (_%hd169248%_)
                                                     (let* ((_%$%hd169249169256%_
                                                             _%hd169248%_)
                                                            (_%$%E169251169260%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%$%hd169249169256%_
                                '([id . k])))
                       '#!void))
                    (_%$%K169252169266%_
                     (lambda (_%k169263%_ _%id169264%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id169264%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp169246%_
                                                      (cons _%k169263%_ '())))
                                          '())))
                        _%stx169200%_))))
               (if (pair? _%$%hd169249169256%_)
                   (let ((_%$%hd169253169269%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%hd169249169256%_)))
                         (_%$%tl169254169271%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%hd169249169256%_))))
                     (let* ((_%id169274%_ _%$%hd169253169269%_)
                            (_%k169276%_ _%$%tl169254169271%_))
                       (_%$%K169252169266%_ _%k169276%_ _%id169274%_)))
                   (_%$%E169251169260%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init169243%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp171051)))))
                     _%stx169200%_)
                    _%r169211%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match170906170907%_
                                                       (lambda (_%$%hd169218169281%_
                                                                _%$%tl169219169283%_
                                                                _%$%hd169220169288%_
                                                                _%$%tl169221169290%_)
                                                         (let ((_%tmp169286%_
                                                                _%$%hd169218169281%_)
                                                               (_%expr169293%_
                                                                _%$%hd169220169288%_))
                                                           (_%$%E169216169239%_))))
                                                      (_%__match170900170901%_
                                                       (lambda (_%$%hd169218169281%_
                                                                _%$%tl169219169283%_)
                                                         (let ((_%tmp169286%_
                                                                _%$%hd169218169281%_))
                                                           (_%$%E169216169239%_)))))
                                                 (if (pair? _%$%hd169212169235%_)
                                                     (let ((_%$%tl169231169338%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%hd169212169235%_)))
                                                           (_%$%hd169230169336%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%hd169212169235%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%$%hd169230169336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%$%tl169231169338%_)
                       (let ((_%$%tl169233169343%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%tl169231169338%_)))
                             (_%$%hd169232169341%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%tl169231169338%_))))
                         (if (null? _%$%tl169233169343%_)
                             (let ((_%expr169346%_ _%$%hd169232169341%_))
                               (_%$%K169229169333%_ _%expr169346%_))
                             (if (pair? _%$%tl169233169343%_)
                                 (let ((_%$%tl169223169297%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl169233169343%_)))
                                       (_%$%hd169222169295%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%tl169233169343%_))))
                                   (let ((_%tmp169286%_ _%$%hd169230169336%_)
                                         (_%expr169293%_ _%$%hd169232169341%_)
                                         (_%len169300%_ _%$%hd169222169295%_)
                                         (_%init169302%_ _%$%tl169223169297%_))
                                     (_%$%K169217169278%_
                                      _%init169302%_
                                      _%len169300%_
                                      _%expr169293%_
                                      _%tmp169286%_)))
                                 (_%__match170906170907%_
                                  _%$%hd169230169336%_
                                  _%$%tl169231169338%_
                                  _%$%hd169232169341%_
                                  _%$%tl169233169343%_))))
                       (_%__match170900170901%_
                        _%$%hd169230169336%_
                        _%$%tl169231169338%_))
                   (if (pair? _%$%tl169231169338%_)
                       (let ((_%$%tl169228169323%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%tl169231169338%_)))
                             (_%$%hd169227169321%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%tl169231169338%_))))
                         (if (null? _%$%tl169228169323%_)
                             (let ((_%id169319%_ _%$%hd169230169336%_)
                                   (_%expr169326%_ _%$%hd169227169321%_))
                               (_%$%K169224169311%_
                                _%expr169326%_
                                _%id169319%_))
                             (if (pair? _%$%tl169228169323%_)
                                 (let ((_%$%tl169223169297%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl169228169323%_)))
                                       (_%$%hd169222169295%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%tl169228169323%_))))
                                   (let ((_%tmp169286%_ _%$%hd169230169336%_)
                                         (_%expr169293%_ _%$%hd169227169321%_)
                                         (_%len169300%_ _%$%hd169222169295%_)
                                         (_%init169302%_ _%$%tl169223169297%_))
                                     (_%$%K169217169278%_
                                      _%init169302%_
                                      _%len169300%_
                                      _%expr169293%_
                                      _%tmp169286%_)))
                                 (_%__match170906170907%_
                                  _%$%hd169230169336%_
                                  _%$%tl169231169338%_
                                  _%$%hd169227169321%_
                                  _%$%tl169228169323%_))))
                       (_%__match170900170901%_
                        _%$%hd169230169336%_
                        _%$%tl169231169338%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E169216169239%_)))))))
                                        (__tmp171049 (list _%body169208%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp171050
                                     __tmp171049
                                     _%post169207%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp171048)))
                     _%stx169200%_))))
          (__compile-let-form
           _%stx169200%_
           _%compile-simple169202%_
           _%compile-values169203%_))))
    (define __compile-call%
      (lambda (_%stx169160%_)
        (let* ((_%$e169162%_ _%stx169160%_)
               (_%$%$E169164169173%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169162%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169162%_))
              (let* ((_%$%$tgt169165169176%_
                      (let () (declare (not safe)) (__AST-e _%$e169162%_)))
                     (_%$%$hd169166169179%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt169165169176%_)))
                     (_%$%$tl169167169182%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt169165169176%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl169167169182%_))
                    (let* ((_%$%$tgt169168169186%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl169167169182%_)))
                           (_%$%$hd169169169189%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt169168169186%_)))
                           (_%$%$tl169170169192%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt169168169186%_)))
                           (_%rator169196%_ _%$%$hd169169169189%_)
                           (_%rands169198%_ _%$%$tl169170169192%_))
                      (__SRC__%
                       (cons (__compile _%rator169196%_)
                             (map __compile _%rands169198%_))
                       _%stx169160%_))
                    (_%$%$E169164169173%_)))
              (_%$%$E169164169173%_)))))
    (define __compile-ref%
      (lambda (_%stx169122%_)
        (let* ((_%$e169124%_ _%stx169122%_)
               (_%$%$E169126169135%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169124%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169124%_))
              (let* ((_%$%$tgt169127169138%_
                      (let () (declare (not safe)) (__AST-e _%$e169124%_)))
                     (_%$%$hd169128169141%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt169127169138%_)))
                     (_%$%$tl169129169144%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt169127169138%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl169129169144%_))
                    (let* ((_%$%$tgt169130169148%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl169129169144%_)))
                           (_%$%$hd169131169151%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt169130169148%_)))
                           (_%$%$tl169132169154%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt169130169148%_)))
                           (_%id169158%_ _%$%$hd169131169151%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl169132169154%_))
                                  '())
                          (__SRC__% _%id169158%_ _%stx169122%_)
                          (_%$%$E169126169135%_)))
                    (_%$%$E169126169135%_)))
              (_%$%$E169126169135%_)))))
    (define __compile-setq%
      (lambda (_%stx169069%_)
        (let* ((_%$e169071%_ _%stx169069%_)
               (_%$%$E169073169085%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169071%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169071%_))
              (let* ((_%$%$tgt169074169088%_
                      (let () (declare (not safe)) (__AST-e _%$e169071%_)))
                     (_%$%$hd169075169091%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt169074169088%_)))
                     (_%$%$tl169076169094%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt169074169088%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl169076169094%_))
                    (let* ((_%$%$tgt169077169098%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl169076169094%_)))
                           (_%$%$hd169078169101%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt169077169098%_)))
                           (_%$%$tl169079169104%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt169077169098%_)))
                           (_%id169108%_ _%$%$hd169078169101%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl169079169104%_))
                          (let* ((_%$%$tgt169080169110%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl169079169104%_)))
                                 (_%$%$hd169081169113%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt169080169110%_)))
                                 (_%$%$tl169082169116%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt169080169110%_)))
                                 (_%expr169120%_ _%$%$hd169081169113%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl169082169116%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id169108%_
                                              _%stx169069%_)
                                             (cons (__compile _%expr169120%_)
                                                   '())))
                                 _%stx169069%_)
                                (_%$%$E169073169085%_)))
                          (_%$%$E169073169085%_)))
                    (_%$%$E169073169085%_)))
              (_%$%$E169073169085%_)))))
    (define __compile-if%
      (lambda (_%stx169001%_)
        (let* ((_%$e169003%_ _%stx169001%_)
               (_%$%$E169005169020%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e169003%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e169003%_))
              (let* ((_%$%$tgt169006169023%_
                      (let () (declare (not safe)) (__AST-e _%$e169003%_)))
                     (_%$%$hd169007169026%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt169006169023%_)))
                     (_%$%$tl169008169029%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt169006169023%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl169008169029%_))
                    (let* ((_%$%$tgt169009169033%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl169008169029%_)))
                           (_%$%$hd169010169036%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt169009169033%_)))
                           (_%$%$tl169011169039%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt169009169033%_)))
                           (_%p169043%_ _%$%$hd169010169036%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl169011169039%_))
                          (let* ((_%$%$tgt169012169045%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl169011169039%_)))
                                 (_%$%$hd169013169048%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt169012169045%_)))
                                 (_%$%$tl169014169051%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt169012169045%_)))
                                 (_%t169055%_ _%$%$hd169013169048%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl169014169051%_))
                                (let* ((_%$%$tgt169015169057%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl169014169051%_)))
                                       (_%$%$hd169016169060%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt169015169057%_)))
                                       (_%$%$tl169017169063%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt169015169057%_)))
                                       (_%f169067%_ _%$%$hd169016169060%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl169017169063%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p169043%_)
                                                   (cons (__compile
                                                          _%t169055%_)
                                                         (cons (__compile
                                                                _%f169067%_)
                                                               '()))))
                                       _%stx169001%_)
                                      (_%$%$E169005169020%_)))
                                (_%$%$E169005169020%_)))
                          (_%$%$E169005169020%_)))
                    (_%$%$E169005169020%_)))
              (_%$%$E169005169020%_)))))
    (define __compile-quote%
      (lambda (_%stx168963%_)
        (let* ((_%$e168965%_ _%stx168963%_)
               (_%$%$E168967168976%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168965%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168965%_))
              (let* ((_%$%$tgt168968168979%_
                      (let () (declare (not safe)) (__AST-e _%$e168965%_)))
                     (_%$%$hd168969168982%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt168968168979%_)))
                     (_%$%$tl168970168985%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt168968168979%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl168970168985%_))
                    (let* ((_%$%$tgt168971168989%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl168970168985%_)))
                           (_%$%$hd168972168992%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt168971168989%_)))
                           (_%$%$tl168973168995%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt168971168989%_)))
                           (_%e168999%_ _%$%$hd168972168992%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl168973168995%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e168999%_))
                                       '()))
                           _%stx168963%_)
                          (_%$%$E168967168976%_)))
                    (_%$%$E168967168976%_)))
              (_%$%$E168967168976%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx168925%_)
        (let* ((_%$e168927%_ _%stx168925%_)
               (_%$%$E168929168938%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168927%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168927%_))
              (let* ((_%$%$tgt168930168941%_
                      (let () (declare (not safe)) (__AST-e _%$e168927%_)))
                     (_%$%$hd168931168944%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt168930168941%_)))
                     (_%$%$tl168932168947%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt168930168941%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl168932168947%_))
                    (let* ((_%$%$tgt168933168951%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl168932168947%_)))
                           (_%$%$hd168934168954%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt168933168951%_)))
                           (_%$%$tl168935168957%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt168933168951%_)))
                           (_%e168961%_ _%$%$hd168934168954%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl168935168957%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e168961%_ '()))
                           _%stx168925%_)
                          (_%$%$E168929168938%_)))
                    (_%$%$E168929168938%_)))
              (_%$%$E168929168938%_)))))
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
