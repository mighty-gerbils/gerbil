(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1771101399)
  (begin
    (define __syntax::t
      (let ((__tmp169204 (list)) (__tmp169203 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp169204
         '(e id)
         __tmp169203
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args169008%_
        (apply make-instance __syntax::t _%$args169008%_)))
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
      (let ((__tmp169206 (list __syntax::t))
            (__tmp169205 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp169206
         '()
         __tmp169205
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args169005%_
        (apply make-instance __core-form::t _%$args169005%_)))
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
      (let ((__tmp169208 (list __core-form::t))
            (__tmp169207 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp169208
         '()
         __tmp169207
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args169002%_
        (apply make-instance __core-expression::t _%$args169002%_)))
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
      (let ((__tmp169210 (list __core-form::t))
            (__tmp169209 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp169210
         '()
         __tmp169209
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args168999%_
        (apply make-instance __core-special-form::t _%$args168999%_)))
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
      (lambda (_%id168973%_)
        (let* ((_%h168975%_ __core)
               (_%key168978%_
                (let () (declare (not safe)) (__AST-e _%id168973%_)))
               (_%h168985%_
                (let ((_%$obj168982%_ _%h168975%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168982%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168982%_)))
                           '#t)
                      _%$obj168982%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168982%_)))))
               (_%h168987%_ _%h168985%_))
          (declare (not safe))
          (__hash-get _%h168987%_ _%key168978%_))))
    (define __core-bound-id?__%
      (lambda (_%id168956%_ _%is?168957%_)
        (let ((_%$e168959%_ (__core-resolve _%id168956%_)))
          (if _%$e168959%_ (_%is?168957%_ _%$e168959%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id168966%_)
        (let ((_%is?168968%_ true))
          (__core-bound-id?__% _%id168966%_ _%is?168968%_))))
    (define __core-bound-id?
      (lambda _g169211_
        (let ((_g169212_ (let () (declare (not safe)) (##length _g169211_))))
          (cond ((let () (declare (not safe)) (##fx= _g169212_ 1))
                 (apply __core-bound-id?__0 _g169211_))
                ((let () (declare (not safe)) (##fx= _g169212_ 2))
                 (apply __core-bound-id?__% _g169211_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g169211_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id168911%_ _%e168912%_ _%make168913%_)
        (let* ((_%h168915%_ __core)
               (_%key168918%_ _%id168911%_)
               (_%value168921%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%e168912%_
                       'gerbil/runtime/eval#__syntax::t))
                    _%e168912%_
                    (_%make168913%_ _%e168912%_ _%id168911%_)))
               (_%h168928%_
                (let ((_%$obj168925%_ _%h168915%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168925%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168925%_)))
                           '#t)
                      _%$obj168925%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168925%_)))))
               (_%h168930%_ _%h168928%_))
          (declare (not safe))
          (__hash-put! _%h168930%_ _%key168918%_ _%value168921%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id168946%_ _%e168947%_)
        (let ((_%make168949%_ make-__syntax))
          (__core-bind-syntax!__% _%id168946%_ _%e168947%_ _%make168949%_))))
    (define __core-bind-syntax!
      (lambda _g169213_
        (let ((_g169214_ (let () (declare (not safe)) (##length _g169213_))))
          (cond ((let () (declare (not safe)) (##fx= _g169214_ 2))
                 (apply __core-bind-syntax!__0 _g169213_))
                ((let () (declare (not safe)) (##fx= _g169214_ 3))
                 (apply __core-bind-syntax!__% _g169213_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g169213_))))))
    (define __SRC__%
      (lambda (_%e168891%_ _%src-stx168892%_)
        (if (or (pair? _%e168891%_) (symbol? _%e168891%_))
            (let ((__tmp169215
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx168892%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx168892%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e168891%_ __tmp169215))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e168891%_ 'gerbil#AST::t))
                (let ((__tmp169217
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e168891%_ '1 '#f '#f)))
                      (__tmp169216
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e168891%_)))))
                  (declare (not safe))
                  (##make-source __tmp169217 __tmp169216))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e168891%_))))))
    (define __SRC__0
      (lambda (_%e168903%_)
        (let ((_%src-stx168905%_ '#f))
          (__SRC__% _%e168903%_ _%src-stx168905%_))))
    (define __SRC
      (lambda _g169218_
        (let ((_g169219_ (let () (declare (not safe)) (##length _g169218_))))
          (cond ((let () (declare (not safe)) (##fx= _g169219_ 1))
                 (apply __SRC__0 _g169218_))
                ((let () (declare (not safe)) (##fx= _g169219_ 2))
                 (apply __SRC__% _g169218_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g169218_))))))
    (define __locat
      (lambda (_%loc168888%_)
        (if (let () (declare (not safe)) (##locat? _%loc168888%_))
            _%loc168888%_
            '#f)))
    (define __check-values
      (lambda (_%obj168883%_ _%k168884%_)
        (let ((_%count168886%_
               (if (let () (declare (not safe)) (##values? _%obj168883%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj168883%_))
                   '1)))
          (if (fx= _%count168886%_ _%k168884%_)
              '#!void
              (let ((__tmp169221
                     (if (fx< _%count168886%_ _%k168884%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp169220
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj168883%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj168883%_))
                         _%obj168883%_)))
                (declare (not safe))
                (error __tmp169221 __tmp169220 _%k168884%_))))))
    (define __compile
      (lambda (_%stx168852%_)
        (let* ((_%$e168854%_ _%stx168852%_)
               (_%$E168856168862%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168854%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168854%_))
              (let* ((_%$tgt168857168865%_
                      (let () (declare (not safe)) (__AST-e _%$e168854%_)))
                     (_%$hd168858168868%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168857168865%_)))
                     (_%$tl168859168871%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168857168865%_)))
                     (_%form168875%_ _%$hd168858168868%_)
                     (_%$e168877%_ (__core-resolve _%form168875%_)))
                (if _%$e168877%_
                    ((lambda (_%bind168880%_)
                       ((##structure-ref _%bind168880%_ '1 __syntax::t '#f)
                        _%stx168852%_))
                     _%$e168877%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx168852%_
                       _%form168875%_))))
              (_%$E168856168862%_)))))
    (define __compile-error__%
      (lambda (_%stx168839%_ _%detail168840%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx168839%_
           _%detail168840%_))))
    (define __compile-error__0
      (lambda (_%stx168845%_)
        (let ((_%detail168847%_ '#f))
          (__compile-error__% _%stx168845%_ _%detail168847%_))))
    (define __compile-error
      (lambda _g169222_
        (let ((_g169223_ (let () (declare (not safe)) (##length _g169222_))))
          (cond ((let () (declare (not safe)) (##fx= _g169223_ 1))
                 (apply __compile-error__0 _g169222_))
                ((let () (declare (not safe)) (##fx= _g169223_ 2))
                 (apply __compile-error__% _g169222_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g169222_))))))
    (define __compile-ignore%
      (lambda (_%stx168836%_) (__SRC__% ''#!void _%stx168836%_)))
    (define __compile-begin%
      (lambda (_%stx168811%_)
        (let* ((_%$e168813%_ _%stx168811%_)
               (_%$E168815168821%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168813%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168813%_))
              (let* ((_%$tgt168816168824%_
                      (let () (declare (not safe)) (__AST-e _%$e168813%_)))
                     (_%$hd168817168827%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168816168824%_)))
                     (_%$tl168818168830%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168816168824%_)))
                     (_%body168834%_ _%$tl168818168830%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body168834%_))
                 _%stx168811%_))
              (_%$E168815168821%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx168786%_)
        (let* ((_%$e168788%_ _%stx168786%_)
               (_%$E168790168796%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168788%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168788%_))
              (let* ((_%$tgt168791168799%_
                      (let () (declare (not safe)) (__AST-e _%$e168788%_)))
                     (_%$hd168792168802%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168791168799%_)))
                     (_%$tl168793168805%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168791168799%_)))
                     (_%body168809%_ _%$tl168793168805%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body168809%_)))
                 _%stx168786%_))
              (_%$E168790168796%_)))))
    (define __compile-import%
      (lambda (_%stx168761%_)
        (let* ((_%$e168763%_ _%stx168761%_)
               (_%$E168765168771%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168763%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168763%_))
              (let* ((_%$tgt168766168774%_
                      (let () (declare (not safe)) (__AST-e _%$e168763%_)))
                     (_%$hd168767168777%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168766168774%_)))
                     (_%$tl168768168780%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168766168774%_)))
                     (_%body168784%_ _%$tl168768168780%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body168784%_ '())) '()))
                 _%stx168761%_))
              (_%$E168765168771%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx168708%_)
        (let* ((_%$e168710%_ _%stx168708%_)
               (_%$E168712168724%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168710%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168710%_))
              (let* ((_%$tgt168713168727%_
                      (let () (declare (not safe)) (__AST-e _%$e168710%_)))
                     (_%$hd168714168730%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168713168727%_)))
                     (_%$tl168715168733%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168713168727%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168715168733%_))
                    (let* ((_%$tgt168716168737%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168715168733%_)))
                           (_%$hd168717168740%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168716168737%_)))
                           (_%$tl168718168743%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168716168737%_)))
                           (_%ann168747%_ _%$hd168717168740%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168718168743%_))
                          (let* ((_%$tgt168719168749%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168718168743%_)))
                                 (_%$hd168720168752%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168719168749%_)))
                                 (_%$tl168721168755%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168719168749%_)))
                                 (_%expr168759%_ _%$hd168720168752%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168721168755%_))
                                        '())
                                (__compile _%expr168759%_)
                                (_%$E168712168724%_)))
                          (_%$E168712168724%_)))
                    (_%$E168712168724%_)))
              (_%$E168712168724%_)))))
    (define __compile-define-values%
      (lambda (_%stx168599%_)
        (let* ((_%$e168601%_ _%stx168599%_)
               (_%$E168603168615%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168601%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168601%_))
              (let* ((_%$tgt168604168618%_
                      (let () (declare (not safe)) (__AST-e _%$e168601%_)))
                     (_%$hd168605168621%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168604168618%_)))
                     (_%$tl168606168624%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168604168618%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168606168624%_))
                    (let* ((_%$tgt168607168628%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168606168624%_)))
                           (_%$hd168608168631%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168607168628%_)))
                           (_%$tl168609168634%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168607168628%_)))
                           (_%hd168638%_ _%$hd168608168631%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168609168634%_))
                          (let* ((_%$tgt168610168640%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168609168634%_)))
                                 (_%$hd168611168643%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168610168640%_)))
                                 (_%$tl168612168646%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168610168640%_)))
                                 (_%expr168650%_ _%$hd168611168643%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168612168646%_))
                                        '())
                                (let* ((_%$e168652%_ _%hd168638%_)
                                       (_%$E168654168695%_
                                        (lambda ()
                                          (let ((_%$E168655168680%_
                                                 (lambda ()
                                                   (let* ((_%$E168656168667%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e168652%_))))
                  (_%ids168670%_ _%hd168638%_)
                  (_%len168672%_ (length _%ids168670%_))
                  (_%tmp168674%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp168674%_
                                       (cons (__compile _%expr168650%_) '())))
                           _%stx168599%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp168674%_
                                             (cons _%len168672%_ '())))
                                 _%stx168599%_)
                                (let ((__tmp169224
                                       (let ((__tmp169226
                                              (lambda (_%id168677%_
                                                       _%k168678%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id168677%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id168677%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp168674%_
                                           (cons _%k168678%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx168599%_)
                                                    '#f)))
                                             (__tmp169225
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len168672%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp169226
                                          _%ids168670%_
                                          __tmp169225))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp169224)))))
              _%stx168599%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e168652%_))
                                                (let* ((_%$tgt168657168683%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e168652%_)))
                                                       (_%$hd168658168686%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt168657168683%_)))
                                                       (_%$tl168659168689%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt168657168683%_)))
                                                       (_%id168693%_
                                                        _%$hd168658168686%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl168659168689%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id168693%_)
                           (cons (__compile _%expr168650%_) '())))
               _%stx168599%_)
              (_%$E168655168680%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E168655168680%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e168652%_))
                                      (let* ((_%$tgt168660168698%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e168652%_)))
                                             (_%$hd168661168701%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt168660168698%_)))
                                             (_%$tl168662168704%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt168660168698%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd168661168701%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl168662168704%_))
                                                        '())
                                                (__compile _%expr168650%_)
                                                (_%$E168654168695%_))
                                            (_%$E168654168695%_)))
                                      (_%$E168654168695%_)))
                                (_%$E168603168615%_)))
                          (_%$E168603168615%_)))
                    (_%$E168603168615%_)))
              (_%$E168603168615%_)))))
    (define __compile-head-id
      (lambda (_%e168597%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e168597%_))
             _%e168597%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd168554%_)
        (let _%recur168556%_ ((_%rest168558%_ _%hd168554%_))
          (let* ((_%$e168560%_ _%rest168558%_)
                 (_%$E168562168580%_
                  (lambda ()
                    (let ((_%$E168563168577%_
                           (lambda ()
                             (let* ((_%$E168564168572%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e168560%_))))
                                    (_%tail168575%_ _%$e168560%_))
                               (__compile-head-id _%tail168575%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168560%_))
                                  '())
                          '()
                          (_%$E168563168577%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e168560%_))
                (let* ((_%$tgt168565168583%_
                        (let () (declare (not safe)) (__AST-e _%$e168560%_)))
                       (_%$hd168566168586%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt168565168583%_)))
                       (_%$tl168567168589%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt168565168583%_)))
                       (_%hd168593%_ _%$hd168566168586%_)
                       (_%rest168595%_ _%$tl168567168589%_))
                  (cons (__compile-head-id _%hd168593%_)
                        (_%recur168556%_ _%rest168595%_)))
                (_%$E168562168580%_))))))
    (define __compile-lambda%
      (lambda (_%stx168501%_)
        (let* ((_%$e168503%_ _%stx168501%_)
               (_%$E168505168517%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168503%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168503%_))
              (let* ((_%$tgt168506168520%_
                      (let () (declare (not safe)) (__AST-e _%$e168503%_)))
                     (_%$hd168507168523%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168506168520%_)))
                     (_%$tl168508168526%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168506168520%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168508168526%_))
                    (let* ((_%$tgt168509168530%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168508168526%_)))
                           (_%$hd168510168533%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168509168530%_)))
                           (_%$tl168511168536%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168509168530%_)))
                           (_%hd168540%_ _%$hd168510168533%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168511168536%_))
                          (let* ((_%$tgt168512168542%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168511168536%_)))
                                 (_%$hd168513168545%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168512168542%_)))
                                 (_%$tl168514168548%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168512168542%_)))
                                 (_%body168552%_ _%$hd168513168545%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168514168548%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd168540%_)
                                             (cons (__compile _%body168552%_)
                                                   '())))
                                 _%stx168501%_)
                                (_%$E168505168517%_)))
                          (_%$E168505168517%_)))
                    (_%$E168505168517%_)))
              (_%$E168505168517%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx168266%_)
        (letrec ((_%variadic?168268%_
                  (lambda (_%hd168466%_)
                    (let* ((_%$e168468%_ _%hd168466%_)
                           (_%$E168470168486%_
                            (lambda ()
                              (let ((_%$E168471168483%_
                                     (lambda ()
                                       (let ((_%$E168472168480%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e168468%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e168468%_))
                                            '())
                                    '#f
                                    (_%$E168471168483%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168468%_))
                          (let* ((_%$tgt168473168489%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168468%_)))
                                 (_%$hd168474168492%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168473168489%_)))
                                 (_%$tl168475168495%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168473168489%_)))
                                 (_%rest168499%_ _%$tl168475168495%_))
                            (_%variadic?168268%_ _%rest168499%_))
                          (_%$E168470168486%_)))))
                 (_%arity168269%_
                  (lambda (_%hd168404%_)
                    (let _%lp168406%_ ((_%rest168408%_ _%hd168404%_)
                                       (_%k168409%_ '0))
                      (let* ((_%$e168411%_ _%rest168408%_)
                             (_%$E168413168424%_
                              (lambda ()
                                (let ((_%$E168414168421%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e168411%_)))))
                                  _%k168409%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e168411%_))
                            (let* ((_%$tgt168415168427%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e168411%_)))
                                   (_%$hd168416168430%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt168415168427%_)))
                                   (_%$tl168417168433%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt168415168427%_)))
                                   (_%rest168437%_ _%$tl168417168433%_))
                              (_%lp168406%_
                               _%rest168437%_
                               (let ((_%x168439%_ _%k168409%_))
                                 (if (fixnum? _%x168439%_)
                                     (let ((_%x168444%_ _%x168439%_))
                                       (declare (not safe))
                                       (__fx1+ _%x168444%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x168439%_)
                                       '#!void)))))
                            (_%$E168413168424%_))))))
                 (_%generate168270%_
                  (lambda (_%rest168331%_ _%args168332%_ _%len168333%_)
                    (let* ((_%$e168335%_ _%rest168331%_)
                           (_%$E168337168348%_
                            (lambda ()
                              (let ((_%$E168338168345%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e168335%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args168332%_ '())))
                                 _%stx168266%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168335%_))
                          (let* ((_%$tgt168339168351%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168335%_)))
                                 (_%$hd168340168354%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168339168351%_)))
                                 (_%$tl168341168357%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168339168351%_)))
                                 (_%clause168361%_ _%$hd168340168354%_)
                                 (_%rest168363%_ _%$tl168341168357%_)
                                 (_%$e168365%_ _%clause168361%_)
                                 (_%$E168367168376%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e168365%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e168365%_))
                                (let* ((_%$tgt168368168379%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e168365%_)))
                                       (_%$hd168369168382%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt168368168379%_)))
                                       (_%$tl168370168385%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt168368168379%_)))
                                       (_%hd168389%_ _%$hd168369168382%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl168370168385%_))
                                      (let* ((_%$tgt168371168391%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl168370168385%_)))
                                             (_%$hd168372168394%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt168371168391%_)))
                                             (_%$tl168373168397%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt168371168391%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl168373168397%_))
                                                    '())
                                            (let ((_%clen168401%_
                                                   (_%arity168269%_
                                                    _%hd168389%_))
                                                  (_%cmp168402%_
                                                   (if (_%variadic?168268%_
                                                        _%hd168389%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp168402%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len168333%_ (cons _%clen168401%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause168361%_))
                                      (cons _%args168332%_ '())))
                          _%stx168266%_)
                         (cons (_%generate168270%_
                                _%rest168363%_
                                _%args168332%_
                                _%len168333%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx168266%_))
                                            (_%$E168367168376%_)))
                                      (_%$E168367168376%_)))
                                (_%$E168367168376%_)))
                          (_%$E168337168348%_))))))
          (let* ((_%$e168272%_ _%stx168266%_)
                 (_%$E168274168306%_
                  (lambda ()
                    (let ((_%$E168275168288%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168272%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168272%_))
                          (let* ((_%$tgt168276168291%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168272%_)))
                                 (_%$hd168277168294%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168276168291%_)))
                                 (_%$tl168278168297%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168276168291%_)))
                                 (_%clauses168301%_ _%$tl168278168297%_))
                            (let ((_%args168303%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx168266%_))
                                  (_%len168304%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx168266%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args168303%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len168304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args168303%_ '()))
                                         _%stx168266%_)
                                        '()))
                            '())
                      (cons (_%generate168270%_
                             _%clauses168301%_
                             _%args168303%_
                             _%len168304%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx168266%_)
                                                 '())))
                               _%stx168266%_)))
                          (_%$E168275168288%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e168272%_))
                (let* ((_%$tgt168279168309%_
                        (let () (declare (not safe)) (__AST-e _%$e168272%_)))
                       (_%$hd168280168312%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt168279168309%_)))
                       (_%$tl168281168315%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt168279168309%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl168281168315%_))
                      (let* ((_%$tgt168282168319%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl168281168315%_)))
                             (_%$hd168283168322%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt168282168319%_)))
                             (_%$tl168284168325%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt168282168319%_)))
                             (_%clause168329%_ _%$hd168283168322%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl168284168325%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause168329%_))
                            (_%$E168274168306%_)))
                      (_%$E168274168306%_)))
                (_%$E168274168306%_))))))
    (define __compile-let-form
      (lambda (_%stx168035%_ _%compile-simple168036%_ _%compile-values168037%_)
        (letrec ((_%simple-bind?168039%_
                  (lambda (_%hd168224%_)
                    (let* ((_%hd168225168235%_ _%hd168224%_)
                           (_%else168228168243%_ (lambda () '#f)))
                      (let ((_%K168231168256%_ (lambda (_%id168254%_) '#t))
                            (_%K168230168248%_ (lambda () '#t)))
                        (let ((_%try-match168227168251%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd168225168235%_ '#f))
                                     (_%K168230168248%_)
                                     (_%else168228168243%_)))))
                          (if (pair? _%hd168225168235%_)
                              (let ((_%tl168233168261%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd168225168235%_)))
                                    (_%hd168232168259%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd168225168235%_))))
                                (if (null? _%tl168233168261%_)
                                    (let ((_%id168264%_ _%hd168232168259%_))
                                      (_%K168231168256%_ _%id168264%_))
                                    (_%try-match168227168251%_)))
                              (_%try-match168227168251%_)))))))
                 (_%car-e168040%_
                  (lambda (_%hd168222%_)
                    (if (pair? _%hd168222%_)
                        (let () (declare (not safe)) (##car _%hd168222%_))
                        _%hd168222%_))))
          (let* ((_%$e168042%_ _%stx168035%_)
                 (_%$E168044168187%_
                  (lambda ()
                    (let ((_%$E168045168067%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168042%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168042%_))
                          (let* ((_%$tgt168046168070%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168042%_)))
                                 (_%$hd168047168073%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168046168070%_)))
                                 (_%$tl168048168076%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168046168070%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl168048168076%_))
                                (let* ((_%$tgt168049168080%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168048168076%_)))
                                       (_%$hd168050168083%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt168049168080%_)))
                                       (_%$tl168051168086%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt168049168080%_)))
                                       (_%hd168090%_ _%$hd168050168083%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl168051168086%_))
                                      (let* ((_%$tgt168052168092%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl168051168086%_)))
                                             (_%$hd168053168095%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt168052168092%_)))
                                             (_%$tl168054168098%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt168052168092%_)))
                                             (_%body168102%_
                                              _%$hd168053168095%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl168054168098%_))
                                                    '())
                                            (let* ((_%hd-ids168142%_
                                                    (map (lambda (_%bind168104%_)
                                                           (let* ((_%$e168106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind168104%_)
                          (_%$E168108168117%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168106%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e168106%_))
                         (let* ((_%$tgt168109168120%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e168106%_)))
                                (_%$hd168110168123%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt168109168120%_)))
                                (_%$tl168111168126%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt168109168120%_)))
                                (_%ids168130%_ _%$hd168110168123%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl168111168126%_))
                               (let* ((_%$tgt168112168132%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl168111168126%_)))
                                      (_%$hd168113168135%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt168112168132%_)))
                                      (_%$tl168114168138%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt168112168132%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl168114168138%_))
                                             '())
                                     _%ids168130%_
                                     (_%$E168108168117%_)))
                               (_%$E168108168117%_)))
                         (_%$E168108168117%_))))
                 _%hd168090%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs168182%_
                                                    (map (lambda (_%bind168144%_)
                                                           (let* ((_%$e168146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind168144%_)
                          (_%$E168148168157%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168146%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e168146%_))
                         (let* ((_%$tgt168149168160%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e168146%_)))
                                (_%$hd168150168163%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt168149168160%_)))
                                (_%$tl168151168166%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt168149168160%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl168151168166%_))
                               (let* ((_%$tgt168152168170%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl168151168166%_)))
                                      (_%$hd168153168173%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt168152168170%_)))
                                      (_%$tl168154168176%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt168152168170%_)))
                                      (_%expr168180%_ _%$hd168153168173%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl168154168176%_))
                                             '())
                                     (__compile _%expr168180%_)
                                     (_%$E168148168157%_)))
                               (_%$E168148168157%_)))
                         (_%$E168148168157%_))))
                 _%hd168090%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body168184%_
                                                    (__compile
                                                     _%body168102%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?168039%_
                                                     _%hd-ids168142%_))
                                                  (_%compile-simple168036%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e168040%_
                                                            _%hd-ids168142%_))
                                                   _%exprs168182%_
                                                   _%body168184%_)
                                                  (_%compile-values168037%_
                                                   _%hd-ids168142%_
                                                   _%exprs168182%_
                                                   _%body168184%_)))
                                            (_%$E168045168067%_)))
                                      (_%$E168045168067%_)))
                                (_%$E168045168067%_)))
                          (_%$E168045168067%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e168042%_))
                (let* ((_%$tgt168055168190%_
                        (let () (declare (not safe)) (__AST-e _%$e168042%_)))
                       (_%$hd168056168193%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt168055168190%_)))
                       (_%$tl168057168196%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt168055168190%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl168057168196%_))
                      (let* ((_%$tgt168058168200%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl168057168196%_)))
                             (_%$hd168059168203%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt168058168200%_)))
                             (_%$tl168060168206%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt168058168200%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd168059168203%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl168060168206%_))
                                (let* ((_%$tgt168061168210%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168060168206%_)))
                                       (_%$hd168062168213%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt168061168210%_)))
                                       (_%$tl168063168216%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt168061168210%_)))
                                       (_%body168220%_ _%$hd168062168213%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl168063168216%_))
                                              '())
                                      (__compile _%body168220%_)
                                      (_%$E168044168187%_)))
                                (_%$E168044168187%_))
                            (_%$E168044168187%_)))
                      (_%$E168044168187%_)))
                (_%$E168044168187%_))))))
    (define __compile-let-values%
      (lambda (_%stx167847%_)
        (letrec ((_%compile-simple167849%_
                  (lambda (_%hd-ids168031%_ _%exprs168032%_ _%body168033%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp169227
                                        (map __compile-head-id
                                             _%hd-ids168031%_)))
                                   (declare (not safe))
                                   (##map list __tmp169227 _%exprs168032%_))
                                 (cons _%body168033%_ '())))
                     _%stx167847%_)))
                 (_%compile-values167850%_
                  (lambda (_%hd-ids167946%_ _%exprs167947%_ _%body167948%_)
                    (let _%lp167950%_ ((_%rest167952%_ _%hd-ids167946%_)
                                       (_%exprs167953%_ _%exprs167947%_)
                                       (_%bind167954%_ '())
                                       (_%post167955%_ '()))
                      (let* ((_%rest167956167970%_ _%rest167952%_)
                             (_%else167959167978%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind167954%_)
                                             (cons (_%compile-post167851%_
                                                    _%post167955%_
                                                    _%body167948%_)
                                                   '())))
                                 _%stx167847%_))))
                        (let ((_%K167964168014%_
                               (lambda (_%rest168011%_ _%id168012%_)
                                 (_%lp167950%_
                                  _%rest168011%_
                                  (cdr _%exprs167953%_)
                                  (cons (cons (__compile-head-id _%id168012%_)
                                              (cons (car _%exprs167953%_) '()))
                                        _%bind167954%_)
                                  _%post167955%_)))
                              (_%K167961167996%_
                               (lambda (_%rest167982%_ _%hd167983%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd167983%_))
                                     (_%lp167950%_
                                      _%rest167982%_
                                      (cdr _%exprs167953%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd167983%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs167953%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind167954%_)
                                      _%post167955%_)
                                     (if (list? _%hd167983%_)
                                         (let* ((_%len167987%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd167983%_)))
                                                (_%tmp167989%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp167950%_
                                            _%rest167982%_
                                            (cdr _%exprs167953%_)
                                            (cons (cons _%tmp167989%_
                                                        (cons (car _%exprs167953%_)
                                                              '()))
                                                  _%bind167954%_)
                                            (cons (cons _%tmp167989%_
                                                        (cons _%len167987%_
                                                              (let ((__tmp169229
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id167992%_ _%k167993%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id167992%_))
                                   (cons (__SRC__0 _%id167992%_) _%k167993%_)
                                   '#f)))
                            (__tmp169228
                             (let ()
                               (declare (not safe))
                               (##iota _%len167987%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp169229 _%hd167983%_ __tmp169228))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post167955%_)))
                                         (__compile-error__%
                                          _%stx167847%_
                                          _%hd167983%_))))))
                          (if (pair? _%rest167956167970%_)
                              (let ((_%tl167966168019%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest167956167970%_)))
                                    (_%hd167965168017%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest167956167970%_))))
                                (if (pair? _%hd167965168017%_)
                                    (let ((_%tl167968168024%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd167965168017%_)))
                                          (_%hd167967168022%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd167965168017%_))))
                                      (if (null? _%tl167968168024%_)
                                          (let ((_%id168027%_
                                                 _%hd167967168022%_)
                                                (_%rest168029%_
                                                 _%tl167966168019%_))
                                            (_%K167964168014%_
                                             _%rest168029%_
                                             _%id168027%_))
                                          (let ((_%hd168004%_
                                                 _%hd167965168017%_)
                                                (_%rest168006%_
                                                 _%tl167966168019%_))
                                            (_%K167961167996%_
                                             _%rest168006%_
                                             _%hd168004%_))))
                                    (let ((_%hd168004%_ _%hd167965168017%_)
                                          (_%rest168006%_ _%tl167966168019%_))
                                      (_%K167961167996%_
                                       _%rest168006%_
                                       _%hd168004%_))))
                              (_%else167959167978%_)))))))
                 (_%compile-post167851%_
                  (lambda (_%post167853%_ _%body167854%_)
                    (let _%lp167856%_ ((_%rest167858%_ _%post167853%_)
                                       (_%check167859%_ '())
                                       (_%bind167860%_ '()))
                      (let* ((_%rest167861167873%_ _%rest167858%_)
                             (_%else167863167881%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp169230
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind167860%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body167854%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx167847%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp169230
                                          _%check167859%_)))
                                 _%stx167847%_)))
                             (_%K167865167920%_
                              (lambda (_%rest167884%_
                                       _%init167885%_
                                       _%len167886%_
                                       _%tmp167887%_)
                                (_%lp167856%_
                                 _%rest167884%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp167887%_
                                                    (cons _%len167886%_ '())))
                                        _%stx167847%_)
                                       _%check167859%_)
                                 (let ((__tmp169231
                                        (lambda (_%hd167889%_ _%r167890%_)
                                          (let* ((_%hd167891167898%_
                                                  _%hd167889%_)
                                                 (_%E167893167902%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd167891167898%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K167894167908%_
                                                  (lambda (_%k167905%_
                                                           _%id167906%_)
                                                    (cons (cons _%id167906%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp167887%_
                                          (cons _%k167905%_ '())))
                              '()))
                  _%r167890%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd167891167898%_)
                                                (let ((_%hd167895167911%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd167891167898%_)))
                                                      (_%tl167896167913%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd167891167898%_))))
                                                  (let* ((_%id167916%_
                                                          _%hd167895167911%_)
                                                         (_%k167918%_
                                                          _%tl167896167913%_))
                                                    (_%K167894167908%_
                                                     _%k167918%_
                                                     _%id167916%_)))
                                                (_%E167893167902%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp169231
                                    _%bind167860%_
                                    _%init167885%_))))))
                        (if (pair? _%rest167861167873%_)
                            (let ((_%hd167866167923%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167861167873%_)))
                                  (_%tl167867167925%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167861167873%_))))
                              (if (pair? _%hd167866167923%_)
                                  (let ((_%hd167868167928%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd167866167923%_)))
                                        (_%tl167869167930%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd167866167923%_))))
                                    (let ((_%tmp167933%_ _%hd167868167928%_))
                                      (if (pair? _%tl167869167930%_)
                                          (let ((_%hd167870167935%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl167869167930%_)))
                                                (_%tl167871167937%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl167869167930%_))))
                                            (let* ((_%len167940%_
                                                    _%hd167870167935%_)
                                                   (_%init167942%_
                                                    _%tl167871167937%_)
                                                   (_%rest167944%_
                                                    _%tl167867167925%_))
                                              (_%K167865167920%_
                                               _%rest167944%_
                                               _%init167942%_
                                               _%len167940%_
                                               _%tmp167933%_)))
                                          (_%else167863167881%_))))
                                  (_%else167863167881%_)))
                            (_%else167863167881%_)))))))
          (__compile-let-form
           _%stx167847%_
           _%compile-simple167849%_
           _%compile-values167850%_))))
    (define __compile-letrec-values%
      (lambda (_%stx167644%_)
        (letrec ((_%compile-simple167646%_
                  (lambda (_%hd-ids167843%_ _%exprs167844%_ _%body167845%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp169232
                                        (map __compile-head-id
                                             _%hd-ids167843%_)))
                                   (declare (not safe))
                                   (##map list __tmp169232 _%exprs167844%_))
                                 (cons _%body167845%_ '())))
                     _%stx167644%_)))
                 (_%compile-values167647%_
                  (lambda (_%hd-ids167754%_ _%exprs167755%_ _%body167756%_)
                    (let _%lp167758%_ ((_%rest167760%_ _%hd-ids167754%_)
                                       (_%exprs167761%_ _%exprs167755%_)
                                       (_%pre167762%_ '())
                                       (_%bind167763%_ '())
                                       (_%post167764%_ '()))
                      (let* ((_%rest167765167779%_ _%rest167760%_)
                             (_%else167768167787%_
                              (lambda ()
                                (_%compile-inner167648%_
                                 _%pre167762%_
                                 _%bind167763%_
                                 _%post167764%_
                                 _%body167756%_))))
                        (let ((_%K167773167826%_
                               (lambda (_%rest167823%_ _%id167824%_)
                                 (_%lp167758%_
                                  _%rest167823%_
                                  (cdr _%exprs167761%_)
                                  _%pre167762%_
                                  (cons (cons (__compile-head-id _%id167824%_)
                                              (cons (car _%exprs167761%_) '()))
                                        _%bind167763%_)
                                  _%post167764%_)))
                              (_%K167770167808%_
                               (lambda (_%rest167791%_ _%hd167792%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd167792%_))
                                     (_%lp167758%_
                                      _%rest167791%_
                                      (cdr _%exprs167761%_)
                                      _%pre167762%_
                                      (cons (cons (__compile-head-id
                                                   _%hd167792%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs167761%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind167763%_)
                                      _%post167764%_)
                                     (if (list? _%hd167792%_)
                                         (let* ((_%len167796%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd167792%_)))
                                                (_%tmp167798%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp167758%_
                                            _%rest167791%_
                                            (cdr _%exprs167761%_)
                                            (let ((__tmp169233
                                                   (lambda (_%id167801%_
                                                            _%r167802%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id167801%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id167801%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r167802%_)
                 _%r167802%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp169233
                                               _%pre167762%_
                                               _%hd167792%_))
                                            (cons (cons _%tmp167798%_
                                                        (cons (car _%exprs167761%_)
                                                              '()))
                                                  _%bind167763%_)
                                            (cons (cons _%tmp167798%_
                                                        (cons _%len167796%_
                                                              (let ((__tmp169235
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id167804%_ _%k167805%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id167804%_))
                                   (cons (__SRC__0 _%id167804%_) _%k167805%_)
                                   '#f)))
                            (__tmp169234
                             (let ()
                               (declare (not safe))
                               (##iota _%len167796%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp169235 _%hd167792%_ __tmp169234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post167764%_)))
                                         (__compile-error__%
                                          _%stx167644%_
                                          _%hd167792%_))))))
                          (if (pair? _%rest167765167779%_)
                              (let ((_%tl167775167831%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest167765167779%_)))
                                    (_%hd167774167829%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest167765167779%_))))
                                (if (pair? _%hd167774167829%_)
                                    (let ((_%tl167777167836%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd167774167829%_)))
                                          (_%hd167776167834%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd167774167829%_))))
                                      (if (null? _%tl167777167836%_)
                                          (let ((_%id167839%_
                                                 _%hd167776167834%_)
                                                (_%rest167841%_
                                                 _%tl167775167831%_))
                                            (_%K167773167826%_
                                             _%rest167841%_
                                             _%id167839%_))
                                          (let ((_%hd167816%_
                                                 _%hd167774167829%_)
                                                (_%rest167818%_
                                                 _%tl167775167831%_))
                                            (_%K167770167808%_
                                             _%rest167818%_
                                             _%hd167816%_))))
                                    (let ((_%hd167816%_ _%hd167774167829%_)
                                          (_%rest167818%_ _%tl167775167831%_))
                                      (_%K167770167808%_
                                       _%rest167818%_
                                       _%hd167816%_))))
                              (_%else167768167787%_)))))))
                 (_%compile-inner167648%_
                  (lambda (_%pre167749%_
                           _%bind167750%_
                           _%post167751%_
                           _%body167752%_)
                    (if (null? _%pre167749%_)
                        (_%compile-bind167649%_
                         _%bind167750%_
                         _%post167751%_
                         _%body167752%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre167749%_)
                                     (cons (_%compile-bind167649%_
                                            _%bind167750%_
                                            _%post167751%_
                                            _%body167752%_)
                                           '())))
                         _%stx167644%_))))
                 (_%compile-bind167649%_
                  (lambda (_%bind167745%_ _%post167746%_ _%body167747%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind167745%_)
                                 (cons (_%compile-post167650%_
                                        _%post167746%_
                                        _%body167747%_)
                                       '())))
                     _%stx167644%_)))
                 (_%compile-post167650%_
                  (lambda (_%post167652%_ _%body167653%_)
                    (let _%lp167655%_ ((_%rest167657%_ _%post167652%_)
                                       (_%check167658%_ '())
                                       (_%bind167659%_ '()))
                      (let* ((_%rest167660167672%_ _%rest167657%_)
                             (_%else167662167680%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp169236
                                              (let ((__tmp169237
                                                     (cons _%body167653%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp169237
                                                 _%bind167659%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp169236
                                          _%check167658%_)))
                                 _%stx167644%_)))
                             (_%K167664167719%_
                              (lambda (_%rest167683%_
                                       _%init167684%_
                                       _%len167685%_
                                       _%tmp167686%_)
                                (_%lp167655%_
                                 _%rest167683%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp167686%_
                                                    (cons _%len167685%_ '())))
                                        _%stx167644%_)
                                       _%check167658%_)
                                 (let ((__tmp169238
                                        (lambda (_%hd167688%_ _%r167689%_)
                                          (let* ((_%hd167690167697%_
                                                  _%hd167688%_)
                                                 (_%E167692167701%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd167690167697%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K167693167707%_
                                                  (lambda (_%k167704%_
                                                           _%id167705%_)
                                                    (cons (cons 'set!
                                                                (cons _%id167705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp167686%_
                                                (cons _%k167704%_ '())))
                                    '())))
                  _%r167689%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd167690167697%_)
                                                (let ((_%hd167694167710%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd167690167697%_)))
                                                      (_%tl167695167712%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd167690167697%_))))
                                                  (let* ((_%id167715%_
                                                          _%hd167694167710%_)
                                                         (_%k167717%_
                                                          _%tl167695167712%_))
                                                    (_%K167693167707%_
                                                     _%k167717%_
                                                     _%id167715%_)))
                                                (_%E167692167701%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp169238
                                    _%bind167659%_
                                    _%init167684%_))))))
                        (if (pair? _%rest167660167672%_)
                            (let ((_%hd167665167722%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167660167672%_)))
                                  (_%tl167666167724%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167660167672%_))))
                              (if (pair? _%hd167665167722%_)
                                  (let ((_%hd167667167727%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd167665167722%_)))
                                        (_%tl167668167729%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd167665167722%_))))
                                    (let ((_%tmp167732%_ _%hd167667167727%_))
                                      (if (pair? _%tl167668167729%_)
                                          (let ((_%hd167669167734%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl167668167729%_)))
                                                (_%tl167670167736%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl167668167729%_))))
                                            (let* ((_%len167739%_
                                                    _%hd167669167734%_)
                                                   (_%init167741%_
                                                    _%tl167670167736%_)
                                                   (_%rest167743%_
                                                    _%tl167666167724%_))
                                              (_%K167664167719%_
                                               _%rest167743%_
                                               _%init167741%_
                                               _%len167739%_
                                               _%tmp167732%_)))
                                          (_%else167662167680%_))))
                                  (_%else167662167680%_)))
                            (_%else167662167680%_)))))))
          (__compile-let-form
           _%stx167644%_
           _%compile-simple167646%_
           _%compile-values167647%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx167395%_)
        (letrec ((_%compile-simple167397%_
                  (lambda (_%hd-ids167640%_ _%exprs167641%_ _%body167642%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp169239
                                        (map __compile-head-id
                                             _%hd-ids167640%_)))
                                   (declare (not safe))
                                   (##map list __tmp169239 _%exprs167641%_))
                                 (cons _%body167642%_ '())))
                     _%stx167395%_)))
                 (_%compile-values167398%_
                  (lambda (_%hd-ids167547%_ _%exprs167548%_ _%body167549%_)
                    (let _%lp167551%_ ((_%rest167553%_ _%hd-ids167547%_)
                                       (_%exprs167554%_ _%exprs167548%_)
                                       (_%bind167555%_ '())
                                       (_%post167556%_ '()))
                      (let* ((_%rest167557167571%_ _%rest167553%_)
                             (_%else167560167579%_
                              (lambda ()
                                (_%compile-bind167399%_
                                 _%bind167555%_
                                 _%post167556%_
                                 _%body167549%_))))
                        (let ((_%K167565167623%_
                               (lambda (_%rest167618%_ _%hd167619%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd167619%_))
                                     (let ((_%id167621%_
                                            (__SRC__0 _%hd167619%_)))
                                       (_%lp167551%_
                                        _%rest167618%_
                                        (cdr _%exprs167554%_)
                                        (cons (cons _%id167621%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind167555%_)
                                        (cons (cons _%id167621%_
                                                    (cons (car _%exprs167554%_)
                                                          '()))
                                              _%post167556%_)))
                                     (_%lp167551%_
                                      _%rest167618%_
                                      (cdr _%exprs167554%_)
                                      _%bind167555%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs167554%_)
                                                        '()))
                                            _%post167556%_)))))
                              (_%K167562167603%_
                               (lambda (_%rest167583%_ _%hd167584%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd167584%_))
                                     (let ((_%id167587%_
                                            (__SRC__0 _%hd167584%_)))
                                       (_%lp167551%_
                                        _%rest167583%_
                                        (cdr _%exprs167554%_)
                                        (cons (cons _%id167587%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind167555%_)
                                        (cons (cons _%id167587%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs167554%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post167556%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd167584%_))
                                         (if (list? _%hd167584%_)
                                             (let* ((_%len167591%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd167584%_)))
                                                    (_%tmp167593%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp167551%_
                                                _%rest167583%_
                                                (cdr _%exprs167554%_)
                                                (let ((__tmp169240
                                                       (lambda (_%id167596%_
                                                                _%r167597%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id167596%_))
                     (cons (cons (__SRC__0 _%id167596%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r167597%_)
                     _%r167597%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp169240
                                                   _%bind167555%_
                                                   _%hd167584%_))
                                                (cons (cons _%tmp167593%_
                                                            (cons (car _%exprs167554%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len167591%_
                                (let ((__tmp169242
                                       (lambda (_%id167599%_ _%k167600%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id167599%_))
                                             (cons (__SRC__0 _%id167599%_)
                                                   _%k167600%_)
                                             '#f)))
                                      (__tmp169241
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len167591%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp169242
                                   _%hd167584%_
                                   __tmp169241)))))
              _%post167556%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx167395%_
                                              _%hd167584%_))
                                         (_%lp167551%_
                                          _%rest167583%_
                                          (cdr _%exprs167554%_)
                                          _%bind167555%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs167554%_)
                                                            '()))
                                                _%post167556%_)))))))
                          (if (pair? _%rest167557167571%_)
                              (let ((_%tl167567167628%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest167557167571%_)))
                                    (_%hd167566167626%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest167557167571%_))))
                                (if (pair? _%hd167566167626%_)
                                    (let ((_%tl167569167633%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd167566167626%_)))
                                          (_%hd167568167631%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd167566167626%_))))
                                      (if (null? _%tl167569167633%_)
                                          (let ((_%hd167636%_
                                                 _%hd167568167631%_)
                                                (_%rest167638%_
                                                 _%tl167567167628%_))
                                            (_%K167565167623%_
                                             _%rest167638%_
                                             _%hd167636%_))
                                          (let ((_%hd167611%_
                                                 _%hd167566167626%_)
                                                (_%rest167613%_
                                                 _%tl167567167628%_))
                                            (_%K167562167603%_
                                             _%rest167613%_
                                             _%hd167611%_))))
                                    (let ((_%hd167611%_ _%hd167566167626%_)
                                          (_%rest167613%_ _%tl167567167628%_))
                                      (_%K167562167603%_
                                       _%rest167613%_
                                       _%hd167611%_))))
                              (_%else167560167579%_)))))))
                 (_%compile-bind167399%_
                  (lambda (_%bind167543%_ _%post167544%_ _%body167545%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind167543%_)
                                 (cons (_%compile-post167400%_
                                        _%post167544%_
                                        _%body167545%_)
                                       '())))
                     _%stx167395%_)))
                 (_%compile-post167400%_
                  (lambda (_%post167402%_ _%body167403%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp169243
                                  (let ((__tmp169245
                                         (lambda (_%hd167405%_ _%r167406%_)
                                           (let* ((_%hd167407167430%_
                                                   _%hd167405%_)
                                                  (_%E167411167434%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd167407167430%_
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
                                             (let ((_%K167424167528%_
                                                    (lambda (_%expr167526%_)
                                                      (cons _%expr167526%_
                                                            _%r167406%_)))
                                                   (_%K167419167506%_
                                                    (lambda (_%expr167503%_
                                                             _%id167504%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id167504%_ (cons _%expr167503%_ '())))
                     _%stx167395%_)
                    _%r167406%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K167412167473%_
                                                    (lambda (_%init167438%_
                                                             _%len167439%_
                                                             _%expr167440%_
                                                             _%tmp167441%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp167441%_
                                             (cons _%expr167440%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp167441%_
                                                    (cons _%len167439%_ '())))
                                        _%stx167395%_)
                                       (let ((__tmp169246
                                              (map (lambda (_%hd167443%_)
                                                     (let* ((_%hd167444167451%_
                                                             _%hd167443%_)
                                                            (_%E167446167455%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd167444167451%_
                                '([id . k])))
                       '#!void))
                    (_%K167447167461%_
                     (lambda (_%k167458%_ _%id167459%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id167459%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp167441%_
                                                      (cons _%k167458%_ '())))
                                          '())))
                        _%stx167395%_))))
               (if (pair? _%hd167444167451%_)
                   (let ((_%hd167448167464%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd167444167451%_)))
                         (_%tl167449167466%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd167444167451%_))))
                     (let* ((_%id167469%_ _%hd167448167464%_)
                            (_%k167471%_ _%tl167449167466%_))
                       (_%K167447167461%_ _%k167471%_ _%id167469%_)))
                   (_%E167446167455%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init167438%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp169246)))))
                     _%stx167395%_)
                    _%r167406%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match169101169102%_
                                                       (lambda (_%hd167413167476%_
                                                                _%tl167414167478%_
                                                                _%hd167415167483%_
                                                                _%tl167416167485%_)
                                                         (let ((_%tmp167481%_
                                                                _%hd167413167476%_)
                                                               (_%expr167488%_
                                                                _%hd167415167483%_))
                                                           (_%E167411167434%_))))
                                                      (_%__match169095169096%_
                                                       (lambda (_%hd167413167476%_
                                                                _%tl167414167478%_)
                                                         (let ((_%tmp167481%_
                                                                _%hd167413167476%_))
                                                           (_%E167411167434%_)))))
                                                 (if (pair? _%hd167407167430%_)
                                                     (let ((_%tl167426167533%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd167407167430%_)))
                                                           (_%hd167425167531%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd167407167430%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd167425167531%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl167426167533%_)
                       (let ((_%tl167428167538%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl167426167533%_)))
                             (_%hd167427167536%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl167426167533%_))))
                         (if (null? _%tl167428167538%_)
                             (let ((_%expr167541%_ _%hd167427167536%_))
                               (_%K167424167528%_ _%expr167541%_))
                             (if (pair? _%tl167428167538%_)
                                 (let ((_%tl167418167492%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl167428167538%_)))
                                       (_%hd167417167490%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl167428167538%_))))
                                   (let ((_%tmp167481%_ _%hd167425167531%_)
                                         (_%expr167488%_ _%hd167427167536%_)
                                         (_%len167495%_ _%hd167417167490%_)
                                         (_%init167497%_ _%tl167418167492%_))
                                     (_%K167412167473%_
                                      _%init167497%_
                                      _%len167495%_
                                      _%expr167488%_
                                      _%tmp167481%_)))
                                 (_%__match169101169102%_
                                  _%hd167425167531%_
                                  _%tl167426167533%_
                                  _%hd167427167536%_
                                  _%tl167428167538%_))))
                       (_%__match169095169096%_
                        _%hd167425167531%_
                        _%tl167426167533%_))
                   (if (pair? _%tl167426167533%_)
                       (let ((_%tl167423167518%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl167426167533%_)))
                             (_%hd167422167516%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl167426167533%_))))
                         (if (null? _%tl167423167518%_)
                             (let ((_%id167514%_ _%hd167425167531%_)
                                   (_%expr167521%_ _%hd167422167516%_))
                               (_%K167419167506%_ _%expr167521%_ _%id167514%_))
                             (if (pair? _%tl167423167518%_)
                                 (let ((_%tl167418167492%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl167423167518%_)))
                                       (_%hd167417167490%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl167423167518%_))))
                                   (let ((_%tmp167481%_ _%hd167425167531%_)
                                         (_%expr167488%_ _%hd167422167516%_)
                                         (_%len167495%_ _%hd167417167490%_)
                                         (_%init167497%_ _%tl167418167492%_))
                                     (_%K167412167473%_
                                      _%init167497%_
                                      _%len167495%_
                                      _%expr167488%_
                                      _%tmp167481%_)))
                                 (_%__match169101169102%_
                                  _%hd167425167531%_
                                  _%tl167426167533%_
                                  _%hd167422167516%_
                                  _%tl167423167518%_))))
                       (_%__match169095169096%_
                        _%hd167425167531%_
                        _%tl167426167533%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E167411167434%_)))))))
                                        (__tmp169244 (list _%body167403%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp169245
                                     __tmp169244
                                     _%post167402%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp169243)))
                     _%stx167395%_))))
          (__compile-let-form
           _%stx167395%_
           _%compile-simple167397%_
           _%compile-values167398%_))))
    (define __compile-call%
      (lambda (_%stx167355%_)
        (let* ((_%$e167357%_ _%stx167355%_)
               (_%$E167359167368%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167357%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167357%_))
              (let* ((_%$tgt167360167371%_
                      (let () (declare (not safe)) (__AST-e _%$e167357%_)))
                     (_%$hd167361167374%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167360167371%_)))
                     (_%$tl167362167377%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167360167371%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167362167377%_))
                    (let* ((_%$tgt167363167381%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167362167377%_)))
                           (_%$hd167364167384%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167363167381%_)))
                           (_%$tl167365167387%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167363167381%_)))
                           (_%rator167391%_ _%$hd167364167384%_)
                           (_%rands167393%_ _%$tl167365167387%_))
                      (__SRC__%
                       (cons (__compile _%rator167391%_)
                             (map __compile _%rands167393%_))
                       _%stx167355%_))
                    (_%$E167359167368%_)))
              (_%$E167359167368%_)))))
    (define __compile-ref%
      (lambda (_%stx167317%_)
        (let* ((_%$e167319%_ _%stx167317%_)
               (_%$E167321167330%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167319%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167319%_))
              (let* ((_%$tgt167322167333%_
                      (let () (declare (not safe)) (__AST-e _%$e167319%_)))
                     (_%$hd167323167336%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167322167333%_)))
                     (_%$tl167324167339%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167322167333%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167324167339%_))
                    (let* ((_%$tgt167325167343%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167324167339%_)))
                           (_%$hd167326167346%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167325167343%_)))
                           (_%$tl167327167349%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167325167343%_)))
                           (_%id167353%_ _%$hd167326167346%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167327167349%_))
                                  '())
                          (__SRC__% _%id167353%_ _%stx167317%_)
                          (_%$E167321167330%_)))
                    (_%$E167321167330%_)))
              (_%$E167321167330%_)))))
    (define __compile-setq%
      (lambda (_%stx167264%_)
        (let* ((_%$e167266%_ _%stx167264%_)
               (_%$E167268167280%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167266%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167266%_))
              (let* ((_%$tgt167269167283%_
                      (let () (declare (not safe)) (__AST-e _%$e167266%_)))
                     (_%$hd167270167286%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167269167283%_)))
                     (_%$tl167271167289%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167269167283%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167271167289%_))
                    (let* ((_%$tgt167272167293%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167271167289%_)))
                           (_%$hd167273167296%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167272167293%_)))
                           (_%$tl167274167299%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167272167293%_)))
                           (_%id167303%_ _%$hd167273167296%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl167274167299%_))
                          (let* ((_%$tgt167275167305%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167274167299%_)))
                                 (_%$hd167276167308%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167275167305%_)))
                                 (_%$tl167277167311%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167275167305%_)))
                                 (_%expr167315%_ _%$hd167276167308%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl167277167311%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id167303%_
                                              _%stx167264%_)
                                             (cons (__compile _%expr167315%_)
                                                   '())))
                                 _%stx167264%_)
                                (_%$E167268167280%_)))
                          (_%$E167268167280%_)))
                    (_%$E167268167280%_)))
              (_%$E167268167280%_)))))
    (define __compile-if%
      (lambda (_%stx167196%_)
        (let* ((_%$e167198%_ _%stx167196%_)
               (_%$E167200167215%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167198%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167198%_))
              (let* ((_%$tgt167201167218%_
                      (let () (declare (not safe)) (__AST-e _%$e167198%_)))
                     (_%$hd167202167221%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167201167218%_)))
                     (_%$tl167203167224%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167201167218%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167203167224%_))
                    (let* ((_%$tgt167204167228%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167203167224%_)))
                           (_%$hd167205167231%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167204167228%_)))
                           (_%$tl167206167234%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167204167228%_)))
                           (_%p167238%_ _%$hd167205167231%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl167206167234%_))
                          (let* ((_%$tgt167207167240%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167206167234%_)))
                                 (_%$hd167208167243%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167207167240%_)))
                                 (_%$tl167209167246%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167207167240%_)))
                                 (_%t167250%_ _%$hd167208167243%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl167209167246%_))
                                (let* ((_%$tgt167210167252%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl167209167246%_)))
                                       (_%$hd167211167255%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt167210167252%_)))
                                       (_%$tl167212167258%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt167210167252%_)))
                                       (_%f167262%_ _%$hd167211167255%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl167212167258%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p167238%_)
                                                   (cons (__compile
                                                          _%t167250%_)
                                                         (cons (__compile
                                                                _%f167262%_)
                                                               '()))))
                                       _%stx167196%_)
                                      (_%$E167200167215%_)))
                                (_%$E167200167215%_)))
                          (_%$E167200167215%_)))
                    (_%$E167200167215%_)))
              (_%$E167200167215%_)))))
    (define __compile-quote%
      (lambda (_%stx167158%_)
        (let* ((_%$e167160%_ _%stx167158%_)
               (_%$E167162167171%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167160%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167160%_))
              (let* ((_%$tgt167163167174%_
                      (let () (declare (not safe)) (__AST-e _%$e167160%_)))
                     (_%$hd167164167177%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167163167174%_)))
                     (_%$tl167165167180%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167163167174%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167165167180%_))
                    (let* ((_%$tgt167166167184%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167165167180%_)))
                           (_%$hd167167167187%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167166167184%_)))
                           (_%$tl167168167190%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167166167184%_)))
                           (_%e167194%_ _%$hd167167167187%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167168167190%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e167194%_))
                                       '()))
                           _%stx167158%_)
                          (_%$E167162167171%_)))
                    (_%$E167162167171%_)))
              (_%$E167162167171%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx167120%_)
        (let* ((_%$e167122%_ _%stx167120%_)
               (_%$E167124167133%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167122%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167122%_))
              (let* ((_%$tgt167125167136%_
                      (let () (declare (not safe)) (__AST-e _%$e167122%_)))
                     (_%$hd167126167139%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167125167136%_)))
                     (_%$tl167127167142%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167125167136%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167127167142%_))
                    (let* ((_%$tgt167128167146%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167127167142%_)))
                           (_%$hd167129167149%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167128167146%_)))
                           (_%$tl167130167152%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167128167146%_)))
                           (_%e167156%_ _%$hd167129167149%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167130167152%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e167156%_ '()))
                           _%stx167120%_)
                          (_%$E167124167133%_)))
                    (_%$E167124167133%_)))
              (_%$E167124167133%_)))))
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
