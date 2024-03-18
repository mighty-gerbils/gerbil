(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1710781148)
  (begin
    (define __syntax::t
      (let ((__tmp79326 (list))
            (__tmp79324
             (let ((__tmp79325
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79325 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp79326
         '(e id)
         __tmp79324
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args79135_ (apply make-instance __syntax::t _$args79135_)))
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
      (let ((__tmp79329 (list __syntax::t))
            (__tmp79327
             (let ((__tmp79328
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79328 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp79329
         '()
         __tmp79327
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args79132_ (apply make-instance __core-form::t _$args79132_)))
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
      (let ((__tmp79332 (list __core-form::t))
            (__tmp79330
             (let ((__tmp79331
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79331 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp79332
         '()
         __tmp79330
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args79129_
        (apply make-instance __core-expression::t _$args79129_)))
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
      (let ((__tmp79335 (list __core-form::t))
            (__tmp79333
             (let ((__tmp79334
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp79334 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp79335
         '()
         __tmp79333
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args79126_
        (apply make-instance __core-special-form::t _$args79126_)))
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
      (lambda (_id79124_)
        (let ((__tmp79336 (let () (declare (not safe)) (__AST-e _id79124_))))
          (declare (not safe))
          (hash-get __core __tmp79336))))
    (define __core-bound-id?__%
      (lambda (_id79108_ _is?79109_)
        (let ((_$e79111_
               (let () (declare (not safe)) (__core-resolve _id79108_))))
          (if _$e79111_ (_is?79109_ _$e79111_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id79117_)
        (let ((_is?79119_ true))
          (declare (not safe))
          (__core-bound-id?__% _id79117_ _is?79119_))))
    (define __core-bound-id?
      (lambda _g79338_
        (let ((_g79337_ (let () (declare (not safe)) (##length _g79338_))))
          (cond ((let () (declare (not safe)) (##fx= _g79337_ 1))
                 (apply (lambda (_id79117_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id79117_)))
                        _g79338_))
                ((let () (declare (not safe)) (##fx= _g79337_ 2))
                 (apply (lambda (_id79121_ _is?79122_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id79121_ _is?79122_)))
                        _g79338_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g79338_))))))
    (define __core-bind-syntax!__%
      (lambda (_id79091_ _e79092_ _make79093_)
        (let ((__tmp79339
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e79092_
                      'gerbil/runtime/eval#__syntax::t))
                   _e79092_
                   (_make79093_ _e79092_ _id79091_))))
          (declare (not safe))
          (hash-put! __core _id79091_ __tmp79339))))
    (define __core-bind-syntax!__0
      (lambda (_id79098_ _e79099_)
        (let ((_make79101_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id79098_ _e79099_ _make79101_))))
    (define __core-bind-syntax!
      (lambda _g79341_
        (let ((_g79340_ (let () (declare (not safe)) (##length _g79341_))))
          (cond ((let () (declare (not safe)) (##fx= _g79340_ 2))
                 (apply (lambda (_id79098_ _e79099_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id79098_ _e79099_)))
                        _g79341_))
                ((let () (declare (not safe)) (##fx= _g79340_ 3))
                 (apply (lambda (_id79103_ _e79104_ _make79105_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id79103_
                             _e79104_
                             _make79105_)))
                        _g79341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g79341_))))))
    (define __SRC__%
      (lambda (_e79074_ _src-stx79075_)
        (if (or (let () (declare (not safe)) (pair? _e79074_))
                (let () (declare (not safe)) (symbol? _e79074_)))
            (let ((__tmp79345
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx79075_
                          'gerbil#AST::t))
                       (let ((__tmp79346
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx79075_))))
                         (declare (not safe))
                         (__locat __tmp79346))
                       '#f)))
              (declare (not safe))
              (##make-source _e79074_ __tmp79345))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e79074_ 'gerbil#AST::t))
                (let ((__tmp79344
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e79074_ '1 AST::t '#f)))
                      (__tmp79342
                       (let ((__tmp79343
                              (let ()
                                (declare (not safe))
                                (__AST-source _e79074_))))
                         (declare (not safe))
                         (__locat __tmp79343))))
                  (declare (not safe))
                  (##make-source __tmp79344 __tmp79342))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e79074_))))))
    (define __SRC__0
      (lambda (_e79083_)
        (let ((_src-stx79085_ '#f))
          (declare (not safe))
          (__SRC__% _e79083_ _src-stx79085_))))
    (define __SRC
      (lambda _g79348_
        (let ((_g79347_ (let () (declare (not safe)) (##length _g79348_))))
          (cond ((let () (declare (not safe)) (##fx= _g79347_ 1))
                 (apply (lambda (_e79083_)
                          (let () (declare (not safe)) (__SRC__0 _e79083_)))
                        _g79348_))
                ((let () (declare (not safe)) (##fx= _g79347_ 2))
                 (apply (lambda (_e79087_ _src-stx79088_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e79087_ _src-stx79088_)))
                        _g79348_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g79348_))))))
    (define __locat
      (lambda (_loc79071_)
        (if (let () (declare (not safe)) (##locat? _loc79071_))
            _loc79071_
            '#f)))
    (define __check-values
      (lambda (_obj79066_ _k79067_)
        (let ((_count79069_
               (if (let () (declare (not safe)) (##values? _obj79066_))
                   (let () (declare (not safe)) (##vector-length _obj79066_))
                   '1)))
          (if (fx= _count79069_ _k79067_)
              '#!void
              (let ((__tmp79350
                     (if (fx< _count79069_ _k79067_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp79349
                     (if (let () (declare (not safe)) (##values? _obj79066_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj79066_))
                         _obj79066_)))
                (declare (not safe))
                (error __tmp79350 __tmp79349 _k79067_))))))
    (define __compile
      (lambda (_stx79036_)
        (let* ((_$e79038_ _stx79036_)
               (_$E7904079046_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e79038_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e79038_))
              (let* ((_$tgt7904179049_
                      (let () (declare (not safe)) (__AST-e _$e79038_)))
                     (_$hd7904279052_
                      (let () (declare (not safe)) (##car _$tgt7904179049_)))
                     (_$tl7904379055_
                      (let () (declare (not safe)) (##cdr _$tgt7904179049_))))
                (let* ((_form79059_ _$hd7904279052_)
                       (_$e79061_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form79059_))))
                  (if _$e79061_
                      ((lambda (_bind79064_)
                         ((##structure-ref _bind79064_ '1 __syntax::t '#f)
                          _stx79036_))
                       _$e79061_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx79036_
                         _form79059_)))))
              (let () (declare (not safe)) (_$E7904079046_))))))
    (define __compile-error__%
      (lambda (_stx79023_ _detail79024_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx79023_
           _detail79024_))))
    (define __compile-error__0
      (lambda (_stx79029_)
        (let ((_detail79031_ '#f))
          (declare (not safe))
          (__compile-error__% _stx79029_ _detail79031_))))
    (define __compile-error
      (lambda _g79352_
        (let ((_g79351_ (let () (declare (not safe)) (##length _g79352_))))
          (cond ((let () (declare (not safe)) (##fx= _g79351_ 1))
                 (apply (lambda (_stx79029_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx79029_)))
                        _g79352_))
                ((let () (declare (not safe)) (##fx= _g79351_ 2))
                 (apply (lambda (_stx79033_ _detail79034_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx79033_ _detail79034_)))
                        _g79352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g79352_))))))
    (define __compile-ignore%
      (lambda (_stx79020_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx79020_))))
    (define __compile-begin%
      (lambda (_stx78995_)
        (let* ((_$e78997_ _stx78995_)
               (_$E7899979005_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78997_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78997_))
              (let* ((_$tgt7900079008_
                      (let () (declare (not safe)) (__AST-e _$e78997_)))
                     (_$hd7900179011_
                      (let () (declare (not safe)) (##car _$tgt7900079008_)))
                     (_$tl7900279014_
                      (let () (declare (not safe)) (##cdr _$tgt7900079008_))))
                (let* ((_body79018_ _$tl7900279014_)
                       (__tmp79353
                        (let ((__tmp79354 (map __compile _body79018_)))
                          (declare (not safe))
                          (cons 'begin __tmp79354))))
                  (declare (not safe))
                  (__SRC__% __tmp79353 _stx78995_)))
              (let () (declare (not safe)) (_$E7899979005_))))))
    (define __compile-begin-foreign%
      (lambda (_stx78970_)
        (let* ((_$e78972_ _stx78970_)
               (_$E7897478980_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78972_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78972_))
              (let* ((_$tgt7897578983_
                      (let () (declare (not safe)) (__AST-e _$e78972_)))
                     (_$hd7897678986_
                      (let () (declare (not safe)) (##car _$tgt7897578983_)))
                     (_$tl7897778989_
                      (let () (declare (not safe)) (##cdr _$tgt7897578983_))))
                (let* ((_body78993_ _$tl7897778989_)
                       (__tmp79355
                        (let ((__tmp79356
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body78993_))))
                          (declare (not safe))
                          (cons 'begin __tmp79356))))
                  (declare (not safe))
                  (__SRC__% __tmp79355 _stx78970_)))
              (let () (declare (not safe)) (_$E7897478980_))))))
    (define __compile-import%
      (lambda (_stx78945_)
        (let* ((_$e78947_ _stx78945_)
               (_$E7894978955_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78947_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78947_))
              (let* ((_$tgt7895078958_
                      (let () (declare (not safe)) (__AST-e _$e78947_)))
                     (_$hd7895178961_
                      (let () (declare (not safe)) (##car _$tgt7895078958_)))
                     (_$tl7895278964_
                      (let () (declare (not safe)) (##cdr _$tgt7895078958_))))
                (let* ((_body78968_ _$tl7895278964_)
                       (__tmp79357
                        (let ((__tmp79358
                               (let ((__tmp79359
                                      (let ((__tmp79360
                                             (let ()
                                               (declare (not safe))
                                               (cons _body78968_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp79360))))
                                 (declare (not safe))
                                 (cons __tmp79359 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp79358))))
                  (declare (not safe))
                  (__SRC__% __tmp79357 _stx78945_)))
              (let () (declare (not safe)) (_$E7894978955_))))))
    (define __compile-begin-annotation%
      (lambda (_stx78892_)
        (let* ((_$e78894_ _stx78892_)
               (_$E7889678908_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78894_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78894_))
              (let* ((_$tgt7889778911_
                      (let () (declare (not safe)) (__AST-e _$e78894_)))
                     (_$hd7889878914_
                      (let () (declare (not safe)) (##car _$tgt7889778911_)))
                     (_$tl7889978917_
                      (let () (declare (not safe)) (##cdr _$tgt7889778911_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7889978917_))
                    (let* ((_$tgt7890078921_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7889978917_)))
                           (_$hd7890178924_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7890078921_)))
                           (_$tl7890278927_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7890078921_))))
                      (let ((_ann78931_ _$hd7890178924_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7890278927_))
                            (let* ((_$tgt7890378933_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7890278927_)))
                                   (_$hd7890478936_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7890378933_)))
                                   (_$tl7890578939_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7890378933_))))
                              (let ((_expr78943_ _$hd7890478936_))
                                (if (let ((__tmp79361
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7890578939_))))
                                      (declare (not safe))
                                      (equal? __tmp79361 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr78943_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7889678908_)))))
                            (let () (declare (not safe)) (_$E7889678908_)))))
                    (let () (declare (not safe)) (_$E7889678908_))))
              (let () (declare (not safe)) (_$E7889678908_))))))
    (define __compile-define-values%
      (lambda (_stx78783_)
        (let* ((_$e78785_ _stx78783_)
               (_$E7878778799_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78785_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78785_))
              (let* ((_$tgt7878878802_
                      (let () (declare (not safe)) (__AST-e _$e78785_)))
                     (_$hd7878978805_
                      (let () (declare (not safe)) (##car _$tgt7878878802_)))
                     (_$tl7879078808_
                      (let () (declare (not safe)) (##cdr _$tgt7878878802_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7879078808_))
                    (let* ((_$tgt7879178812_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7879078808_)))
                           (_$hd7879278815_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7879178812_)))
                           (_$tl7879378818_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7879178812_))))
                      (let ((_hd78822_ _$hd7879278815_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7879378818_))
                            (let* ((_$tgt7879478824_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7879378818_)))
                                   (_$hd7879578827_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7879478824_)))
                                   (_$tl7879678830_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7879478824_))))
                              (let ((_expr78834_ _$hd7879578827_))
                                (if (let ((__tmp79394
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7879678830_))))
                                      (declare (not safe))
                                      (equal? __tmp79394 '()))
                                    (let* ((_$e78836_ _hd78822_)
                                           (_$E7883878879_
                                            (lambda ()
                                              (let ((_$E7883978864_
                                                     (lambda ()
                                                       (let* ((_$E7884078851_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e78836_))))
                      (_ids78854_ _hd78822_)
                      (_len78856_ (length _ids78854_))
                      (_tmp78858_
                       (let ((__tmp79362 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp79362))))
                 (let ((__tmp79363
                        (let ((__tmp79364
                               (let ((__tmp79381
                                      (let ((__tmp79382
                                             (let ((__tmp79383
                                                    (let ((__tmp79384
                                                           (let ((__tmp79385
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr78834_))))
                     (declare (not safe))
                     (cons __tmp79385 '()))))
              (declare (not safe))
              (cons _tmp78858_ __tmp79384))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp79383))))
                                        (declare (not safe))
                                        (__SRC__% __tmp79382 _stx78783_)))
                                     (__tmp79365
                                      (let ((__tmp79377
                                             (let ((__tmp79378
                                                    (let ((__tmp79379
                                                           (let ((__tmp79380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len78856_ '()))))
                     (declare (not safe))
                     (cons _tmp78858_ __tmp79380))))
              (declare (not safe))
              (cons '__check-values __tmp79379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp79378
                                                _stx78783_)))
                                            (__tmp79366
                                             (let ((__tmp79367
                                                    (let ((__tmp79369
                                                           (lambda (_id78861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k78862_)
                     (if (let () (declare (not safe)) (__AST-e _id78861_))
                         (let ((__tmp79370
                                (let ((__tmp79371
                                       (let ((__tmp79376
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id78861_)))
                                             (__tmp79372
                                              (let ((__tmp79373
                                                     (let ((__tmp79374
                                                            (let ((__tmp79375
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k78862_ '()))))
                      (declare (not safe))
                      (cons _tmp78858_ __tmp79375))))
               (declare (not safe))
               (cons '##vector-ref __tmp79374))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79373 '()))))
                                         (declare (not safe))
                                         (cons __tmp79376 __tmp79372))))
                                  (declare (not safe))
                                  (cons 'define __tmp79371))))
                           (declare (not safe))
                           (__SRC__% __tmp79370 _stx78783_))
                         '#f)))
                  (__tmp79368 (iota _len78856_)))
              (declare (not safe))
              (filter-map2 __tmp79369 _ids78854_ __tmp79368))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp79367))))
                                        (declare (not safe))
                                        (cons __tmp79377 __tmp79366))))
                                 (declare (not safe))
                                 (cons __tmp79381 __tmp79365))))
                          (declare (not safe))
                          (cons 'begin __tmp79364))))
                   (declare (not safe))
                   (__SRC__% __tmp79363 _stx78783_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e78836_))
                                                    (let* ((_$tgt7884178867_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e78836_)))
                                                           (_$hd7884278870_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7884178867_)))
                                                           (_$tl7884378873_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7884178867_))))
                                                      (let ((_id78877_
                                                             _$hd7884278870_))
                                                        (if (let ((__tmp79391
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7884378873_))))
                      (declare (not safe))
                      (equal? __tmp79391 '()))
                    (let ((__tmp79386
                           (let ((__tmp79387
                                  (let ((__tmp79390
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id78877_)))
                                        (__tmp79388
                                         (let ((__tmp79389
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr78834_))))
                                           (declare (not safe))
                                           (cons __tmp79389 '()))))
                                    (declare (not safe))
                                    (cons __tmp79390 __tmp79388))))
                             (declare (not safe))
                             (cons 'define __tmp79387))))
                      (declare (not safe))
                      (__SRC__% __tmp79386 _stx78783_))
                    (let () (declare (not safe)) (_$E7883978864_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7883978864_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e78836_))
                                          (let* ((_$tgt7884478882_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e78836_)))
                                                 (_$hd7884578885_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7884478882_)))
                                                 (_$tl7884678888_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7884478882_))))
                                            (if (let ((__tmp79393
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7884578885_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79393 '#f))
                                                (if (let ((__tmp79392
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7884678888_))))
                                                      (declare (not safe))
                                                      (equal? __tmp79392 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr78834_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7883878879_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7883878879_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7883878879_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7878778799_)))))
                            (let () (declare (not safe)) (_$E7878778799_)))))
                    (let () (declare (not safe)) (_$E7878778799_))))
              (let () (declare (not safe)) (_$E7878778799_))))))
    (define __compile-head-id
      (lambda (_e78781_)
        (let ((__tmp79395
               (if (let () (declare (not safe)) (__AST-e _e78781_))
                   _e78781_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp79395))))
    (define __compile-lambda-head
      (lambda (_hd78738_)
        (let _recur78740_ ((_rest78742_ _hd78738_))
          (let* ((_$e78744_ _rest78742_)
                 (_$E7874678764_
                  (lambda ()
                    (let ((_$E7874778761_
                           (lambda ()
                             (let* ((_$E7874878756_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e78744_))))
                                    (_tail78759_ _$e78744_))
                               (declare (not safe))
                               (__compile-head-id _tail78759_)))))
                      (if (let ((__tmp79396
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e78744_))))
                            (declare (not safe))
                            (equal? __tmp79396 '()))
                          '()
                          (let () (declare (not safe)) (_$E7874778761_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78744_))
                (let* ((_$tgt7874978767_
                        (let () (declare (not safe)) (__AST-e _$e78744_)))
                       (_$hd7875078770_
                        (let () (declare (not safe)) (##car _$tgt7874978767_)))
                       (_$tl7875178773_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7874978767_))))
                  (let* ((_hd78777_ _$hd7875078770_)
                         (_rest78779_ _$tl7875178773_))
                    (let ((__tmp79398
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd78777_)))
                          (__tmp79397
                           (let ()
                             (declare (not safe))
                             (_recur78740_ _rest78779_))))
                      (declare (not safe))
                      (cons __tmp79398 __tmp79397))))
                (let () (declare (not safe)) (_$E7874678764_)))))))
    (define __compile-lambda%
      (lambda (_stx78685_)
        (let* ((_$e78687_ _stx78685_)
               (_$E7868978701_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e78687_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e78687_))
              (let* ((_$tgt7869078704_
                      (let () (declare (not safe)) (__AST-e _$e78687_)))
                     (_$hd7869178707_
                      (let () (declare (not safe)) (##car _$tgt7869078704_)))
                     (_$tl7869278710_
                      (let () (declare (not safe)) (##cdr _$tgt7869078704_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7869278710_))
                    (let* ((_$tgt7869378714_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7869278710_)))
                           (_$hd7869478717_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7869378714_)))
                           (_$tl7869578720_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7869378714_))))
                      (let ((_hd78724_ _$hd7869478717_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7869578720_))
                            (let* ((_$tgt7869678726_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7869578720_)))
                                   (_$hd7869778729_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7869678726_)))
                                   (_$tl7869878732_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7869678726_))))
                              (let ((_body78736_ _$hd7869778729_))
                                (if (let ((__tmp79404
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7869878732_))))
                                      (declare (not safe))
                                      (equal? __tmp79404 '()))
                                    (let ((__tmp79399
                                           (let ((__tmp79400
                                                  (let ((__tmp79403
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd78724_)))
                                                        (__tmp79401
                                                         (let ((__tmp79402
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body78736_))))
                   (declare (not safe))
                   (cons __tmp79402 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79403
                                                          __tmp79401))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp79400))))
                                      (declare (not safe))
                                      (__SRC__% __tmp79399 _stx78685_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7868978701_)))))
                            (let () (declare (not safe)) (_$E7868978701_)))))
                    (let () (declare (not safe)) (_$E7868978701_))))
              (let () (declare (not safe)) (_$E7868978701_))))))
    (define __compile-case-lambda%
      (lambda (_stx78477_)
        (letrec ((_variadic?78479_
                  (lambda (_hd78650_)
                    (let* ((_$e78652_ _hd78650_)
                           (_$E7865478670_
                            (lambda ()
                              (let ((_$E7865578667_
                                     (lambda ()
                                       (let ((_$E7865678664_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e78652_)))))
                                         '#t))))
                                (if (let ((__tmp79405
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e78652_))))
                                      (declare (not safe))
                                      (equal? __tmp79405 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7865578667_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78652_))
                          (let* ((_$tgt7865778673_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78652_)))
                                 (_$hd7865878676_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7865778673_)))
                                 (_$tl7865978679_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7865778673_))))
                            (let ((_rest78683_ _$tl7865978679_))
                              (declare (not safe))
                              (_variadic?78479_ _rest78683_)))
                          (let () (declare (not safe)) (_$E7865478670_))))))
                 (_arity78480_
                  (lambda (_hd78615_)
                    (let _lp78617_ ((_rest78619_ _hd78615_) (_k78620_ '0))
                      (let* ((_$e78622_ _rest78619_)
                             (_$E7862478635_
                              (lambda ()
                                (let ((_$E7862578632_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e78622_)))))
                                  _k78620_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e78622_))
                            (let* ((_$tgt7862678638_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e78622_)))
                                   (_$hd7862778641_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7862678638_)))
                                   (_$tl7862878644_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7862678638_))))
                              (let* ((_rest78648_ _$tl7862878644_)
                                     (__tmp79406
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k78620_ '1))))
                                (declare (not safe))
                                (_lp78617_ _rest78648_ __tmp79406)))
                            (let () (declare (not safe)) (_$E7862478635_)))))))
                 (_generate78481_
                  (lambda (_rest78542_ _args78543_ _len78544_)
                    (let* ((_$e78546_ _rest78542_)
                           (_$E7854878559_
                            (lambda ()
                              (let* ((_$E7854978556_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e78546_))))
                                     (__tmp79407
                                      (let ((__tmp79408
                                             (let ((__tmp79409
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args78543_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp79409))))
                                        (declare (not safe))
                                        (cons 'error __tmp79408))))
                                (declare (not safe))
                                (__SRC__% __tmp79407 _stx78477_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78546_))
                          (let* ((_$tgt7855078562_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78546_)))
                                 (_$hd7855178565_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7855078562_)))
                                 (_$tl7855278568_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7855078562_))))
                            (let* ((_clause78572_ _$hd7855178565_)
                                   (_rest78574_ _$tl7855278568_)
                                   (_$e78576_ _clause78572_)
                                   (_$E7857878587_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e78576_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e78576_))
                                  (let* ((_$tgt7857978590_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e78576_)))
                                         (_$hd7858078593_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7857978590_)))
                                         (_$tl7858178596_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7857978590_))))
                                    (let ((_hd78600_ _$hd7858078593_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7858178596_))
                                          (let* ((_$tgt7858278602_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7858178596_)))
                                                 (_$hd7858378605_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7858278602_)))
                                                 (_$tl7858478608_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7858278602_))))
                                            (if (let ((__tmp79424
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7858478608_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79424 '()))
                                                (let ((_clen78612_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity78480_
                                                          _hd78600_)))
                                                      (_cmp78613_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?78479_
                                                              _hd78600_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp79410
                                                         (let ((__tmp79411
                                                                (let ((__tmp79421
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79422
                                      (let ((__tmp79423
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen78612_ '()))))
                                        (declare (not safe))
                                        (cons _len78544_ __tmp79423))))
                                 (declare (not safe))
                                 (cons _cmp78613_ __tmp79422)))
                              (__tmp79412
                               (let ((__tmp79415
                                      (let ((__tmp79416
                                             (let ((__tmp79417
                                                    (let ((__tmp79419
                                                           (let ((__tmp79420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause78572_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp79420)))
                  (__tmp79418
                   (let () (declare (not safe)) (cons _args78543_ '()))))
              (declare (not safe))
              (cons __tmp79419 __tmp79418))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp79417))))
                                        (declare (not safe))
                                        (__SRC__% __tmp79416 _stx78477_)))
                                     (__tmp79413
                                      (let ((__tmp79414
                                             (let ()
                                               (declare (not safe))
                                               (_generate78481_
                                                _rest78574_
                                                _args78543_
                                                _len78544_))))
                                        (declare (not safe))
                                        (cons __tmp79414 '()))))
                                 (declare (not safe))
                                 (cons __tmp79415 __tmp79413))))
                          (declare (not safe))
                          (cons __tmp79421 __tmp79412))))
                   (declare (not safe))
                   (cons 'if __tmp79411))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp79410
                                                     _stx78477_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7857878587_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7857878587_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7857878587_)))))
                          (let () (declare (not safe)) (_$E7854878559_)))))))
          (let* ((_$e78483_ _stx78477_)
                 (_$E7848578517_
                  (lambda ()
                    (let ((_$E7848678499_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e78483_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78483_))
                          (let* ((_$tgt7848778502_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78483_)))
                                 (_$hd7848878505_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7848778502_)))
                                 (_$tl7848978508_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7848778502_))))
                            (let ((_clauses78512_ _$tl7848978508_))
                              (let ((_args78514_
                                     (let ((__tmp79425 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp79425 _stx78477_)))
                                    (_len78515_
                                     (let ((__tmp79426 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp79426 _stx78477_))))
                                (let ((__tmp79427
                                       (let ((__tmp79428
                                              (let ((__tmp79429
                                                     (let ((__tmp79430
                                                            (let ((__tmp79431
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79432
                                  (let ((__tmp79435
                                         (let ((__tmp79436
                                                (let ((__tmp79437
                                                       (let ((__tmp79438
                                                              (let ((__tmp79439
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp79440
                                    (let ()
                                      (declare (not safe))
                                      (cons _args78514_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp79440))))
                        (declare (not safe))
                        (__SRC__% __tmp79439 _stx78477_))))
                 (declare (not safe))
                 (cons __tmp79438 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len78515_
                                                        __tmp79437))))
                                           (declare (not safe))
                                           (cons __tmp79436 '())))
                                        (__tmp79433
                                         (let ((__tmp79434
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate78481_
                                                   _clauses78512_
                                                   _args78514_
                                                   _len78515_))))
                                           (declare (not safe))
                                           (cons __tmp79434 '()))))
                                    (declare (not safe))
                                    (cons __tmp79435 __tmp79433))))
                             (declare (not safe))
                             (cons 'let __tmp79432))))
                      (declare (not safe))
                      (__SRC__% __tmp79431 _stx78477_))))
               (declare (not safe))
               (cons __tmp79430 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args78514_
                                                      __tmp79429))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp79428))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79427 _stx78477_)))))
                          (let () (declare (not safe)) (_$E7848678499_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78483_))
                (let* ((_$tgt7849078520_
                        (let () (declare (not safe)) (__AST-e _$e78483_)))
                       (_$hd7849178523_
                        (let () (declare (not safe)) (##car _$tgt7849078520_)))
                       (_$tl7849278526_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7849078520_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7849278526_))
                      (let* ((_$tgt7849378530_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7849278526_)))
                             (_$hd7849478533_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7849378530_)))
                             (_$tl7849578536_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7849378530_))))
                        (let ((_clause78540_ _$hd7849478533_))
                          (if (let ((__tmp79442
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7849578536_))))
                                (declare (not safe))
                                (equal? __tmp79442 '()))
                              (let ((__tmp79441
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause78540_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp79441))
                              (let () (declare (not safe)) (_$E7848578517_)))))
                      (let () (declare (not safe)) (_$E7848578517_))))
                (let () (declare (not safe)) (_$E7848578517_)))))))
    (define __compile-let-form
      (lambda (_stx78246_ _compile-simple78247_ _compile-values78248_)
        (letrec ((_simple-bind?78250_
                  (lambda (_hd78435_)
                    (let* ((_hd7843678446_ _hd78435_)
                           (_else7843978454_ (lambda () '#f)))
                      (let ((_K7844278467_ (lambda (_id78465_) '#t))
                            (_K7844178459_ (lambda () '#t)))
                        (let ((_try-match7843878462_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7843678446_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7844178459_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7843978454_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7843678446_))
                              (let ((_tl7844478472_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7843678446_)))
                                    (_hd7844378470_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7843678446_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7844478472_))
                                    (let ((_id78475_ _hd7844378470_))
                                      (declare (not safe))
                                      (_K7844278467_ _id78475_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7843878462_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7843878462_))))))))
                 (_car-e78251_
                  (lambda (_hd78433_)
                    (if (let () (declare (not safe)) (pair? _hd78433_))
                        (car _hd78433_)
                        _hd78433_))))
          (let* ((_$e78253_ _stx78246_)
                 (_$E7825578398_
                  (lambda ()
                    (let ((_$E7825678278_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e78253_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e78253_))
                          (let* ((_$tgt7825778281_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e78253_)))
                                 (_$hd7825878284_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7825778281_)))
                                 (_$tl7825978287_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7825778281_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7825978287_))
                                (let* ((_$tgt7826078291_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7825978287_)))
                                       (_$hd7826178294_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7826078291_)))
                                       (_$tl7826278297_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7826078291_))))
                                  (let ((_hd78301_ _$hd7826178294_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7826278297_))
                                        (let* ((_$tgt7826378303_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7826278297_)))
                                               (_$hd7826478306_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7826378303_)))
                                               (_$tl7826578309_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7826378303_))))
                                          (let ((_body78313_ _$hd7826478306_))
                                            (if (let ((__tmp79445
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7826578309_))))
                                                  (declare (not safe))
                                                  (equal? __tmp79445 '()))
                                                (let* ((_hd-ids78353_
                                                        (map (lambda (_bind78315_)
                                                               (let* ((_$e78317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind78315_)
                              (_$E7831978328_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e78317_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e78317_))
                             (let* ((_$tgt7832078331_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e78317_)))
                                    (_$hd7832178334_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7832078331_)))
                                    (_$tl7832278337_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7832078331_))))
                               (let ((_ids78341_ _$hd7832178334_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7832278337_))
                                     (let* ((_$tgt7832378343_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7832278337_)))
                                            (_$hd7832478346_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7832378343_)))
                                            (_$tl7832578349_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7832378343_))))
                                       (if (let ((__tmp79443
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7832578349_))))
                                             (declare (not safe))
                                             (equal? __tmp79443 '()))
                                           _ids78341_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7831978328_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7831978328_)))))
                             (let () (declare (not safe)) (_$E7831978328_)))))
                     _hd78301_))
               (_exprs78393_
                (map (lambda (_bind78355_)
                       (let* ((_$e78357_ _bind78355_)
                              (_$E7835978368_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e78357_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e78357_))
                             (let* ((_$tgt7836078371_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e78357_)))
                                    (_$hd7836178374_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7836078371_)))
                                    (_$tl7836278377_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7836078371_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7836278377_))
                                   (let* ((_$tgt7836378381_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7836278377_)))
                                          (_$hd7836478384_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7836378381_)))
                                          (_$tl7836578387_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7836378381_))))
                                     (let ((_expr78391_ _$hd7836478384_))
                                       (if (let ((__tmp79444
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7836578387_))))
                                             (declare (not safe))
                                             (equal? __tmp79444 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr78391_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7835978368_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7835978368_))))
                             (let () (declare (not safe)) (_$E7835978368_)))))
                     _hd78301_))
               (_body78395_
                (let () (declare (not safe)) (__compile _body78313_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?78250_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids78353_))
              (_compile-simple78247_
               (map _car-e78251_ _hd-ids78353_)
               _exprs78393_
               _body78395_)
              (_compile-values78248_ _hd-ids78353_ _exprs78393_ _body78395_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7825678278_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7825678278_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7825678278_))))
                          (let () (declare (not safe)) (_$E7825678278_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e78253_))
                (let* ((_$tgt7826678401_
                        (let () (declare (not safe)) (__AST-e _$e78253_)))
                       (_$hd7826778404_
                        (let () (declare (not safe)) (##car _$tgt7826678401_)))
                       (_$tl7826878407_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7826678401_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7826878407_))
                      (let* ((_$tgt7826978411_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7826878407_)))
                             (_$hd7827078414_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7826978411_)))
                             (_$tl7827178417_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7826978411_))))
                        (if (let ((__tmp79447
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7827078414_))))
                              (declare (not safe))
                              (equal? __tmp79447 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7827178417_))
                                (let* ((_$tgt7827278421_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7827178417_)))
                                       (_$hd7827378424_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7827278421_)))
                                       (_$tl7827478427_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7827278421_))))
                                  (let ((_body78431_ _$hd7827378424_))
                                    (if (let ((__tmp79446
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7827478427_))))
                                          (declare (not safe))
                                          (equal? __tmp79446 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body78431_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7825578398_)))))
                                (let () (declare (not safe)) (_$E7825578398_)))
                            (let () (declare (not safe)) (_$E7825578398_))))
                      (let () (declare (not safe)) (_$E7825578398_))))
                (let () (declare (not safe)) (_$E7825578398_)))))))
    (define __compile-let-values%
      (lambda (_stx78061_)
        (letrec ((_compile-simple78063_
                  (lambda (_hd-ids78242_ _exprs78243_ _body78244_)
                    (let ((__tmp79448
                           (let ((__tmp79449
                                  (let ((__tmp79451
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids78242_)
                                              _exprs78243_))
                                        (__tmp79450
                                         (let ()
                                           (declare (not safe))
                                           (cons _body78244_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79451 __tmp79450))))
                             (declare (not safe))
                             (cons 'let __tmp79449))))
                      (declare (not safe))
                      (__SRC__% __tmp79448 _stx78061_))))
                 (_compile-values78064_
                  (lambda (_hd-ids78160_ _exprs78161_ _body78162_)
                    (let _lp78164_ ((_rest78166_ _hd-ids78160_)
                                    (_exprs78167_ _exprs78161_)
                                    (_bind78168_ '())
                                    (_post78169_ '()))
                      (let* ((_rest7817078184_ _rest78166_)
                             (_else7817378192_
                              (lambda ()
                                (let ((__tmp79452
                                       (let ((__tmp79453
                                              (let ((__tmp79456
                                                     (reverse _bind78168_))
                                                    (__tmp79454
                                                     (let ((__tmp79455
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post78065_
                                                               _post78169_
                                                               _body78162_))))
                                                       (declare (not safe))
                                                       (cons __tmp79455 '()))))
                                                (declare (not safe))
                                                (cons __tmp79456 __tmp79454))))
                                         (declare (not safe))
                                         (cons 'let __tmp79453))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79452 _stx78061_)))))
                        (let ((_K7817878225_
                               (lambda (_rest78222_ _id78223_)
                                 (let ((__tmp79462 (cdr _exprs78167_))
                                       (__tmp79457
                                        (let ((__tmp79458
                                               (let ((__tmp79461
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id78223_)))
                                                     (__tmp79459
                                                      (let ((__tmp79460
                                                             (car _exprs78167_)))
                                                        (declare (not safe))
                                                        (cons __tmp79460
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp79461
                                                       __tmp79459))))
                                          (declare (not safe))
                                          (cons __tmp79458 _bind78168_))))
                                   (declare (not safe))
                                   (_lp78164_
                                    _rest78222_
                                    __tmp79462
                                    __tmp79457
                                    _post78169_))))
                              (_K7817578207_
                               (lambda (_rest78196_ _hd78197_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd78197_))
                                     (let ((__tmp79483 (cdr _exprs78167_))
                                           (__tmp79476
                                            (let ((__tmp79477
                                                   (let ((__tmp79482
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd78197_)))
                                                         (__tmp79478
                                                          (let ((__tmp79479
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp79480
                                (let ((__tmp79481 (car _exprs78167_)))
                                  (declare (not safe))
                                  (cons __tmp79481 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp79480))))
                    (declare (not safe))
                    (cons __tmp79479 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79482
                                                           __tmp79478))))
                                              (declare (not safe))
                                              (cons __tmp79477 _bind78168_))))
                                       (declare (not safe))
                                       (_lp78164_
                                        _rest78196_
                                        __tmp79483
                                        __tmp79476
                                        _post78169_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd78197_))
                                         (let* ((_len78199_ (length _hd78197_))
                                                (_tmp78201_
                                                 (let ((__tmp79463 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp79463))))
                                           (let ((__tmp79475
                                                  (cdr _exprs78167_))
                                                 (__tmp79471
                                                  (let ((__tmp79472
                                                         (let ((__tmp79473
                                                                (let ((__tmp79474
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs78167_)))
                          (declare (not safe))
                          (cons __tmp79474 '()))))
                   (declare (not safe))
                   (cons _tmp78201_ __tmp79473))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79472
                                                          _bind78168_)))
                                                 (__tmp79464
                                                  (let ((__tmp79465
                                                         (let ((__tmp79466
                                                                (let ((__tmp79467
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79469
                                      (lambda (_id78204_ _k78205_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id78204_))
                                            (let ((__tmp79470
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id78204_))))
                                              (declare (not safe))
                                              (cons __tmp79470 _k78205_))
                                            '#f)))
                                     (__tmp79468 (iota _len78199_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp79469
                                  _hd78197_
                                  __tmp79468))))
                          (declare (not safe))
                          (cons _len78199_ __tmp79467))))
                   (declare (not safe))
                   (cons _tmp78201_ __tmp79466))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79465
                                                          _post78169_))))
                                             (declare (not safe))
                                             (_lp78164_
                                              _rest78196_
                                              __tmp79475
                                              __tmp79471
                                              __tmp79464)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx78061_
                                            _hd78197_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7817078184_))
                              (let ((_tl7818078230_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7817078184_)))
                                    (_hd7817978228_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7817078184_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7817978228_))
                                    (let ((_tl7818278235_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7817978228_)))
                                          (_hd7818178233_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7817978228_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7818278235_))
                                          (let ((_id78238_ _hd7818178233_)
                                                (_rest78240_ _tl7818078230_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7817878225_
                                               _rest78240_
                                               _id78238_)))
                                          (let ((_hd78215_ _hd7817978228_)
                                                (_rest78217_ _tl7818078230_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7817578207_
                                               _rest78217_
                                               _hd78215_)))))
                                    (let ((_hd78215_ _hd7817978228_)
                                          (_rest78217_ _tl7818078230_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7817578207_
                                         _rest78217_
                                         _hd78215_)))))
                              (let ()
                                (declare (not safe))
                                (_else7817378192_))))))))
                 (_compile-post78065_
                  (lambda (_post78067_ _body78068_)
                    (let _lp78070_ ((_rest78072_ _post78067_)
                                    (_check78073_ '())
                                    (_bind78074_ '()))
                      (let* ((_rest7807578087_ _rest78072_)
                             (_else7807778095_
                              (lambda ()
                                (let ((__tmp79484
                                       (let ((__tmp79485
                                              (let ((__tmp79486
                                                     (let ((__tmp79487
                                                            (let ((__tmp79488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79489
                                  (let ((__tmp79490
                                         (let ()
                                           (declare (not safe))
                                           (cons _body78068_ '()))))
                                    (declare (not safe))
                                    (cons _bind78074_ __tmp79490))))
                             (declare (not safe))
                             (cons 'let __tmp79489))))
                      (declare (not safe))
                      (__SRC__% __tmp79488 _stx78061_))))
               (declare (not safe))
               (cons __tmp79487 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp79486
                                                        _check78073_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp79485))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79484 _stx78061_))))
                             (_K7807978134_
                              (lambda (_rest78098_
                                       _init78099_
                                       _len78100_
                                       _tmp78101_)
                                (let ((__tmp79498
                                       (let ((__tmp79499
                                              (let ((__tmp79500
                                                     (let ((__tmp79501
                                                            (let ((__tmp79502
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len78100_ '()))))
                      (declare (not safe))
                      (cons _tmp78101_ __tmp79502))))
               (declare (not safe))
               (cons '__check-values __tmp79501))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp79500
                                                 _stx78061_))))
                                         (declare (not safe))
                                         (cons __tmp79499 _check78073_)))
                                      (__tmp79491
                                       (let ((__tmp79492
                                              (lambda (_hd78103_ _r78104_)
                                                (let* ((_hd7810578112_
                                                        _hd78103_)
                                                       (_E7810778116_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7810578112_))))
               (_K7810878122_
                (lambda (_k78119_ _id78120_)
                  (let ((__tmp79493
                         (let ((__tmp79494
                                (let ((__tmp79495
                                       (let ((__tmp79496
                                              (let ((__tmp79497
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k78119_ '()))))
                                                (declare (not safe))
                                                (cons _tmp78101_ __tmp79497))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp79496))))
                                  (declare (not safe))
                                  (cons __tmp79495 '()))))
                           (declare (not safe))
                           (cons _id78120_ __tmp79494))))
                    (declare (not safe))
                    (cons __tmp79493 _r78104_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7810578112_))
                                                      (let ((_hd7810978125_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7810578112_)))
                    (_tl7811078127_
                     (let () (declare (not safe)) (##cdr _hd7810578112_))))
                (let* ((_id78130_ _hd7810978125_) (_k78132_ _tl7811078127_))
                  (declare (not safe))
                  (_K7810878122_ _k78132_ _id78130_)))
              (let () (declare (not safe)) (_E7810778116_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp79492
                                                 _bind78074_
                                                 _init78099_))))
                                  (declare (not safe))
                                  (_lp78070_
                                   _rest78098_
                                   __tmp79498
                                   __tmp79491)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7807578087_))
                            (let ((_hd7808078137_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7807578087_)))
                                  (_tl7808178139_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7807578087_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7808078137_))
                                  (let ((_hd7808278142_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7808078137_)))
                                        (_tl7808378144_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7808078137_))))
                                    (let ((_tmp78147_ _hd7808278142_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7808378144_))
                                          (let ((_hd7808478149_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7808378144_)))
                                                (_tl7808578151_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7808378144_))))
                                            (let* ((_len78154_ _hd7808478149_)
                                                   (_init78156_ _tl7808578151_)
                                                   (_rest78158_
                                                    _tl7808178139_))
                                              (declare (not safe))
                                              (_K7807978134_
                                               _rest78158_
                                               _init78156_
                                               _len78154_
                                               _tmp78147_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7807778095_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7807778095_))))
                            (let ()
                              (declare (not safe))
                              (_else7807778095_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx78061_
             _compile-simple78063_
             _compile-values78064_)))))
    (define __compile-letrec-values%
      (lambda (_stx77861_)
        (letrec ((_compile-simple77863_
                  (lambda (_hd-ids78057_ _exprs78058_ _body78059_)
                    (let ((__tmp79503
                           (let ((__tmp79504
                                  (let ((__tmp79506
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids78057_)
                                              _exprs78058_))
                                        (__tmp79505
                                         (let ()
                                           (declare (not safe))
                                           (cons _body78059_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79506 __tmp79505))))
                             (declare (not safe))
                             (cons 'letrec __tmp79504))))
                      (declare (not safe))
                      (__SRC__% __tmp79503 _stx77861_))))
                 (_compile-values77864_
                  (lambda (_hd-ids77971_ _exprs77972_ _body77973_)
                    (let _lp77975_ ((_rest77977_ _hd-ids77971_)
                                    (_exprs77978_ _exprs77972_)
                                    (_pre77979_ '())
                                    (_bind77980_ '())
                                    (_post77981_ '()))
                      (let* ((_rest7798277996_ _rest77977_)
                             (_else7798578004_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner77865_
                                   _pre77979_
                                   _bind77980_
                                   _post77981_
                                   _body77973_)))))
                        (let ((_K7799078040_
                               (lambda (_rest78037_ _id78038_)
                                 (let ((__tmp79512 (cdr _exprs77978_))
                                       (__tmp79507
                                        (let ((__tmp79508
                                               (let ((__tmp79511
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id78038_)))
                                                     (__tmp79509
                                                      (let ((__tmp79510
                                                             (car _exprs77978_)))
                                                        (declare (not safe))
                                                        (cons __tmp79510
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp79511
                                                       __tmp79509))))
                                          (declare (not safe))
                                          (cons __tmp79508 _bind77980_))))
                                   (declare (not safe))
                                   (_lp77975_
                                    _rest78037_
                                    __tmp79512
                                    _pre77979_
                                    __tmp79507
                                    _post77981_))))
                              (_K7798778022_
                               (lambda (_rest78008_ _hd78009_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd78009_))
                                     (let ((__tmp79540 (cdr _exprs77978_))
                                           (__tmp79533
                                            (let ((__tmp79534
                                                   (let ((__tmp79539
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd78009_)))
                                                         (__tmp79535
                                                          (let ((__tmp79536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp79537
                                (let ((__tmp79538 (car _exprs77978_)))
                                  (declare (not safe))
                                  (cons __tmp79538 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp79537))))
                    (declare (not safe))
                    (cons __tmp79536 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79539
                                                           __tmp79535))))
                                              (declare (not safe))
                                              (cons __tmp79534 _bind77980_))))
                                       (declare (not safe))
                                       (_lp77975_
                                        _rest78008_
                                        __tmp79540
                                        _pre77979_
                                        __tmp79533
                                        _post77981_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd78009_))
                                         (let* ((_len78011_ (length _hd78009_))
                                                (_tmp78013_
                                                 (let ((__tmp79513 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp79513))))
                                           (let ((__tmp79532
                                                  (cdr _exprs77978_))
                                                 (__tmp79525
                                                  (let ((__tmp79526
                                                         (lambda (_id78016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r78017_)
                   (if (let () (declare (not safe)) (__AST-e _id78016_))
                       (let ((__tmp79527
                              (let ((__tmp79531
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id78016_)))
                                    (__tmp79528
                                     (let ((__tmp79529
                                            (let ((__tmp79530
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp79530))))
                                       (declare (not safe))
                                       (cons __tmp79529 '()))))
                                (declare (not safe))
                                (cons __tmp79531 __tmp79528))))
                         (declare (not safe))
                         (cons __tmp79527 _r78017_))
                       _r78017_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp79526
                                                            _pre77979_
                                                            _hd78009_)))
                                                 (__tmp79521
                                                  (let ((__tmp79522
                                                         (let ((__tmp79523
                                                                (let ((__tmp79524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs77978_)))
                          (declare (not safe))
                          (cons __tmp79524 '()))))
                   (declare (not safe))
                   (cons _tmp78013_ __tmp79523))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79522
                                                          _bind77980_)))
                                                 (__tmp79514
                                                  (let ((__tmp79515
                                                         (let ((__tmp79516
                                                                (let ((__tmp79517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79519
                                      (lambda (_id78019_ _k78020_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id78019_))
                                            (let ((__tmp79520
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id78019_))))
                                              (declare (not safe))
                                              (cons __tmp79520 _k78020_))
                                            '#f)))
                                     (__tmp79518 (iota _len78011_)))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp79519
                                  _hd78009_
                                  __tmp79518))))
                          (declare (not safe))
                          (cons _len78011_ __tmp79517))))
                   (declare (not safe))
                   (cons _tmp78013_ __tmp79516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79515
                                                          _post77981_))))
                                             (declare (not safe))
                                             (_lp77975_
                                              _rest78008_
                                              __tmp79532
                                              __tmp79525
                                              __tmp79521
                                              __tmp79514)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx77861_
                                            _hd78009_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7798277996_))
                              (let ((_tl7799278045_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7798277996_)))
                                    (_hd7799178043_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7798277996_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7799178043_))
                                    (let ((_tl7799478050_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7799178043_)))
                                          (_hd7799378048_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7799178043_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7799478050_))
                                          (let ((_id78053_ _hd7799378048_)
                                                (_rest78055_ _tl7799278045_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7799078040_
                                               _rest78055_
                                               _id78053_)))
                                          (let ((_hd78030_ _hd7799178043_)
                                                (_rest78032_ _tl7799278045_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7798778022_
                                               _rest78032_
                                               _hd78030_)))))
                                    (let ((_hd78030_ _hd7799178043_)
                                          (_rest78032_ _tl7799278045_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7798778022_
                                         _rest78032_
                                         _hd78030_)))))
                              (let ()
                                (declare (not safe))
                                (_else7798578004_))))))))
                 (_compile-inner77865_
                  (lambda (_pre77966_ _bind77967_ _post77968_ _body77969_)
                    (if (let () (declare (not safe)) (null? _pre77966_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind77866_
                           _bind77967_
                           _post77968_
                           _body77969_))
                        (let ((__tmp79541
                               (let ((__tmp79542
                                      (let ((__tmp79545 (reverse _pre77966_))
                                            (__tmp79543
                                             (let ((__tmp79544
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind77866_
                                                       _bind77967_
                                                       _post77968_
                                                       _body77969_))))
                                               (declare (not safe))
                                               (cons __tmp79544 '()))))
                                        (declare (not safe))
                                        (cons __tmp79545 __tmp79543))))
                                 (declare (not safe))
                                 (cons 'let __tmp79542))))
                          (declare (not safe))
                          (__SRC__% __tmp79541 _stx77861_)))))
                 (_compile-bind77866_
                  (lambda (_bind77962_ _post77963_ _body77964_)
                    (let ((__tmp79546
                           (let ((__tmp79547
                                  (let ((__tmp79550 (reverse _bind77962_))
                                        (__tmp79548
                                         (let ((__tmp79549
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post77867_
                                                   _post77963_
                                                   _body77964_))))
                                           (declare (not safe))
                                           (cons __tmp79549 '()))))
                                    (declare (not safe))
                                    (cons __tmp79550 __tmp79548))))
                             (declare (not safe))
                             (cons 'letrec __tmp79547))))
                      (declare (not safe))
                      (__SRC__% __tmp79546 _stx77861_))))
                 (_compile-post77867_
                  (lambda (_post77869_ _body77870_)
                    (let _lp77872_ ((_rest77874_ _post77869_)
                                    (_check77875_ '())
                                    (_bind77876_ '()))
                      (let* ((_rest7787777889_ _rest77874_)
                             (_else7787977897_
                              (lambda ()
                                (let ((__tmp79551
                                       (let ((__tmp79552
                                              (let ((__tmp79553
                                                     (let ((__tmp79554
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body77870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp79554 _bind77876_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp79553
                                                        _check77875_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp79552))))
                                  (declare (not safe))
                                  (__SRC__% __tmp79551 _stx77861_))))
                             (_K7788177936_
                              (lambda (_rest77900_
                                       _init77901_
                                       _len77902_
                                       _tmp77903_)
                                (let ((__tmp79563
                                       (let ((__tmp79564
                                              (let ((__tmp79565
                                                     (let ((__tmp79566
                                                            (let ((__tmp79567
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len77902_ '()))))
                      (declare (not safe))
                      (cons _tmp77903_ __tmp79567))))
               (declare (not safe))
               (cons '__check-values __tmp79566))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp79565
                                                 _stx77861_))))
                                         (declare (not safe))
                                         (cons __tmp79564 _check77875_)))
                                      (__tmp79555
                                       (let ((__tmp79556
                                              (lambda (_hd77905_ _r77906_)
                                                (let* ((_hd7790777914_
                                                        _hd77905_)
                                                       (_E7790977918_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7790777914_))))
               (_K7791077924_
                (lambda (_k77921_ _id77922_)
                  (let ((__tmp79557
                         (let ((__tmp79558
                                (let ((__tmp79559
                                       (let ((__tmp79560
                                              (let ((__tmp79561
                                                     (let ((__tmp79562
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k77921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp77903_ __tmp79562))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp79561))))
                                         (declare (not safe))
                                         (cons __tmp79560 '()))))
                                  (declare (not safe))
                                  (cons _id77922_ __tmp79559))))
                           (declare (not safe))
                           (cons 'set! __tmp79558))))
                    (declare (not safe))
                    (cons __tmp79557 _r77906_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7790777914_))
                                                      (let ((_hd7791177927_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7790777914_)))
                    (_tl7791277929_
                     (let () (declare (not safe)) (##cdr _hd7790777914_))))
                (let* ((_id77932_ _hd7791177927_) (_k77934_ _tl7791277929_))
                  (declare (not safe))
                  (_K7791077924_ _k77934_ _id77932_)))
              (let () (declare (not safe)) (_E7790977918_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp79556
                                                 _bind77876_
                                                 _init77901_))))
                                  (declare (not safe))
                                  (_lp77872_
                                   _rest77900_
                                   __tmp79563
                                   __tmp79555)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7787777889_))
                            (let ((_hd7788277939_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7787777889_)))
                                  (_tl7788377941_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7787777889_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7788277939_))
                                  (let ((_hd7788477944_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7788277939_)))
                                        (_tl7788577946_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7788277939_))))
                                    (let ((_tmp77949_ _hd7788477944_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7788577946_))
                                          (let ((_hd7788677951_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7788577946_)))
                                                (_tl7788777953_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7788577946_))))
                                            (let* ((_len77956_ _hd7788677951_)
                                                   (_init77958_ _tl7788777953_)
                                                   (_rest77960_
                                                    _tl7788377941_))
                                              (declare (not safe))
                                              (_K7788177936_
                                               _rest77960_
                                               _init77958_
                                               _len77956_
                                               _tmp77949_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7787977897_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7787977897_))))
                            (let ()
                              (declare (not safe))
                              (_else7787977897_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx77861_
             _compile-simple77863_
             _compile-values77864_)))))
    (define __compile-letrec*-values%
      (lambda (_stx77616_)
        (letrec ((_compile-simple77618_
                  (lambda (_hd-ids77857_ _exprs77858_ _body77859_)
                    (let ((__tmp79568
                           (let ((__tmp79569
                                  (let ((__tmp79571
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids77857_)
                                              _exprs77858_))
                                        (__tmp79570
                                         (let ()
                                           (declare (not safe))
                                           (cons _body77859_ '()))))
                                    (declare (not safe))
                                    (cons __tmp79571 __tmp79570))))
                             (declare (not safe))
                             (cons 'letrec* __tmp79569))))
                      (declare (not safe))
                      (__SRC__% __tmp79568 _stx77616_))))
                 (_compile-values77619_
                  (lambda (_hd-ids77768_ _exprs77769_ _body77770_)
                    (let _lp77772_ ((_rest77774_ _hd-ids77768_)
                                    (_exprs77775_ _exprs77769_)
                                    (_bind77776_ '())
                                    (_post77777_ '()))
                      (let* ((_rest7777877792_ _rest77774_)
                             (_else7778177800_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind77620_
                                   _bind77776_
                                   _post77777_
                                   _body77770_)))))
                        (let ((_K7778677840_
                               (lambda (_rest77835_ _hd77836_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77836_))
                                     (let ((_id77838_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd77836_))))
                                       (let ((__tmp79586 (cdr _exprs77775_))
                                             (__tmp79581
                                              (let ((__tmp79582
                                                     (let ((__tmp79583
                                                            (let ((__tmp79584
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79585
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp79585))))
                      (declare (not safe))
                      (cons __tmp79584 '()))))
               (declare (not safe))
               (cons _id77838_ __tmp79583))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79582 _bind77776_)))
                                             (__tmp79577
                                              (let ((__tmp79578
                                                     (let ((__tmp79579
                                                            (let ((__tmp79580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs77775_)))
                      (declare (not safe))
                      (cons __tmp79580 '()))))
               (declare (not safe))
               (cons _id77838_ __tmp79579))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79578
                                                      _post77777_))))
                                         (declare (not safe))
                                         (_lp77772_
                                          _rest77835_
                                          __tmp79586
                                          __tmp79581
                                          __tmp79577)))
                                     (let ((__tmp79576 (cdr _exprs77775_))
                                           (__tmp79572
                                            (let ((__tmp79573
                                                   (let ((__tmp79574
                                                          (let ((__tmp79575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs77775_)))
                    (declare (not safe))
                    (cons __tmp79575 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp79574))))
                                              (declare (not safe))
                                              (cons __tmp79573 _post77777_))))
                                       (declare (not safe))
                                       (_lp77772_
                                        _rest77835_
                                        __tmp79576
                                        _bind77776_
                                        __tmp79572)))))
                              (_K7778377820_
                               (lambda (_rest77804_ _hd77805_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd77805_))
                                     (let ((_id77807_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd77805_))))
                                       (let ((__tmp79622 (cdr _exprs77775_))
                                             (__tmp79617
                                              (let ((__tmp79618
                                                     (let ((__tmp79619
                                                            (let ((__tmp79620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79621
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp79621))))
                      (declare (not safe))
                      (cons __tmp79620 '()))))
               (declare (not safe))
               (cons _id77807_ __tmp79619))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79618 _bind77776_)))
                                             (__tmp79611
                                              (let ((__tmp79612
                                                     (let ((__tmp79613
                                                            (let ((__tmp79614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79615
                                  (let ((__tmp79616 (car _exprs77775_)))
                                    (declare (not safe))
                                    (cons __tmp79616 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp79615))))
                      (declare (not safe))
                      (cons __tmp79614 '()))))
               (declare (not safe))
               (cons _id77807_ __tmp79613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79612
                                                      _post77777_))))
                                         (declare (not safe))
                                         (_lp77772_
                                          _rest77804_
                                          __tmp79622
                                          __tmp79617
                                          __tmp79611)))
                                     (if (let ((__tmp79610
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd77805_))))
                                           (declare (not safe))
                                           (not __tmp79610))
                                         (let ((__tmp79609 (cdr _exprs77775_))
                                               (__tmp79605
                                                (let ((__tmp79606
                                                       (let ((__tmp79607
                                                              (let ((__tmp79608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs77775_)))
                        (declare (not safe))
                        (cons __tmp79608 '()))))
                 (declare (not safe))
                 (cons '#f __tmp79607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79606
                                                        _post77777_))))
                                           (declare (not safe))
                                           (_lp77772_
                                            _rest77804_
                                            __tmp79609
                                            _bind77776_
                                            __tmp79605))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd77805_))
                                             (let* ((_len77809_
                                                     (length _hd77805_))
                                                    (_tmp77811_
                                                     (let ((__tmp79587
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp79587))))
                                               (let ((__tmp79604
                                                      (cdr _exprs77775_))
                                                     (__tmp79597
                                                      (let ((__tmp79598
                                                             (lambda (_id77814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r77815_)
                       (if (let () (declare (not safe)) (__AST-e _id77814_))
                           (let ((__tmp79599
                                  (let ((__tmp79603
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id77814_)))
                                        (__tmp79600
                                         (let ((__tmp79601
                                                (let ((__tmp79602
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp79602))))
                                           (declare (not safe))
                                           (cons __tmp79601 '()))))
                                    (declare (not safe))
                                    (cons __tmp79603 __tmp79600))))
                             (declare (not safe))
                             (cons __tmp79599 _r77815_))
                           _r77815_))))
                (declare (not safe))
                (foldl1 __tmp79598 _bind77776_ _hd77805_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp79588
                                                      (let ((__tmp79589
                                                             (let ((__tmp79590
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp79596 (car _exprs77775_))
                                  (__tmp79591
                                   (let ((__tmp79592
                                          (let ((__tmp79594
                                                 (lambda (_id77817_ _k77818_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id77817_))
                                                       (let ((__tmp79595
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id77817_))))
                 (declare (not safe))
                 (cons __tmp79595 _k77818_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp79593 (iota _len77809_)))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp79594
                                             _hd77805_
                                             __tmp79593))))
                                     (declare (not safe))
                                     (cons _len77809_ __tmp79592))))
                              (declare (not safe))
                              (cons __tmp79596 __tmp79591))))
                       (declare (not safe))
                       (cons _tmp77811_ __tmp79590))))
                (declare (not safe))
                (cons __tmp79589 _post77777_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp77772_
                                                  _rest77804_
                                                  __tmp79604
                                                  __tmp79597
                                                  __tmp79588)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx77616_
                                                _hd77805_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7777877792_))
                              (let ((_tl7778877845_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7777877792_)))
                                    (_hd7778777843_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7777877792_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7778777843_))
                                    (let ((_tl7779077850_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7778777843_)))
                                          (_hd7778977848_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7778777843_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7779077850_))
                                          (let ((_hd77853_ _hd7778977848_)
                                                (_rest77855_ _tl7778877845_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7778677840_
                                               _rest77855_
                                               _hd77853_)))
                                          (let ((_hd77828_ _hd7778777843_)
                                                (_rest77830_ _tl7778877845_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7778377820_
                                               _rest77830_
                                               _hd77828_)))))
                                    (let ((_hd77828_ _hd7778777843_)
                                          (_rest77830_ _tl7778877845_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7778377820_
                                         _rest77830_
                                         _hd77828_)))))
                              (let ()
                                (declare (not safe))
                                (_else7778177800_))))))))
                 (_compile-bind77620_
                  (lambda (_bind77764_ _post77765_ _body77766_)
                    (let ((__tmp79623
                           (let ((__tmp79624
                                  (let ((__tmp79627 (reverse _bind77764_))
                                        (__tmp79625
                                         (let ((__tmp79626
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post77621_
                                                   _post77765_
                                                   _body77766_))))
                                           (declare (not safe))
                                           (cons __tmp79626 '()))))
                                    (declare (not safe))
                                    (cons __tmp79627 __tmp79625))))
                             (declare (not safe))
                             (cons 'let __tmp79624))))
                      (declare (not safe))
                      (__SRC__% __tmp79623 _stx77616_))))
                 (_compile-post77621_
                  (lambda (_post77623_ _body77624_)
                    (let ((__tmp79628
                           (let ((__tmp79629
                                  (let ((__tmp79630
                                         (let ((__tmp79632
                                                (lambda (_hd77626_ _r77627_)
                                                  (let* ((_hd7762877651_
                                                          _hd77626_)
                                                         (_E7763277655_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7762877651_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7764577749_
                                                           (lambda (_expr77747_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr77747_ _r77627_))))
                  (_K7764077727_
                   (lambda (_expr77724_ _id77725_)
                     (let ((__tmp79633
                            (let ((__tmp79634
                                   (let ((__tmp79635
                                          (let ((__tmp79636
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr77724_ '()))))
                                            (declare (not safe))
                                            (cons _id77725_ __tmp79636))))
                                     (declare (not safe))
                                     (cons 'set! __tmp79635))))
                              (declare (not safe))
                              (__SRC__% __tmp79634 _stx77616_))))
                       (declare (not safe))
                       (cons __tmp79633 _r77627_))))
                  (_K7763377694_
                   (lambda (_init77659_ _len77660_ _expr77661_ _tmp77662_)
                     (let ((__tmp79637
                            (let ((__tmp79638
                                   (let ((__tmp79639
                                          (let ((__tmp79653
                                                 (let ((__tmp79654
                                                        (let ((__tmp79655
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr77661_ '()))))
                  (declare (not safe))
                  (cons _tmp77662_ __tmp79655))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp79654 '())))
                                                (__tmp79640
                                                 (let ((__tmp79649
                                                        (let ((__tmp79650
                                                               (let ((__tmp79651
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp79652
                                     (let ()
                                       (declare (not safe))
                                       (cons _len77660_ '()))))
                                (declare (not safe))
                                (cons _tmp77662_ __tmp79652))))
                         (declare (not safe))
                         (cons '__check-values __tmp79651))))
                  (declare (not safe))
                  (__SRC__% __tmp79650 _stx77616_)))
               (__tmp79641
                (let ((__tmp79642
                       (map (lambda (_hd77664_)
                              (let* ((_hd7766577672_ _hd77664_)
                                     (_E7766777676_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7766577672_))))
                                     (_K7766877682_
                                      (lambda (_k77679_ _id77680_)
                                        (let ((__tmp79643
                                               (let ((__tmp79644
                                                      (let ((__tmp79645
                                                             (let ((__tmp79646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp79647
                                   (let ((__tmp79648
                                          (let ()
                                            (declare (not safe))
                                            (cons _k77679_ '()))))
                                     (declare (not safe))
                                     (cons _tmp77662_ __tmp79648))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp79647))))
                       (declare (not safe))
                       (cons __tmp79646 '()))))
                (declare (not safe))
                (cons _id77680_ __tmp79645))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp79644))))
                                          (declare (not safe))
                                          (__SRC__% __tmp79643 _stx77616_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7766577672_))
                                    (let ((_hd7766977685_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7766577672_)))
                                          (_tl7767077687_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7766577672_))))
                                      (let* ((_id77690_ _hd7766977685_)
                                             (_k77692_ _tl7767077687_))
                                        (declare (not safe))
                                        (_K7766877682_ _k77692_ _id77690_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7766777676_)))))
                            _init77659_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp79642))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp79649
                                                         __tmp79641))))
                                            (declare (not safe))
                                            (cons __tmp79653 __tmp79640))))
                                     (declare (not safe))
                                     (cons 'let __tmp79639))))
                              (declare (not safe))
                              (__SRC__% __tmp79638 _stx77616_))))
                       (declare (not safe))
                       (cons __tmp79637 _r77627_)))))
              (if (let () (declare (not safe)) (##pair? _hd7762877651_))
                  (let ((_tl7764777754_
                         (let () (declare (not safe)) (##cdr _hd7762877651_)))
                        (_hd7764677752_
                         (let () (declare (not safe)) (##car _hd7762877651_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7764677752_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7764777754_))
                            (let ((_tl7764977759_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7764777754_)))
                                  (_hd7764877757_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7764777754_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7764977759_))
                                  (let ((_expr77762_ _hd7764877757_))
                                    (declare (not safe))
                                    (_K7764577749_ _expr77762_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7764977759_))
                                      (let ((_tl7763977713_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7764977759_)))
                                            (_hd7763877711_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7764977759_))))
                                        (let ((_tmp77702_ _hd7764677752_)
                                              (_expr77709_ _hd7764877757_)
                                              (_len77716_ _hd7763877711_)
                                              (_init77718_ _tl7763977713_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7763377694_
                                             _init77718_
                                             _len77716_
                                             _expr77709_
                                             _tmp77702_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7763277655_)))))
                            (let () (declare (not safe)) (_E7763277655_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7764777754_))
                            (let ((_tl7764477739_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7764777754_)))
                                  (_hd7764377737_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7764777754_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7764477739_))
                                  (let ((_id77735_ _hd7764677752_)
                                        (_expr77742_ _hd7764377737_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7764077727_ _expr77742_ _id77735_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7764477739_))
                                      (let ((_tl7763977713_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7764477739_)))
                                            (_hd7763877711_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7764477739_))))
                                        (let ((_tmp77702_ _hd7764677752_)
                                              (_expr77709_ _hd7764377737_)
                                              (_len77716_ _hd7763877711_)
                                              (_init77718_ _tl7763977713_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7763377694_
                                             _init77718_
                                             _len77716_
                                             _expr77709_
                                             _tmp77702_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7763277655_)))))
                            (let () (declare (not safe)) (_E7763277655_)))))
                  (let () (declare (not safe)) (_E7763277655_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp79631 (list _body77624_)))
                                           (declare (not safe))
                                           (foldl1 __tmp79632
                                                   __tmp79631
                                                   _post77623_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp79630))))
                             (declare (not safe))
                             (cons 'begin __tmp79629))))
                      (declare (not safe))
                      (__SRC__% __tmp79628 _stx77616_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx77616_
             _compile-simple77618_
             _compile-values77619_)))))
    (define __compile-call%
      (lambda (_stx77576_)
        (let* ((_$e77578_ _stx77576_)
               (_$E7758077589_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77578_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77578_))
              (let* ((_$tgt7758177592_
                      (let () (declare (not safe)) (__AST-e _$e77578_)))
                     (_$hd7758277595_
                      (let () (declare (not safe)) (##car _$tgt7758177592_)))
                     (_$tl7758377598_
                      (let () (declare (not safe)) (##cdr _$tgt7758177592_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7758377598_))
                    (let* ((_$tgt7758477602_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7758377598_)))
                           (_$hd7758577605_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7758477602_)))
                           (_$tl7758677608_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7758477602_))))
                      (let* ((_rator77612_ _$hd7758577605_)
                             (_rands77614_ _$tl7758677608_)
                             (__tmp79656
                              (let ((__tmp79658
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator77612_)))
                                    (__tmp79657 (map __compile _rands77614_)))
                                (declare (not safe))
                                (cons __tmp79658 __tmp79657))))
                        (declare (not safe))
                        (__SRC__% __tmp79656 _stx77576_)))
                    (let () (declare (not safe)) (_$E7758077589_))))
              (let () (declare (not safe)) (_$E7758077589_))))))
    (define __compile-ref%
      (lambda (_stx77538_)
        (let* ((_$e77540_ _stx77538_)
               (_$E7754277551_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77540_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77540_))
              (let* ((_$tgt7754377554_
                      (let () (declare (not safe)) (__AST-e _$e77540_)))
                     (_$hd7754477557_
                      (let () (declare (not safe)) (##car _$tgt7754377554_)))
                     (_$tl7754577560_
                      (let () (declare (not safe)) (##cdr _$tgt7754377554_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7754577560_))
                    (let* ((_$tgt7754677564_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7754577560_)))
                           (_$hd7754777567_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7754677564_)))
                           (_$tl7754877570_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7754677564_))))
                      (let ((_id77574_ _$hd7754777567_))
                        (if (let ((__tmp79659
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7754877570_))))
                              (declare (not safe))
                              (equal? __tmp79659 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id77574_ _stx77538_))
                            (let () (declare (not safe)) (_$E7754277551_)))))
                    (let () (declare (not safe)) (_$E7754277551_))))
              (let () (declare (not safe)) (_$E7754277551_))))))
    (define __compile-setq%
      (lambda (_stx77485_)
        (let* ((_$e77487_ _stx77485_)
               (_$E7748977501_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77487_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77487_))
              (let* ((_$tgt7749077504_
                      (let () (declare (not safe)) (__AST-e _$e77487_)))
                     (_$hd7749177507_
                      (let () (declare (not safe)) (##car _$tgt7749077504_)))
                     (_$tl7749277510_
                      (let () (declare (not safe)) (##cdr _$tgt7749077504_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7749277510_))
                    (let* ((_$tgt7749377514_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7749277510_)))
                           (_$hd7749477517_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7749377514_)))
                           (_$tl7749577520_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7749377514_))))
                      (let ((_id77524_ _$hd7749477517_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7749577520_))
                            (let* ((_$tgt7749677526_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7749577520_)))
                                   (_$hd7749777529_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7749677526_)))
                                   (_$tl7749877532_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7749677526_))))
                              (let ((_expr77536_ _$hd7749777529_))
                                (if (let ((__tmp79665
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7749877532_))))
                                      (declare (not safe))
                                      (equal? __tmp79665 '()))
                                    (let ((__tmp79660
                                           (let ((__tmp79661
                                                  (let ((__tmp79664
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id77524_
                                                            _stx77485_)))
                                                        (__tmp79662
                                                         (let ((__tmp79663
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr77536_))))
                   (declare (not safe))
                   (cons __tmp79663 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79664
                                                          __tmp79662))))
                                             (declare (not safe))
                                             (cons 'set! __tmp79661))))
                                      (declare (not safe))
                                      (__SRC__% __tmp79660 _stx77485_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7748977501_)))))
                            (let () (declare (not safe)) (_$E7748977501_)))))
                    (let () (declare (not safe)) (_$E7748977501_))))
              (let () (declare (not safe)) (_$E7748977501_))))))
    (define __compile-if%
      (lambda (_stx77417_)
        (let* ((_$e77419_ _stx77417_)
               (_$E7742177436_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77419_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77419_))
              (let* ((_$tgt7742277439_
                      (let () (declare (not safe)) (__AST-e _$e77419_)))
                     (_$hd7742377442_
                      (let () (declare (not safe)) (##car _$tgt7742277439_)))
                     (_$tl7742477445_
                      (let () (declare (not safe)) (##cdr _$tgt7742277439_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7742477445_))
                    (let* ((_$tgt7742577449_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7742477445_)))
                           (_$hd7742677452_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7742577449_)))
                           (_$tl7742777455_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7742577449_))))
                      (let ((_p77459_ _$hd7742677452_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7742777455_))
                            (let* ((_$tgt7742877461_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7742777455_)))
                                   (_$hd7742977464_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7742877461_)))
                                   (_$tl7743077467_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7742877461_))))
                              (let ((_t77471_ _$hd7742977464_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7743077467_))
                                    (let* ((_$tgt7743177473_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7743077467_)))
                                           (_$hd7743277476_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7743177473_)))
                                           (_$tl7743377479_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7743177473_))))
                                      (let ((_f77483_ _$hd7743277476_))
                                        (if (let ((__tmp79673
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7743377479_))))
                                              (declare (not safe))
                                              (equal? __tmp79673 '()))
                                            (let ((__tmp79666
                                                   (let ((__tmp79667
                                                          (let ((__tmp79672
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p77459_)))
                        (__tmp79668
                         (let ((__tmp79671
                                (let ()
                                  (declare (not safe))
                                  (__compile _t77471_)))
                               (__tmp79669
                                (let ((__tmp79670
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f77483_))))
                                  (declare (not safe))
                                  (cons __tmp79670 '()))))
                           (declare (not safe))
                           (cons __tmp79671 __tmp79669))))
                    (declare (not safe))
                    (cons __tmp79672 __tmp79668))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp79667))))
                                              (declare (not safe))
                                              (__SRC__% __tmp79666 _stx77417_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7742177436_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7742177436_)))))
                            (let () (declare (not safe)) (_$E7742177436_)))))
                    (let () (declare (not safe)) (_$E7742177436_))))
              (let () (declare (not safe)) (_$E7742177436_))))))
    (define __compile-quote%
      (lambda (_stx77379_)
        (let* ((_$e77381_ _stx77379_)
               (_$E7738377392_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77381_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77381_))
              (let* ((_$tgt7738477395_
                      (let () (declare (not safe)) (__AST-e _$e77381_)))
                     (_$hd7738577398_
                      (let () (declare (not safe)) (##car _$tgt7738477395_)))
                     (_$tl7738677401_
                      (let () (declare (not safe)) (##cdr _$tgt7738477395_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7738677401_))
                    (let* ((_$tgt7738777405_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7738677401_)))
                           (_$hd7738877408_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7738777405_)))
                           (_$tl7738977411_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7738777405_))))
                      (let ((_e77415_ _$hd7738877408_))
                        (if (let ((__tmp79677
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7738977411_))))
                              (declare (not safe))
                              (equal? __tmp79677 '()))
                            (let ((__tmp79674
                                   (let ((__tmp79675
                                          (let ((__tmp79676
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e77415_))))
                                            (declare (not safe))
                                            (cons __tmp79676 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp79675))))
                              (declare (not safe))
                              (__SRC__% __tmp79674 _stx77379_))
                            (let () (declare (not safe)) (_$E7738377392_)))))
                    (let () (declare (not safe)) (_$E7738377392_))))
              (let () (declare (not safe)) (_$E7738377392_))))))
    (define __compile-quote-syntax%
      (lambda (_stx77341_)
        (let* ((_$e77343_ _stx77341_)
               (_$E7734577354_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77343_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77343_))
              (let* ((_$tgt7734677357_
                      (let () (declare (not safe)) (__AST-e _$e77343_)))
                     (_$hd7734777360_
                      (let () (declare (not safe)) (##car _$tgt7734677357_)))
                     (_$tl7734877363_
                      (let () (declare (not safe)) (##cdr _$tgt7734677357_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7734877363_))
                    (let* ((_$tgt7734977367_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7734877363_)))
                           (_$hd7735077370_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7734977367_)))
                           (_$tl7735177373_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7734977367_))))
                      (let ((_e77377_ _$hd7735077370_))
                        (if (let ((__tmp79680
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7735177373_))))
                              (declare (not safe))
                              (equal? __tmp79680 '()))
                            (let ((__tmp79678
                                   (let ((__tmp79679
                                          (let ()
                                            (declare (not safe))
                                            (cons _e77377_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp79679))))
                              (declare (not safe))
                              (__SRC__% __tmp79678 _stx77341_))
                            (let () (declare (not safe)) (_$E7734577354_)))))
                    (let () (declare (not safe)) (_$E7734577354_))))
              (let () (declare (not safe)) (_$E7734577354_))))))
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
