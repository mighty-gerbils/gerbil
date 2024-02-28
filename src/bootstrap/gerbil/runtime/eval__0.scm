(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1709128371)
  (begin
    (define __syntax::t
      (let ((__tmp77845 (list))
            (__tmp77843
             (let ((__tmp77844
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77844 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp77845
         '(e id)
         __tmp77843
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args77654_ (apply make-instance __syntax::t _$args77654_)))
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
      (let ((__tmp77848 (list __syntax::t))
            (__tmp77846
             (let ((__tmp77847
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77847 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp77848
         '()
         __tmp77846
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args77651_ (apply make-instance __core-form::t _$args77651_)))
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
      (let ((__tmp77851 (list __core-form::t))
            (__tmp77849
             (let ((__tmp77850
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77850 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp77851
         '()
         __tmp77849
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args77648_
        (apply make-instance __core-expression::t _$args77648_)))
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
      (let ((__tmp77854 (list __core-form::t))
            (__tmp77852
             (let ((__tmp77853
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp77853 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp77854
         '()
         __tmp77852
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args77645_
        (apply make-instance __core-special-form::t _$args77645_)))
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
      (lambda (_id77643_)
        (let ((__tmp77855 (let () (declare (not safe)) (__AST-e _id77643_))))
          (declare (not safe))
          (hash-get __core __tmp77855))))
    (define __core-bound-id?__%
      (lambda (_id77627_ _is?77628_)
        (let ((_$e77630_
               (let () (declare (not safe)) (__core-resolve _id77627_))))
          (if _$e77630_ (_is?77628_ _$e77630_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id77636_)
        (let ((_is?77638_ true))
          (declare (not safe))
          (__core-bound-id?__% _id77636_ _is?77638_))))
    (define __core-bound-id?
      (lambda _g77857_
        (let ((_g77856_ (let () (declare (not safe)) (##length _g77857_))))
          (cond ((let () (declare (not safe)) (##fx= _g77856_ 1))
                 (apply (lambda (_id77636_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id77636_)))
                        _g77857_))
                ((let () (declare (not safe)) (##fx= _g77856_ 2))
                 (apply (lambda (_id77640_ _is?77641_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id77640_ _is?77641_)))
                        _g77857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g77857_))))))
    (define __core-bind-syntax!__%
      (lambda (_id77610_ _e77611_ _make77612_)
        (let ((__tmp77858
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e77611_
                      'gerbil/runtime/eval#__syntax::t))
                   _e77611_
                   (_make77612_ _e77611_ _id77610_))))
          (declare (not safe))
          (hash-put! __core _id77610_ __tmp77858))))
    (define __core-bind-syntax!__0
      (lambda (_id77617_ _e77618_)
        (let ((_make77620_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id77617_ _e77618_ _make77620_))))
    (define __core-bind-syntax!
      (lambda _g77860_
        (let ((_g77859_ (let () (declare (not safe)) (##length _g77860_))))
          (cond ((let () (declare (not safe)) (##fx= _g77859_ 2))
                 (apply (lambda (_id77617_ _e77618_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id77617_ _e77618_)))
                        _g77860_))
                ((let () (declare (not safe)) (##fx= _g77859_ 3))
                 (apply (lambda (_id77622_ _e77623_ _make77624_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id77622_
                             _e77623_
                             _make77624_)))
                        _g77860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g77860_))))))
    (define __SRC__%
      (lambda (_e77593_ _src-stx77594_)
        (if (or (let () (declare (not safe)) (pair? _e77593_))
                (let () (declare (not safe)) (symbol? _e77593_)))
            (let ((__tmp77864
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx77594_
                          'gerbil#AST::t))
                       (let ((__tmp77865
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx77594_))))
                         (declare (not safe))
                         (__locat __tmp77865))
                       '#f)))
              (declare (not safe))
              (##make-source _e77593_ __tmp77864))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e77593_ 'gerbil#AST::t))
                (let ((__tmp77863
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e77593_ '1 AST::t '#f)))
                      (__tmp77861
                       (let ((__tmp77862
                              (let ()
                                (declare (not safe))
                                (__AST-source _e77593_))))
                         (declare (not safe))
                         (__locat __tmp77862))))
                  (declare (not safe))
                  (##make-source __tmp77863 __tmp77861))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e77593_))))))
    (define __SRC__0
      (lambda (_e77602_)
        (let ((_src-stx77604_ '#f))
          (declare (not safe))
          (__SRC__% _e77602_ _src-stx77604_))))
    (define __SRC
      (lambda _g77867_
        (let ((_g77866_ (let () (declare (not safe)) (##length _g77867_))))
          (cond ((let () (declare (not safe)) (##fx= _g77866_ 1))
                 (apply (lambda (_e77602_)
                          (let () (declare (not safe)) (__SRC__0 _e77602_)))
                        _g77867_))
                ((let () (declare (not safe)) (##fx= _g77866_ 2))
                 (apply (lambda (_e77606_ _src-stx77607_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e77606_ _src-stx77607_)))
                        _g77867_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g77867_))))))
    (define __locat
      (lambda (_loc77590_)
        (if (let () (declare (not safe)) (##locat? _loc77590_))
            _loc77590_
            '#f)))
    (define __check-values
      (lambda (_obj77585_ _k77586_)
        (let ((_count77588_
               (if (let () (declare (not safe)) (##values? _obj77585_))
                   (let () (declare (not safe)) (##vector-length _obj77585_))
                   '1)))
          (if (fx= _count77588_ _k77586_)
              '#!void
              (let ((__tmp77869
                     (if (fx< _count77588_ _k77586_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp77868
                     (if (let () (declare (not safe)) (##values? _obj77585_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj77585_))
                         _obj77585_)))
                (declare (not safe))
                (error __tmp77869 __tmp77868 _k77586_))))))
    (define __compile
      (lambda (_stx77555_)
        (let* ((_$e77557_ _stx77555_)
               (_$E7755977565_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77557_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77557_))
              (let* ((_$tgt7756077568_
                      (let () (declare (not safe)) (__AST-e _$e77557_)))
                     (_$hd7756177571_
                      (let () (declare (not safe)) (##car _$tgt7756077568_)))
                     (_$tl7756277574_
                      (let () (declare (not safe)) (##cdr _$tgt7756077568_))))
                (let* ((_form77578_ _$hd7756177571_)
                       (_$e77580_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form77578_))))
                  (if _$e77580_
                      ((lambda (_bind77583_)
                         ((##structure-ref _bind77583_ '1 __syntax::t '#f)
                          _stx77555_))
                       _$e77580_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx77555_
                         _form77578_)))))
              (let () (declare (not safe)) (_$E7755977565_))))))
    (define __compile-error__%
      (lambda (_stx77542_ _detail77543_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx77542_
           _detail77543_))))
    (define __compile-error__0
      (lambda (_stx77548_)
        (let ((_detail77550_ '#f))
          (declare (not safe))
          (__compile-error__% _stx77548_ _detail77550_))))
    (define __compile-error
      (lambda _g77871_
        (let ((_g77870_ (let () (declare (not safe)) (##length _g77871_))))
          (cond ((let () (declare (not safe)) (##fx= _g77870_ 1))
                 (apply (lambda (_stx77548_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx77548_)))
                        _g77871_))
                ((let () (declare (not safe)) (##fx= _g77870_ 2))
                 (apply (lambda (_stx77552_ _detail77553_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx77552_ _detail77553_)))
                        _g77871_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g77871_))))))
    (define __compile-ignore%
      (lambda (_stx77539_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx77539_))))
    (define __compile-begin%
      (lambda (_stx77514_)
        (let* ((_$e77516_ _stx77514_)
               (_$E7751877524_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77516_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77516_))
              (let* ((_$tgt7751977527_
                      (let () (declare (not safe)) (__AST-e _$e77516_)))
                     (_$hd7752077530_
                      (let () (declare (not safe)) (##car _$tgt7751977527_)))
                     (_$tl7752177533_
                      (let () (declare (not safe)) (##cdr _$tgt7751977527_))))
                (let* ((_body77537_ _$tl7752177533_)
                       (__tmp77872
                        (let ((__tmp77873 (map __compile _body77537_)))
                          (declare (not safe))
                          (cons 'begin __tmp77873))))
                  (declare (not safe))
                  (__SRC__% __tmp77872 _stx77514_)))
              (let () (declare (not safe)) (_$E7751877524_))))))
    (define __compile-begin-foreign%
      (lambda (_stx77489_)
        (let* ((_$e77491_ _stx77489_)
               (_$E7749377499_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77491_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77491_))
              (let* ((_$tgt7749477502_
                      (let () (declare (not safe)) (__AST-e _$e77491_)))
                     (_$hd7749577505_
                      (let () (declare (not safe)) (##car _$tgt7749477502_)))
                     (_$tl7749677508_
                      (let () (declare (not safe)) (##cdr _$tgt7749477502_))))
                (let* ((_body77512_ _$tl7749677508_)
                       (__tmp77874
                        (let ((__tmp77875
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body77512_))))
                          (declare (not safe))
                          (cons 'begin __tmp77875))))
                  (declare (not safe))
                  (__SRC__% __tmp77874 _stx77489_)))
              (let () (declare (not safe)) (_$E7749377499_))))))
    (define __compile-import%
      (lambda (_stx77464_)
        (let* ((_$e77466_ _stx77464_)
               (_$E7746877474_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77466_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77466_))
              (let* ((_$tgt7746977477_
                      (let () (declare (not safe)) (__AST-e _$e77466_)))
                     (_$hd7747077480_
                      (let () (declare (not safe)) (##car _$tgt7746977477_)))
                     (_$tl7747177483_
                      (let () (declare (not safe)) (##cdr _$tgt7746977477_))))
                (let* ((_body77487_ _$tl7747177483_)
                       (__tmp77876
                        (let ((__tmp77877
                               (let ((__tmp77878
                                      (let ((__tmp77879
                                             (let ()
                                               (declare (not safe))
                                               (cons _body77487_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp77879))))
                                 (declare (not safe))
                                 (cons __tmp77878 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp77877))))
                  (declare (not safe))
                  (__SRC__% __tmp77876 _stx77464_)))
              (let () (declare (not safe)) (_$E7746877474_))))))
    (define __compile-begin-annotation%
      (lambda (_stx77411_)
        (let* ((_$e77413_ _stx77411_)
               (_$E7741577427_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77413_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77413_))
              (let* ((_$tgt7741677430_
                      (let () (declare (not safe)) (__AST-e _$e77413_)))
                     (_$hd7741777433_
                      (let () (declare (not safe)) (##car _$tgt7741677430_)))
                     (_$tl7741877436_
                      (let () (declare (not safe)) (##cdr _$tgt7741677430_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7741877436_))
                    (let* ((_$tgt7741977440_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7741877436_)))
                           (_$hd7742077443_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7741977440_)))
                           (_$tl7742177446_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7741977440_))))
                      (let ((_ann77450_ _$hd7742077443_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7742177446_))
                            (let* ((_$tgt7742277452_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7742177446_)))
                                   (_$hd7742377455_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7742277452_)))
                                   (_$tl7742477458_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7742277452_))))
                              (let ((_expr77462_ _$hd7742377455_))
                                (if (let ((__tmp77880
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7742477458_))))
                                      (declare (not safe))
                                      (equal? __tmp77880 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr77462_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7741577427_)))))
                            (let () (declare (not safe)) (_$E7741577427_)))))
                    (let () (declare (not safe)) (_$E7741577427_))))
              (let () (declare (not safe)) (_$E7741577427_))))))
    (define __compile-define-values%
      (lambda (_stx77302_)
        (let* ((_$e77304_ _stx77302_)
               (_$E7730677318_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77304_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77304_))
              (let* ((_$tgt7730777321_
                      (let () (declare (not safe)) (__AST-e _$e77304_)))
                     (_$hd7730877324_
                      (let () (declare (not safe)) (##car _$tgt7730777321_)))
                     (_$tl7730977327_
                      (let () (declare (not safe)) (##cdr _$tgt7730777321_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7730977327_))
                    (let* ((_$tgt7731077331_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7730977327_)))
                           (_$hd7731177334_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7731077331_)))
                           (_$tl7731277337_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7731077331_))))
                      (let ((_hd77341_ _$hd7731177334_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7731277337_))
                            (let* ((_$tgt7731377343_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7731277337_)))
                                   (_$hd7731477346_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7731377343_)))
                                   (_$tl7731577349_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7731377343_))))
                              (let ((_expr77353_ _$hd7731477346_))
                                (if (let ((__tmp77913
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7731577349_))))
                                      (declare (not safe))
                                      (equal? __tmp77913 '()))
                                    (let* ((_$e77355_ _hd77341_)
                                           (_$E7735777398_
                                            (lambda ()
                                              (let ((_$E7735877383_
                                                     (lambda ()
                                                       (let* ((_$E7735977370_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e77355_))))
                      (_ids77373_ _hd77341_)
                      (_len77375_ (length _ids77373_))
                      (_tmp77377_
                       (let ((__tmp77881 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp77881))))
                 (let ((__tmp77882
                        (let ((__tmp77883
                               (let ((__tmp77900
                                      (let ((__tmp77901
                                             (let ((__tmp77902
                                                    (let ((__tmp77903
                                                           (let ((__tmp77904
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr77353_))))
                     (declare (not safe))
                     (cons __tmp77904 '()))))
              (declare (not safe))
              (cons _tmp77377_ __tmp77903))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp77902))))
                                        (declare (not safe))
                                        (__SRC__% __tmp77901 _stx77302_)))
                                     (__tmp77884
                                      (let ((__tmp77896
                                             (let ((__tmp77897
                                                    (let ((__tmp77898
                                                           (let ((__tmp77899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len77375_ '()))))
                     (declare (not safe))
                     (cons _tmp77377_ __tmp77899))))
              (declare (not safe))
              (cons '__check-values __tmp77898))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp77897
                                                _stx77302_)))
                                            (__tmp77885
                                             (let ((__tmp77886
                                                    (let ((__tmp77888
                                                           (lambda (_id77380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k77381_)
                     (if (let () (declare (not safe)) (__AST-e _id77380_))
                         (let ((__tmp77889
                                (let ((__tmp77890
                                       (let ((__tmp77895
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id77380_)))
                                             (__tmp77891
                                              (let ((__tmp77892
                                                     (let ((__tmp77893
                                                            (let ((__tmp77894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k77381_ '()))))
                      (declare (not safe))
                      (cons _tmp77377_ __tmp77894))))
               (declare (not safe))
               (cons '##vector-ref __tmp77893))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp77892 '()))))
                                         (declare (not safe))
                                         (cons __tmp77895 __tmp77891))))
                                  (declare (not safe))
                                  (cons 'define __tmp77890))))
                           (declare (not safe))
                           (__SRC__% __tmp77889 _stx77302_))
                         '#f)))
                  (__tmp77887
                   (let () (declare (not safe)) (iota__0 _len77375_))))
              (declare (not safe))
              (filter-map2 __tmp77888 _ids77373_ __tmp77887))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp77886))))
                                        (declare (not safe))
                                        (cons __tmp77896 __tmp77885))))
                                 (declare (not safe))
                                 (cons __tmp77900 __tmp77884))))
                          (declare (not safe))
                          (cons 'begin __tmp77883))))
                   (declare (not safe))
                   (__SRC__% __tmp77882 _stx77302_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e77355_))
                                                    (let* ((_$tgt7736077386_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e77355_)))
                                                           (_$hd7736177389_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7736077386_)))
                                                           (_$tl7736277392_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7736077386_))))
                                                      (let ((_id77396_
                                                             _$hd7736177389_))
                                                        (if (let ((__tmp77910
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7736277392_))))
                      (declare (not safe))
                      (equal? __tmp77910 '()))
                    (let ((__tmp77905
                           (let ((__tmp77906
                                  (let ((__tmp77909
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id77396_)))
                                        (__tmp77907
                                         (let ((__tmp77908
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr77353_))))
                                           (declare (not safe))
                                           (cons __tmp77908 '()))))
                                    (declare (not safe))
                                    (cons __tmp77909 __tmp77907))))
                             (declare (not safe))
                             (cons 'define __tmp77906))))
                      (declare (not safe))
                      (__SRC__% __tmp77905 _stx77302_))
                    (let () (declare (not safe)) (_$E7735877383_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7735877383_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e77355_))
                                          (let* ((_$tgt7736377401_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e77355_)))
                                                 (_$hd7736477404_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7736377401_)))
                                                 (_$tl7736577407_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7736377401_))))
                                            (if (let ((__tmp77912
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7736477404_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77912 '#f))
                                                (if (let ((__tmp77911
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7736577407_))))
                                                      (declare (not safe))
                                                      (equal? __tmp77911 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr77353_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7735777398_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7735777398_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7735777398_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7730677318_)))))
                            (let () (declare (not safe)) (_$E7730677318_)))))
                    (let () (declare (not safe)) (_$E7730677318_))))
              (let () (declare (not safe)) (_$E7730677318_))))))
    (define __compile-head-id
      (lambda (_e77300_)
        (let ((__tmp77914
               (if (let () (declare (not safe)) (__AST-e _e77300_))
                   _e77300_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp77914))))
    (define __compile-lambda-head
      (lambda (_hd77257_)
        (let _recur77259_ ((_rest77261_ _hd77257_))
          (let* ((_$e77263_ _rest77261_)
                 (_$E7726577283_
                  (lambda ()
                    (let ((_$E7726677280_
                           (lambda ()
                             (let* ((_$E7726777275_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e77263_))))
                                    (_tail77278_ _$e77263_))
                               (declare (not safe))
                               (__compile-head-id _tail77278_)))))
                      (if (let ((__tmp77915
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e77263_))))
                            (declare (not safe))
                            (equal? __tmp77915 '()))
                          '()
                          (let () (declare (not safe)) (_$E7726677280_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e77263_))
                (let* ((_$tgt7726877286_
                        (let () (declare (not safe)) (__AST-e _$e77263_)))
                       (_$hd7726977289_
                        (let () (declare (not safe)) (##car _$tgt7726877286_)))
                       (_$tl7727077292_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7726877286_))))
                  (let* ((_hd77296_ _$hd7726977289_)
                         (_rest77298_ _$tl7727077292_))
                    (let ((__tmp77917
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd77296_)))
                          (__tmp77916
                           (let ()
                             (declare (not safe))
                             (_recur77259_ _rest77298_))))
                      (declare (not safe))
                      (cons __tmp77917 __tmp77916))))
                (let () (declare (not safe)) (_$E7726577283_)))))))
    (define __compile-lambda%
      (lambda (_stx77204_)
        (let* ((_$e77206_ _stx77204_)
               (_$E7720877220_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77206_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77206_))
              (let* ((_$tgt7720977223_
                      (let () (declare (not safe)) (__AST-e _$e77206_)))
                     (_$hd7721077226_
                      (let () (declare (not safe)) (##car _$tgt7720977223_)))
                     (_$tl7721177229_
                      (let () (declare (not safe)) (##cdr _$tgt7720977223_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7721177229_))
                    (let* ((_$tgt7721277233_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7721177229_)))
                           (_$hd7721377236_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7721277233_)))
                           (_$tl7721477239_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7721277233_))))
                      (let ((_hd77243_ _$hd7721377236_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7721477239_))
                            (let* ((_$tgt7721577245_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7721477239_)))
                                   (_$hd7721677248_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7721577245_)))
                                   (_$tl7721777251_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7721577245_))))
                              (let ((_body77255_ _$hd7721677248_))
                                (if (let ((__tmp77923
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7721777251_))))
                                      (declare (not safe))
                                      (equal? __tmp77923 '()))
                                    (let ((__tmp77918
                                           (let ((__tmp77919
                                                  (let ((__tmp77922
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd77243_)))
                                                        (__tmp77920
                                                         (let ((__tmp77921
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body77255_))))
                   (declare (not safe))
                   (cons __tmp77921 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77922
                                                          __tmp77920))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp77919))))
                                      (declare (not safe))
                                      (__SRC__% __tmp77918 _stx77204_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7720877220_)))))
                            (let () (declare (not safe)) (_$E7720877220_)))))
                    (let () (declare (not safe)) (_$E7720877220_))))
              (let () (declare (not safe)) (_$E7720877220_))))))
    (define __compile-case-lambda%
      (lambda (_stx76996_)
        (letrec ((_variadic?76998_
                  (lambda (_hd77169_)
                    (let* ((_$e77171_ _hd77169_)
                           (_$E7717377189_
                            (lambda ()
                              (let ((_$E7717477186_
                                     (lambda ()
                                       (let ((_$E7717577183_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e77171_)))))
                                         '#t))))
                                (if (let ((__tmp77924
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e77171_))))
                                      (declare (not safe))
                                      (equal? __tmp77924 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7717477186_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77171_))
                          (let* ((_$tgt7717677192_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77171_)))
                                 (_$hd7717777195_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7717677192_)))
                                 (_$tl7717877198_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7717677192_))))
                            (let ((_rest77202_ _$tl7717877198_))
                              (declare (not safe))
                              (_variadic?76998_ _rest77202_)))
                          (let () (declare (not safe)) (_$E7717377189_))))))
                 (_arity76999_
                  (lambda (_hd77134_)
                    (let _lp77136_ ((_rest77138_ _hd77134_) (_k77139_ '0))
                      (let* ((_$e77141_ _rest77138_)
                             (_$E7714377154_
                              (lambda ()
                                (let ((_$E7714477151_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e77141_)))))
                                  _k77139_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e77141_))
                            (let* ((_$tgt7714577157_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e77141_)))
                                   (_$hd7714677160_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7714577157_)))
                                   (_$tl7714777163_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7714577157_))))
                              (let* ((_rest77167_ _$tl7714777163_)
                                     (__tmp77925
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k77139_ '1))))
                                (declare (not safe))
                                (_lp77136_ _rest77167_ __tmp77925)))
                            (let () (declare (not safe)) (_$E7714377154_)))))))
                 (_generate77000_
                  (lambda (_rest77061_ _args77062_ _len77063_)
                    (let* ((_$e77065_ _rest77061_)
                           (_$E7706777078_
                            (lambda ()
                              (let* ((_$E7706877075_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e77065_))))
                                     (__tmp77926
                                      (let ((__tmp77927
                                             (let ((__tmp77928
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args77062_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp77928))))
                                        (declare (not safe))
                                        (cons 'error __tmp77927))))
                                (declare (not safe))
                                (__SRC__% __tmp77926 _stx76996_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77065_))
                          (let* ((_$tgt7706977081_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77065_)))
                                 (_$hd7707077084_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7706977081_)))
                                 (_$tl7707177087_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7706977081_))))
                            (let* ((_clause77091_ _$hd7707077084_)
                                   (_rest77093_ _$tl7707177087_)
                                   (_$e77095_ _clause77091_)
                                   (_$E7709777106_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e77095_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e77095_))
                                  (let* ((_$tgt7709877109_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e77095_)))
                                         (_$hd7709977112_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7709877109_)))
                                         (_$tl7710077115_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7709877109_))))
                                    (let ((_hd77119_ _$hd7709977112_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7710077115_))
                                          (let* ((_$tgt7710177121_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7710077115_)))
                                                 (_$hd7710277124_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7710177121_)))
                                                 (_$tl7710377127_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7710177121_))))
                                            (if (let ((__tmp77943
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7710377127_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77943 '()))
                                                (let ((_clen77131_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity76999_
                                                          _hd77119_)))
                                                      (_cmp77132_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?76998_
                                                              _hd77119_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp77929
                                                         (let ((__tmp77930
                                                                (let ((__tmp77940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77941
                                      (let ((__tmp77942
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen77131_ '()))))
                                        (declare (not safe))
                                        (cons _len77063_ __tmp77942))))
                                 (declare (not safe))
                                 (cons _cmp77132_ __tmp77941)))
                              (__tmp77931
                               (let ((__tmp77934
                                      (let ((__tmp77935
                                             (let ((__tmp77936
                                                    (let ((__tmp77938
                                                           (let ((__tmp77939
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause77091_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp77939)))
                  (__tmp77937
                   (let () (declare (not safe)) (cons _args77062_ '()))))
              (declare (not safe))
              (cons __tmp77938 __tmp77937))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp77936))))
                                        (declare (not safe))
                                        (__SRC__% __tmp77935 _stx76996_)))
                                     (__tmp77932
                                      (let ((__tmp77933
                                             (let ()
                                               (declare (not safe))
                                               (_generate77000_
                                                _rest77093_
                                                _args77062_
                                                _len77063_))))
                                        (declare (not safe))
                                        (cons __tmp77933 '()))))
                                 (declare (not safe))
                                 (cons __tmp77934 __tmp77932))))
                          (declare (not safe))
                          (cons __tmp77940 __tmp77931))))
                   (declare (not safe))
                   (cons 'if __tmp77930))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp77929
                                                     _stx76996_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7709777106_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7709777106_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7709777106_)))))
                          (let () (declare (not safe)) (_$E7706777078_)))))))
          (let* ((_$e77002_ _stx76996_)
                 (_$E7700477036_
                  (lambda ()
                    (let ((_$E7700577018_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e77002_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77002_))
                          (let* ((_$tgt7700677021_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77002_)))
                                 (_$hd7700777024_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7700677021_)))
                                 (_$tl7700877027_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7700677021_))))
                            (let ((_clauses77031_ _$tl7700877027_))
                              (let ((_args77033_
                                     (let ((__tmp77944 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp77944 _stx76996_)))
                                    (_len77034_
                                     (let ((__tmp77945 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp77945 _stx76996_))))
                                (let ((__tmp77946
                                       (let ((__tmp77947
                                              (let ((__tmp77948
                                                     (let ((__tmp77949
                                                            (let ((__tmp77950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp77951
                                  (let ((__tmp77954
                                         (let ((__tmp77955
                                                (let ((__tmp77956
                                                       (let ((__tmp77957
                                                              (let ((__tmp77958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp77959
                                    (let ()
                                      (declare (not safe))
                                      (cons _args77033_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp77959))))
                        (declare (not safe))
                        (__SRC__% __tmp77958 _stx76996_))))
                 (declare (not safe))
                 (cons __tmp77957 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len77034_
                                                        __tmp77956))))
                                           (declare (not safe))
                                           (cons __tmp77955 '())))
                                        (__tmp77952
                                         (let ((__tmp77953
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate77000_
                                                   _clauses77031_
                                                   _args77033_
                                                   _len77034_))))
                                           (declare (not safe))
                                           (cons __tmp77953 '()))))
                                    (declare (not safe))
                                    (cons __tmp77954 __tmp77952))))
                             (declare (not safe))
                             (cons 'let __tmp77951))))
                      (declare (not safe))
                      (__SRC__% __tmp77950 _stx76996_))))
               (declare (not safe))
               (cons __tmp77949 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args77033_
                                                      __tmp77948))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp77947))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77946 _stx76996_)))))
                          (let () (declare (not safe)) (_$E7700577018_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e77002_))
                (let* ((_$tgt7700977039_
                        (let () (declare (not safe)) (__AST-e _$e77002_)))
                       (_$hd7701077042_
                        (let () (declare (not safe)) (##car _$tgt7700977039_)))
                       (_$tl7701177045_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7700977039_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7701177045_))
                      (let* ((_$tgt7701277049_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7701177045_)))
                             (_$hd7701377052_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7701277049_)))
                             (_$tl7701477055_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7701277049_))))
                        (let ((_clause77059_ _$hd7701377052_))
                          (if (let ((__tmp77961
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7701477055_))))
                                (declare (not safe))
                                (equal? __tmp77961 '()))
                              (let ((__tmp77960
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause77059_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp77960))
                              (let () (declare (not safe)) (_$E7700477036_)))))
                      (let () (declare (not safe)) (_$E7700477036_))))
                (let () (declare (not safe)) (_$E7700477036_)))))))
    (define __compile-let-form
      (lambda (_stx76765_ _compile-simple76766_ _compile-values76767_)
        (letrec ((_simple-bind?76769_
                  (lambda (_hd76954_)
                    (let* ((_hd7695576965_ _hd76954_)
                           (_else7695876973_ (lambda () '#f)))
                      (let ((_K7696176986_ (lambda (_id76984_) '#t))
                            (_K7696076978_ (lambda () '#t)))
                        (let ((_try-match7695776981_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7695576965_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7696076978_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7695876973_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7695576965_))
                              (let ((_tl7696376991_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7695576965_)))
                                    (_hd7696276989_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7695576965_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7696376991_))
                                    (let ((_id76994_ _hd7696276989_))
                                      (declare (not safe))
                                      (_K7696176986_ _id76994_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7695776981_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7695776981_))))))))
                 (_car-e76770_
                  (lambda (_hd76952_)
                    (if (let () (declare (not safe)) (pair? _hd76952_))
                        (car _hd76952_)
                        _hd76952_))))
          (let* ((_$e76772_ _stx76765_)
                 (_$E7677476917_
                  (lambda ()
                    (let ((_$E7677576797_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e76772_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e76772_))
                          (let* ((_$tgt7677676800_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e76772_)))
                                 (_$hd7677776803_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7677676800_)))
                                 (_$tl7677876806_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7677676800_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7677876806_))
                                (let* ((_$tgt7677976810_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7677876806_)))
                                       (_$hd7678076813_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7677976810_)))
                                       (_$tl7678176816_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7677976810_))))
                                  (let ((_hd76820_ _$hd7678076813_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7678176816_))
                                        (let* ((_$tgt7678276822_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7678176816_)))
                                               (_$hd7678376825_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7678276822_)))
                                               (_$tl7678476828_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7678276822_))))
                                          (let ((_body76832_ _$hd7678376825_))
                                            (if (let ((__tmp77964
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7678476828_))))
                                                  (declare (not safe))
                                                  (equal? __tmp77964 '()))
                                                (let* ((_hd-ids76872_
                                                        (map (lambda (_bind76834_)
                                                               (let* ((_$e76836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind76834_)
                              (_$E7683876847_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e76836_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e76836_))
                             (let* ((_$tgt7683976850_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e76836_)))
                                    (_$hd7684076853_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7683976850_)))
                                    (_$tl7684176856_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7683976850_))))
                               (let ((_ids76860_ _$hd7684076853_))
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-pair? _$tl7684176856_))
                                     (let* ((_$tgt7684276862_
                                             (let ()
                                               (declare (not safe))
                                               (__AST-e _$tl7684176856_)))
                                            (_$hd7684376865_
                                             (let ()
                                               (declare (not safe))
                                               (##car _$tgt7684276862_)))
                                            (_$tl7684476868_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _$tgt7684276862_))))
                                       (if (let ((__tmp77962
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7684476868_))))
                                             (declare (not safe))
                                             (equal? __tmp77962 '()))
                                           _ids76860_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7683876847_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7683876847_)))))
                             (let () (declare (not safe)) (_$E7683876847_)))))
                     _hd76820_))
               (_exprs76912_
                (map (lambda (_bind76874_)
                       (let* ((_$e76876_ _bind76874_)
                              (_$E7687876887_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e76876_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e76876_))
                             (let* ((_$tgt7687976890_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e76876_)))
                                    (_$hd7688076893_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7687976890_)))
                                    (_$tl7688176896_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7687976890_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7688176896_))
                                   (let* ((_$tgt7688276900_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7688176896_)))
                                          (_$hd7688376903_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7688276900_)))
                                          (_$tl7688476906_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7688276900_))))
                                     (let ((_expr76910_ _$hd7688376903_))
                                       (if (let ((__tmp77963
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7688476906_))))
                                             (declare (not safe))
                                             (equal? __tmp77963 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr76910_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7687876887_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7687876887_))))
                             (let () (declare (not safe)) (_$E7687876887_)))))
                     _hd76820_))
               (_body76914_
                (let () (declare (not safe)) (__compile _body76832_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?76769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids76872_))
              (_compile-simple76766_
               (map _car-e76770_ _hd-ids76872_)
               _exprs76912_
               _body76914_)
              (_compile-values76767_ _hd-ids76872_ _exprs76912_ _body76914_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7677576797_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7677576797_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7677576797_))))
                          (let () (declare (not safe)) (_$E7677576797_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e76772_))
                (let* ((_$tgt7678576920_
                        (let () (declare (not safe)) (__AST-e _$e76772_)))
                       (_$hd7678676923_
                        (let () (declare (not safe)) (##car _$tgt7678576920_)))
                       (_$tl7678776926_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7678576920_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7678776926_))
                      (let* ((_$tgt7678876930_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7678776926_)))
                             (_$hd7678976933_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7678876930_)))
                             (_$tl7679076936_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7678876930_))))
                        (if (let ((__tmp77966
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7678976933_))))
                              (declare (not safe))
                              (equal? __tmp77966 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7679076936_))
                                (let* ((_$tgt7679176940_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7679076936_)))
                                       (_$hd7679276943_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7679176940_)))
                                       (_$tl7679376946_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7679176940_))))
                                  (let ((_body76950_ _$hd7679276943_))
                                    (if (let ((__tmp77965
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7679376946_))))
                                          (declare (not safe))
                                          (equal? __tmp77965 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body76950_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7677476917_)))))
                                (let () (declare (not safe)) (_$E7677476917_)))
                            (let () (declare (not safe)) (_$E7677476917_))))
                      (let () (declare (not safe)) (_$E7677476917_))))
                (let () (declare (not safe)) (_$E7677476917_)))))))
    (define __compile-let-values%
      (lambda (_stx76580_)
        (letrec ((_compile-simple76582_
                  (lambda (_hd-ids76761_ _exprs76762_ _body76763_)
                    (let ((__tmp77967
                           (let ((__tmp77968
                                  (let ((__tmp77970
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76761_)
                                              _exprs76762_))
                                        (__tmp77969
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76763_ '()))))
                                    (declare (not safe))
                                    (cons __tmp77970 __tmp77969))))
                             (declare (not safe))
                             (cons 'let __tmp77968))))
                      (declare (not safe))
                      (__SRC__% __tmp77967 _stx76580_))))
                 (_compile-values76583_
                  (lambda (_hd-ids76679_ _exprs76680_ _body76681_)
                    (let _lp76683_ ((_rest76685_ _hd-ids76679_)
                                    (_exprs76686_ _exprs76680_)
                                    (_bind76687_ '())
                                    (_post76688_ '()))
                      (let* ((_rest7668976703_ _rest76685_)
                             (_else7669276711_
                              (lambda ()
                                (let ((__tmp77971
                                       (let ((__tmp77972
                                              (let ((__tmp77975
                                                     (reverse _bind76687_))
                                                    (__tmp77973
                                                     (let ((__tmp77974
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post76584_
                                                               _post76688_
                                                               _body76681_))))
                                                       (declare (not safe))
                                                       (cons __tmp77974 '()))))
                                                (declare (not safe))
                                                (cons __tmp77975 __tmp77973))))
                                         (declare (not safe))
                                         (cons 'let __tmp77972))))
                                  (declare (not safe))
                                  (__SRC__% __tmp77971 _stx76580_)))))
                        (let ((_K7669776744_
                               (lambda (_rest76741_ _id76742_)
                                 (let ((__tmp77981 (cdr _exprs76686_))
                                       (__tmp77976
                                        (let ((__tmp77977
                                               (let ((__tmp77980
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id76742_)))
                                                     (__tmp77978
                                                      (let ((__tmp77979
                                                             (car _exprs76686_)))
                                                        (declare (not safe))
                                                        (cons __tmp77979
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp77980
                                                       __tmp77978))))
                                          (declare (not safe))
                                          (cons __tmp77977 _bind76687_))))
                                   (declare (not safe))
                                   (_lp76683_
                                    _rest76741_
                                    __tmp77981
                                    __tmp77976
                                    _post76688_))))
                              (_K7669476726_
                               (lambda (_rest76715_ _hd76716_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76716_))
                                     (let ((__tmp78002 (cdr _exprs76686_))
                                           (__tmp77995
                                            (let ((__tmp77996
                                                   (let ((__tmp78001
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd76716_)))
                                                         (__tmp77997
                                                          (let ((__tmp77998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp77999
                                (let ((__tmp78000 (car _exprs76686_)))
                                  (declare (not safe))
                                  (cons __tmp78000 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp77999))))
                    (declare (not safe))
                    (cons __tmp77998 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp78001
                                                           __tmp77997))))
                                              (declare (not safe))
                                              (cons __tmp77996 _bind76687_))))
                                       (declare (not safe))
                                       (_lp76683_
                                        _rest76715_
                                        __tmp78002
                                        __tmp77995
                                        _post76688_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd76716_))
                                         (let* ((_len76718_ (length _hd76716_))
                                                (_tmp76720_
                                                 (let ((__tmp77982 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp77982))))
                                           (let ((__tmp77994
                                                  (cdr _exprs76686_))
                                                 (__tmp77990
                                                  (let ((__tmp77991
                                                         (let ((__tmp77992
                                                                (let ((__tmp77993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs76686_)))
                          (declare (not safe))
                          (cons __tmp77993 '()))))
                   (declare (not safe))
                   (cons _tmp76720_ __tmp77992))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77991
                                                          _bind76687_)))
                                                 (__tmp77983
                                                  (let ((__tmp77984
                                                         (let ((__tmp77985
                                                                (let ((__tmp77986
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp77988
                                      (lambda (_id76723_ _k76724_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id76723_))
                                            (let ((__tmp77989
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id76723_))))
                                              (declare (not safe))
                                              (cons __tmp77989 _k76724_))
                                            '#f)))
                                     (__tmp77987
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len76718_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp77988
                                  _hd76716_
                                  __tmp77987))))
                          (declare (not safe))
                          (cons _len76718_ __tmp77986))))
                   (declare (not safe))
                   (cons _tmp76720_ __tmp77985))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp77984
                                                          _post76688_))))
                                             (declare (not safe))
                                             (_lp76683_
                                              _rest76715_
                                              __tmp77994
                                              __tmp77990
                                              __tmp77983)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx76580_
                                            _hd76716_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7668976703_))
                              (let ((_tl7669976749_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7668976703_)))
                                    (_hd7669876747_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7668976703_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7669876747_))
                                    (let ((_tl7670176754_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7669876747_)))
                                          (_hd7670076752_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7669876747_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7670176754_))
                                          (let ((_id76757_ _hd7670076752_)
                                                (_rest76759_ _tl7669976749_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7669776744_
                                               _rest76759_
                                               _id76757_)))
                                          (let ((_hd76734_ _hd7669876747_)
                                                (_rest76736_ _tl7669976749_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7669476726_
                                               _rest76736_
                                               _hd76734_)))))
                                    (let ((_hd76734_ _hd7669876747_)
                                          (_rest76736_ _tl7669976749_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7669476726_
                                         _rest76736_
                                         _hd76734_)))))
                              (let ()
                                (declare (not safe))
                                (_else7669276711_))))))))
                 (_compile-post76584_
                  (lambda (_post76586_ _body76587_)
                    (let _lp76589_ ((_rest76591_ _post76586_)
                                    (_check76592_ '())
                                    (_bind76593_ '()))
                      (let* ((_rest7659476606_ _rest76591_)
                             (_else7659676614_
                              (lambda ()
                                (let ((__tmp78003
                                       (let ((__tmp78004
                                              (let ((__tmp78005
                                                     (let ((__tmp78006
                                                            (let ((__tmp78007
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78008
                                  (let ((__tmp78009
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76587_ '()))))
                                    (declare (not safe))
                                    (cons _bind76593_ __tmp78009))))
                             (declare (not safe))
                             (cons 'let __tmp78008))))
                      (declare (not safe))
                      (__SRC__% __tmp78007 _stx76580_))))
               (declare (not safe))
               (cons __tmp78006 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp78005
                                                        _check76592_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp78004))))
                                  (declare (not safe))
                                  (__SRC__% __tmp78003 _stx76580_))))
                             (_K7659876653_
                              (lambda (_rest76617_
                                       _init76618_
                                       _len76619_
                                       _tmp76620_)
                                (let ((__tmp78017
                                       (let ((__tmp78018
                                              (let ((__tmp78019
                                                     (let ((__tmp78020
                                                            (let ((__tmp78021
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len76619_ '()))))
                      (declare (not safe))
                      (cons _tmp76620_ __tmp78021))))
               (declare (not safe))
               (cons '__check-values __tmp78020))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp78019
                                                 _stx76580_))))
                                         (declare (not safe))
                                         (cons __tmp78018 _check76592_)))
                                      (__tmp78010
                                       (let ((__tmp78011
                                              (lambda (_hd76622_ _r76623_)
                                                (let* ((_hd7662476631_
                                                        _hd76622_)
                                                       (_E7662676635_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7662476631_))))
               (_K7662776641_
                (lambda (_k76638_ _id76639_)
                  (let ((__tmp78012
                         (let ((__tmp78013
                                (let ((__tmp78014
                                       (let ((__tmp78015
                                              (let ((__tmp78016
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k76638_ '()))))
                                                (declare (not safe))
                                                (cons _tmp76620_ __tmp78016))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp78015))))
                                  (declare (not safe))
                                  (cons __tmp78014 '()))))
                           (declare (not safe))
                           (cons _id76639_ __tmp78013))))
                    (declare (not safe))
                    (cons __tmp78012 _r76623_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7662476631_))
                                                      (let ((_hd7662876644_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7662476631_)))
                    (_tl7662976646_
                     (let () (declare (not safe)) (##cdr _hd7662476631_))))
                (let* ((_id76649_ _hd7662876644_) (_k76651_ _tl7662976646_))
                  (declare (not safe))
                  (_K7662776641_ _k76651_ _id76649_)))
              (let () (declare (not safe)) (_E7662676635_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp78011
                                                 _bind76593_
                                                 _init76618_))))
                                  (declare (not safe))
                                  (_lp76589_
                                   _rest76617_
                                   __tmp78017
                                   __tmp78010)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7659476606_))
                            (let ((_hd7659976656_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7659476606_)))
                                  (_tl7660076658_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7659476606_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7659976656_))
                                  (let ((_hd7660176661_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7659976656_)))
                                        (_tl7660276663_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7659976656_))))
                                    (let ((_tmp76666_ _hd7660176661_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7660276663_))
                                          (let ((_hd7660376668_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7660276663_)))
                                                (_tl7660476670_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7660276663_))))
                                            (let* ((_len76673_ _hd7660376668_)
                                                   (_init76675_ _tl7660476670_)
                                                   (_rest76677_
                                                    _tl7660076658_))
                                              (declare (not safe))
                                              (_K7659876653_
                                               _rest76677_
                                               _init76675_
                                               _len76673_
                                               _tmp76666_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7659676614_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7659676614_))))
                            (let ()
                              (declare (not safe))
                              (_else7659676614_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76580_
             _compile-simple76582_
             _compile-values76583_)))))
    (define __compile-letrec-values%
      (lambda (_stx76380_)
        (letrec ((_compile-simple76382_
                  (lambda (_hd-ids76576_ _exprs76577_ _body76578_)
                    (let ((__tmp78022
                           (let ((__tmp78023
                                  (let ((__tmp78025
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76576_)
                                              _exprs76577_))
                                        (__tmp78024
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76578_ '()))))
                                    (declare (not safe))
                                    (cons __tmp78025 __tmp78024))))
                             (declare (not safe))
                             (cons 'letrec __tmp78023))))
                      (declare (not safe))
                      (__SRC__% __tmp78022 _stx76380_))))
                 (_compile-values76383_
                  (lambda (_hd-ids76490_ _exprs76491_ _body76492_)
                    (let _lp76494_ ((_rest76496_ _hd-ids76490_)
                                    (_exprs76497_ _exprs76491_)
                                    (_pre76498_ '())
                                    (_bind76499_ '())
                                    (_post76500_ '()))
                      (let* ((_rest7650176515_ _rest76496_)
                             (_else7650476523_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner76384_
                                   _pre76498_
                                   _bind76499_
                                   _post76500_
                                   _body76492_)))))
                        (let ((_K7650976559_
                               (lambda (_rest76556_ _id76557_)
                                 (let ((__tmp78031 (cdr _exprs76497_))
                                       (__tmp78026
                                        (let ((__tmp78027
                                               (let ((__tmp78030
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id76557_)))
                                                     (__tmp78028
                                                      (let ((__tmp78029
                                                             (car _exprs76497_)))
                                                        (declare (not safe))
                                                        (cons __tmp78029
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp78030
                                                       __tmp78028))))
                                          (declare (not safe))
                                          (cons __tmp78027 _bind76499_))))
                                   (declare (not safe))
                                   (_lp76494_
                                    _rest76556_
                                    __tmp78031
                                    _pre76498_
                                    __tmp78026
                                    _post76500_))))
                              (_K7650676541_
                               (lambda (_rest76527_ _hd76528_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76528_))
                                     (let ((__tmp78059 (cdr _exprs76497_))
                                           (__tmp78052
                                            (let ((__tmp78053
                                                   (let ((__tmp78058
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd76528_)))
                                                         (__tmp78054
                                                          (let ((__tmp78055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp78056
                                (let ((__tmp78057 (car _exprs76497_)))
                                  (declare (not safe))
                                  (cons __tmp78057 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp78056))))
                    (declare (not safe))
                    (cons __tmp78055 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp78058
                                                           __tmp78054))))
                                              (declare (not safe))
                                              (cons __tmp78053 _bind76499_))))
                                       (declare (not safe))
                                       (_lp76494_
                                        _rest76527_
                                        __tmp78059
                                        _pre76498_
                                        __tmp78052
                                        _post76500_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd76528_))
                                         (let* ((_len76530_ (length _hd76528_))
                                                (_tmp76532_
                                                 (let ((__tmp78032 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp78032))))
                                           (let ((__tmp78051
                                                  (cdr _exprs76497_))
                                                 (__tmp78044
                                                  (let ((__tmp78045
                                                         (lambda (_id76535_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r76536_)
                   (if (let () (declare (not safe)) (__AST-e _id76535_))
                       (let ((__tmp78046
                              (let ((__tmp78050
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id76535_)))
                                    (__tmp78047
                                     (let ((__tmp78048
                                            (let ((__tmp78049
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp78049))))
                                       (declare (not safe))
                                       (cons __tmp78048 '()))))
                                (declare (not safe))
                                (cons __tmp78050 __tmp78047))))
                         (declare (not safe))
                         (cons __tmp78046 _r76536_))
                       _r76536_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp78045
                                                            _pre76498_
                                                            _hd76528_)))
                                                 (__tmp78040
                                                  (let ((__tmp78041
                                                         (let ((__tmp78042
                                                                (let ((__tmp78043
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs76497_)))
                          (declare (not safe))
                          (cons __tmp78043 '()))))
                   (declare (not safe))
                   (cons _tmp76532_ __tmp78042))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78041
                                                          _bind76499_)))
                                                 (__tmp78033
                                                  (let ((__tmp78034
                                                         (let ((__tmp78035
                                                                (let ((__tmp78036
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp78038
                                      (lambda (_id76538_ _k76539_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id76538_))
                                            (let ((__tmp78039
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id76538_))))
                                              (declare (not safe))
                                              (cons __tmp78039 _k76539_))
                                            '#f)))
                                     (__tmp78037
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len76530_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp78038
                                  _hd76528_
                                  __tmp78037))))
                          (declare (not safe))
                          (cons _len76530_ __tmp78036))))
                   (declare (not safe))
                   (cons _tmp76532_ __tmp78035))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78034
                                                          _post76500_))))
                                             (declare (not safe))
                                             (_lp76494_
                                              _rest76527_
                                              __tmp78051
                                              __tmp78044
                                              __tmp78040
                                              __tmp78033)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx76380_
                                            _hd76528_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7650176515_))
                              (let ((_tl7651176564_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7650176515_)))
                                    (_hd7651076562_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7650176515_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7651076562_))
                                    (let ((_tl7651376569_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7651076562_)))
                                          (_hd7651276567_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7651076562_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7651376569_))
                                          (let ((_id76572_ _hd7651276567_)
                                                (_rest76574_ _tl7651176564_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7650976559_
                                               _rest76574_
                                               _id76572_)))
                                          (let ((_hd76549_ _hd7651076562_)
                                                (_rest76551_ _tl7651176564_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7650676541_
                                               _rest76551_
                                               _hd76549_)))))
                                    (let ((_hd76549_ _hd7651076562_)
                                          (_rest76551_ _tl7651176564_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7650676541_
                                         _rest76551_
                                         _hd76549_)))))
                              (let ()
                                (declare (not safe))
                                (_else7650476523_))))))))
                 (_compile-inner76384_
                  (lambda (_pre76485_ _bind76486_ _post76487_ _body76488_)
                    (if (let () (declare (not safe)) (null? _pre76485_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind76385_
                           _bind76486_
                           _post76487_
                           _body76488_))
                        (let ((__tmp78060
                               (let ((__tmp78061
                                      (let ((__tmp78064 (reverse _pre76485_))
                                            (__tmp78062
                                             (let ((__tmp78063
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind76385_
                                                       _bind76486_
                                                       _post76487_
                                                       _body76488_))))
                                               (declare (not safe))
                                               (cons __tmp78063 '()))))
                                        (declare (not safe))
                                        (cons __tmp78064 __tmp78062))))
                                 (declare (not safe))
                                 (cons 'let __tmp78061))))
                          (declare (not safe))
                          (__SRC__% __tmp78060 _stx76380_)))))
                 (_compile-bind76385_
                  (lambda (_bind76481_ _post76482_ _body76483_)
                    (let ((__tmp78065
                           (let ((__tmp78066
                                  (let ((__tmp78069 (reverse _bind76481_))
                                        (__tmp78067
                                         (let ((__tmp78068
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post76386_
                                                   _post76482_
                                                   _body76483_))))
                                           (declare (not safe))
                                           (cons __tmp78068 '()))))
                                    (declare (not safe))
                                    (cons __tmp78069 __tmp78067))))
                             (declare (not safe))
                             (cons 'letrec __tmp78066))))
                      (declare (not safe))
                      (__SRC__% __tmp78065 _stx76380_))))
                 (_compile-post76386_
                  (lambda (_post76388_ _body76389_)
                    (let _lp76391_ ((_rest76393_ _post76388_)
                                    (_check76394_ '())
                                    (_bind76395_ '()))
                      (let* ((_rest7639676408_ _rest76393_)
                             (_else7639876416_
                              (lambda ()
                                (let ((__tmp78070
                                       (let ((__tmp78071
                                              (let ((__tmp78072
                                                     (let ((__tmp78073
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body76389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp78073 _bind76395_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp78072
                                                        _check76394_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp78071))))
                                  (declare (not safe))
                                  (__SRC__% __tmp78070 _stx76380_))))
                             (_K7640076455_
                              (lambda (_rest76419_
                                       _init76420_
                                       _len76421_
                                       _tmp76422_)
                                (let ((__tmp78082
                                       (let ((__tmp78083
                                              (let ((__tmp78084
                                                     (let ((__tmp78085
                                                            (let ((__tmp78086
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len76421_ '()))))
                      (declare (not safe))
                      (cons _tmp76422_ __tmp78086))))
               (declare (not safe))
               (cons '__check-values __tmp78085))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp78084
                                                 _stx76380_))))
                                         (declare (not safe))
                                         (cons __tmp78083 _check76394_)))
                                      (__tmp78074
                                       (let ((__tmp78075
                                              (lambda (_hd76424_ _r76425_)
                                                (let* ((_hd7642676433_
                                                        _hd76424_)
                                                       (_E7642876437_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7642676433_))))
               (_K7642976443_
                (lambda (_k76440_ _id76441_)
                  (let ((__tmp78076
                         (let ((__tmp78077
                                (let ((__tmp78078
                                       (let ((__tmp78079
                                              (let ((__tmp78080
                                                     (let ((__tmp78081
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k76440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp76422_ __tmp78081))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp78080))))
                                         (declare (not safe))
                                         (cons __tmp78079 '()))))
                                  (declare (not safe))
                                  (cons _id76441_ __tmp78078))))
                           (declare (not safe))
                           (cons 'set! __tmp78077))))
                    (declare (not safe))
                    (cons __tmp78076 _r76425_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7642676433_))
                                                      (let ((_hd7643076446_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7642676433_)))
                    (_tl7643176448_
                     (let () (declare (not safe)) (##cdr _hd7642676433_))))
                (let* ((_id76451_ _hd7643076446_) (_k76453_ _tl7643176448_))
                  (declare (not safe))
                  (_K7642976443_ _k76453_ _id76451_)))
              (let () (declare (not safe)) (_E7642876437_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp78075
                                                 _bind76395_
                                                 _init76420_))))
                                  (declare (not safe))
                                  (_lp76391_
                                   _rest76419_
                                   __tmp78082
                                   __tmp78074)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7639676408_))
                            (let ((_hd7640176458_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7639676408_)))
                                  (_tl7640276460_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7639676408_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7640176458_))
                                  (let ((_hd7640376463_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7640176458_)))
                                        (_tl7640476465_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7640176458_))))
                                    (let ((_tmp76468_ _hd7640376463_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7640476465_))
                                          (let ((_hd7640576470_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7640476465_)))
                                                (_tl7640676472_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7640476465_))))
                                            (let* ((_len76475_ _hd7640576470_)
                                                   (_init76477_ _tl7640676472_)
                                                   (_rest76479_
                                                    _tl7640276460_))
                                              (declare (not safe))
                                              (_K7640076455_
                                               _rest76479_
                                               _init76477_
                                               _len76475_
                                               _tmp76468_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7639876416_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7639876416_))))
                            (let ()
                              (declare (not safe))
                              (_else7639876416_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76380_
             _compile-simple76382_
             _compile-values76383_)))))
    (define __compile-letrec*-values%
      (lambda (_stx76135_)
        (letrec ((_compile-simple76137_
                  (lambda (_hd-ids76376_ _exprs76377_ _body76378_)
                    (let ((__tmp78087
                           (let ((__tmp78088
                                  (let ((__tmp78090
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76376_)
                                              _exprs76377_))
                                        (__tmp78089
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76378_ '()))))
                                    (declare (not safe))
                                    (cons __tmp78090 __tmp78089))))
                             (declare (not safe))
                             (cons 'letrec* __tmp78088))))
                      (declare (not safe))
                      (__SRC__% __tmp78087 _stx76135_))))
                 (_compile-values76138_
                  (lambda (_hd-ids76287_ _exprs76288_ _body76289_)
                    (let _lp76291_ ((_rest76293_ _hd-ids76287_)
                                    (_exprs76294_ _exprs76288_)
                                    (_bind76295_ '())
                                    (_post76296_ '()))
                      (let* ((_rest7629776311_ _rest76293_)
                             (_else7630076319_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind76139_
                                   _bind76295_
                                   _post76296_
                                   _body76289_)))))
                        (let ((_K7630576359_
                               (lambda (_rest76354_ _hd76355_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76355_))
                                     (let ((_id76357_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd76355_))))
                                       (let ((__tmp78105 (cdr _exprs76294_))
                                             (__tmp78100
                                              (let ((__tmp78101
                                                     (let ((__tmp78102
                                                            (let ((__tmp78103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78104
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp78104))))
                      (declare (not safe))
                      (cons __tmp78103 '()))))
               (declare (not safe))
               (cons _id76357_ __tmp78102))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78101 _bind76295_)))
                                             (__tmp78096
                                              (let ((__tmp78097
                                                     (let ((__tmp78098
                                                            (let ((__tmp78099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs76294_)))
                      (declare (not safe))
                      (cons __tmp78099 '()))))
               (declare (not safe))
               (cons _id76357_ __tmp78098))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78097
                                                      _post76296_))))
                                         (declare (not safe))
                                         (_lp76291_
                                          _rest76354_
                                          __tmp78105
                                          __tmp78100
                                          __tmp78096)))
                                     (let ((__tmp78095 (cdr _exprs76294_))
                                           (__tmp78091
                                            (let ((__tmp78092
                                                   (let ((__tmp78093
                                                          (let ((__tmp78094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs76294_)))
                    (declare (not safe))
                    (cons __tmp78094 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp78093))))
                                              (declare (not safe))
                                              (cons __tmp78092 _post76296_))))
                                       (declare (not safe))
                                       (_lp76291_
                                        _rest76354_
                                        __tmp78095
                                        _bind76295_
                                        __tmp78091)))))
                              (_K7630276339_
                               (lambda (_rest76323_ _hd76324_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76324_))
                                     (let ((_id76326_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd76324_))))
                                       (let ((__tmp78141 (cdr _exprs76294_))
                                             (__tmp78136
                                              (let ((__tmp78137
                                                     (let ((__tmp78138
                                                            (let ((__tmp78139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78140
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp78140))))
                      (declare (not safe))
                      (cons __tmp78139 '()))))
               (declare (not safe))
               (cons _id76326_ __tmp78138))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78137 _bind76295_)))
                                             (__tmp78130
                                              (let ((__tmp78131
                                                     (let ((__tmp78132
                                                            (let ((__tmp78133
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78134
                                  (let ((__tmp78135 (car _exprs76294_)))
                                    (declare (not safe))
                                    (cons __tmp78135 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp78134))))
                      (declare (not safe))
                      (cons __tmp78133 '()))))
               (declare (not safe))
               (cons _id76326_ __tmp78132))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78131
                                                      _post76296_))))
                                         (declare (not safe))
                                         (_lp76291_
                                          _rest76323_
                                          __tmp78141
                                          __tmp78136
                                          __tmp78130)))
                                     (if (let ((__tmp78129
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd76324_))))
                                           (declare (not safe))
                                           (not __tmp78129))
                                         (let ((__tmp78128 (cdr _exprs76294_))
                                               (__tmp78124
                                                (let ((__tmp78125
                                                       (let ((__tmp78126
                                                              (let ((__tmp78127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs76294_)))
                        (declare (not safe))
                        (cons __tmp78127 '()))))
                 (declare (not safe))
                 (cons '#f __tmp78126))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp78125
                                                        _post76296_))))
                                           (declare (not safe))
                                           (_lp76291_
                                            _rest76323_
                                            __tmp78128
                                            _bind76295_
                                            __tmp78124))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd76324_))
                                             (let* ((_len76328_
                                                     (length _hd76324_))
                                                    (_tmp76330_
                                                     (let ((__tmp78106
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp78106))))
                                               (let ((__tmp78123
                                                      (cdr _exprs76294_))
                                                     (__tmp78116
                                                      (let ((__tmp78117
                                                             (lambda (_id76333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r76334_)
                       (if (let () (declare (not safe)) (__AST-e _id76333_))
                           (let ((__tmp78118
                                  (let ((__tmp78122
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id76333_)))
                                        (__tmp78119
                                         (let ((__tmp78120
                                                (let ((__tmp78121
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp78121))))
                                           (declare (not safe))
                                           (cons __tmp78120 '()))))
                                    (declare (not safe))
                                    (cons __tmp78122 __tmp78119))))
                             (declare (not safe))
                             (cons __tmp78118 _r76334_))
                           _r76334_))))
                (declare (not safe))
                (foldl1 __tmp78117 _bind76295_ _hd76324_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp78107
                                                      (let ((__tmp78108
                                                             (let ((__tmp78109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp78115 (car _exprs76294_))
                                  (__tmp78110
                                   (let ((__tmp78111
                                          (let ((__tmp78113
                                                 (lambda (_id76336_ _k76337_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id76336_))
                                                       (let ((__tmp78114
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id76336_))))
                 (declare (not safe))
                 (cons __tmp78114 _k76337_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp78112
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota__0 _len76328_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp78113
                                             _hd76324_
                                             __tmp78112))))
                                     (declare (not safe))
                                     (cons _len76328_ __tmp78111))))
                              (declare (not safe))
                              (cons __tmp78115 __tmp78110))))
                       (declare (not safe))
                       (cons _tmp76330_ __tmp78109))))
                (declare (not safe))
                (cons __tmp78108 _post76296_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp76291_
                                                  _rest76323_
                                                  __tmp78123
                                                  __tmp78116
                                                  __tmp78107)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx76135_
                                                _hd76324_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7629776311_))
                              (let ((_tl7630776364_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7629776311_)))
                                    (_hd7630676362_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7629776311_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7630676362_))
                                    (let ((_tl7630976369_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7630676362_)))
                                          (_hd7630876367_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7630676362_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7630976369_))
                                          (let ((_hd76372_ _hd7630876367_)
                                                (_rest76374_ _tl7630776364_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7630576359_
                                               _rest76374_
                                               _hd76372_)))
                                          (let ((_hd76347_ _hd7630676362_)
                                                (_rest76349_ _tl7630776364_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7630276339_
                                               _rest76349_
                                               _hd76347_)))))
                                    (let ((_hd76347_ _hd7630676362_)
                                          (_rest76349_ _tl7630776364_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7630276339_
                                         _rest76349_
                                         _hd76347_)))))
                              (let ()
                                (declare (not safe))
                                (_else7630076319_))))))))
                 (_compile-bind76139_
                  (lambda (_bind76283_ _post76284_ _body76285_)
                    (let ((__tmp78142
                           (let ((__tmp78143
                                  (let ((__tmp78146 (reverse _bind76283_))
                                        (__tmp78144
                                         (let ((__tmp78145
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post76140_
                                                   _post76284_
                                                   _body76285_))))
                                           (declare (not safe))
                                           (cons __tmp78145 '()))))
                                    (declare (not safe))
                                    (cons __tmp78146 __tmp78144))))
                             (declare (not safe))
                             (cons 'let __tmp78143))))
                      (declare (not safe))
                      (__SRC__% __tmp78142 _stx76135_))))
                 (_compile-post76140_
                  (lambda (_post76142_ _body76143_)
                    (let ((__tmp78147
                           (let ((__tmp78148
                                  (let ((__tmp78149
                                         (let ((__tmp78151
                                                (lambda (_hd76145_ _r76146_)
                                                  (let* ((_hd7614776170_
                                                          _hd76145_)
                                                         (_E7615176174_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7614776170_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7616476268_
                                                           (lambda (_expr76266_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr76266_ _r76146_))))
                  (_K7615976246_
                   (lambda (_expr76243_ _id76244_)
                     (let ((__tmp78152
                            (let ((__tmp78153
                                   (let ((__tmp78154
                                          (let ((__tmp78155
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr76243_ '()))))
                                            (declare (not safe))
                                            (cons _id76244_ __tmp78155))))
                                     (declare (not safe))
                                     (cons 'set! __tmp78154))))
                              (declare (not safe))
                              (__SRC__% __tmp78153 _stx76135_))))
                       (declare (not safe))
                       (cons __tmp78152 _r76146_))))
                  (_K7615276213_
                   (lambda (_init76178_ _len76179_ _expr76180_ _tmp76181_)
                     (let ((__tmp78156
                            (let ((__tmp78157
                                   (let ((__tmp78158
                                          (let ((__tmp78172
                                                 (let ((__tmp78173
                                                        (let ((__tmp78174
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr76180_ '()))))
                  (declare (not safe))
                  (cons _tmp76181_ __tmp78174))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp78173 '())))
                                                (__tmp78159
                                                 (let ((__tmp78168
                                                        (let ((__tmp78169
                                                               (let ((__tmp78170
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp78171
                                     (let ()
                                       (declare (not safe))
                                       (cons _len76179_ '()))))
                                (declare (not safe))
                                (cons _tmp76181_ __tmp78171))))
                         (declare (not safe))
                         (cons '__check-values __tmp78170))))
                  (declare (not safe))
                  (__SRC__% __tmp78169 _stx76135_)))
               (__tmp78160
                (let ((__tmp78161
                       (map (lambda (_hd76183_)
                              (let* ((_hd7618476191_ _hd76183_)
                                     (_E7618676195_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7618476191_))))
                                     (_K7618776201_
                                      (lambda (_k76198_ _id76199_)
                                        (let ((__tmp78162
                                               (let ((__tmp78163
                                                      (let ((__tmp78164
                                                             (let ((__tmp78165
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp78166
                                   (let ((__tmp78167
                                          (let ()
                                            (declare (not safe))
                                            (cons _k76198_ '()))))
                                     (declare (not safe))
                                     (cons _tmp76181_ __tmp78167))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp78166))))
                       (declare (not safe))
                       (cons __tmp78165 '()))))
                (declare (not safe))
                (cons _id76199_ __tmp78164))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp78163))))
                                          (declare (not safe))
                                          (__SRC__% __tmp78162 _stx76135_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7618476191_))
                                    (let ((_hd7618876204_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7618476191_)))
                                          (_tl7618976206_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7618476191_))))
                                      (let* ((_id76209_ _hd7618876204_)
                                             (_k76211_ _tl7618976206_))
                                        (declare (not safe))
                                        (_K7618776201_ _k76211_ _id76209_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7618676195_)))))
                            _init76178_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp78161))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp78168
                                                         __tmp78160))))
                                            (declare (not safe))
                                            (cons __tmp78172 __tmp78159))))
                                     (declare (not safe))
                                     (cons 'let __tmp78158))))
                              (declare (not safe))
                              (__SRC__% __tmp78157 _stx76135_))))
                       (declare (not safe))
                       (cons __tmp78156 _r76146_)))))
              (if (let () (declare (not safe)) (##pair? _hd7614776170_))
                  (let ((_tl7616676273_
                         (let () (declare (not safe)) (##cdr _hd7614776170_)))
                        (_hd7616576271_
                         (let () (declare (not safe)) (##car _hd7614776170_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7616576271_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7616676273_))
                            (let ((_tl7616876278_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7616676273_)))
                                  (_hd7616776276_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7616676273_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7616876278_))
                                  (let ((_expr76281_ _hd7616776276_))
                                    (declare (not safe))
                                    (_K7616476268_ _expr76281_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7616876278_))
                                      (let ((_tl7615876232_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7616876278_)))
                                            (_hd7615776230_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7616876278_))))
                                        (let ((_tmp76221_ _hd7616576271_)
                                              (_expr76228_ _hd7616776276_)
                                              (_len76235_ _hd7615776230_)
                                              (_init76237_ _tl7615876232_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7615276213_
                                             _init76237_
                                             _len76235_
                                             _expr76228_
                                             _tmp76221_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7615176174_)))))
                            (let () (declare (not safe)) (_E7615176174_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7616676273_))
                            (let ((_tl7616376258_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7616676273_)))
                                  (_hd7616276256_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7616676273_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7616376258_))
                                  (let ((_id76254_ _hd7616576271_)
                                        (_expr76261_ _hd7616276256_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7615976246_ _expr76261_ _id76254_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7616376258_))
                                      (let ((_tl7615876232_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7616376258_)))
                                            (_hd7615776230_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7616376258_))))
                                        (let ((_tmp76221_ _hd7616576271_)
                                              (_expr76228_ _hd7616276256_)
                                              (_len76235_ _hd7615776230_)
                                              (_init76237_ _tl7615876232_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7615276213_
                                             _init76237_
                                             _len76235_
                                             _expr76228_
                                             _tmp76221_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7615176174_)))))
                            (let () (declare (not safe)) (_E7615176174_)))))
                  (let () (declare (not safe)) (_E7615176174_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp78150 (list _body76143_)))
                                           (declare (not safe))
                                           (foldl1 __tmp78151
                                                   __tmp78150
                                                   _post76142_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp78149))))
                             (declare (not safe))
                             (cons 'begin __tmp78148))))
                      (declare (not safe))
                      (__SRC__% __tmp78147 _stx76135_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76135_
             _compile-simple76137_
             _compile-values76138_)))))
    (define __compile-call%
      (lambda (_stx76095_)
        (let* ((_$e76097_ _stx76095_)
               (_$E7609976108_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76097_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76097_))
              (let* ((_$tgt7610076111_
                      (let () (declare (not safe)) (__AST-e _$e76097_)))
                     (_$hd7610176114_
                      (let () (declare (not safe)) (##car _$tgt7610076111_)))
                     (_$tl7610276117_
                      (let () (declare (not safe)) (##cdr _$tgt7610076111_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7610276117_))
                    (let* ((_$tgt7610376121_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7610276117_)))
                           (_$hd7610476124_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7610376121_)))
                           (_$tl7610576127_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7610376121_))))
                      (let* ((_rator76131_ _$hd7610476124_)
                             (_rands76133_ _$tl7610576127_)
                             (__tmp78175
                              (let ((__tmp78177
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator76131_)))
                                    (__tmp78176 (map __compile _rands76133_)))
                                (declare (not safe))
                                (cons __tmp78177 __tmp78176))))
                        (declare (not safe))
                        (__SRC__% __tmp78175 _stx76095_)))
                    (let () (declare (not safe)) (_$E7609976108_))))
              (let () (declare (not safe)) (_$E7609976108_))))))
    (define __compile-ref%
      (lambda (_stx76057_)
        (let* ((_$e76059_ _stx76057_)
               (_$E7606176070_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76059_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76059_))
              (let* ((_$tgt7606276073_
                      (let () (declare (not safe)) (__AST-e _$e76059_)))
                     (_$hd7606376076_
                      (let () (declare (not safe)) (##car _$tgt7606276073_)))
                     (_$tl7606476079_
                      (let () (declare (not safe)) (##cdr _$tgt7606276073_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7606476079_))
                    (let* ((_$tgt7606576083_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7606476079_)))
                           (_$hd7606676086_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7606576083_)))
                           (_$tl7606776089_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7606576083_))))
                      (let ((_id76093_ _$hd7606676086_))
                        (if (let ((__tmp78178
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7606776089_))))
                              (declare (not safe))
                              (equal? __tmp78178 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id76093_ _stx76057_))
                            (let () (declare (not safe)) (_$E7606176070_)))))
                    (let () (declare (not safe)) (_$E7606176070_))))
              (let () (declare (not safe)) (_$E7606176070_))))))
    (define __compile-setq%
      (lambda (_stx76004_)
        (let* ((_$e76006_ _stx76004_)
               (_$E7600876020_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76006_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76006_))
              (let* ((_$tgt7600976023_
                      (let () (declare (not safe)) (__AST-e _$e76006_)))
                     (_$hd7601076026_
                      (let () (declare (not safe)) (##car _$tgt7600976023_)))
                     (_$tl7601176029_
                      (let () (declare (not safe)) (##cdr _$tgt7600976023_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7601176029_))
                    (let* ((_$tgt7601276033_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7601176029_)))
                           (_$hd7601376036_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7601276033_)))
                           (_$tl7601476039_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7601276033_))))
                      (let ((_id76043_ _$hd7601376036_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7601476039_))
                            (let* ((_$tgt7601576045_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7601476039_)))
                                   (_$hd7601676048_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7601576045_)))
                                   (_$tl7601776051_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7601576045_))))
                              (let ((_expr76055_ _$hd7601676048_))
                                (if (let ((__tmp78184
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7601776051_))))
                                      (declare (not safe))
                                      (equal? __tmp78184 '()))
                                    (let ((__tmp78179
                                           (let ((__tmp78180
                                                  (let ((__tmp78183
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id76043_
                                                            _stx76004_)))
                                                        (__tmp78181
                                                         (let ((__tmp78182
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr76055_))))
                   (declare (not safe))
                   (cons __tmp78182 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78183
                                                          __tmp78181))))
                                             (declare (not safe))
                                             (cons 'set! __tmp78180))))
                                      (declare (not safe))
                                      (__SRC__% __tmp78179 _stx76004_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7600876020_)))))
                            (let () (declare (not safe)) (_$E7600876020_)))))
                    (let () (declare (not safe)) (_$E7600876020_))))
              (let () (declare (not safe)) (_$E7600876020_))))))
    (define __compile-if%
      (lambda (_stx75936_)
        (let* ((_$e75938_ _stx75936_)
               (_$E7594075955_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75938_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75938_))
              (let* ((_$tgt7594175958_
                      (let () (declare (not safe)) (__AST-e _$e75938_)))
                     (_$hd7594275961_
                      (let () (declare (not safe)) (##car _$tgt7594175958_)))
                     (_$tl7594375964_
                      (let () (declare (not safe)) (##cdr _$tgt7594175958_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7594375964_))
                    (let* ((_$tgt7594475968_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7594375964_)))
                           (_$hd7594575971_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7594475968_)))
                           (_$tl7594675974_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7594475968_))))
                      (let ((_p75978_ _$hd7594575971_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7594675974_))
                            (let* ((_$tgt7594775980_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7594675974_)))
                                   (_$hd7594875983_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7594775980_)))
                                   (_$tl7594975986_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7594775980_))))
                              (let ((_t75990_ _$hd7594875983_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7594975986_))
                                    (let* ((_$tgt7595075992_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7594975986_)))
                                           (_$hd7595175995_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7595075992_)))
                                           (_$tl7595275998_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7595075992_))))
                                      (let ((_f76002_ _$hd7595175995_))
                                        (if (let ((__tmp78192
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7595275998_))))
                                              (declare (not safe))
                                              (equal? __tmp78192 '()))
                                            (let ((__tmp78185
                                                   (let ((__tmp78186
                                                          (let ((__tmp78191
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p75978_)))
                        (__tmp78187
                         (let ((__tmp78190
                                (let ()
                                  (declare (not safe))
                                  (__compile _t75990_)))
                               (__tmp78188
                                (let ((__tmp78189
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f76002_))))
                                  (declare (not safe))
                                  (cons __tmp78189 '()))))
                           (declare (not safe))
                           (cons __tmp78190 __tmp78188))))
                    (declare (not safe))
                    (cons __tmp78191 __tmp78187))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp78186))))
                                              (declare (not safe))
                                              (__SRC__% __tmp78185 _stx75936_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7594075955_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7594075955_)))))
                            (let () (declare (not safe)) (_$E7594075955_)))))
                    (let () (declare (not safe)) (_$E7594075955_))))
              (let () (declare (not safe)) (_$E7594075955_))))))
    (define __compile-quote%
      (lambda (_stx75898_)
        (let* ((_$e75900_ _stx75898_)
               (_$E7590275911_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75900_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75900_))
              (let* ((_$tgt7590375914_
                      (let () (declare (not safe)) (__AST-e _$e75900_)))
                     (_$hd7590475917_
                      (let () (declare (not safe)) (##car _$tgt7590375914_)))
                     (_$tl7590575920_
                      (let () (declare (not safe)) (##cdr _$tgt7590375914_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7590575920_))
                    (let* ((_$tgt7590675924_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7590575920_)))
                           (_$hd7590775927_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7590675924_)))
                           (_$tl7590875930_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7590675924_))))
                      (let ((_e75934_ _$hd7590775927_))
                        (if (let ((__tmp78196
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7590875930_))))
                              (declare (not safe))
                              (equal? __tmp78196 '()))
                            (let ((__tmp78193
                                   (let ((__tmp78194
                                          (let ((__tmp78195
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e75934_))))
                                            (declare (not safe))
                                            (cons __tmp78195 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp78194))))
                              (declare (not safe))
                              (__SRC__% __tmp78193 _stx75898_))
                            (let () (declare (not safe)) (_$E7590275911_)))))
                    (let () (declare (not safe)) (_$E7590275911_))))
              (let () (declare (not safe)) (_$E7590275911_))))))
    (define __compile-quote-syntax%
      (lambda (_stx75860_)
        (let* ((_$e75862_ _stx75860_)
               (_$E7586475873_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e75862_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e75862_))
              (let* ((_$tgt7586575876_
                      (let () (declare (not safe)) (__AST-e _$e75862_)))
                     (_$hd7586675879_
                      (let () (declare (not safe)) (##car _$tgt7586575876_)))
                     (_$tl7586775882_
                      (let () (declare (not safe)) (##cdr _$tgt7586575876_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7586775882_))
                    (let* ((_$tgt7586875886_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7586775882_)))
                           (_$hd7586975889_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7586875886_)))
                           (_$tl7587075892_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7586875886_))))
                      (let ((_e75896_ _$hd7586975889_))
                        (if (let ((__tmp78199
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7587075892_))))
                              (declare (not safe))
                              (equal? __tmp78199 '()))
                            (let ((__tmp78197
                                   (let ((__tmp78198
                                          (let ()
                                            (declare (not safe))
                                            (cons _e75896_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp78198))))
                              (declare (not safe))
                              (__SRC__% __tmp78197 _stx75860_))
                            (let () (declare (not safe)) (_$E7586475873_)))))
                    (let () (declare (not safe)) (_$E7586475873_))))
              (let () (declare (not safe)) (_$E7586475873_))))))
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
