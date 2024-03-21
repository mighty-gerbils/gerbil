(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1710954836)
  (begin
    (define __syntax::t
      (let ((__tmp79312 (list))
            (__tmp79310
             (let ((__tmp79311
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79311 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp79312
         '(e id)
         __tmp79310
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args79121_ (apply make-instance __syntax::t _$args79121_)))
    (define __syntax-e
      (let () (declare (not safe)) (make-class-slot-accessor __syntax::t 'e)))
    (define __syntax-id
      (let () (declare (not safe)) (make-class-slot-accessor __syntax::t 'id)))
    (define __syntax-e-set!
      (let () (declare (not safe)) (make-class-slot-mutator __syntax::t 'e)))
    (define __syntax-id-set!
      (let () (declare (not safe)) (make-class-slot-mutator __syntax::t 'id)))
    (define &__syntax-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __syntax::t 'e)))
    (define &__syntax-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __syntax::t 'id)))
    (define &__syntax-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __syntax::t 'e)))
    (define &__syntax-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __syntax::t 'id)))
    (define __core-form::t
      (let ((__tmp79315 (list __syntax::t))
            (__tmp79313
             (let ((__tmp79314
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79314 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp79315
         '()
         __tmp79313
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args79118_ (apply make-instance __core-form::t _$args79118_)))
    (define __core-form-e
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-form::t 'e)))
    (define __core-form-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-form::t 'id)))
    (define __core-form-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-form::t 'e)))
    (define __core-form-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-form::t 'id)))
    (define &__core-form-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-form::t 'e)))
    (define &__core-form-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-form::t 'id)))
    (define &__core-form-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-form::t 'e)))
    (define &__core-form-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-form::t 'id)))
    (define __core-expression::t
      (let ((__tmp79318 (list __core-form::t))
            (__tmp79316
             (let ((__tmp79317
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79317 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp79318
         '()
         __tmp79316
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args79115_
        (apply make-instance __core-expression::t _$args79115_)))
    (define __core-expression-e
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-expression::t 'e)))
    (define __core-expression-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-expression::t 'id)))
    (define __core-expression-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-expression::t 'e)))
    (define __core-expression-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-expression::t 'id)))
    (define &__core-expression-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-expression::t 'e)))
    (define &__core-expression-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-expression::t 'id)))
    (define &__core-expression-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-expression::t 'e)))
    (define &__core-expression-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-expression::t 'id)))
    (define __core-special-form::t
      (let ((__tmp79321 (list __core-form::t))
            (__tmp79319
             (let ((__tmp79320
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79320 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp79321
         '()
         __tmp79319
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args79112_
        (apply make-instance __core-special-form::t _$args79112_)))
    (define __core-special-form-e
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-special-form::t 'e)))
    (define __core-special-form-id
      (let ()
        (declare (not safe))
        (make-class-slot-accessor __core-special-form::t 'id)))
    (define __core-special-form-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-special-form::t 'e)))
    (define __core-special-form-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-mutator __core-special-form::t 'id)))
    (define &__core-special-form-e
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-special-form::t 'e)))
    (define &__core-special-form-id
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-accessor __core-special-form::t 'id)))
    (define &__core-special-form-e-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-special-form::t 'e)))
    (define &__core-special-form-id-set!
      (let ()
        (declare (not safe))
        (make-class-slot-unchecked-mutator __core-special-form::t 'id)))
    (define __core (let () (declare (not safe)) (make-hash-table-eq)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve
      (lambda (_id79110_)
        (let ((__tmp79322 (let () (declare (not safe)) (__AST-e _id79110_))))
          (declare (not safe))
          (hash-get __core __tmp79322))))
    (define __core-bound-id?__%
      (lambda (_id79094_ _is?79095_)
        (let ((_$e79097_
               (let () (declare (not safe)) (__core-resolve _id79094_))))
          (if _$e79097_ (_is?79095_ _$e79097_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id79103_)
        (let ((_is?79105_ true))
          (declare (not safe))
          (__core-bound-id?__% _id79103_ _is?79105_))))
    (define __core-bound-id?
      (lambda _g79324_
        (let ((_g79323_ (let () (declare (not safe)) (##length _g79324_))))
          (cond ((let () (declare (not safe)) (##fx= _g79323_ 1))
                 (apply (lambda (_id79103_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id79103_)))
                        _g79324_))
                ((let () (declare (not safe)) (##fx= _g79323_ 2))
                 (apply (lambda (_id79107_ _is?79108_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id79107_ _is?79108_)))
                        _g79324_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g79324_))))))
    (define __core-bind-syntax!__%
      (lambda (_id79077_ _e79078_ _make79079_)
        (let ((__tmp79325
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e79078_
                      'gerbil/runtime/eval#__syntax::t))
                   _e79078_
                   (_make79079_ _e79078_ _id79077_))))
          (declare (not safe))
          (hash-put! __core _id79077_ __tmp79325))))
    (define __core-bind-syntax!__0
      (lambda (_id79084_ _e79085_)
        (let ((_make79087_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id79084_ _e79085_ _make79087_))))
    (define __core-bind-syntax!
      (lambda _g79327_
        (let ((_g79326_ (let () (declare (not safe)) (##length _g79327_))))
          (cond ((let () (declare (not safe)) (##fx= _g79326_ 2))
                 (apply (lambda (_id79084_ _e79085_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id79084_ _e79085_)))
                        _g79327_))
                ((let () (declare (not safe)) (##fx= _g79326_ 3))
                 (apply (lambda (_id79089_ _e79090_ _make79091_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id79089_
                             _e79090_
                             _make79091_)))
                        _g79327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g79327_))))))
    (define __SRC__%
      (lambda (_e79060_ _src-stx79061_)
        (if (or (let () (declare (not safe)) (pair? _e79060_))
                (let () (declare (not safe)) (symbol? _e79060_)))
            (let ((__tmp79331
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx79061_
                          'gerbil#AST::t))
                       (let ((__tmp79332
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx79061_))))
                         (declare (not safe))
                         (__locat __tmp79332))
                       '#f)))
              (declare (not safe))
              (##make-source _e79060_ __tmp79331))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e79060_ 'gerbil#AST::t))
                (let ((__tmp79330
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e79060_ '1 AST::t '#f)))
                      (__tmp79328
                       (let ((__tmp79329
                              (let ()
                                (declare (not safe))
                                (__AST-source _e79060_))))
                         (declare (not safe))
                         (__locat __tmp79329))))
                  (declare (not safe))
                  (##make-source __tmp79330 __tmp79328))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e79060_))))))
    (define __SRC__0
      (lambda (_e79069_)
        (let ((_src-stx79071_ '#f))
          (declare (not safe))
          (__SRC__% _e79069_ _src-stx79071_))))
    (define __SRC
      (lambda _g79334_
        (let ((_g79333_ (let () (declare (not safe)) (##length _g79334_))))
          (cond ((let () (declare (not safe)) (##fx= _g79333_ 1))
                 (apply (lambda (_e79069_)
                          (let () (declare (not safe)) (__SRC__0 _e79069_)))
                        _g79334_))
                ((let () (declare (not safe)) (##fx= _g79333_ 2))
                 (apply (lambda (_e79073_ _src-stx79074_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e79073_ _src-stx79074_)))
                        _g79334_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g79334_))))))
    (define __locat
      (lambda (_loc79057_)
        (if (let () (declare (not safe)) (##locat? _loc79057_))
            _loc79057_
            '#f)))
    (define __check-values
      (lambda (_obj79052_ _k79053_)
        (let ((_count79055_
               (if (let () (declare (not safe)) (##values? _obj79052_))
                   (let () (declare (not safe)) (##vector-length _obj79052_))
                   '1)))
          (if (fx= _count79055_ _k79053_)
              '#!void
              (let ((__tmp79336
                     (if (fx< _count79055_ _k79053_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp79335
                     (if (let () (declare (not safe)) (##values? _obj79052_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj79052_))
                         _obj79052_)))
                (declare (not safe))
                (error __tmp79336 __tmp79335 _k79053_))))))
    (define __compile
      (lambda (_stx79022_)
        (let* ((_$e79024_ _stx79022_)
               (_$E7902679032_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e79024_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e79024_))
              (let* ((_$tgt7902779035_
                      (let () (declare (not safe)) (__AST-e _$e79024_)))
                     (_$hd7902879038_
                      (let () (declare (not safe)) (##car _$tgt7902779035_)))
                     (_$tl7902979041_
                      (let () (declare (not safe)) (##cdr _$tgt7902779035_))))
                (let* ((_form79045_ _$hd7902879038_)
                       (_$e79047_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form79045_))))
                  (if _$e79047_
                      ((lambda (_bind79050_)
                         ((##structure-ref _bind79050_ '1 __syntax::t '#f)
                          _stx79022_))
                       _$e79047_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx79022_
                         _form79045_)))))
              (let () (declare (not safe)) (_$E7902679032_))))))
    (define __compile-error__%
      (lambda (_stx79009_ _detail79010_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx79009_
           _detail79010_))))
    (define __compile-error__0
      (lambda (_stx79015_)
        (let ((_detail79017_ '#f))
          (declare (not safe))
          (__compile-error__% _stx79015_ _detail79017_))))
    (define __compile-error
      (lambda _g79338_
        (let ((_g79337_ (let () (declare (not safe)) (##length _g79338_))))
          (cond ((let () (declare (not safe)) (##fx= _g79337_ 1))
                 (apply (lambda (_stx79015_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx79015_)))
                        _g79338_))
                ((let () (declare (not safe)) (##fx= _g79337_ 2))
                 (apply (lambda (_stx79019_ _detail79020_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx79019_ _detail79020_)))
                        _g79338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g79338_))))))
    (define __compile-ignore%
      (lambda (_stx79006_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx79006_))))
    (define __compile-begin%
      (lambda (_stx78981_)
        (let* ((_$e78983_ _stx78981_)
               (_$E7898578991_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78983_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78983_))
              (let* ((_$tgt7898678994_
                      (let () (declare (not safe)) (__AST-e _$e78983_)))
                     (_$hd7898778997_
                      (let () (declare (not safe)) (##car _$tgt7898678994_)))
                     (_$tl7898879000_
                      (let () (declare (not safe)) (##cdr _$tgt7898678994_))))
                (let* ((_body79004_ _$tl7898879000_)
                       (__tmp79339
                        (let ((__tmp79340 (map __compile _body79004_)))
                          (declare (not safe))
                          (cons 'begin __tmp79340))))
                  (declare (not safe))
                  (__SRC__% __tmp79339 _stx78981_)))
              (let () (declare (not safe)) (_$E7898578991_))))))
    (define __compile-begin-foreign%
      (lambda (_stx78956_)
        (let* ((_$e78958_ _stx78956_)
               (_$E7896078966_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78958_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78958_))
              (let* ((_$tgt7896178969_
                      (let () (declare (not safe)) (__AST-e _$e78958_)))
                     (_$hd7896278972_
                      (let () (declare (not safe)) (##car _$tgt7896178969_)))
                     (_$tl7896378975_
                      (let () (declare (not safe)) (##cdr _$tgt7896178969_))))
                (let* ((_body78979_ _$tl7896378975_)
                       (__tmp79341
                        (let ((__tmp79342
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body78979_))))
                          (declare (not safe))
                          (cons 'begin __tmp79342))))
                  (declare (not safe))
                  (__SRC__% __tmp79341 _stx78956_)))
              (let () (declare (not safe)) (_$E7896078966_))))))
    (define __compile-import%
      (lambda (_stx78931_)
        (let* ((_$e78933_ _stx78931_)
               (_$E7893578941_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78933_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78933_))
              (let* ((_$tgt7893678944_
                      (let () (declare (not safe)) (__AST-e _$e78933_)))
                     (_$hd7893778947_
                      (let () (declare (not safe)) (##car _$tgt7893678944_)))
                     (_$tl7893878950_
                      (let () (declare (not safe)) (##cdr _$tgt7893678944_))))
                (let* ((_body78954_ _$tl7893878950_)
                       (__tmp79343
                        (let ((__tmp79344
                               (let ((__tmp79345
                                      (let ((__tmp79346
                                             (let ()
                                               (declare (not safe))
                                               (cons _body78954_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp79346))))
                                 (declare (not safe))
                                 (cons __tmp79345 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp79344))))
                  (declare (not safe))
                  (__SRC__% __tmp79343 _stx78931_)))
              (let () (declare (not safe)) (_$E7893578941_))))))
    (define __compile-begin-annotation%
      (lambda (_stx78878_)
        (let* ((_$e78880_ _stx78878_)
               (_$E7888278894_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78880_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78880_))
              (let* ((_$tgt7888378897_
                      (let () (declare (not safe)) (__AST-e _$e78880_)))
                     (_$hd7888478900_
                      (let () (declare (not safe)) (##car _$tgt7888378897_)))
                     (_$tl7888578903_
                      (let () (declare (not safe)) (##cdr _$tgt7888378897_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7888578903_))
                    (let* ((_$tgt7888678907_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7888578903_)))
                           (_$hd7888778910_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7888678907_)))
                           (_$tl7888878913_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7888678907_))))
                      (let ((_ann78917_ _$hd7888778910_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7888878913_))
                            (let* ((_$tgt7888978919_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7888878913_)))
                                   (_$hd7889078922_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7888978919_)))
                                   (_$tl7889178925_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7888978919_))))
                              (let ((_expr78929_ _$hd7889078922_))
                                (if (let ((__tmp79347
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7889178925_))))
                                      (declare (not safe))
                                      (equal? __tmp79347 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr78929_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7888278894_)))))
                            (let () (declare (not safe)) (_$E7888278894_)))))
                    (let () (declare (not safe)) (_$E7888278894_))))
              (let () (declare (not safe)) (_$E7888278894_))))))
    (define __compile-define-values%
      (lambda (_stx78769_)
        (let* ((_$e78771_ _stx78769_)
               (_$E7877378785_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78771_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78771_))
              (let* ((_$tgt7877478788_
                      (let () (declare (not safe)) (__AST-e _$e78771_)))
                     (_$hd7877578791_
                      (let () (declare (not safe)) (##car _$tgt7877478788_)))
                     (_$tl7877678794_
                      (let () (declare (not safe)) (##cdr _$tgt7877478788_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7877678794_))
                    (let* ((_$tgt7877778798_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7877678794_)))
                           (_$hd7877878801_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7877778798_)))
                           (_$tl7877978804_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7877778798_))))
                      (let ((_hd78808_ _$hd7877878801_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7877978804_))
                            (let* ((_$tgt7878078810_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7877978804_)))
                                   (_$hd7878178813_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7878078810_)))
                                   (_$tl7878278816_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7878078810_))))
                              (let ((_expr78820_ _$hd7878178813_))
                                (if (let ((__tmp79380
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7878278816_))))
                                      (declare (not safe))
                                      (equal? __tmp79380 '()))
                                    (let* ((_$e78822_ _hd78808_)
                                           (_$E7882478865_
                                            (lambda ()
                                              (let ((_$E7882578850_
                                                     (lambda ()
                                                       (let* ((_$E7882678837_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e78822_))))
                      (_ids78840_ _hd78808_)
                      (_len78842_ (length _ids78840_))
                      (_tmp78844_
                       (let ((__tmp79348 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp79348))))
                 (let ((__tmp79349
                        (let ((__tmp79350
                               (let ((__tmp79367
                                      (let ((__tmp79368
                                             (let ((__tmp79369
                                                    (let ((__tmp79370
                                                           (let ((__tmp79371
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr78820_))))
                     (declare (not safe))
                     (cons __tmp79371 '()))))
              (declare (not safe))
              (cons _tmp78844_ __tmp79370))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp79369))))
                                        (declare (not safe))
                                        (__SRC__% __tmp79368 _stx78769_)))
                                     (__tmp79351
                                      (let ((__tmp79363
                                             (let ((__tmp79364
                                                    (let ((__tmp79365
                                                           (let ((__tmp79366
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len78842_ '()))))
                     (declare (not safe))
                     (cons _tmp78844_ __tmp79366))))
              (declare (not safe))
              (cons '__check-values __tmp79365))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp79364
                                                _stx78769_)))
                                            (__tmp79352
                                             (let ((__tmp79353
                                                    (let ((__tmp79355
                                                           (lambda (_id78847_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k78848_)
                     (if (let () (declare (not safe)) (__AST-e _id78847_))
                         (let ((__tmp79356
                                (let ((__tmp79357
                                       (let ((__tmp79362
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id78847_)))
                                             (__tmp79358
                                              (let ((__tmp79359
                                                     (let ((__tmp79360
                                                            (let ((__tmp79361
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k78848_ '()))))
                      (declare (not safe))
                      (cons _tmp78844_ __tmp79361))))
               (declare (not safe))
               (cons '##vector-ref __tmp79360))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79359 '()))))
                                         (declare (not safe))
                                         (cons __tmp79362 __tmp79358))))
                                  (declare (not safe))
                                  (cons 'define __tmp79357))))
                           (declare (not safe))
                           (__SRC__% __tmp79356 _stx78769_))
                         '#f)))
                  (__tmp79354 (iota _len78842_)))
              (declare (not safe))
              (filter-map2 __tmp79355 _ids78840_ __tmp79354))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp79353))))
                                        (declare (not safe))
                                        (cons __tmp79363 __tmp79352))))
                                 (declare (not safe))
                                 (cons __tmp79367 __tmp79351))))
                          (declare (not safe))
                          (cons 'begin __tmp79350))))
                   (declare (not safe))
                   (__SRC__% __tmp79349 _stx78769_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e78822_))
                                                    (let* ((_$tgt7882778853_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e78822_)))
                                                           (_$hd7882878856_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7882778853_)))
                                                           (_$tl7882978859_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7882778853_))))
                                                      (let ((_id78863_
                                                             _$hd7882878856_))
                                                        (if (let ((__tmp79377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7882978859_))))
                      (declare (not safe))
                      (equal? __tmp79377 '()))
                    (let ((__tmp79372
                           (let ((__tmp79373
                                  (let ((__tmp79376
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id78863_)))
                                        (__tmp79374
                                         (let ((__tmp79375
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr78820_))))
                                           (declare (not safe))
                                           (cons __tmp79375 '()))))
                                    (declare (not safe))
                                    (cons __tmp79376 __tmp79374))))
                             (declare (not safe))
                             (cons 'define __tmp79373))))
                      (declare (not safe))
                      (__SRC__% __tmp79372 _stx78769_))
                    (let () (declare (not safe)) (_$E7882578850_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7882578850_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e78822_))
                                          (let* ((_$tgt7883078868_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e78822_)))
                                                 (_$hd7883178871_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7883078868_)))
                                                 (_$tl7883278874_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7883078868_))))
                                            (if (let ((__tmp79379
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7883178871_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79379 '#f))
                                                (if (let ((__tmp79378
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7883278874_))))
                                                      (declare (not safe))
                                                      (equal? __tmp79378 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr78820_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7882478865_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7882478865_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7882478865_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7877378785_)))))
                            (let () (declare (not safe)) (_$E7877378785_)))))
                    (let () (declare (not safe)) (_$E7877378785_))))
              (let () (declare (not safe)) (_$E7877378785_))))))
    (define __compile-head-id
      (lambda (_e78767_)
        (let ((__tmp79381
               (if (let () (declare (not safe)) (__AST-e _e78767_))
                   _e78767_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp79381))))
    (define __compile-lambda-head
      (lambda (_hd78724_)
        (let _recur78726_ ((_rest78728_ _hd78724_))
          (let* ((_$e78730_ _rest78728_)
                 (_$E7873278750_
                  (lambda ()
                    (let ((_$E7873378747_
                           (lambda ()
                             (let* ((_$E7873478742_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e78730_))))
                                    (_tail78745_ _$e78730_))
                               (declare (not safe))
                               (__compile-head-id _tail78745_)))))
                      (if (let ((__tmp79382
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e78730_))))
                            (declare (not safe))
                            (equal? __tmp79382 '()))
                          '()
                          (let () (declare (not safe)) (_$E7873378747_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78730_))
                (let* ((_$tgt7873578753_
                        (let () (declare (not safe)) (__AST-e _$e78730_)))
                       (_$hd7873678756_
                        (let () (declare (not safe)) (##car _$tgt7873578753_)))
                       (_$tl7873778759_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7873578753_))))
                  (let* ((_hd78763_ _$hd7873678756_)
                         (_rest78765_ _$tl7873778759_))
                    (let ((__tmp79384
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd78763_)))
                          (__tmp79383
                           (let ()
                             (declare (not safe))
                             (_recur78726_ _rest78765_))))
                      (declare (not safe))
                      (cons __tmp79384 __tmp79383))))
                (let () (declare (not safe)) (_$E7873278750_)))))))
    (define __compile-lambda%
      (lambda (_stx78671_)
        (let* ((_$e78673_ _stx78671_)
               (_$E7867578687_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78673_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78673_))
              (let* ((_$tgt7867678690_
                      (let () (declare (not safe)) (__AST-e _$e78673_)))
                     (_$hd7867778693_
                      (let () (declare (not safe)) (##car _$tgt7867678690_)))
                     (_$tl7867878696_
                      (let () (declare (not safe)) (##cdr _$tgt7867678690_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7867878696_))
                    (let* ((_$tgt7867978700_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7867878696_)))
                           (_$hd7868078703_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7867978700_)))
                           (_$tl7868178706_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7867978700_))))
                      (let ((_hd78710_ _$hd7868078703_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7868178706_))
                            (let* ((_$tgt7868278712_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7868178706_)))
                                   (_$hd7868378715_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7868278712_)))
                                   (_$tl7868478718_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7868278712_))))
                              (let ((_body78722_ _$hd7868378715_))
                                (if (let ((__tmp79390
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7868478718_))))
                                      (declare (not safe))
                                      (equal? __tmp79390 '()))
                                    (let ((__tmp79385
                                           (let ((__tmp79386
                                                  (let ((__tmp79389
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd78710_)))
                                                        (__tmp79387
                                                         (let ((__tmp79388
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body78722_))))
                   (declare (not safe))
                   (cons __tmp79388 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79389
                                                          __tmp79387))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp79386))))
                                      (declare (not safe))
                                      (__SRC__% __tmp79385 _stx78671_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7867578687_)))))
                            (let () (declare (not safe)) (_$E7867578687_)))))
                    (let () (declare (not safe)) (_$E7867578687_))))
              (let () (declare (not safe)) (_$E7867578687_))))))
    (define __compile-case-lambda%
      (lambda (_stx78463_)
        (letrec ((_variadic?78465_
                  (lambda (_hd78636_)
                    (let* ((_$e78638_ _hd78636_)
                           (_$E7864078656_
                            (lambda ()
                              (let ((_$E7864178653_
                                     (lambda ()
                                       (let ((_$E7864278650_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e78638_)))))
                                         '#t))))
                                (if (let ((__tmp79391
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e78638_))))
                                      (declare (not safe))
                                      (equal? __tmp79391 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7864178653_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78638_))
                          (let* ((_$tgt7864378659_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78638_)))
                                 (_$hd7864478662_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7864378659_)))
                                 (_$tl7864578665_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7864378659_))))
                            (let ((_rest78669_ _$tl7864578665_))
                              (declare (not safe))
                              (_variadic?78465_ _rest78669_)))
                          (let () (declare (not safe)) (_$E7864078656_))))))
                 (_arity78466_
                  (lambda (_hd78601_)
                    (let _lp78603_ ((_rest78605_ _hd78601_) (_k78606_ '0))
                      (let* ((_$e78608_ _rest78605_)
                             (_$E7861078621_
                              (lambda ()
                                (let ((_$E7861178618_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e78608_)))))
                                  _k78606_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e78608_))
                            (let* ((_$tgt7861278624_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e78608_)))
                                   (_$hd7861378627_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7861278624_)))
                                   (_$tl7861478630_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7861278624_))))
                              (let* ((_rest78634_ _$tl7861478630_)
                                     (__tmp79392
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k78606_ '1))))
                                (declare (not safe))
                                (_lp78603_ _rest78634_ __tmp79392)))
                            (let () (declare (not safe)) (_$E7861078621_)))))))
                 (_generate78467_
                  (lambda (_rest78528_ _args78529_ _len78530_)
                    (let* ((_$e78532_ _rest78528_)
                           (_$E7853478545_
                            (lambda ()
                              (let* ((_$E7853578542_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e78532_))))
                                     (__tmp79393
                                      (let ((__tmp79394
                                             (let ((__tmp79395
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args78529_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp79395))))
                                        (declare (not safe))
                                        (cons 'error __tmp79394))))
                                (declare (not safe))
                                (__SRC__% __tmp79393 _stx78463_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78532_))
                          (let* ((_$tgt7853678548_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78532_)))
                                 (_$hd7853778551_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7853678548_)))
                                 (_$tl7853878554_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7853678548_))))
                            (let* ((_clause78558_ _$hd7853778551_)
                                   (_rest78560_ _$tl7853878554_)
                                   (_$e78562_ _clause78558_)
                                   (_$E7856478573_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e78562_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e78562_))
                                  (let* ((_$tgt7856578576_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e78562_)))
                                         (_$hd7856678579_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7856578576_)))
                                         (_$tl7856778582_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7856578576_))))
                                    (let ((_hd78586_ _$hd7856678579_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7856778582_))
                                          (let* ((_$tgt7856878588_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7856778582_)))
                                                 (_$hd7856978591_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7856878588_)))
                                                 (_$tl7857078594_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7856878588_))))
                                            (if (let ((__tmp79410
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7857078594_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79410 '()))
                                                (let ((_clen78598_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity78466_
                                                          _hd78586_)))
                                                      (_cmp78599_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?78465_
                                                              _hd78586_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp79396
                                                         (let ((__tmp79397
                                                                (let ((__tmp79407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79408
                                      (let ((__tmp79409
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen78598_ '()))))
                                        (declare (not safe))
                                        (cons _len78530_ __tmp79409))))
                                 (declare (not safe))
                                 (cons _cmp78599_ __tmp79408)))
                              (__tmp79398
                               (let ((__tmp79401
                                      (let ((__tmp79402
                                             (let ((__tmp79403
                                                    (let ((__tmp79405
                                                           (let ((__tmp79406
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause78558_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp79406)))
                  (__tmp79404
                   (let () (declare (not safe)) (cons _args78529_ '()))))
              (declare (not safe))
              (cons __tmp79405 __tmp79404))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp79403))))
                                        (declare (not safe))
                                        (__SRC__% __tmp79402 _stx78463_)))
                                     (__tmp79399
                                      (let ((__tmp79400
                                             (let ()
                                               (declare (not safe))
                                               (_generate78467_
                                                _rest78560_
                                                _args78529_
                                                _len78530_))))
                                        (declare (not safe))
                                        (cons __tmp79400 '()))))
                                 (declare (not safe))
                                 (cons __tmp79401 __tmp79399))))
                          (declare (not safe))
                          (cons __tmp79407 __tmp79398))))
                   (declare (not safe))
                   (cons 'if __tmp79397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp79396
                                                     _stx78463_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7856478573_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7856478573_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7856478573_)))))
                          (let () (declare (not safe)) (_$E7853478545_)))))))
          (let* ((_$e78469_ _stx78463_)
                 (_$E7847178503_
                  (lambda ()
                    (let ((_$E7847278485_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e78469_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78469_))
                          (let* ((_$tgt7847378488_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78469_)))
                                 (_$hd7847478491_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7847378488_)))
                                 (_$tl7847578494_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7847378488_))))
                            (let ((_clauses78498_ _$tl7847578494_))
                              (let ((_args78500_
                                     (let ((__tmp79411 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp79411 _stx78463_)))
                                    (_len78501_
                                     (let ((__tmp79412 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp79412 _stx78463_))))
                                (let ((__tmp79413
                                       (let ((__tmp79414
                                              (let ((__tmp79415
                                                     (let ((__tmp79416
                                                            (let ((__tmp79417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79418
                                  (let ((__tmp79421
                                         (let ((__tmp79422
                                                (let ((__tmp79423
                                                       (let ((__tmp79424
                                                              (let ((__tmp79425
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp79426
                                    (let ()
                                      (declare (not safe))
                                      (cons _args78500_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp79426))))
                        (declare (not safe))
                        (__SRC__% __tmp79425 _stx78463_))))
                 (declare (not safe))
                 (cons __tmp79424 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len78501_
                                                        __tmp79423))))
                                           (declare (not safe))
                                           (cons __tmp79422 '())))
                                        (__tmp79419
                                         (let ((__tmp79420
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate78467_
                                                   _clauses78498_
                                                   _args78500_
                                                   _len78501_))))
                                           (declare (not safe))
                                           (cons __tmp79420 '()))))
                                    (declare (not safe))
                                    (cons __tmp79421 __tmp79419))))
                             (declare (not safe))
                             (cons 'let __tmp79418))))
                      (declare (not safe))
                      (__SRC__% __tmp79417 _stx78463_))))
               (declare (not safe))
               (cons __tmp79416 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args78500_
                                                      __tmp79415))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp79414))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79413 _stx78463_)))))
                          (let () (declare (not safe)) (_$E7847278485_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78469_))
                (let* ((_$tgt7847678506_
                        (let () (declare (not safe)) (__AST-e _$e78469_)))
                       (_$hd7847778509_
                        (let () (declare (not safe)) (##car _$tgt7847678506_)))
                       (_$tl7847878512_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7847678506_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7847878512_))
                      (let* ((_$tgt7847978516_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7847878512_)))
                             (_$hd7848078519_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7847978516_)))
                             (_$tl7848178522_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7847978516_))))
                        (let ((_clause78526_ _$hd7848078519_))
                          (if (let ((__tmp79428
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7848178522_))))
                                (declare (not safe))
                                (equal? __tmp79428 '()))
                              (let ((__tmp79427
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause78526_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp79427))
                              (let () (declare (not safe)) (_$E7847178503_)))))
                      (let () (declare (not safe)) (_$E7847178503_))))
                (let () (declare (not safe)) (_$E7847178503_)))))))
    (define __compile-let-form
      (lambda (_stx78232_ _compile-simple78233_ _compile-values78234_)
        (letrec ((_simple-bind?78236_
                  (lambda (_hd78421_)
                    (let* ((_hd7842278432_ _hd78421_)
                           (_else7842578440_ (lambda () '#f)))
                      (let ((_K7842878453_ (lambda (_id78451_) '#t))
                            (_K7842778445_ (lambda () '#t)))
                        (let ((_try-match7842478448_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7842278432_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7842778445_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7842578440_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7842278432_))
                              (let ((_tl7843078458_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7842278432_)))
                                    (_hd7842978456_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7842278432_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7843078458_))
                                    (let ((_id78461_ _hd7842978456_))
                                      (declare (not safe))
                                      (_K7842878453_ _id78461_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7842478448_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7842478448_))))))))
                 (_car-e78237_
                  (lambda (_hd78419_)
                    (if (let () (declare (not safe)) (pair? _hd78419_))
                        (car _hd78419_)
                        _hd78419_))))
          (let* ((_$e78239_ _stx78232_)
                 (_$E7824178384_
                  (lambda ()
                    (let ((_$E7824278264_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e78239_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78239_))
                          (let* ((_$tgt7824378267_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78239_)))
                                 (_$hd7824478270_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7824378267_)))
                                 (_$tl7824578273_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7824378267_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7824578273_))
                                (let* ((_$tgt7824678277_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7824578273_)))
                                       (_$hd7824778280_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7824678277_)))
                                       (_$tl7824878283_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7824678277_))))
                                  (let ((_hd78287_ _$hd7824778280_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7824878283_))
                                        (let* ((_$tgt7824978289_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7824878283_)))
                                               (_$hd7825078292_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7824978289_)))
                                               (_$tl7825178295_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7824978289_))))
                                          (let ((_body78299_ _$hd7825078292_))
                                            (if (let ((__tmp79431
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7825178295_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79431 '()))
                                                (let* ((_hd-ids78339_
                                                        (map (lambda (_bind78301_)
                                                               (let* ((_$e78303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind78301_)
                              (_$E7830578314_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e78303_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e78303_))
                             (let* ((_$tgt7830678317_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e78303_)))
                                    (_$hd7830778320_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7830678317_)))
                                    (_$tl7830878323_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7830678317_))))
                               (let ((_ids78327_ _$hd7830778320_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7830878323_))
                                     (let* ((_$tgt7830978329_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7830878323_)))
                                            (_$hd7831078332_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7830978329_)))
                                            (_$tl7831178335_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7830978329_))))
                                       (if (let ((__tmp79429
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7831178335_))))
                                             (declare (not safe))
                                             (equal? __tmp79429 '()))
                                           _ids78327_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7830578314_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7830578314_)))))
                             (let () (declare (not safe)) (_$E7830578314_)))))
                     _hd78287_))
               (_exprs78379_
                (map (lambda (_bind78341_)
                       (let* ((_$e78343_ _bind78341_)
                              (_$E7834578354_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e78343_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e78343_))
                             (let* ((_$tgt7834678357_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e78343_)))
                                    (_$hd7834778360_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7834678357_)))
                                    (_$tl7834878363_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7834678357_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7834878363_))
                                   (let* ((_$tgt7834978367_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7834878363_)))
                                          (_$hd7835078370_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7834978367_)))
                                          (_$tl7835178373_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7834978367_))))
                                     (let ((_expr78377_ _$hd7835078370_))
                                       (if (let ((__tmp79430
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7835178373_))))
                                             (declare (not safe))
                                             (equal? __tmp79430 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr78377_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7834578354_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7834578354_))))
                             (let () (declare (not safe)) (_$E7834578354_)))))
                     _hd78287_))
               (_body78381_
                (let () (declare (not safe)) (__compile _body78299_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?78236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids78339_))
              (_compile-simple78233_
               (map _car-e78237_ _hd-ids78339_)
               _exprs78379_
               _body78381_)
              (_compile-values78234_ _hd-ids78339_ _exprs78379_ _body78381_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7824278264_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7824278264_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7824278264_))))
                          (let () (declare (not safe)) (_$E7824278264_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78239_))
                (let* ((_$tgt7825278387_
                        (let () (declare (not safe)) (__AST-e _$e78239_)))
                       (_$hd7825378390_
                        (let () (declare (not safe)) (##car _$tgt7825278387_)))
                       (_$tl7825478393_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7825278387_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7825478393_))
                      (let* ((_$tgt7825578397_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7825478393_)))
                             (_$hd7825678400_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7825578397_)))
                             (_$tl7825778403_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7825578397_))))
                        (if (let ((__tmp79433
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7825678400_))))
                              (declare (not safe))
                              (equal? __tmp79433 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7825778403_))
                                (let* ((_$tgt7825878407_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7825778403_)))
                                       (_$hd7825978410_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7825878407_)))
                                       (_$tl7826078413_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7825878407_))))
                                  (let ((_body78417_ _$hd7825978410_))
                                    (if (let ((__tmp79432
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7826078413_))))
                                          (declare (not safe))
                                          (equal? __tmp79432 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body78417_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7824178384_)))))
                                (let () (declare (not safe)) (_$E7824178384_)))
                            (let () (declare (not safe)) (_$E7824178384_))))
                      (let () (declare (not safe)) (_$E7824178384_))))
                (let () (declare (not safe)) (_$E7824178384_)))))))
    (define __compile-let-values%
      (lambda (_stx78047_)
        (letrec ((_compile-simple78049_
                  (lambda (_hd-ids78228_ _exprs78229_ _body78230_)
                    (let ((__tmp79434
                           (let ((__tmp79435
                                  (let ((__tmp79437
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids78228_)
                                              _exprs78229_))
                                        (__tmp79436
                                         (let ()
                                           (declare (not safe))
                                           (cons _body78230_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79437 __tmp79436))))
                             (declare (not safe))
                             (cons 'let __tmp79435))))
                      (declare (not safe))
                      (__SRC__% __tmp79434 _stx78047_))))
                 (_compile-values78050_
                  (lambda (_hd-ids78146_ _exprs78147_ _body78148_)
                    (let _lp78150_ ((_rest78152_ _hd-ids78146_)
                                    (_exprs78153_ _exprs78147_)
                                    (_bind78154_ '())
                                    (_post78155_ '()))
                      (let* ((_rest7815678170_ _rest78152_)
                             (_else7815978178_
                              (lambda ()
                                (let ((__tmp79438
                                       (let ((__tmp79439
                                              (let ((__tmp79442
                                                     (reverse _bind78154_))
                                                    (__tmp79440
                                                     (let ((__tmp79441
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post78051_
                                                               _post78155_
                                                               _body78148_))))
                                                       (declare (not safe))
                                                       (cons __tmp79441 '()))))
                                                (declare (not safe))
                                                (cons __tmp79442 __tmp79440))))
                                         (declare (not safe))
                                         (cons 'let __tmp79439))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79438 _stx78047_)))))
                        (let ((_K7816478211_
                               (lambda (_rest78208_ _id78209_)
                                 (let ((__tmp79448 (cdr _exprs78153_))
                                       (__tmp79443
                                        (let ((__tmp79444
                                               (let ((__tmp79447
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id78209_)))
                                                     (__tmp79445
                                                      (let ((__tmp79446
                                                             (car _exprs78153_)))
                                                        (declare (not safe))
                                                        (cons __tmp79446
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp79447
                                                       __tmp79445))))
                                          (declare (not safe))
                                          (cons __tmp79444 _bind78154_))))
                                   (declare (not safe))
                                   (_lp78150_
                                    _rest78208_
                                    __tmp79448
                                    __tmp79443
                                    _post78155_))))
                              (_K7816178193_
                               (lambda (_rest78182_ _hd78183_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd78183_))
                                     (let ((__tmp79469 (cdr _exprs78153_))
                                           (__tmp79462
                                            (let ((__tmp79463
                                                   (let ((__tmp79468
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd78183_)))
                                                         (__tmp79464
                                                          (let ((__tmp79465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp79466
                                (let ((__tmp79467 (car _exprs78153_)))
                                  (declare (not safe))
                                  (cons __tmp79467 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp79466))))
                    (declare (not safe))
                    (cons __tmp79465 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79468
                                                           __tmp79464))))
                                              (declare (not safe))
                                              (cons __tmp79463 _bind78154_))))
                                       (declare (not safe))
                                       (_lp78150_
                                        _rest78182_
                                        __tmp79469
                                        __tmp79462
                                        _post78155_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd78183_))
                                         (let* ((_len78185_ (length _hd78183_))
                                                (_tmp78187_
                                                 (let ((__tmp79449 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp79449))))
                                           (let ((__tmp79461
                                                  (cdr _exprs78153_))
                                                 (__tmp79457
                                                  (let ((__tmp79458
                                                         (let ((__tmp79459
                                                                (let ((__tmp79460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs78153_)))
                          (declare (not safe))
                          (cons __tmp79460 '()))))
                   (declare (not safe))
                   (cons _tmp78187_ __tmp79459))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79458
                                                          _bind78154_)))
                                                 (__tmp79450
                                                  (let ((__tmp79451
                                                         (let ((__tmp79452
                                                                (let ((__tmp79453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79455
                                      (lambda (_id78190_ _k78191_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id78190_))
                                            (let ((__tmp79456
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id78190_))))
                                              (declare (not safe))
                                              (cons __tmp79456 _k78191_))
                                            '#f)))
                                     (__tmp79454 (iota _len78185_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp79455
                                  _hd78183_
                                  __tmp79454))))
                          (declare (not safe))
                          (cons _len78185_ __tmp79453))))
                   (declare (not safe))
                   (cons _tmp78187_ __tmp79452))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79451
                                                          _post78155_))))
                                             (declare (not safe))
                                             (_lp78150_
                                              _rest78182_
                                              __tmp79461
                                              __tmp79457
                                              __tmp79450)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx78047_
                                            _hd78183_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7815678170_))
                              (let ((_tl7816678216_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7815678170_)))
                                    (_hd7816578214_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7815678170_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7816578214_))
                                    (let ((_tl7816878221_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7816578214_)))
                                          (_hd7816778219_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7816578214_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7816878221_))
                                          (let ((_id78224_ _hd7816778219_)
                                                (_rest78226_ _tl7816678216_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7816478211_
                                               _rest78226_
                                               _id78224_)))
                                          (let ((_hd78201_ _hd7816578214_)
                                                (_rest78203_ _tl7816678216_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7816178193_
                                               _rest78203_
                                               _hd78201_)))))
                                    (let ((_hd78201_ _hd7816578214_)
                                          (_rest78203_ _tl7816678216_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7816178193_
                                         _rest78203_
                                         _hd78201_)))))
                              (let ()
                                (declare (not safe))
                                (_else7815978178_))))))))
                 (_compile-post78051_
                  (lambda (_post78053_ _body78054_)
                    (let _lp78056_ ((_rest78058_ _post78053_)
                                    (_check78059_ '())
                                    (_bind78060_ '()))
                      (let* ((_rest7806178073_ _rest78058_)
                             (_else7806378081_
                              (lambda ()
                                (let ((__tmp79470
                                       (let ((__tmp79471
                                              (let ((__tmp79472
                                                     (let ((__tmp79473
                                                            (let ((__tmp79474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79475
                                  (let ((__tmp79476
                                         (let ()
                                           (declare (not safe))
                                           (cons _body78054_ '()))))
                                    (declare (not safe))
                                    (cons _bind78060_ __tmp79476))))
                             (declare (not safe))
                             (cons 'let __tmp79475))))
                      (declare (not safe))
                      (__SRC__% __tmp79474 _stx78047_))))
               (declare (not safe))
               (cons __tmp79473 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp79472
                                                        _check78059_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp79471))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79470 _stx78047_))))
                             (_K7806578120_
                              (lambda (_rest78084_
                                       _init78085_
                                       _len78086_
                                       _tmp78087_)
                                (let ((__tmp79484
                                       (let ((__tmp79485
                                              (let ((__tmp79486
                                                     (let ((__tmp79487
                                                            (let ((__tmp79488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len78086_ '()))))
                      (declare (not safe))
                      (cons _tmp78087_ __tmp79488))))
               (declare (not safe))
               (cons '__check-values __tmp79487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp79486
                                                 _stx78047_))))
                                         (declare (not safe))
                                         (cons __tmp79485 _check78059_)))
                                      (__tmp79477
                                       (let ((__tmp79478
                                              (lambda (_hd78089_ _r78090_)
                                                (let* ((_hd7809178098_
                                                        _hd78089_)
                                                       (_E7809378102_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7809178098_))))
               (_K7809478108_
                (lambda (_k78105_ _id78106_)
                  (let ((__tmp79479
                         (let ((__tmp79480
                                (let ((__tmp79481
                                       (let ((__tmp79482
                                              (let ((__tmp79483
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k78105_ '()))))
                                                (declare (not safe))
                                                (cons _tmp78087_ __tmp79483))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp79482))))
                                  (declare (not safe))
                                  (cons __tmp79481 '()))))
                           (declare (not safe))
                           (cons _id78106_ __tmp79480))))
                    (declare (not safe))
                    (cons __tmp79479 _r78090_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7809178098_))
                                                      (let ((_hd7809578111_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7809178098_)))
                    (_tl7809678113_
                     (let () (declare (not safe)) (##cdr _hd7809178098_))))
                (let* ((_id78116_ _hd7809578111_) (_k78118_ _tl7809678113_))
                  (declare (not safe))
                  (_K7809478108_ _k78118_ _id78116_)))
              (let () (declare (not safe)) (_E7809378102_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp79478
                                                 _bind78060_
                                                 _init78085_))))
                                  (declare (not safe))
                                  (_lp78056_
                                   _rest78084_
                                   __tmp79484
                                   __tmp79477)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7806178073_))
                            (let ((_hd7806678123_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7806178073_)))
                                  (_tl7806778125_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7806178073_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7806678123_))
                                  (let ((_hd7806878128_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7806678123_)))
                                        (_tl7806978130_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7806678123_))))
                                    (let ((_tmp78133_ _hd7806878128_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7806978130_))
                                          (let ((_hd7807078135_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7806978130_)))
                                                (_tl7807178137_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7806978130_))))
                                            (let* ((_len78140_ _hd7807078135_)
                                                   (_init78142_ _tl7807178137_)
                                                   (_rest78144_
                                                    _tl7806778125_))
                                              (declare (not safe))
                                              (_K7806578120_
                                               _rest78144_
                                               _init78142_
                                               _len78140_
                                               _tmp78133_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7806378081_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7806378081_))))
                            (let ()
                              (declare (not safe))
                              (_else7806378081_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx78047_
             _compile-simple78049_
             _compile-values78050_)))))
    (define __compile-letrec-values%
      (lambda (_stx77847_)
        (letrec ((_compile-simple77849_
                  (lambda (_hd-ids78043_ _exprs78044_ _body78045_)
                    (let ((__tmp79489
                           (let ((__tmp79490
                                  (let ((__tmp79492
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids78043_)
                                              _exprs78044_))
                                        (__tmp79491
                                         (let ()
                                           (declare (not safe))
                                           (cons _body78045_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79492 __tmp79491))))
                             (declare (not safe))
                             (cons 'letrec __tmp79490))))
                      (declare (not safe))
                      (__SRC__% __tmp79489 _stx77847_))))
                 (_compile-values77850_
                  (lambda (_hd-ids77957_ _exprs77958_ _body77959_)
                    (let _lp77961_ ((_rest77963_ _hd-ids77957_)
                                    (_exprs77964_ _exprs77958_)
                                    (_pre77965_ '())
                                    (_bind77966_ '())
                                    (_post77967_ '()))
                      (let* ((_rest7796877982_ _rest77963_)
                             (_else7797177990_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner77851_
                                   _pre77965_
                                   _bind77966_
                                   _post77967_
                                   _body77959_)))))
                        (let ((_K7797678026_
                               (lambda (_rest78023_ _id78024_)
                                 (let ((__tmp79498 (cdr _exprs77964_))
                                       (__tmp79493
                                        (let ((__tmp79494
                                               (let ((__tmp79497
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id78024_)))
                                                     (__tmp79495
                                                      (let ((__tmp79496
                                                             (car _exprs77964_)))
                                                        (declare (not safe))
                                                        (cons __tmp79496
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp79497
                                                       __tmp79495))))
                                          (declare (not safe))
                                          (cons __tmp79494 _bind77966_))))
                                   (declare (not safe))
                                   (_lp77961_
                                    _rest78023_
                                    __tmp79498
                                    _pre77965_
                                    __tmp79493
                                    _post77967_))))
                              (_K7797378008_
                               (lambda (_rest77994_ _hd77995_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77995_))
                                     (let ((__tmp79526 (cdr _exprs77964_))
                                           (__tmp79519
                                            (let ((__tmp79520
                                                   (let ((__tmp79525
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd77995_)))
                                                         (__tmp79521
                                                          (let ((__tmp79522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp79523
                                (let ((__tmp79524 (car _exprs77964_)))
                                  (declare (not safe))
                                  (cons __tmp79524 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp79523))))
                    (declare (not safe))
                    (cons __tmp79522 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79525
                                                           __tmp79521))))
                                              (declare (not safe))
                                              (cons __tmp79520 _bind77966_))))
                                       (declare (not safe))
                                       (_lp77961_
                                        _rest77994_
                                        __tmp79526
                                        _pre77965_
                                        __tmp79519
                                        _post77967_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd77995_))
                                         (let* ((_len77997_ (length _hd77995_))
                                                (_tmp77999_
                                                 (let ((__tmp79499 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp79499))))
                                           (let ((__tmp79518
                                                  (cdr _exprs77964_))
                                                 (__tmp79511
                                                  (let ((__tmp79512
                                                         (lambda (_id78002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r78003_)
                   (if (let () (declare (not safe)) (__AST-e _id78002_))
                       (let ((__tmp79513
                              (let ((__tmp79517
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id78002_)))
                                    (__tmp79514
                                     (let ((__tmp79515
                                            (let ((__tmp79516
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp79516))))
                                       (declare (not safe))
                                       (cons __tmp79515 '()))))
                                (declare (not safe))
                                (cons __tmp79517 __tmp79514))))
                         (declare (not safe))
                         (cons __tmp79513 _r78003_))
                       _r78003_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp79512
                                                            _pre77965_
                                                            _hd77995_)))
                                                 (__tmp79507
                                                  (let ((__tmp79508
                                                         (let ((__tmp79509
                                                                (let ((__tmp79510
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs77964_)))
                          (declare (not safe))
                          (cons __tmp79510 '()))))
                   (declare (not safe))
                   (cons _tmp77999_ __tmp79509))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79508
                                                          _bind77966_)))
                                                 (__tmp79500
                                                  (let ((__tmp79501
                                                         (let ((__tmp79502
                                                                (let ((__tmp79503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79505
                                      (lambda (_id78005_ _k78006_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id78005_))
                                            (let ((__tmp79506
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id78005_))))
                                              (declare (not safe))
                                              (cons __tmp79506 _k78006_))
                                            '#f)))
                                     (__tmp79504 (iota _len77997_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp79505
                                  _hd77995_
                                  __tmp79504))))
                          (declare (not safe))
                          (cons _len77997_ __tmp79503))))
                   (declare (not safe))
                   (cons _tmp77999_ __tmp79502))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79501
                                                          _post77967_))))
                                             (declare (not safe))
                                             (_lp77961_
                                              _rest77994_
                                              __tmp79518
                                              __tmp79511
                                              __tmp79507
                                              __tmp79500)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx77847_
                                            _hd77995_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7796877982_))
                              (let ((_tl7797878031_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7796877982_)))
                                    (_hd7797778029_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7796877982_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7797778029_))
                                    (let ((_tl7798078036_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7797778029_)))
                                          (_hd7797978034_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7797778029_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7798078036_))
                                          (let ((_id78039_ _hd7797978034_)
                                                (_rest78041_ _tl7797878031_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7797678026_
                                               _rest78041_
                                               _id78039_)))
                                          (let ((_hd78016_ _hd7797778029_)
                                                (_rest78018_ _tl7797878031_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7797378008_
                                               _rest78018_
                                               _hd78016_)))))
                                    (let ((_hd78016_ _hd7797778029_)
                                          (_rest78018_ _tl7797878031_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7797378008_
                                         _rest78018_
                                         _hd78016_)))))
                              (let ()
                                (declare (not safe))
                                (_else7797177990_))))))))
                 (_compile-inner77851_
                  (lambda (_pre77952_ _bind77953_ _post77954_ _body77955_)
                    (if (let () (declare (not safe)) (null? _pre77952_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind77852_
                           _bind77953_
                           _post77954_
                           _body77955_))
                        (let ((__tmp79527
                               (let ((__tmp79528
                                      (let ((__tmp79531 (reverse _pre77952_))
                                            (__tmp79529
                                             (let ((__tmp79530
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind77852_
                                                       _bind77953_
                                                       _post77954_
                                                       _body77955_))))
                                               (declare (not safe))
                                               (cons __tmp79530 '()))))
                                        (declare (not safe))
                                        (cons __tmp79531 __tmp79529))))
                                 (declare (not safe))
                                 (cons 'let __tmp79528))))
                          (declare (not safe))
                          (__SRC__% __tmp79527 _stx77847_)))))
                 (_compile-bind77852_
                  (lambda (_bind77948_ _post77949_ _body77950_)
                    (let ((__tmp79532
                           (let ((__tmp79533
                                  (let ((__tmp79536 (reverse _bind77948_))
                                        (__tmp79534
                                         (let ((__tmp79535
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post77853_
                                                   _post77949_
                                                   _body77950_))))
                                           (declare (not safe))
                                           (cons __tmp79535 '()))))
                                    (declare (not safe))
                                    (cons __tmp79536 __tmp79534))))
                             (declare (not safe))
                             (cons 'letrec __tmp79533))))
                      (declare (not safe))
                      (__SRC__% __tmp79532 _stx77847_))))
                 (_compile-post77853_
                  (lambda (_post77855_ _body77856_)
                    (let _lp77858_ ((_rest77860_ _post77855_)
                                    (_check77861_ '())
                                    (_bind77862_ '()))
                      (let* ((_rest7786377875_ _rest77860_)
                             (_else7786577883_
                              (lambda ()
                                (let ((__tmp79537
                                       (let ((__tmp79538
                                              (let ((__tmp79539
                                                     (let ((__tmp79540
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body77856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp79540 _bind77862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp79539
                                                        _check77861_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp79538))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79537 _stx77847_))))
                             (_K7786777922_
                              (lambda (_rest77886_
                                       _init77887_
                                       _len77888_
                                       _tmp77889_)
                                (let ((__tmp79549
                                       (let ((__tmp79550
                                              (let ((__tmp79551
                                                     (let ((__tmp79552
                                                            (let ((__tmp79553
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len77888_ '()))))
                      (declare (not safe))
                      (cons _tmp77889_ __tmp79553))))
               (declare (not safe))
               (cons '__check-values __tmp79552))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp79551
                                                 _stx77847_))))
                                         (declare (not safe))
                                         (cons __tmp79550 _check77861_)))
                                      (__tmp79541
                                       (let ((__tmp79542
                                              (lambda (_hd77891_ _r77892_)
                                                (let* ((_hd7789377900_
                                                        _hd77891_)
                                                       (_E7789577904_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7789377900_))))
               (_K7789677910_
                (lambda (_k77907_ _id77908_)
                  (let ((__tmp79543
                         (let ((__tmp79544
                                (let ((__tmp79545
                                       (let ((__tmp79546
                                              (let ((__tmp79547
                                                     (let ((__tmp79548
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k77907_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp77889_ __tmp79548))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp79547))))
                                         (declare (not safe))
                                         (cons __tmp79546 '()))))
                                  (declare (not safe))
                                  (cons _id77908_ __tmp79545))))
                           (declare (not safe))
                           (cons 'set! __tmp79544))))
                    (declare (not safe))
                    (cons __tmp79543 _r77892_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7789377900_))
                                                      (let ((_hd7789777913_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7789377900_)))
                    (_tl7789877915_
                     (let () (declare (not safe)) (##cdr _hd7789377900_))))
                (let* ((_id77918_ _hd7789777913_) (_k77920_ _tl7789877915_))
                  (declare (not safe))
                  (_K7789677910_ _k77920_ _id77918_)))
              (let () (declare (not safe)) (_E7789577904_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp79542
                                                 _bind77862_
                                                 _init77887_))))
                                  (declare (not safe))
                                  (_lp77858_
                                   _rest77886_
                                   __tmp79549
                                   __tmp79541)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7786377875_))
                            (let ((_hd7786877925_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7786377875_)))
                                  (_tl7786977927_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7786377875_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7786877925_))
                                  (let ((_hd7787077930_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7786877925_)))
                                        (_tl7787177932_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7786877925_))))
                                    (let ((_tmp77935_ _hd7787077930_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7787177932_))
                                          (let ((_hd7787277937_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7787177932_)))
                                                (_tl7787377939_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7787177932_))))
                                            (let* ((_len77942_ _hd7787277937_)
                                                   (_init77944_ _tl7787377939_)
                                                   (_rest77946_
                                                    _tl7786977927_))
                                              (declare (not safe))
                                              (_K7786777922_
                                               _rest77946_
                                               _init77944_
                                               _len77942_
                                               _tmp77935_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7786577883_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7786577883_))))
                            (let ()
                              (declare (not safe))
                              (_else7786577883_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx77847_
             _compile-simple77849_
             _compile-values77850_)))))
    (define __compile-letrec*-values%
      (lambda (_stx77602_)
        (letrec ((_compile-simple77604_
                  (lambda (_hd-ids77843_ _exprs77844_ _body77845_)
                    (let ((__tmp79554
                           (let ((__tmp79555
                                  (let ((__tmp79557
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids77843_)
                                              _exprs77844_))
                                        (__tmp79556
                                         (let ()
                                           (declare (not safe))
                                           (cons _body77845_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79557 __tmp79556))))
                             (declare (not safe))
                             (cons 'letrec* __tmp79555))))
                      (declare (not safe))
                      (__SRC__% __tmp79554 _stx77602_))))
                 (_compile-values77605_
                  (lambda (_hd-ids77754_ _exprs77755_ _body77756_)
                    (let _lp77758_ ((_rest77760_ _hd-ids77754_)
                                    (_exprs77761_ _exprs77755_)
                                    (_bind77762_ '())
                                    (_post77763_ '()))
                      (let* ((_rest7776477778_ _rest77760_)
                             (_else7776777786_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind77606_
                                   _bind77762_
                                   _post77763_
                                   _body77756_)))))
                        (let ((_K7777277826_
                               (lambda (_rest77821_ _hd77822_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77822_))
                                     (let ((_id77824_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd77822_))))
                                       (let ((__tmp79572 (cdr _exprs77761_))
                                             (__tmp79567
                                              (let ((__tmp79568
                                                     (let ((__tmp79569
                                                            (let ((__tmp79570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79571
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp79571))))
                      (declare (not safe))
                      (cons __tmp79570 '()))))
               (declare (not safe))
               (cons _id77824_ __tmp79569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79568 _bind77762_)))
                                             (__tmp79563
                                              (let ((__tmp79564
                                                     (let ((__tmp79565
                                                            (let ((__tmp79566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs77761_)))
                      (declare (not safe))
                      (cons __tmp79566 '()))))
               (declare (not safe))
               (cons _id77824_ __tmp79565))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79564
                                                      _post77763_))))
                                         (declare (not safe))
                                         (_lp77758_
                                          _rest77821_
                                          __tmp79572
                                          __tmp79567
                                          __tmp79563)))
                                     (let ((__tmp79562 (cdr _exprs77761_))
                                           (__tmp79558
                                            (let ((__tmp79559
                                                   (let ((__tmp79560
                                                          (let ((__tmp79561
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs77761_)))
                    (declare (not safe))
                    (cons __tmp79561 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp79560))))
                                              (declare (not safe))
                                              (cons __tmp79559 _post77763_))))
                                       (declare (not safe))
                                       (_lp77758_
                                        _rest77821_
                                        __tmp79562
                                        _bind77762_
                                        __tmp79558)))))
                              (_K7776977806_
                               (lambda (_rest77790_ _hd77791_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77791_))
                                     (let ((_id77793_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd77791_))))
                                       (let ((__tmp79608 (cdr _exprs77761_))
                                             (__tmp79603
                                              (let ((__tmp79604
                                                     (let ((__tmp79605
                                                            (let ((__tmp79606
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79607
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp79607))))
                      (declare (not safe))
                      (cons __tmp79606 '()))))
               (declare (not safe))
               (cons _id77793_ __tmp79605))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79604 _bind77762_)))
                                             (__tmp79597
                                              (let ((__tmp79598
                                                     (let ((__tmp79599
                                                            (let ((__tmp79600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79601
                                  (let ((__tmp79602 (car _exprs77761_)))
                                    (declare (not safe))
                                    (cons __tmp79602 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp79601))))
                      (declare (not safe))
                      (cons __tmp79600 '()))))
               (declare (not safe))
               (cons _id77793_ __tmp79599))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79598
                                                      _post77763_))))
                                         (declare (not safe))
                                         (_lp77758_
                                          _rest77790_
                                          __tmp79608
                                          __tmp79603
                                          __tmp79597)))
                                     (if (let ((__tmp79596
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd77791_))))
                                           (declare (not safe))
                                           (not __tmp79596))
                                         (let ((__tmp79595 (cdr _exprs77761_))
                                               (__tmp79591
                                                (let ((__tmp79592
                                                       (let ((__tmp79593
                                                              (let ((__tmp79594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs77761_)))
                        (declare (not safe))
                        (cons __tmp79594 '()))))
                 (declare (not safe))
                 (cons '#f __tmp79593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79592
                                                        _post77763_))))
                                           (declare (not safe))
                                           (_lp77758_
                                            _rest77790_
                                            __tmp79595
                                            _bind77762_
                                            __tmp79591))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd77791_))
                                             (let* ((_len77795_
                                                     (length _hd77791_))
                                                    (_tmp77797_
                                                     (let ((__tmp79573
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp79573))))
                                               (let ((__tmp79590
                                                      (cdr _exprs77761_))
                                                     (__tmp79583
                                                      (let ((__tmp79584
                                                             (lambda (_id77800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r77801_)
                       (if (let () (declare (not safe)) (__AST-e _id77800_))
                           (let ((__tmp79585
                                  (let ((__tmp79589
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id77800_)))
                                        (__tmp79586
                                         (let ((__tmp79587
                                                (let ((__tmp79588
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp79588))))
                                           (declare (not safe))
                                           (cons __tmp79587 '()))))
                                    (declare (not safe))
                                    (cons __tmp79589 __tmp79586))))
                             (declare (not safe))
                             (cons __tmp79585 _r77801_))
                           _r77801_))))
                (declare (not safe))
                (foldl1 __tmp79584 _bind77762_ _hd77791_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp79574
                                                      (let ((__tmp79575
                                                             (let ((__tmp79576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp79582 (car _exprs77761_))
                                  (__tmp79577
                                   (let ((__tmp79578
                                          (let ((__tmp79580
                                                 (lambda (_id77803_ _k77804_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id77803_))
                                                       (let ((__tmp79581
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id77803_))))
                 (declare (not safe))
                 (cons __tmp79581 _k77804_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp79579 (iota _len77795_)))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp79580
                                             _hd77791_
                                             __tmp79579))))
                                     (declare (not safe))
                                     (cons _len77795_ __tmp79578))))
                              (declare (not safe))
                              (cons __tmp79582 __tmp79577))))
                       (declare (not safe))
                       (cons _tmp77797_ __tmp79576))))
                (declare (not safe))
                (cons __tmp79575 _post77763_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp77758_
                                                  _rest77790_
                                                  __tmp79590
                                                  __tmp79583
                                                  __tmp79574)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx77602_
                                                _hd77791_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7776477778_))
                              (let ((_tl7777477831_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7776477778_)))
                                    (_hd7777377829_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7776477778_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7777377829_))
                                    (let ((_tl7777677836_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7777377829_)))
                                          (_hd7777577834_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7777377829_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7777677836_))
                                          (let ((_hd77839_ _hd7777577834_)
                                                (_rest77841_ _tl7777477831_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7777277826_
                                               _rest77841_
                                               _hd77839_)))
                                          (let ((_hd77814_ _hd7777377829_)
                                                (_rest77816_ _tl7777477831_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7776977806_
                                               _rest77816_
                                               _hd77814_)))))
                                    (let ((_hd77814_ _hd7777377829_)
                                          (_rest77816_ _tl7777477831_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7776977806_
                                         _rest77816_
                                         _hd77814_)))))
                              (let ()
                                (declare (not safe))
                                (_else7776777786_))))))))
                 (_compile-bind77606_
                  (lambda (_bind77750_ _post77751_ _body77752_)
                    (let ((__tmp79609
                           (let ((__tmp79610
                                  (let ((__tmp79613 (reverse _bind77750_))
                                        (__tmp79611
                                         (let ((__tmp79612
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post77607_
                                                   _post77751_
                                                   _body77752_))))
                                           (declare (not safe))
                                           (cons __tmp79612 '()))))
                                    (declare (not safe))
                                    (cons __tmp79613 __tmp79611))))
                             (declare (not safe))
                             (cons 'let __tmp79610))))
                      (declare (not safe))
                      (__SRC__% __tmp79609 _stx77602_))))
                 (_compile-post77607_
                  (lambda (_post77609_ _body77610_)
                    (let ((__tmp79614
                           (let ((__tmp79615
                                  (let ((__tmp79616
                                         (let ((__tmp79618
                                                (lambda (_hd77612_ _r77613_)
                                                  (let* ((_hd7761477637_
                                                          _hd77612_)
                                                         (_E7761877641_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7761477637_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7763177735_
                                                           (lambda (_expr77733_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr77733_ _r77613_))))
                  (_K7762677713_
                   (lambda (_expr77710_ _id77711_)
                     (let ((__tmp79619
                            (let ((__tmp79620
                                   (let ((__tmp79621
                                          (let ((__tmp79622
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr77710_ '()))))
                                            (declare (not safe))
                                            (cons _id77711_ __tmp79622))))
                                     (declare (not safe))
                                     (cons 'set! __tmp79621))))
                              (declare (not safe))
                              (__SRC__% __tmp79620 _stx77602_))))
                       (declare (not safe))
                       (cons __tmp79619 _r77613_))))
                  (_K7761977680_
                   (lambda (_init77645_ _len77646_ _expr77647_ _tmp77648_)
                     (let ((__tmp79623
                            (let ((__tmp79624
                                   (let ((__tmp79625
                                          (let ((__tmp79639
                                                 (let ((__tmp79640
                                                        (let ((__tmp79641
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr77647_ '()))))
                  (declare (not safe))
                  (cons _tmp77648_ __tmp79641))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp79640 '())))
                                                (__tmp79626
                                                 (let ((__tmp79635
                                                        (let ((__tmp79636
                                                               (let ((__tmp79637
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp79638
                                     (let ()
                                       (declare (not safe))
                                       (cons _len77646_ '()))))
                                (declare (not safe))
                                (cons _tmp77648_ __tmp79638))))
                         (declare (not safe))
                         (cons '__check-values __tmp79637))))
                  (declare (not safe))
                  (__SRC__% __tmp79636 _stx77602_)))
               (__tmp79627
                (let ((__tmp79628
                       (map (lambda (_hd77650_)
                              (let* ((_hd7765177658_ _hd77650_)
                                     (_E7765377662_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7765177658_))))
                                     (_K7765477668_
                                      (lambda (_k77665_ _id77666_)
                                        (let ((__tmp79629
                                               (let ((__tmp79630
                                                      (let ((__tmp79631
                                                             (let ((__tmp79632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp79633
                                   (let ((__tmp79634
                                          (let ()
                                            (declare (not safe))
                                            (cons _k77665_ '()))))
                                     (declare (not safe))
                                     (cons _tmp77648_ __tmp79634))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp79633))))
                       (declare (not safe))
                       (cons __tmp79632 '()))))
                (declare (not safe))
                (cons _id77666_ __tmp79631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp79630))))
                                          (declare (not safe))
                                          (__SRC__% __tmp79629 _stx77602_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7765177658_))
                                    (let ((_hd7765577671_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7765177658_)))
                                          (_tl7765677673_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7765177658_))))
                                      (let* ((_id77676_ _hd7765577671_)
                                             (_k77678_ _tl7765677673_))
                                        (declare (not safe))
                                        (_K7765477668_ _k77678_ _id77676_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7765377662_)))))
                            _init77645_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp79628))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp79635
                                                         __tmp79627))))
                                            (declare (not safe))
                                            (cons __tmp79639 __tmp79626))))
                                     (declare (not safe))
                                     (cons 'let __tmp79625))))
                              (declare (not safe))
                              (__SRC__% __tmp79624 _stx77602_))))
                       (declare (not safe))
                       (cons __tmp79623 _r77613_)))))
              (if (let () (declare (not safe)) (##pair? _hd7761477637_))
                  (let ((_tl7763377740_
                         (let () (declare (not safe)) (##cdr _hd7761477637_)))
                        (_hd7763277738_
                         (let () (declare (not safe)) (##car _hd7761477637_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7763277738_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7763377740_))
                            (let ((_tl7763577745_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7763377740_)))
                                  (_hd7763477743_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7763377740_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7763577745_))
                                  (let ((_expr77748_ _hd7763477743_))
                                    (declare (not safe))
                                    (_K7763177735_ _expr77748_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7763577745_))
                                      (let ((_tl7762577699_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7763577745_)))
                                            (_hd7762477697_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7763577745_))))
                                        (let ((_tmp77688_ _hd7763277738_)
                                              (_expr77695_ _hd7763477743_)
                                              (_len77702_ _hd7762477697_)
                                              (_init77704_ _tl7762577699_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7761977680_
                                             _init77704_
                                             _len77702_
                                             _expr77695_
                                             _tmp77688_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7761877641_)))))
                            (let () (declare (not safe)) (_E7761877641_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7763377740_))
                            (let ((_tl7763077725_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7763377740_)))
                                  (_hd7762977723_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7763377740_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7763077725_))
                                  (let ((_id77721_ _hd7763277738_)
                                        (_expr77728_ _hd7762977723_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7762677713_ _expr77728_ _id77721_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7763077725_))
                                      (let ((_tl7762577699_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7763077725_)))
                                            (_hd7762477697_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7763077725_))))
                                        (let ((_tmp77688_ _hd7763277738_)
                                              (_expr77695_ _hd7762977723_)
                                              (_len77702_ _hd7762477697_)
                                              (_init77704_ _tl7762577699_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7761977680_
                                             _init77704_
                                             _len77702_
                                             _expr77695_
                                             _tmp77688_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7761877641_)))))
                            (let () (declare (not safe)) (_E7761877641_)))))
                  (let () (declare (not safe)) (_E7761877641_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp79617 (list _body77610_)))
                                           (declare (not safe))
                                           (foldl1 __tmp79618
                                                   __tmp79617
                                                   _post77609_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp79616))))
                             (declare (not safe))
                             (cons 'begin __tmp79615))))
                      (declare (not safe))
                      (__SRC__% __tmp79614 _stx77602_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx77602_
             _compile-simple77604_
             _compile-values77605_)))))
    (define __compile-call%
      (lambda (_stx77562_)
        (let* ((_$e77564_ _stx77562_)
               (_$E7756677575_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77564_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77564_))
              (let* ((_$tgt7756777578_
                      (let () (declare (not safe)) (__AST-e _$e77564_)))
                     (_$hd7756877581_
                      (let () (declare (not safe)) (##car _$tgt7756777578_)))
                     (_$tl7756977584_
                      (let () (declare (not safe)) (##cdr _$tgt7756777578_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7756977584_))
                    (let* ((_$tgt7757077588_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7756977584_)))
                           (_$hd7757177591_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7757077588_)))
                           (_$tl7757277594_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7757077588_))))
                      (let* ((_rator77598_ _$hd7757177591_)
                             (_rands77600_ _$tl7757277594_)
                             (__tmp79642
                              (let ((__tmp79644
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator77598_)))
                                    (__tmp79643 (map __compile _rands77600_)))
                                (declare (not safe))
                                (cons __tmp79644 __tmp79643))))
                        (declare (not safe))
                        (__SRC__% __tmp79642 _stx77562_)))
                    (let () (declare (not safe)) (_$E7756677575_))))
              (let () (declare (not safe)) (_$E7756677575_))))))
    (define __compile-ref%
      (lambda (_stx77524_)
        (let* ((_$e77526_ _stx77524_)
               (_$E7752877537_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77526_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77526_))
              (let* ((_$tgt7752977540_
                      (let () (declare (not safe)) (__AST-e _$e77526_)))
                     (_$hd7753077543_
                      (let () (declare (not safe)) (##car _$tgt7752977540_)))
                     (_$tl7753177546_
                      (let () (declare (not safe)) (##cdr _$tgt7752977540_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7753177546_))
                    (let* ((_$tgt7753277550_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7753177546_)))
                           (_$hd7753377553_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7753277550_)))
                           (_$tl7753477556_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7753277550_))))
                      (let ((_id77560_ _$hd7753377553_))
                        (if (let ((__tmp79645
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7753477556_))))
                              (declare (not safe))
                              (equal? __tmp79645 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id77560_ _stx77524_))
                            (let () (declare (not safe)) (_$E7752877537_)))))
                    (let () (declare (not safe)) (_$E7752877537_))))
              (let () (declare (not safe)) (_$E7752877537_))))))
    (define __compile-setq%
      (lambda (_stx77471_)
        (let* ((_$e77473_ _stx77471_)
               (_$E7747577487_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77473_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77473_))
              (let* ((_$tgt7747677490_
                      (let () (declare (not safe)) (__AST-e _$e77473_)))
                     (_$hd7747777493_
                      (let () (declare (not safe)) (##car _$tgt7747677490_)))
                     (_$tl7747877496_
                      (let () (declare (not safe)) (##cdr _$tgt7747677490_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7747877496_))
                    (let* ((_$tgt7747977500_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7747877496_)))
                           (_$hd7748077503_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7747977500_)))
                           (_$tl7748177506_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7747977500_))))
                      (let ((_id77510_ _$hd7748077503_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7748177506_))
                            (let* ((_$tgt7748277512_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7748177506_)))
                                   (_$hd7748377515_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7748277512_)))
                                   (_$tl7748477518_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7748277512_))))
                              (let ((_expr77522_ _$hd7748377515_))
                                (if (let ((__tmp79651
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7748477518_))))
                                      (declare (not safe))
                                      (equal? __tmp79651 '()))
                                    (let ((__tmp79646
                                           (let ((__tmp79647
                                                  (let ((__tmp79650
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id77510_
                                                            _stx77471_)))
                                                        (__tmp79648
                                                         (let ((__tmp79649
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr77522_))))
                   (declare (not safe))
                   (cons __tmp79649 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79650
                                                          __tmp79648))))
                                             (declare (not safe))
                                             (cons 'set! __tmp79647))))
                                      (declare (not safe))
                                      (__SRC__% __tmp79646 _stx77471_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7747577487_)))))
                            (let () (declare (not safe)) (_$E7747577487_)))))
                    (let () (declare (not safe)) (_$E7747577487_))))
              (let () (declare (not safe)) (_$E7747577487_))))))
    (define __compile-if%
      (lambda (_stx77403_)
        (let* ((_$e77405_ _stx77403_)
               (_$E7740777422_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77405_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77405_))
              (let* ((_$tgt7740877425_
                      (let () (declare (not safe)) (__AST-e _$e77405_)))
                     (_$hd7740977428_
                      (let () (declare (not safe)) (##car _$tgt7740877425_)))
                     (_$tl7741077431_
                      (let () (declare (not safe)) (##cdr _$tgt7740877425_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7741077431_))
                    (let* ((_$tgt7741177435_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7741077431_)))
                           (_$hd7741277438_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7741177435_)))
                           (_$tl7741377441_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7741177435_))))
                      (let ((_p77445_ _$hd7741277438_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7741377441_))
                            (let* ((_$tgt7741477447_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7741377441_)))
                                   (_$hd7741577450_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7741477447_)))
                                   (_$tl7741677453_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7741477447_))))
                              (let ((_t77457_ _$hd7741577450_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7741677453_))
                                    (let* ((_$tgt7741777459_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7741677453_)))
                                           (_$hd7741877462_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7741777459_)))
                                           (_$tl7741977465_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7741777459_))))
                                      (let ((_f77469_ _$hd7741877462_))
                                        (if (let ((__tmp79659
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7741977465_))))
                                              (declare (not safe))
                                              (equal? __tmp79659 '()))
                                            (let ((__tmp79652
                                                   (let ((__tmp79653
                                                          (let ((__tmp79658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p77445_)))
                        (__tmp79654
                         (let ((__tmp79657
                                (let ()
                                  (declare (not safe))
                                  (__compile _t77457_)))
                               (__tmp79655
                                (let ((__tmp79656
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f77469_))))
                                  (declare (not safe))
                                  (cons __tmp79656 '()))))
                           (declare (not safe))
                           (cons __tmp79657 __tmp79655))))
                    (declare (not safe))
                    (cons __tmp79658 __tmp79654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp79653))))
                                              (declare (not safe))
                                              (__SRC__% __tmp79652 _stx77403_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7740777422_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7740777422_)))))
                            (let () (declare (not safe)) (_$E7740777422_)))))
                    (let () (declare (not safe)) (_$E7740777422_))))
              (let () (declare (not safe)) (_$E7740777422_))))))
    (define __compile-quote%
      (lambda (_stx77365_)
        (let* ((_$e77367_ _stx77365_)
               (_$E7736977378_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77367_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77367_))
              (let* ((_$tgt7737077381_
                      (let () (declare (not safe)) (__AST-e _$e77367_)))
                     (_$hd7737177384_
                      (let () (declare (not safe)) (##car _$tgt7737077381_)))
                     (_$tl7737277387_
                      (let () (declare (not safe)) (##cdr _$tgt7737077381_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7737277387_))
                    (let* ((_$tgt7737377391_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7737277387_)))
                           (_$hd7737477394_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7737377391_)))
                           (_$tl7737577397_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7737377391_))))
                      (let ((_e77401_ _$hd7737477394_))
                        (if (let ((__tmp79663
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7737577397_))))
                              (declare (not safe))
                              (equal? __tmp79663 '()))
                            (let ((__tmp79660
                                   (let ((__tmp79661
                                          (let ((__tmp79662
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e77401_))))
                                            (declare (not safe))
                                            (cons __tmp79662 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp79661))))
                              (declare (not safe))
                              (__SRC__% __tmp79660 _stx77365_))
                            (let () (declare (not safe)) (_$E7736977378_)))))
                    (let () (declare (not safe)) (_$E7736977378_))))
              (let () (declare (not safe)) (_$E7736977378_))))))
    (define __compile-quote-syntax%
      (lambda (_stx77327_)
        (let* ((_$e77329_ _stx77327_)
               (_$E7733177340_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77329_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77329_))
              (let* ((_$tgt7733277343_
                      (let () (declare (not safe)) (__AST-e _$e77329_)))
                     (_$hd7733377346_
                      (let () (declare (not safe)) (##car _$tgt7733277343_)))
                     (_$tl7733477349_
                      (let () (declare (not safe)) (##cdr _$tgt7733277343_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7733477349_))
                    (let* ((_$tgt7733577353_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7733477349_)))
                           (_$hd7733677356_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7733577353_)))
                           (_$tl7733777359_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7733577353_))))
                      (let ((_e77363_ _$hd7733677356_))
                        (if (let ((__tmp79666
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7733777359_))))
                              (declare (not safe))
                              (equal? __tmp79666 '()))
                            (let ((__tmp79664
                                   (let ((__tmp79665
                                          (let ()
                                            (declare (not safe))
                                            (cons _e77363_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp79665))))
                              (declare (not safe))
                              (__SRC__% __tmp79664 _stx77327_))
                            (let () (declare (not safe)) (_$E7733177340_)))))
                    (let () (declare (not safe)) (_$E7733177340_))))
              (let () (declare (not safe)) (_$E7733177340_))))))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin
       __compile-begin%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-syntax
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-foreign
       __compile-begin-foreign%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#module
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#import
       __compile-import%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#export
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#provide
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-values
       __compile-define-values%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-syntax
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-alias
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#define-runtime
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#extern
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#declare
       __compile-ignore%
       make-__core-special-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#begin-annotation
       __compile-begin-annotation%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#quote
       __compile-quote%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#quote-syntax
       __compile-quote-syntax%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#lambda
       __compile-lambda%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#case-lambda
       __compile-case-lambda%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#let-values
       __compile-let-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec-values
       __compile-letrec-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec*-values
       __compile-letrec*-values%
       make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#call __compile-call% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#if __compile-if% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#ref __compile-ref% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#set! __compile-setq% make-__core-expression))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#cond-expand __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#include __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__% '%#let-syntax __compile-error make-__core-form))
    (let ()
      (declare (not safe))
      (__core-bind-syntax!__%
       '%#letrec-syntax
       __compile-error
       make-__core-form))))
