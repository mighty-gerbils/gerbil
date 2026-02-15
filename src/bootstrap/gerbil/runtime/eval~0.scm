(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1771178564)
  (begin
    (define __syntax::t
      (let ((__tmp169257 (list)) (__tmp169256 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp169257
         '(e id)
         __tmp169256
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args169061%_
        (apply make-instance __syntax::t _%$args169061%_)))
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
      (let ((__tmp169259 (list __syntax::t))
            (__tmp169258 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp169259
         '()
         __tmp169258
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args169058%_
        (apply make-instance __core-form::t _%$args169058%_)))
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
      (let ((__tmp169261 (list __core-form::t))
            (__tmp169260 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp169261
         '()
         __tmp169260
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args169055%_
        (apply make-instance __core-expression::t _%$args169055%_)))
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
      (let ((__tmp169263 (list __core-form::t))
            (__tmp169262 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp169263
         '()
         __tmp169262
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args169052%_
        (apply make-instance __core-special-form::t _%$args169052%_)))
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
      (lambda (_%id169026%_)
        (let* ((_%h169028%_ __core)
               (_%key169031%_
                (let () (declare (not safe)) (__AST-e _%id169026%_)))
               (_%h169038%_
                (let ((_%$obj169035%_ _%h169028%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj169035%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj169035%_)))
                           '#t)
                      _%$obj169035%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj169035%_)))))
               (_%h169040%_ _%h169038%_))
          (declare (not safe))
          (__hash-get _%h169040%_ _%key169031%_))))
    (define __core-bound-id?__%
      (lambda (_%id169009%_ _%is?169010%_)
        (let ((_%$e169012%_ (__core-resolve _%id169009%_)))
          (if _%$e169012%_ (_%is?169010%_ _%$e169012%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id169019%_)
        (let ((_%is?169021%_ true))
          (__core-bound-id?__% _%id169019%_ _%is?169021%_))))
    (define __core-bound-id?
      (lambda _g169264_
        (let ((_g169265_ (let () (declare (not safe)) (##length _g169264_))))
          (cond ((let () (declare (not safe)) (##fx= _g169265_ 1))
                 (apply __core-bound-id?__0 _g169264_))
                ((let () (declare (not safe)) (##fx= _g169265_ 2))
                 (apply __core-bound-id?__% _g169264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g169264_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id168964%_ _%e168965%_ _%make168966%_)
        (let* ((_%h168968%_ __core)
               (_%key168971%_ _%id168964%_)
               (_%value168974%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%e168965%_
                       'gerbil/runtime/eval#__syntax::t))
                    _%e168965%_
                    (_%make168966%_ _%e168965%_ _%id168964%_)))
               (_%h168981%_
                (let ((_%$obj168978%_ _%h168968%_))
                  (if (and (let ()
                             (declare (not safe))
                             (##structure? _%$obj168978%_))
                           (eq? HashTable::t
                                (let ()
                                  (declare (not safe))
                                  (##structure-type _%$obj168978%_)))
                           '#t)
                      _%$obj168978%_
                      (let ()
                        (declare (not safe))
                        (cast HashTable::interface _%$obj168978%_)))))
               (_%h168983%_ _%h168981%_))
          (declare (not safe))
          (__hash-put! _%h168983%_ _%key168971%_ _%value168974%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id168999%_ _%e169000%_)
        (let ((_%make169002%_ make-__syntax))
          (__core-bind-syntax!__% _%id168999%_ _%e169000%_ _%make169002%_))))
    (define __core-bind-syntax!
      (lambda _g169266_
        (let ((_g169267_ (let () (declare (not safe)) (##length _g169266_))))
          (cond ((let () (declare (not safe)) (##fx= _g169267_ 2))
                 (apply __core-bind-syntax!__0 _g169266_))
                ((let () (declare (not safe)) (##fx= _g169267_ 3))
                 (apply __core-bind-syntax!__% _g169266_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g169266_))))))
    (define __SRC__%
      (lambda (_%e168944%_ _%src-stx168945%_)
        (if (or (pair? _%e168944%_) (symbol? _%e168944%_))
            (let ((__tmp169268
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx168945%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx168945%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e168944%_ __tmp169268))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e168944%_ 'gerbil#AST::t))
                (let ((__tmp169270
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e168944%_ '1 '#f '#f)))
                      (__tmp169269
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e168944%_)))))
                  (declare (not safe))
                  (##make-source __tmp169270 __tmp169269))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e168944%_))))))
    (define __SRC__0
      (lambda (_%e168956%_)
        (let ((_%src-stx168958%_ '#f))
          (__SRC__% _%e168956%_ _%src-stx168958%_))))
    (define __SRC
      (lambda _g169271_
        (let ((_g169272_ (let () (declare (not safe)) (##length _g169271_))))
          (cond ((let () (declare (not safe)) (##fx= _g169272_ 1))
                 (apply __SRC__0 _g169271_))
                ((let () (declare (not safe)) (##fx= _g169272_ 2))
                 (apply __SRC__% _g169271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g169271_))))))
    (define __locat
      (lambda (_%loc168941%_)
        (if (let () (declare (not safe)) (##locat? _%loc168941%_))
            _%loc168941%_
            '#f)))
    (define __check-values
      (lambda (_%obj168936%_ _%k168937%_)
        (let ((_%count168939%_
               (if (let () (declare (not safe)) (##values? _%obj168936%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj168936%_))
                   '1)))
          (if (fx= _%count168939%_ _%k168937%_)
              '#!void
              (let ((__tmp169274
                     (if (fx< _%count168939%_ _%k168937%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp169273
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj168936%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj168936%_))
                         _%obj168936%_)))
                (declare (not safe))
                (error __tmp169274 __tmp169273 _%k168937%_))))))
    (define __compile
      (lambda (_%stx168905%_)
        (let* ((_%$e168907%_ _%stx168905%_)
               (_%$E168909168915%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168907%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168907%_))
              (let* ((_%$tgt168910168918%_
                      (let () (declare (not safe)) (__AST-e _%$e168907%_)))
                     (_%$hd168911168921%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168910168918%_)))
                     (_%$tl168912168924%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168910168918%_)))
                     (_%form168928%_ _%$hd168911168921%_)
                     (_%$e168930%_ (__core-resolve _%form168928%_)))
                (if _%$e168930%_
                    ((lambda (_%bind168933%_)
                       ((##structure-ref _%bind168933%_ '1 __syntax::t '#f)
                        _%stx168905%_))
                     _%$e168930%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx168905%_
                       _%form168928%_))))
              (_%$E168909168915%_)))))
    (define __compile-error__%
      (lambda (_%stx168892%_ _%detail168893%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx168892%_
           _%detail168893%_))))
    (define __compile-error__0
      (lambda (_%stx168898%_)
        (let ((_%detail168900%_ '#f))
          (__compile-error__% _%stx168898%_ _%detail168900%_))))
    (define __compile-error
      (lambda _g169275_
        (let ((_g169276_ (let () (declare (not safe)) (##length _g169275_))))
          (cond ((let () (declare (not safe)) (##fx= _g169276_ 1))
                 (apply __compile-error__0 _g169275_))
                ((let () (declare (not safe)) (##fx= _g169276_ 2))
                 (apply __compile-error__% _g169275_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g169275_))))))
    (define __compile-ignore%
      (lambda (_%stx168889%_) (__SRC__% ''#!void _%stx168889%_)))
    (define __compile-begin%
      (lambda (_%stx168864%_)
        (let* ((_%$e168866%_ _%stx168864%_)
               (_%$E168868168874%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168866%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168866%_))
              (let* ((_%$tgt168869168877%_
                      (let () (declare (not safe)) (__AST-e _%$e168866%_)))
                     (_%$hd168870168880%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168869168877%_)))
                     (_%$tl168871168883%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168869168877%_)))
                     (_%body168887%_ _%$tl168871168883%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body168887%_))
                 _%stx168864%_))
              (_%$E168868168874%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx168839%_)
        (let* ((_%$e168841%_ _%stx168839%_)
               (_%$E168843168849%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168841%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168841%_))
              (let* ((_%$tgt168844168852%_
                      (let () (declare (not safe)) (__AST-e _%$e168841%_)))
                     (_%$hd168845168855%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168844168852%_)))
                     (_%$tl168846168858%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168844168852%_)))
                     (_%body168862%_ _%$tl168846168858%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body168862%_)))
                 _%stx168839%_))
              (_%$E168843168849%_)))))
    (define __compile-import%
      (lambda (_%stx168814%_)
        (let* ((_%$e168816%_ _%stx168814%_)
               (_%$E168818168824%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168816%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168816%_))
              (let* ((_%$tgt168819168827%_
                      (let () (declare (not safe)) (__AST-e _%$e168816%_)))
                     (_%$hd168820168830%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168819168827%_)))
                     (_%$tl168821168833%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168819168827%_)))
                     (_%body168837%_ _%$tl168821168833%_))
                (__SRC__%
                 (cons '__eval-import
                       (cons (cons 'quote (cons _%body168837%_ '())) '()))
                 _%stx168814%_))
              (_%$E168818168824%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx168761%_)
        (let* ((_%$e168763%_ _%stx168761%_)
               (_%$E168765168777%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168763%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168763%_))
              (let* ((_%$tgt168766168780%_
                      (let () (declare (not safe)) (__AST-e _%$e168763%_)))
                     (_%$hd168767168783%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168766168780%_)))
                     (_%$tl168768168786%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168766168780%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168768168786%_))
                    (let* ((_%$tgt168769168790%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168768168786%_)))
                           (_%$hd168770168793%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168769168790%_)))
                           (_%$tl168771168796%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168769168790%_)))
                           (_%ann168800%_ _%$hd168770168793%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168771168796%_))
                          (let* ((_%$tgt168772168802%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168771168796%_)))
                                 (_%$hd168773168805%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168772168802%_)))
                                 (_%$tl168774168808%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168772168802%_)))
                                 (_%expr168812%_ _%$hd168773168805%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168774168808%_))
                                        '())
                                (__compile _%expr168812%_)
                                (_%$E168765168777%_)))
                          (_%$E168765168777%_)))
                    (_%$E168765168777%_)))
              (_%$E168765168777%_)))))
    (define __compile-define-values%
      (lambda (_%stx168652%_)
        (let* ((_%$e168654%_ _%stx168652%_)
               (_%$E168656168668%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168654%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168654%_))
              (let* ((_%$tgt168657168671%_
                      (let () (declare (not safe)) (__AST-e _%$e168654%_)))
                     (_%$hd168658168674%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168657168671%_)))
                     (_%$tl168659168677%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168657168671%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168659168677%_))
                    (let* ((_%$tgt168660168681%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168659168677%_)))
                           (_%$hd168661168684%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168660168681%_)))
                           (_%$tl168662168687%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168660168681%_)))
                           (_%hd168691%_ _%$hd168661168684%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168662168687%_))
                          (let* ((_%$tgt168663168693%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168662168687%_)))
                                 (_%$hd168664168696%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168663168693%_)))
                                 (_%$tl168665168699%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168663168693%_)))
                                 (_%expr168703%_ _%$hd168664168696%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168665168699%_))
                                        '())
                                (let* ((_%$e168705%_ _%hd168691%_)
                                       (_%$E168707168748%_
                                        (lambda ()
                                          (let ((_%$E168708168733%_
                                                 (lambda ()
                                                   (let* ((_%$E168709168720%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e168705%_))))
                  (_%ids168723%_ _%hd168691%_)
                  (_%len168725%_ (length _%ids168723%_))
                  (_%tmp168727%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons 'define
                                 (cons _%tmp168727%_
                                       (cons (__compile _%expr168703%_) '())))
                           _%stx168652%_)
                          (cons (__SRC__%
                                 (cons '__check-values
                                       (cons _%tmp168727%_
                                             (cons _%len168725%_ '())))
                                 _%stx168652%_)
                                (let ((__tmp169277
                                       (let ((__tmp169279
                                              (lambda (_%id168730%_
                                                       _%k168731%_)
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%id168730%_))
                                                    (__SRC__%
                                                     (cons 'define
                                                           (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id168730%_)
                         (cons (cons '##values-ref
                                     (cons _%tmp168727%_
                                           (cons _%k168731%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx168652%_)
                                                    '#f)))
                                             (__tmp169278
                                              (let ()
                                                (declare (not safe))
                                                (##iota _%len168725%_))))
                                         (declare (not safe))
                                         (filter-map__1
                                          __tmp169279
                                          _%ids168723%_
                                          __tmp169278))))
                                  (declare (not safe))
                                  (foldr__0 cons '() __tmp169277)))))
              _%stx168652%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e168705%_))
                                                (let* ((_%$tgt168710168736%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e168705%_)))
                                                       (_%$hd168711168739%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$tgt168710168736%_)))
                                                       (_%$tl168712168742%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$tgt168710168736%_)))
                                                       (_%id168746%_
                                                        _%$hd168711168739%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$tl168712168742%_))
                      '())
              (__SRC__%
               (cons 'define
                     (cons (__SRC__0 _%id168746%_)
                           (cons (__compile _%expr168703%_) '())))
               _%stx168652%_)
              (_%$E168708168733%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$E168708168733%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e168705%_))
                                      (let* ((_%$tgt168713168751%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e168705%_)))
                                             (_%$hd168714168754%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt168713168751%_)))
                                             (_%$tl168715168757%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt168713168751%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$hd168714168754%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$tl168715168757%_))
                                                        '())
                                                (__compile _%expr168703%_)
                                                (_%$E168707168748%_))
                                            (_%$E168707168748%_)))
                                      (_%$E168707168748%_)))
                                (_%$E168656168668%_)))
                          (_%$E168656168668%_)))
                    (_%$E168656168668%_)))
              (_%$E168656168668%_)))))
    (define __compile-head-id
      (lambda (_%e168650%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e168650%_))
             _%e168650%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd168607%_)
        (let _%recur168609%_ ((_%rest168611%_ _%hd168607%_))
          (let* ((_%$e168613%_ _%rest168611%_)
                 (_%$E168615168633%_
                  (lambda ()
                    (let ((_%$E168616168630%_
                           (lambda ()
                             (let* ((_%$E168617168625%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e168613%_))))
                                    (_%tail168628%_ _%$e168613%_))
                               (__compile-head-id _%tail168628%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168613%_))
                                  '())
                          '()
                          (_%$E168616168630%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e168613%_))
                (let* ((_%$tgt168618168636%_
                        (let () (declare (not safe)) (__AST-e _%$e168613%_)))
                       (_%$hd168619168639%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt168618168636%_)))
                       (_%$tl168620168642%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt168618168636%_)))
                       (_%hd168646%_ _%$hd168619168639%_)
                       (_%rest168648%_ _%$tl168620168642%_))
                  (cons (__compile-head-id _%hd168646%_)
                        (_%recur168609%_ _%rest168648%_)))
                (_%$E168615168633%_))))))
    (define __compile-lambda%
      (lambda (_%stx168554%_)
        (let* ((_%$e168556%_ _%stx168554%_)
               (_%$E168558168570%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e168556%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e168556%_))
              (let* ((_%$tgt168559168573%_
                      (let () (declare (not safe)) (__AST-e _%$e168556%_)))
                     (_%$hd168560168576%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt168559168573%_)))
                     (_%$tl168561168579%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt168559168573%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl168561168579%_))
                    (let* ((_%$tgt168562168583%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl168561168579%_)))
                           (_%$hd168563168586%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt168562168583%_)))
                           (_%$tl168564168589%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt168562168583%_)))
                           (_%hd168593%_ _%$hd168563168586%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl168564168589%_))
                          (let* ((_%$tgt168565168595%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl168564168589%_)))
                                 (_%$hd168566168598%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168565168595%_)))
                                 (_%$tl168567168601%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168565168595%_)))
                                 (_%body168605%_ _%$hd168566168598%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168567168601%_))
                                        '())
                                (__SRC__%
                                 (cons 'lambda
                                       (cons (__compile-lambda-head
                                              _%hd168593%_)
                                             (cons (__compile _%body168605%_)
                                                   '())))
                                 _%stx168554%_)
                                (_%$E168558168570%_)))
                          (_%$E168558168570%_)))
                    (_%$E168558168570%_)))
              (_%$E168558168570%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx168319%_)
        (letrec ((_%variadic?168321%_
                  (lambda (_%hd168519%_)
                    (let* ((_%$e168521%_ _%hd168519%_)
                           (_%$E168523168539%_
                            (lambda ()
                              (let ((_%$E168524168536%_
                                     (lambda ()
                                       (let ((_%$E168525168533%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e168521%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e168521%_))
                                            '())
                                    '#f
                                    (_%$E168524168536%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168521%_))
                          (let* ((_%$tgt168526168542%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168521%_)))
                                 (_%$hd168527168545%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168526168542%_)))
                                 (_%$tl168528168548%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168526168542%_)))
                                 (_%rest168552%_ _%$tl168528168548%_))
                            (_%variadic?168321%_ _%rest168552%_))
                          (_%$E168523168539%_)))))
                 (_%arity168322%_
                  (lambda (_%hd168457%_)
                    (let _%lp168459%_ ((_%rest168461%_ _%hd168457%_)
                                       (_%k168462%_ '0))
                      (let* ((_%$e168464%_ _%rest168461%_)
                             (_%$E168466168477%_
                              (lambda ()
                                (let ((_%$E168467168474%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e168464%_)))))
                                  _%k168462%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e168464%_))
                            (let* ((_%$tgt168468168480%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e168464%_)))
                                   (_%$hd168469168483%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$tgt168468168480%_)))
                                   (_%$tl168470168486%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$tgt168468168480%_)))
                                   (_%rest168490%_ _%$tl168470168486%_))
                              (_%lp168459%_
                               _%rest168490%_
                               (let ((_%x168492%_ _%k168462%_))
                                 (if (fixnum? _%x168492%_)
                                     (let ((_%x168497%_ _%x168492%_))
                                       (declare (not safe))
                                       (__fx1+ _%x168497%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x168492%_)
                                       '#!void)))))
                            (_%$E168466168477%_))))))
                 (_%generate168323%_
                  (lambda (_%rest168384%_ _%args168385%_ _%len168386%_)
                    (let* ((_%$e168388%_ _%rest168384%_)
                           (_%$E168390168401%_
                            (lambda ()
                              (let ((_%$E168391168398%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e168388%_)))))
                                (__SRC__%
                                 (cons 'error
                                       (cons '"No clause matching arguments"
                                             (cons _%args168385%_ '())))
                                 _%stx168319%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168388%_))
                          (let* ((_%$tgt168392168404%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168388%_)))
                                 (_%$hd168393168407%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168392168404%_)))
                                 (_%$tl168394168410%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168392168404%_)))
                                 (_%clause168414%_ _%$hd168393168407%_)
                                 (_%rest168416%_ _%$tl168394168410%_)
                                 (_%$e168418%_ _%clause168414%_)
                                 (_%$E168420168429%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e168418%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e168418%_))
                                (let* ((_%$tgt168421168432%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e168418%_)))
                                       (_%$hd168422168435%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt168421168432%_)))
                                       (_%$tl168423168438%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt168421168432%_)))
                                       (_%hd168442%_ _%$hd168422168435%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl168423168438%_))
                                      (let* ((_%$tgt168424168444%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl168423168438%_)))
                                             (_%$hd168425168447%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt168424168444%_)))
                                             (_%$tl168426168450%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt168424168444%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl168426168450%_))
                                                    '())
                                            (let ((_%clen168454%_
                                                   (_%arity168322%_
                                                    _%hd168442%_))
                                                  (_%cmp168455%_
                                                   (if (_%variadic?168321%_
                                                        _%hd168442%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (cons 'if
                                                     (cons (cons _%cmp168455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%len168386%_ (cons _%clen168454%_ '())))
                   (cons (__SRC__%
                          (cons '##apply
                                (cons (__compile-lambda%
                                       (cons '%#lambda _%clause168414%_))
                                      (cons _%args168385%_ '())))
                          _%stx168319%_)
                         (cons (_%generate168323%_
                                _%rest168416%_
                                _%args168385%_
                                _%len168386%_)
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%stx168319%_))
                                            (_%$E168420168429%_)))
                                      (_%$E168420168429%_)))
                                (_%$E168420168429%_)))
                          (_%$E168390168401%_))))))
          (let* ((_%$e168325%_ _%stx168319%_)
                 (_%$E168327168359%_
                  (lambda ()
                    (let ((_%$E168328168341%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168325%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168325%_))
                          (let* ((_%$tgt168329168344%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168325%_)))
                                 (_%$hd168330168347%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168329168344%_)))
                                 (_%$tl168331168350%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168329168344%_)))
                                 (_%clauses168354%_ _%$tl168331168350%_))
                            (let ((_%args168356%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx168319%_))
                                  (_%len168357%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx168319%_)))
                              (__SRC__%
                               (cons 'lambda
                                     (cons _%args168356%_
                                           (cons (__SRC__%
                                                  (cons 'let
                                                        (cons (cons (cons _%len168357%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons (__SRC__%
                                         (cons '##length
                                               (cons _%args168356%_ '()))
                                         _%stx168319%_)
                                        '()))
                            '())
                      (cons (_%generate168323%_
                             _%clauses168354%_
                             _%args168356%_
                             _%len168357%_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%stx168319%_)
                                                 '())))
                               _%stx168319%_)))
                          (_%$E168328168341%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e168325%_))
                (let* ((_%$tgt168332168362%_
                        (let () (declare (not safe)) (__AST-e _%$e168325%_)))
                       (_%$hd168333168365%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt168332168362%_)))
                       (_%$tl168334168368%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt168332168362%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl168334168368%_))
                      (let* ((_%$tgt168335168372%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl168334168368%_)))
                             (_%$hd168336168375%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt168335168372%_)))
                             (_%$tl168337168378%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt168335168372%_)))
                             (_%clause168382%_ _%$hd168336168375%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$tl168337168378%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause168382%_))
                            (_%$E168327168359%_)))
                      (_%$E168327168359%_)))
                (_%$E168327168359%_))))))
    (define __compile-let-form
      (lambda (_%stx168088%_ _%compile-simple168089%_ _%compile-values168090%_)
        (letrec ((_%simple-bind?168092%_
                  (lambda (_%hd168277%_)
                    (let* ((_%hd168278168288%_ _%hd168277%_)
                           (_%else168281168296%_ (lambda () '#f)))
                      (let ((_%K168284168309%_ (lambda (_%id168307%_) '#t))
                            (_%K168283168301%_ (lambda () '#t)))
                        (let ((_%try-match168280168304%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%hd168278168288%_ '#f))
                                     (_%K168283168301%_)
                                     (_%else168281168296%_)))))
                          (if (pair? _%hd168278168288%_)
                              (let ((_%tl168286168314%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%hd168278168288%_)))
                                    (_%hd168285168312%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%hd168278168288%_))))
                                (if (null? _%tl168286168314%_)
                                    (let ((_%id168317%_ _%hd168285168312%_))
                                      (_%K168284168309%_ _%id168317%_))
                                    (_%try-match168280168304%_)))
                              (_%try-match168280168304%_)))))))
                 (_%car-e168093%_
                  (lambda (_%hd168275%_)
                    (if (pair? _%hd168275%_)
                        (let () (declare (not safe)) (##car _%hd168275%_))
                        _%hd168275%_))))
          (let* ((_%$e168095%_ _%stx168088%_)
                 (_%$E168097168240%_
                  (lambda ()
                    (let ((_%$E168098168120%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168095%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e168095%_))
                          (let* ((_%$tgt168099168123%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e168095%_)))
                                 (_%$hd168100168126%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt168099168123%_)))
                                 (_%$tl168101168129%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt168099168123%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl168101168129%_))
                                (let* ((_%$tgt168102168133%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168101168129%_)))
                                       (_%$hd168103168136%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt168102168133%_)))
                                       (_%$tl168104168139%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt168102168133%_)))
                                       (_%hd168143%_ _%$hd168103168136%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$tl168104168139%_))
                                      (let* ((_%$tgt168105168145%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl168104168139%_)))
                                             (_%$hd168106168148%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$tgt168105168145%_)))
                                             (_%$tl168107168151%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$tgt168105168145%_)))
                                             (_%body168155%_
                                              _%$hd168106168148%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$tl168107168151%_))
                                                    '())
                                            (let* ((_%hd-ids168195%_
                                                    (map (lambda (_%bind168157%_)
                                                           (let* ((_%$e168159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind168157%_)
                          (_%$E168161168170%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168159%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e168159%_))
                         (let* ((_%$tgt168162168173%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e168159%_)))
                                (_%$hd168163168176%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt168162168173%_)))
                                (_%$tl168164168179%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt168162168173%_)))
                                (_%ids168183%_ _%$hd168163168176%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl168164168179%_))
                               (let* ((_%$tgt168165168185%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl168164168179%_)))
                                      (_%$hd168166168188%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt168165168185%_)))
                                      (_%$tl168167168191%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt168165168185%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl168167168191%_))
                                             '())
                                     _%ids168183%_
                                     (_%$E168161168170%_)))
                               (_%$E168161168170%_)))
                         (_%$E168161168170%_))))
                 _%hd168143%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs168235%_
                                                    (map (lambda (_%bind168197%_)
                                                           (let* ((_%$e168199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind168197%_)
                          (_%$E168201168210%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e168199%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e168199%_))
                         (let* ((_%$tgt168202168213%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e168199%_)))
                                (_%$hd168203168216%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$tgt168202168213%_)))
                                (_%$tl168204168219%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$tgt168202168213%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$tl168204168219%_))
                               (let* ((_%$tgt168205168223%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$tl168204168219%_)))
                                      (_%$hd168206168226%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$tgt168205168223%_)))
                                      (_%$tl168207168229%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$tgt168205168223%_)))
                                      (_%expr168233%_ _%$hd168206168226%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$tl168207168229%_))
                                             '())
                                     (__compile _%expr168233%_)
                                     (_%$E168201168210%_)))
                               (_%$E168201168210%_)))
                         (_%$E168201168210%_))))
                 _%hd168143%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body168237%_
                                                    (__compile
                                                     _%body168155%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?168092%_
                                                     _%hd-ids168195%_))
                                                  (_%compile-simple168089%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e168093%_
                                                            _%hd-ids168195%_))
                                                   _%exprs168235%_
                                                   _%body168237%_)
                                                  (_%compile-values168090%_
                                                   _%hd-ids168195%_
                                                   _%exprs168235%_
                                                   _%body168237%_)))
                                            (_%$E168098168120%_)))
                                      (_%$E168098168120%_)))
                                (_%$E168098168120%_)))
                          (_%$E168098168120%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e168095%_))
                (let* ((_%$tgt168108168243%_
                        (let () (declare (not safe)) (__AST-e _%$e168095%_)))
                       (_%$hd168109168246%_
                        (let ()
                          (declare (not safe))
                          (##car _%$tgt168108168243%_)))
                       (_%$tl168110168249%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$tgt168108168243%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$tl168110168249%_))
                      (let* ((_%$tgt168111168253%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$tl168110168249%_)))
                             (_%$hd168112168256%_
                              (let ()
                                (declare (not safe))
                                (##car _%$tgt168111168253%_)))
                             (_%$tl168113168259%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$tgt168111168253%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$hd168112168256%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl168113168259%_))
                                (let* ((_%$tgt168114168263%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl168113168259%_)))
                                       (_%$hd168115168266%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt168114168263%_)))
                                       (_%$tl168116168269%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt168114168263%_)))
                                       (_%body168273%_ _%$hd168115168266%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl168116168269%_))
                                              '())
                                      (__compile _%body168273%_)
                                      (_%$E168097168240%_)))
                                (_%$E168097168240%_))
                            (_%$E168097168240%_)))
                      (_%$E168097168240%_)))
                (_%$E168097168240%_))))))
    (define __compile-let-values%
      (lambda (_%stx167900%_)
        (letrec ((_%compile-simple167902%_
                  (lambda (_%hd-ids168084%_ _%exprs168085%_ _%body168086%_)
                    (__SRC__%
                     (cons 'let
                           (cons (let ((__tmp169280
                                        (map __compile-head-id
                                             _%hd-ids168084%_)))
                                   (declare (not safe))
                                   (##map list __tmp169280 _%exprs168085%_))
                                 (cons _%body168086%_ '())))
                     _%stx167900%_)))
                 (_%compile-values167903%_
                  (lambda (_%hd-ids167999%_ _%exprs168000%_ _%body168001%_)
                    (let _%lp168003%_ ((_%rest168005%_ _%hd-ids167999%_)
                                       (_%exprs168006%_ _%exprs168000%_)
                                       (_%bind168007%_ '())
                                       (_%post168008%_ '()))
                      (let* ((_%rest168009168023%_ _%rest168005%_)
                             (_%else168012168031%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'let
                                       (cons (reverse _%bind168007%_)
                                             (cons (_%compile-post167904%_
                                                    _%post168008%_
                                                    _%body168001%_)
                                                   '())))
                                 _%stx167900%_))))
                        (let ((_%K168017168067%_
                               (lambda (_%rest168064%_ _%id168065%_)
                                 (_%lp168003%_
                                  _%rest168064%_
                                  (cdr _%exprs168006%_)
                                  (cons (cons (__compile-head-id _%id168065%_)
                                              (cons (car _%exprs168006%_) '()))
                                        _%bind168007%_)
                                  _%post168008%_)))
                              (_%K168014168049%_
                               (lambda (_%rest168035%_ _%hd168036%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd168036%_))
                                     (_%lp168003%_
                                      _%rest168035%_
                                      (cdr _%exprs168006%_)
                                      (cons (cons (__compile-head-id
                                                   _%hd168036%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs168006%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind168007%_)
                                      _%post168008%_)
                                     (if (list? _%hd168036%_)
                                         (let* ((_%len168040%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd168036%_)))
                                                (_%tmp168042%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp168003%_
                                            _%rest168035%_
                                            (cdr _%exprs168006%_)
                                            (cons (cons _%tmp168042%_
                                                        (cons (car _%exprs168006%_)
                                                              '()))
                                                  _%bind168007%_)
                                            (cons (cons _%tmp168042%_
                                                        (cons _%len168040%_
                                                              (let ((__tmp169282
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id168045%_ _%k168046%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id168045%_))
                                   (cons (__SRC__0 _%id168045%_) _%k168046%_)
                                   '#f)))
                            (__tmp169281
                             (let ()
                               (declare (not safe))
                               (##iota _%len168040%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp169282 _%hd168036%_ __tmp169281))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post168008%_)))
                                         (__compile-error__%
                                          _%stx167900%_
                                          _%hd168036%_))))))
                          (if (pair? _%rest168009168023%_)
                              (let ((_%tl168019168072%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest168009168023%_)))
                                    (_%hd168018168070%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest168009168023%_))))
                                (if (pair? _%hd168018168070%_)
                                    (let ((_%tl168021168077%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd168018168070%_)))
                                          (_%hd168020168075%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd168018168070%_))))
                                      (if (null? _%tl168021168077%_)
                                          (let ((_%id168080%_
                                                 _%hd168020168075%_)
                                                (_%rest168082%_
                                                 _%tl168019168072%_))
                                            (_%K168017168067%_
                                             _%rest168082%_
                                             _%id168080%_))
                                          (let ((_%hd168057%_
                                                 _%hd168018168070%_)
                                                (_%rest168059%_
                                                 _%tl168019168072%_))
                                            (_%K168014168049%_
                                             _%rest168059%_
                                             _%hd168057%_))))
                                    (let ((_%hd168057%_ _%hd168018168070%_)
                                          (_%rest168059%_ _%tl168019168072%_))
                                      (_%K168014168049%_
                                       _%rest168059%_
                                       _%hd168057%_))))
                              (_%else168012168031%_)))))))
                 (_%compile-post167904%_
                  (lambda (_%post167906%_ _%body167907%_)
                    (let _%lp167909%_ ((_%rest167911%_ _%post167906%_)
                                       (_%check167912%_ '())
                                       (_%bind167913%_ '()))
                      (let* ((_%rest167914167926%_ _%rest167911%_)
                             (_%else167916167934%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp169283
                                              (cons (__SRC__%
                                                     (cons 'let
                                                           (cons _%bind167913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%body167907%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%stx167900%_)
                                                    '())))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp169283
                                          _%check167912%_)))
                                 _%stx167900%_)))
                             (_%K167918167973%_
                              (lambda (_%rest167937%_
                                       _%init167938%_
                                       _%len167939%_
                                       _%tmp167940%_)
                                (_%lp167909%_
                                 _%rest167937%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp167940%_
                                                    (cons _%len167939%_ '())))
                                        _%stx167900%_)
                                       _%check167912%_)
                                 (let ((__tmp169284
                                        (lambda (_%hd167942%_ _%r167943%_)
                                          (let* ((_%hd167944167951%_
                                                  _%hd167942%_)
                                                 (_%E167946167955%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd167944167951%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K167947167961%_
                                                  (lambda (_%k167958%_
                                                           _%id167959%_)
                                                    (cons (cons _%id167959%_
                                                                (cons (cons '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons _%tmp167940%_
                                          (cons _%k167958%_ '())))
                              '()))
                  _%r167943%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd167944167951%_)
                                                (let ((_%hd167948167964%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd167944167951%_)))
                                                      (_%tl167949167966%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd167944167951%_))))
                                                  (let* ((_%id167969%_
                                                          _%hd167948167964%_)
                                                         (_%k167971%_
                                                          _%tl167949167966%_))
                                                    (_%K167947167961%_
                                                     _%k167971%_
                                                     _%id167969%_)))
                                                (_%E167946167955%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp169284
                                    _%bind167913%_
                                    _%init167938%_))))))
                        (if (pair? _%rest167914167926%_)
                            (let ((_%hd167919167976%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167914167926%_)))
                                  (_%tl167920167978%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167914167926%_))))
                              (if (pair? _%hd167919167976%_)
                                  (let ((_%hd167921167981%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd167919167976%_)))
                                        (_%tl167922167983%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd167919167976%_))))
                                    (let ((_%tmp167986%_ _%hd167921167981%_))
                                      (if (pair? _%tl167922167983%_)
                                          (let ((_%hd167923167988%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl167922167983%_)))
                                                (_%tl167924167990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl167922167983%_))))
                                            (let* ((_%len167993%_
                                                    _%hd167923167988%_)
                                                   (_%init167995%_
                                                    _%tl167924167990%_)
                                                   (_%rest167997%_
                                                    _%tl167920167978%_))
                                              (_%K167918167973%_
                                               _%rest167997%_
                                               _%init167995%_
                                               _%len167993%_
                                               _%tmp167986%_)))
                                          (_%else167916167934%_))))
                                  (_%else167916167934%_)))
                            (_%else167916167934%_)))))))
          (__compile-let-form
           _%stx167900%_
           _%compile-simple167902%_
           _%compile-values167903%_))))
    (define __compile-letrec-values%
      (lambda (_%stx167697%_)
        (letrec ((_%compile-simple167699%_
                  (lambda (_%hd-ids167896%_ _%exprs167897%_ _%body167898%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (let ((__tmp169285
                                        (map __compile-head-id
                                             _%hd-ids167896%_)))
                                   (declare (not safe))
                                   (##map list __tmp169285 _%exprs167897%_))
                                 (cons _%body167898%_ '())))
                     _%stx167697%_)))
                 (_%compile-values167700%_
                  (lambda (_%hd-ids167807%_ _%exprs167808%_ _%body167809%_)
                    (let _%lp167811%_ ((_%rest167813%_ _%hd-ids167807%_)
                                       (_%exprs167814%_ _%exprs167808%_)
                                       (_%pre167815%_ '())
                                       (_%bind167816%_ '())
                                       (_%post167817%_ '()))
                      (let* ((_%rest167818167832%_ _%rest167813%_)
                             (_%else167821167840%_
                              (lambda ()
                                (_%compile-inner167701%_
                                 _%pre167815%_
                                 _%bind167816%_
                                 _%post167817%_
                                 _%body167809%_))))
                        (let ((_%K167826167879%_
                               (lambda (_%rest167876%_ _%id167877%_)
                                 (_%lp167811%_
                                  _%rest167876%_
                                  (cdr _%exprs167814%_)
                                  _%pre167815%_
                                  (cons (cons (__compile-head-id _%id167877%_)
                                              (cons (car _%exprs167814%_) '()))
                                        _%bind167816%_)
                                  _%post167817%_)))
                              (_%K167823167861%_
                               (lambda (_%rest167844%_ _%hd167845%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd167845%_))
                                     (_%lp167811%_
                                      _%rest167844%_
                                      (cdr _%exprs167814%_)
                                      _%pre167815%_
                                      (cons (cons (__compile-head-id
                                                   _%hd167845%_)
                                                  (cons (cons 'values->list
                                                              (cons (car _%exprs167814%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%bind167816%_)
                                      _%post167817%_)
                                     (if (list? _%hd167845%_)
                                         (let* ((_%len167849%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd167845%_)))
                                                (_%tmp167851%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp167811%_
                                            _%rest167844%_
                                            (cdr _%exprs167814%_)
                                            (let ((__tmp169286
                                                   (lambda (_%id167854%_
                                                            _%r167855%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id167854%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id167854%_)
                             (cons (cons 'quote (cons '#!void '())) '()))
                       _%r167855%_)
                 _%r167855%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp169286
                                               _%pre167815%_
                                               _%hd167845%_))
                                            (cons (cons _%tmp167851%_
                                                        (cons (car _%exprs167814%_)
                                                              '()))
                                                  _%bind167816%_)
                                            (cons (cons _%tmp167851%_
                                                        (cons _%len167849%_
                                                              (let ((__tmp169288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id167857%_ _%k167858%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id167857%_))
                                   (cons (__SRC__0 _%id167857%_) _%k167858%_)
                                   '#f)))
                            (__tmp169287
                             (let ()
                               (declare (not safe))
                               (##iota _%len167849%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp169288 _%hd167845%_ __tmp169287))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post167817%_)))
                                         (__compile-error__%
                                          _%stx167697%_
                                          _%hd167845%_))))))
                          (if (pair? _%rest167818167832%_)
                              (let ((_%tl167828167884%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest167818167832%_)))
                                    (_%hd167827167882%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest167818167832%_))))
                                (if (pair? _%hd167827167882%_)
                                    (let ((_%tl167830167889%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd167827167882%_)))
                                          (_%hd167829167887%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd167827167882%_))))
                                      (if (null? _%tl167830167889%_)
                                          (let ((_%id167892%_
                                                 _%hd167829167887%_)
                                                (_%rest167894%_
                                                 _%tl167828167884%_))
                                            (_%K167826167879%_
                                             _%rest167894%_
                                             _%id167892%_))
                                          (let ((_%hd167869%_
                                                 _%hd167827167882%_)
                                                (_%rest167871%_
                                                 _%tl167828167884%_))
                                            (_%K167823167861%_
                                             _%rest167871%_
                                             _%hd167869%_))))
                                    (let ((_%hd167869%_ _%hd167827167882%_)
                                          (_%rest167871%_ _%tl167828167884%_))
                                      (_%K167823167861%_
                                       _%rest167871%_
                                       _%hd167869%_))))
                              (_%else167821167840%_)))))))
                 (_%compile-inner167701%_
                  (lambda (_%pre167802%_
                           _%bind167803%_
                           _%post167804%_
                           _%body167805%_)
                    (if (null? _%pre167802%_)
                        (_%compile-bind167702%_
                         _%bind167803%_
                         _%post167804%_
                         _%body167805%_)
                        (__SRC__%
                         (cons 'let
                               (cons (reverse _%pre167802%_)
                                     (cons (_%compile-bind167702%_
                                            _%bind167803%_
                                            _%post167804%_
                                            _%body167805%_)
                                           '())))
                         _%stx167697%_))))
                 (_%compile-bind167702%_
                  (lambda (_%bind167798%_ _%post167799%_ _%body167800%_)
                    (__SRC__%
                     (cons 'letrec
                           (cons (reverse _%bind167798%_)
                                 (cons (_%compile-post167703%_
                                        _%post167799%_
                                        _%body167800%_)
                                       '())))
                     _%stx167697%_)))
                 (_%compile-post167703%_
                  (lambda (_%post167705%_ _%body167706%_)
                    (let _%lp167708%_ ((_%rest167710%_ _%post167705%_)
                                       (_%check167711%_ '())
                                       (_%bind167712%_ '()))
                      (let* ((_%rest167713167725%_ _%rest167710%_)
                             (_%else167715167733%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp169289
                                              (let ((__tmp169290
                                                     (cons _%body167706%_
                                                           '())))
                                                (declare (not safe))
                                                (foldr__0
                                                 cons
                                                 __tmp169290
                                                 _%bind167712%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          cons
                                          __tmp169289
                                          _%check167711%_)))
                                 _%stx167697%_)))
                             (_%K167717167772%_
                              (lambda (_%rest167736%_
                                       _%init167737%_
                                       _%len167738%_
                                       _%tmp167739%_)
                                (_%lp167708%_
                                 _%rest167736%_
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp167739%_
                                                    (cons _%len167738%_ '())))
                                        _%stx167697%_)
                                       _%check167711%_)
                                 (let ((__tmp169291
                                        (lambda (_%hd167741%_ _%r167742%_)
                                          (let* ((_%hd167743167750%_
                                                  _%hd167741%_)
                                                 (_%E167745167754%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%hd167743167750%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%K167746167760%_
                                                  (lambda (_%k167757%_
                                                           _%id167758%_)
                                                    (cons (cons 'set!
                                                                (cons _%id167758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '##values-ref
                                          (cons _%tmp167739%_
                                                (cons _%k167757%_ '())))
                                    '())))
                  _%r167742%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%hd167743167750%_)
                                                (let ((_%hd167747167763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd167743167750%_)))
                                                      (_%tl167748167765%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd167743167750%_))))
                                                  (let* ((_%id167768%_
                                                          _%hd167747167763%_)
                                                         (_%k167770%_
                                                          _%tl167748167765%_))
                                                    (_%K167746167760%_
                                                     _%k167770%_
                                                     _%id167768%_)))
                                                (_%E167745167754%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp169291
                                    _%bind167712%_
                                    _%init167737%_))))))
                        (if (pair? _%rest167713167725%_)
                            (let ((_%hd167718167775%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest167713167725%_)))
                                  (_%tl167719167777%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest167713167725%_))))
                              (if (pair? _%hd167718167775%_)
                                  (let ((_%hd167720167780%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%hd167718167775%_)))
                                        (_%tl167721167782%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%hd167718167775%_))))
                                    (let ((_%tmp167785%_ _%hd167720167780%_))
                                      (if (pair? _%tl167721167782%_)
                                          (let ((_%hd167722167787%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tl167721167782%_)))
                                                (_%tl167723167789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl167721167782%_))))
                                            (let* ((_%len167792%_
                                                    _%hd167722167787%_)
                                                   (_%init167794%_
                                                    _%tl167723167789%_)
                                                   (_%rest167796%_
                                                    _%tl167719167777%_))
                                              (_%K167717167772%_
                                               _%rest167796%_
                                               _%init167794%_
                                               _%len167792%_
                                               _%tmp167785%_)))
                                          (_%else167715167733%_))))
                                  (_%else167715167733%_)))
                            (_%else167715167733%_)))))))
          (__compile-let-form
           _%stx167697%_
           _%compile-simple167699%_
           _%compile-values167700%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx167448%_)
        (letrec ((_%compile-simple167450%_
                  (lambda (_%hd-ids167693%_ _%exprs167694%_ _%body167695%_)
                    (__SRC__%
                     (cons 'letrec*
                           (cons (let ((__tmp169292
                                        (map __compile-head-id
                                             _%hd-ids167693%_)))
                                   (declare (not safe))
                                   (##map list __tmp169292 _%exprs167694%_))
                                 (cons _%body167695%_ '())))
                     _%stx167448%_)))
                 (_%compile-values167451%_
                  (lambda (_%hd-ids167600%_ _%exprs167601%_ _%body167602%_)
                    (let _%lp167604%_ ((_%rest167606%_ _%hd-ids167600%_)
                                       (_%exprs167607%_ _%exprs167601%_)
                                       (_%bind167608%_ '())
                                       (_%post167609%_ '()))
                      (let* ((_%rest167610167624%_ _%rest167606%_)
                             (_%else167613167632%_
                              (lambda ()
                                (_%compile-bind167452%_
                                 _%bind167608%_
                                 _%post167609%_
                                 _%body167602%_))))
                        (let ((_%K167618167676%_
                               (lambda (_%rest167671%_ _%hd167672%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd167672%_))
                                     (let ((_%id167674%_
                                            (__SRC__0 _%hd167672%_)))
                                       (_%lp167604%_
                                        _%rest167671%_
                                        (cdr _%exprs167607%_)
                                        (cons (cons _%id167674%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind167608%_)
                                        (cons (cons _%id167674%_
                                                    (cons (car _%exprs167607%_)
                                                          '()))
                                              _%post167609%_)))
                                     (_%lp167604%_
                                      _%rest167671%_
                                      (cdr _%exprs167607%_)
                                      _%bind167608%_
                                      (cons (cons '#f
                                                  (cons (car _%exprs167607%_)
                                                        '()))
                                            _%post167609%_)))))
                              (_%K167615167656%_
                               (lambda (_%rest167636%_ _%hd167637%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd167637%_))
                                     (let ((_%id167640%_
                                            (__SRC__0 _%hd167637%_)))
                                       (_%lp167604%_
                                        _%rest167636%_
                                        (cdr _%exprs167607%_)
                                        (cons (cons _%id167640%_
                                                    (cons (cons 'quote
                                                                (cons '#!void
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%bind167608%_)
                                        (cons (cons _%id167640%_
                                                    (cons (cons 'values->list
                                                                (cons (car _%exprs167607%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%post167609%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd167637%_))
                                         (if (list? _%hd167637%_)
                                             (let* ((_%len167644%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd167637%_)))
                                                    (_%tmp167646%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp167604%_
                                                _%rest167636%_
                                                (cdr _%exprs167607%_)
                                                (let ((__tmp169293
                                                       (lambda (_%id167649%_
                                                                _%r167650%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id167649%_))
                     (cons (cons (__SRC__0 _%id167649%_)
                                 (cons (cons 'quote (cons '#!void '())) '()))
                           _%r167650%_)
                     _%r167650%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp169293
                                                   _%bind167608%_
                                                   _%hd167637%_))
                                                (cons (cons _%tmp167646%_
                                                            (cons (car _%exprs167607%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len167644%_
                                (let ((__tmp169295
                                       (lambda (_%id167652%_ _%k167653%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id167652%_))
                                             (cons (__SRC__0 _%id167652%_)
                                                   _%k167653%_)
                                             '#f)))
                                      (__tmp169294
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len167644%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp169295
                                   _%hd167637%_
                                   __tmp169294)))))
              _%post167609%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx167448%_
                                              _%hd167637%_))
                                         (_%lp167604%_
                                          _%rest167636%_
                                          (cdr _%exprs167607%_)
                                          _%bind167608%_
                                          (cons (cons '#f
                                                      (cons (car _%exprs167607%_)
                                                            '()))
                                                _%post167609%_)))))))
                          (if (pair? _%rest167610167624%_)
                              (let ((_%tl167620167681%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest167610167624%_)))
                                    (_%hd167619167679%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest167610167624%_))))
                                (if (pair? _%hd167619167679%_)
                                    (let ((_%tl167622167686%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%hd167619167679%_)))
                                          (_%hd167621167684%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%hd167619167679%_))))
                                      (if (null? _%tl167622167686%_)
                                          (let ((_%hd167689%_
                                                 _%hd167621167684%_)
                                                (_%rest167691%_
                                                 _%tl167620167681%_))
                                            (_%K167618167676%_
                                             _%rest167691%_
                                             _%hd167689%_))
                                          (let ((_%hd167664%_
                                                 _%hd167619167679%_)
                                                (_%rest167666%_
                                                 _%tl167620167681%_))
                                            (_%K167615167656%_
                                             _%rest167666%_
                                             _%hd167664%_))))
                                    (let ((_%hd167664%_ _%hd167619167679%_)
                                          (_%rest167666%_ _%tl167620167681%_))
                                      (_%K167615167656%_
                                       _%rest167666%_
                                       _%hd167664%_))))
                              (_%else167613167632%_)))))))
                 (_%compile-bind167452%_
                  (lambda (_%bind167596%_ _%post167597%_ _%body167598%_)
                    (__SRC__%
                     (cons 'let
                           (cons (reverse _%bind167596%_)
                                 (cons (_%compile-post167453%_
                                        _%post167597%_
                                        _%body167598%_)
                                       '())))
                     _%stx167448%_)))
                 (_%compile-post167453%_
                  (lambda (_%post167455%_ _%body167456%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp169296
                                  (let ((__tmp169298
                                         (lambda (_%hd167458%_ _%r167459%_)
                                           (let* ((_%hd167460167483%_
                                                   _%hd167458%_)
                                                  (_%E167464167487%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%hd167460167483%_
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
                                             (let ((_%K167477167581%_
                                                    (lambda (_%expr167579%_)
                                                      (cons _%expr167579%_
                                                            _%r167459%_)))
                                                   (_%K167472167559%_
                                                    (lambda (_%expr167556%_
                                                             _%id167557%_)
                                                      (cons (__SRC__%
                                                             (cons 'set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%id167557%_ (cons _%expr167556%_ '())))
                     _%stx167448%_)
                    _%r167459%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K167465167526%_
                                                    (lambda (_%init167491%_
                                                             _%len167492%_
                                                             _%expr167493%_
                                                             _%tmp167494%_)
                                                      (cons (__SRC__%
                                                             (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (cons _%tmp167494%_
                                             (cons _%expr167493%_ '()))
                                       '())
                                 (cons (__SRC__%
                                        (cons '__check-values
                                              (cons _%tmp167494%_
                                                    (cons _%len167492%_ '())))
                                        _%stx167448%_)
                                       (let ((__tmp169299
                                              (map (lambda (_%hd167496%_)
                                                     (let* ((_%hd167497167504%_
                                                             _%hd167496%_)
                                                            (_%E167499167508%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (error '"No clause matching"
                                _%hd167497167504%_
                                '([id . k])))
                       '#!void))
                    (_%K167500167514%_
                     (lambda (_%k167511%_ _%id167512%_)
                       (__SRC__%
                        (cons 'set!
                              (cons _%id167512%_
                                    (cons (cons '##values-ref
                                                (cons _%tmp167494%_
                                                      (cons _%k167511%_ '())))
                                          '())))
                        _%stx167448%_))))
               (if (pair? _%hd167497167504%_)
                   (let ((_%hd167501167517%_
                          (let ()
                            (declare (not safe))
                            (##car _%hd167497167504%_)))
                         (_%tl167502167519%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%hd167497167504%_))))
                     (let* ((_%id167522%_ _%hd167501167517%_)
                            (_%k167524%_ _%tl167502167519%_))
                       (_%K167500167514%_ _%k167524%_ _%id167522%_)))
                   (_%E167499167508%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%init167491%_)))
                                         (declare (not safe))
                                         (foldr__0 cons '() __tmp169299)))))
                     _%stx167448%_)
                    _%r167459%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let* ((_%__match169154169155%_
                                                       (lambda (_%hd167466167529%_
                                                                _%tl167467167531%_
                                                                _%hd167468167536%_
                                                                _%tl167469167538%_)
                                                         (let ((_%tmp167534%_
                                                                _%hd167466167529%_)
                                                               (_%expr167541%_
                                                                _%hd167468167536%_))
                                                           (_%E167464167487%_))))
                                                      (_%__match169148169149%_
                                                       (lambda (_%hd167466167529%_
                                                                _%tl167467167531%_)
                                                         (let ((_%tmp167534%_
                                                                _%hd167466167529%_))
                                                           (_%E167464167487%_)))))
                                                 (if (pair? _%hd167460167483%_)
                                                     (let ((_%tl167479167586%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%hd167460167483%_)))
                                                           (_%hd167478167584%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%hd167460167483%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##eq? _%hd167478167584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f))
                   (if (pair? _%tl167479167586%_)
                       (let ((_%tl167481167591%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl167479167586%_)))
                             (_%hd167480167589%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl167479167586%_))))
                         (if (null? _%tl167481167591%_)
                             (let ((_%expr167594%_ _%hd167480167589%_))
                               (_%K167477167581%_ _%expr167594%_))
                             (if (pair? _%tl167481167591%_)
                                 (let ((_%tl167471167545%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl167481167591%_)))
                                       (_%hd167470167543%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl167481167591%_))))
                                   (let ((_%tmp167534%_ _%hd167478167584%_)
                                         (_%expr167541%_ _%hd167480167589%_)
                                         (_%len167548%_ _%hd167470167543%_)
                                         (_%init167550%_ _%tl167471167545%_))
                                     (_%K167465167526%_
                                      _%init167550%_
                                      _%len167548%_
                                      _%expr167541%_
                                      _%tmp167534%_)))
                                 (_%__match169154169155%_
                                  _%hd167478167584%_
                                  _%tl167479167586%_
                                  _%hd167480167589%_
                                  _%tl167481167591%_))))
                       (_%__match169148169149%_
                        _%hd167478167584%_
                        _%tl167479167586%_))
                   (if (pair? _%tl167479167586%_)
                       (let ((_%tl167476167571%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%tl167479167586%_)))
                             (_%hd167475167569%_
                              (let ()
                                (declare (not safe))
                                (##car _%tl167479167586%_))))
                         (if (null? _%tl167476167571%_)
                             (let ((_%id167567%_ _%hd167478167584%_)
                                   (_%expr167574%_ _%hd167475167569%_))
                               (_%K167472167559%_ _%expr167574%_ _%id167567%_))
                             (if (pair? _%tl167476167571%_)
                                 (let ((_%tl167471167545%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%tl167476167571%_)))
                                       (_%hd167470167543%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%tl167476167571%_))))
                                   (let ((_%tmp167534%_ _%hd167478167584%_)
                                         (_%expr167541%_ _%hd167475167569%_)
                                         (_%len167548%_ _%hd167470167543%_)
                                         (_%init167550%_ _%tl167471167545%_))
                                     (_%K167465167526%_
                                      _%init167550%_
                                      _%len167548%_
                                      _%expr167541%_
                                      _%tmp167534%_)))
                                 (_%__match169154169155%_
                                  _%hd167478167584%_
                                  _%tl167479167586%_
                                  _%hd167475167569%_
                                  _%tl167476167571%_))))
                       (_%__match169148169149%_
                        _%hd167478167584%_
                        _%tl167479167586%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E167464167487%_)))))))
                                        (__tmp169297 (list _%body167456%_)))
                                    (declare (not safe))
                                    (foldl__0
                                     __tmp169298
                                     __tmp169297
                                     _%post167455%_))))
                             (declare (not safe))
                             (foldr__0 cons '() __tmp169296)))
                     _%stx167448%_))))
          (__compile-let-form
           _%stx167448%_
           _%compile-simple167450%_
           _%compile-values167451%_))))
    (define __compile-call%
      (lambda (_%stx167408%_)
        (let* ((_%$e167410%_ _%stx167408%_)
               (_%$E167412167421%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167410%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167410%_))
              (let* ((_%$tgt167413167424%_
                      (let () (declare (not safe)) (__AST-e _%$e167410%_)))
                     (_%$hd167414167427%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167413167424%_)))
                     (_%$tl167415167430%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167413167424%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167415167430%_))
                    (let* ((_%$tgt167416167434%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167415167430%_)))
                           (_%$hd167417167437%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167416167434%_)))
                           (_%$tl167418167440%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167416167434%_)))
                           (_%rator167444%_ _%$hd167417167437%_)
                           (_%rands167446%_ _%$tl167418167440%_))
                      (__SRC__%
                       (cons (__compile _%rator167444%_)
                             (map __compile _%rands167446%_))
                       _%stx167408%_))
                    (_%$E167412167421%_)))
              (_%$E167412167421%_)))))
    (define __compile-ref%
      (lambda (_%stx167370%_)
        (let* ((_%$e167372%_ _%stx167370%_)
               (_%$E167374167383%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167372%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167372%_))
              (let* ((_%$tgt167375167386%_
                      (let () (declare (not safe)) (__AST-e _%$e167372%_)))
                     (_%$hd167376167389%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167375167386%_)))
                     (_%$tl167377167392%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167375167386%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167377167392%_))
                    (let* ((_%$tgt167378167396%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167377167392%_)))
                           (_%$hd167379167399%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167378167396%_)))
                           (_%$tl167380167402%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167378167396%_)))
                           (_%id167406%_ _%$hd167379167399%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167380167402%_))
                                  '())
                          (__SRC__% _%id167406%_ _%stx167370%_)
                          (_%$E167374167383%_)))
                    (_%$E167374167383%_)))
              (_%$E167374167383%_)))))
    (define __compile-setq%
      (lambda (_%stx167317%_)
        (let* ((_%$e167319%_ _%stx167317%_)
               (_%$E167321167333%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167319%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167319%_))
              (let* ((_%$tgt167322167336%_
                      (let () (declare (not safe)) (__AST-e _%$e167319%_)))
                     (_%$hd167323167339%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167322167336%_)))
                     (_%$tl167324167342%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167322167336%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167324167342%_))
                    (let* ((_%$tgt167325167346%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167324167342%_)))
                           (_%$hd167326167349%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167325167346%_)))
                           (_%$tl167327167352%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167325167346%_)))
                           (_%id167356%_ _%$hd167326167349%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl167327167352%_))
                          (let* ((_%$tgt167328167358%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167327167352%_)))
                                 (_%$hd167329167361%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167328167358%_)))
                                 (_%$tl167330167364%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167328167358%_)))
                                 (_%expr167368%_ _%$hd167329167361%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl167330167364%_))
                                        '())
                                (__SRC__%
                                 (cons 'set!
                                       (cons (__SRC__%
                                              _%id167356%_
                                              _%stx167317%_)
                                             (cons (__compile _%expr167368%_)
                                                   '())))
                                 _%stx167317%_)
                                (_%$E167321167333%_)))
                          (_%$E167321167333%_)))
                    (_%$E167321167333%_)))
              (_%$E167321167333%_)))))
    (define __compile-if%
      (lambda (_%stx167249%_)
        (let* ((_%$e167251%_ _%stx167249%_)
               (_%$E167253167268%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167251%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167251%_))
              (let* ((_%$tgt167254167271%_
                      (let () (declare (not safe)) (__AST-e _%$e167251%_)))
                     (_%$hd167255167274%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167254167271%_)))
                     (_%$tl167256167277%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167254167271%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167256167277%_))
                    (let* ((_%$tgt167257167281%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167256167277%_)))
                           (_%$hd167258167284%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167257167281%_)))
                           (_%$tl167259167287%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167257167281%_)))
                           (_%p167291%_ _%$hd167258167284%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$tl167259167287%_))
                          (let* ((_%$tgt167260167293%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167259167287%_)))
                                 (_%$hd167261167296%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$tgt167260167293%_)))
                                 (_%$tl167262167299%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$tgt167260167293%_)))
                                 (_%t167303%_ _%$hd167261167296%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$tl167262167299%_))
                                (let* ((_%$tgt167263167305%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$tl167262167299%_)))
                                       (_%$hd167264167308%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$tgt167263167305%_)))
                                       (_%$tl167265167311%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$tgt167263167305%_)))
                                       (_%f167315%_ _%$hd167264167308%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$tl167265167311%_))
                                              '())
                                      (__SRC__%
                                       (cons 'if
                                             (cons (__compile _%p167291%_)
                                                   (cons (__compile
                                                          _%t167303%_)
                                                         (cons (__compile
                                                                _%f167315%_)
                                                               '()))))
                                       _%stx167249%_)
                                      (_%$E167253167268%_)))
                                (_%$E167253167268%_)))
                          (_%$E167253167268%_)))
                    (_%$E167253167268%_)))
              (_%$E167253167268%_)))))
    (define __compile-quote%
      (lambda (_%stx167211%_)
        (let* ((_%$e167213%_ _%stx167211%_)
               (_%$E167215167224%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167213%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167213%_))
              (let* ((_%$tgt167216167227%_
                      (let () (declare (not safe)) (__AST-e _%$e167213%_)))
                     (_%$hd167217167230%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167216167227%_)))
                     (_%$tl167218167233%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167216167227%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167218167233%_))
                    (let* ((_%$tgt167219167237%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167218167233%_)))
                           (_%$hd167220167240%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167219167237%_)))
                           (_%$tl167221167243%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167219167237%_)))
                           (_%e167247%_ _%$hd167220167240%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167221167243%_))
                                  '())
                          (__SRC__%
                           (cons 'quote
                                 (cons (let ()
                                         (declare (not safe))
                                         (__AST->datum _%e167247%_))
                                       '()))
                           _%stx167211%_)
                          (_%$E167215167224%_)))
                    (_%$E167215167224%_)))
              (_%$E167215167224%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx167173%_)
        (let* ((_%$e167175%_ _%stx167173%_)
               (_%$E167177167186%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e167175%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e167175%_))
              (let* ((_%$tgt167178167189%_
                      (let () (declare (not safe)) (__AST-e _%$e167175%_)))
                     (_%$hd167179167192%_
                      (let ()
                        (declare (not safe))
                        (##car _%$tgt167178167189%_)))
                     (_%$tl167180167195%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$tgt167178167189%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$tl167180167195%_))
                    (let* ((_%$tgt167181167199%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$tl167180167195%_)))
                           (_%$hd167182167202%_
                            (let ()
                              (declare (not safe))
                              (##car _%$tgt167181167199%_)))
                           (_%$tl167183167205%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$tgt167181167199%_)))
                           (_%e167209%_ _%$hd167182167202%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$tl167183167205%_))
                                  '())
                          (__SRC__%
                           (cons 'quote (cons _%e167209%_ '()))
                           _%stx167173%_)
                          (_%$E167177167186%_)))
                    (_%$E167177167186%_)))
              (_%$E167177167186%_)))))
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
