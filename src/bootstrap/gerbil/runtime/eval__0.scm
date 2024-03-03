(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1709457369)
  (begin
    (define __syntax::t
      (let ((__tmp78104 (list))
            (__tmp78102
             (let ((__tmp78103
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp78103 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__syntax::t
         '__syntax
         __tmp78104
         '(e id)
         __tmp78102
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _$args77913_ (apply make-instance __syntax::t _$args77913_)))
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
      (let ((__tmp78107 (list __syntax::t))
            (__tmp78105
             (let ((__tmp78106
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp78106 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-form::t
         '__core-form
         __tmp78107
         '()
         __tmp78105
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _$args77910_ (apply make-instance __core-form::t _$args77910_)))
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
      (let ((__tmp78110 (list __core-form::t))
            (__tmp78108
             (let ((__tmp78109
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp78109 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-expression::t
         '__core-expression
         __tmp78110
         '()
         __tmp78108
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _$args77907_
        (apply make-instance __core-expression::t _$args77907_)))
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
      (let ((__tmp78113 (list __core-form::t))
            (__tmp78111
             (let ((__tmp78112
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp78112 '()))))
        (declare (not safe))
        (make-class-type
         'gerbil/runtime/eval#__core-special-form::t
         '__core-special-form
         __tmp78113
         '()
         __tmp78111
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _$args77904_
        (apply make-instance __core-special-form::t _$args77904_)))
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
      (lambda (_id77902_)
        (let ((__tmp78114 (let () (declare (not safe)) (__AST-e _id77902_))))
          (declare (not safe))
          (hash-get __core __tmp78114))))
    (define __core-bound-id?__%
      (lambda (_id77886_ _is?77887_)
        (let ((_$e77889_
               (let () (declare (not safe)) (__core-resolve _id77886_))))
          (if _$e77889_ (_is?77887_ _$e77889_) '#f))))
    (define __core-bound-id?__0
      (lambda (_id77895_)
        (let ((_is?77897_ true))
          (declare (not safe))
          (__core-bound-id?__% _id77895_ _is?77897_))))
    (define __core-bound-id?
      (lambda _g78116_
        (let ((_g78115_ (let () (declare (not safe)) (##length _g78116_))))
          (cond ((let () (declare (not safe)) (##fx= _g78115_ 1))
                 (apply (lambda (_id77895_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__0 _id77895_)))
                        _g78116_))
                ((let () (declare (not safe)) (##fx= _g78115_ 2))
                 (apply (lambda (_id77899_ _is?77900_)
                          (let ()
                            (declare (not safe))
                            (__core-bound-id?__% _id77899_ _is?77900_)))
                        _g78116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g78116_))))))
    (define __core-bind-syntax!__%
      (lambda (_id77869_ _e77870_ _make77871_)
        (let ((__tmp78117
               (if (let ()
                     (declare (not safe))
                     (##structure-instance-of?
                      _e77870_
                      'gerbil/runtime/eval#__syntax::t))
                   _e77870_
                   (_make77871_ _e77870_ _id77869_))))
          (declare (not safe))
          (hash-put! __core _id77869_ __tmp78117))))
    (define __core-bind-syntax!__0
      (lambda (_id77876_ _e77877_)
        (let ((_make77879_ make-__syntax))
          (declare (not safe))
          (__core-bind-syntax!__% _id77876_ _e77877_ _make77879_))))
    (define __core-bind-syntax!
      (lambda _g78119_
        (let ((_g78118_ (let () (declare (not safe)) (##length _g78119_))))
          (cond ((let () (declare (not safe)) (##fx= _g78118_ 2))
                 (apply (lambda (_id77876_ _e77877_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__0 _id77876_ _e77877_)))
                        _g78119_))
                ((let () (declare (not safe)) (##fx= _g78118_ 3))
                 (apply (lambda (_id77881_ _e77882_ _make77883_)
                          (let ()
                            (declare (not safe))
                            (__core-bind-syntax!__%
                             _id77881_
                             _e77882_
                             _make77883_)))
                        _g78119_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g78119_))))))
    (define __SRC__%
      (lambda (_e77852_ _src-stx77853_)
        (if (or (let () (declare (not safe)) (pair? _e77852_))
                (let () (declare (not safe)) (symbol? _e77852_)))
            (let ((__tmp78123
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _src-stx77853_
                          'gerbil#AST::t))
                       (let ((__tmp78124
                              (let ()
                                (declare (not safe))
                                (__AST-source _src-stx77853_))))
                         (declare (not safe))
                         (__locat __tmp78124))
                       '#f)))
              (declare (not safe))
              (##make-source _e77852_ __tmp78123))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _e77852_ 'gerbil#AST::t))
                (let ((__tmp78122
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _e77852_ '1 AST::t '#f)))
                      (__tmp78120
                       (let ((__tmp78121
                              (let ()
                                (declare (not safe))
                                (__AST-source _e77852_))))
                         (declare (not safe))
                         (__locat __tmp78121))))
                  (declare (not safe))
                  (##make-source __tmp78122 __tmp78120))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _e77852_))))))
    (define __SRC__0
      (lambda (_e77861_)
        (let ((_src-stx77863_ '#f))
          (declare (not safe))
          (__SRC__% _e77861_ _src-stx77863_))))
    (define __SRC
      (lambda _g78126_
        (let ((_g78125_ (let () (declare (not safe)) (##length _g78126_))))
          (cond ((let () (declare (not safe)) (##fx= _g78125_ 1))
                 (apply (lambda (_e77861_)
                          (let () (declare (not safe)) (__SRC__0 _e77861_)))
                        _g78126_))
                ((let () (declare (not safe)) (##fx= _g78125_ 2))
                 (apply (lambda (_e77865_ _src-stx77866_)
                          (let ()
                            (declare (not safe))
                            (__SRC__% _e77865_ _src-stx77866_)))
                        _g78126_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g78126_))))))
    (define __locat
      (lambda (_loc77849_)
        (if (let () (declare (not safe)) (##locat? _loc77849_))
            _loc77849_
            '#f)))
    (define __check-values
      (lambda (_obj77844_ _k77845_)
        (let ((_count77847_
               (if (let () (declare (not safe)) (##values? _obj77844_))
                   (let () (declare (not safe)) (##vector-length _obj77844_))
                   '1)))
          (if (fx= _count77847_ _k77845_)
              '#!void
              (let ((__tmp78128
                     (if (fx< _count77847_ _k77845_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp78127
                     (if (let () (declare (not safe)) (##values? _obj77844_))
                         (let ()
                           (declare (not safe))
                           (##vector->list _obj77844_))
                         _obj77844_)))
                (declare (not safe))
                (error __tmp78128 __tmp78127 _k77845_))))))
    (define __compile
      (lambda (_stx77814_)
        (let* ((_$e77816_ _stx77814_)
               (_$E7781877824_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77816_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77816_))
              (let* ((_$tgt7781977827_
                      (let () (declare (not safe)) (__AST-e _$e77816_)))
                     (_$hd7782077830_
                      (let () (declare (not safe)) (##car _$tgt7781977827_)))
                     (_$tl7782177833_
                      (let () (declare (not safe)) (##cdr _$tgt7781977827_))))
                (let* ((_form77837_ _$hd7782077830_)
                       (_$e77839_
                        (let ()
                          (declare (not safe))
                          (__core-resolve _form77837_))))
                  (if _$e77839_
                      ((lambda (_bind77842_)
                         ((##structure-ref _bind77842_ '1 __syntax::t '#f)
                          _stx77814_))
                       _$e77839_)
                      (let ()
                        (declare (not safe))
                        (__raise-syntax-error
                         '#f
                         '"Bad syntax; cannot resolve form"
                         _stx77814_
                         _form77837_)))))
              (let () (declare (not safe)) (_$E7781877824_))))))
    (define __compile-error__%
      (lambda (_stx77801_ _detail77802_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _stx77801_
           _detail77802_))))
    (define __compile-error__0
      (lambda (_stx77807_)
        (let ((_detail77809_ '#f))
          (declare (not safe))
          (__compile-error__% _stx77807_ _detail77809_))))
    (define __compile-error
      (lambda _g78130_
        (let ((_g78129_ (let () (declare (not safe)) (##length _g78130_))))
          (cond ((let () (declare (not safe)) (##fx= _g78129_ 1))
                 (apply (lambda (_stx77807_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__0 _stx77807_)))
                        _g78130_))
                ((let () (declare (not safe)) (##fx= _g78129_ 2))
                 (apply (lambda (_stx77811_ _detail77812_)
                          (let ()
                            (declare (not safe))
                            (__compile-error__% _stx77811_ _detail77812_)))
                        _g78130_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g78130_))))))
    (define __compile-ignore%
      (lambda (_stx77798_)
        (let () (declare (not safe)) (__SRC__% ''#!void _stx77798_))))
    (define __compile-begin%
      (lambda (_stx77773_)
        (let* ((_$e77775_ _stx77773_)
               (_$E7777777783_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77775_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77775_))
              (let* ((_$tgt7777877786_
                      (let () (declare (not safe)) (__AST-e _$e77775_)))
                     (_$hd7777977789_
                      (let () (declare (not safe)) (##car _$tgt7777877786_)))
                     (_$tl7778077792_
                      (let () (declare (not safe)) (##cdr _$tgt7777877786_))))
                (let* ((_body77796_ _$tl7778077792_)
                       (__tmp78131
                        (let ((__tmp78132 (map __compile _body77796_)))
                          (declare (not safe))
                          (cons 'begin __tmp78132))))
                  (declare (not safe))
                  (__SRC__% __tmp78131 _stx77773_)))
              (let () (declare (not safe)) (_$E7777777783_))))))
    (define __compile-begin-foreign%
      (lambda (_stx77748_)
        (let* ((_$e77750_ _stx77748_)
               (_$E7775277758_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77750_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77750_))
              (let* ((_$tgt7775377761_
                      (let () (declare (not safe)) (__AST-e _$e77750_)))
                     (_$hd7775477764_
                      (let () (declare (not safe)) (##car _$tgt7775377761_)))
                     (_$tl7775577767_
                      (let () (declare (not safe)) (##cdr _$tgt7775377761_))))
                (let* ((_body77771_ _$tl7775577767_)
                       (__tmp78133
                        (let ((__tmp78134
                               (let ()
                                 (declare (not safe))
                                 (__AST->datum _body77771_))))
                          (declare (not safe))
                          (cons 'begin __tmp78134))))
                  (declare (not safe))
                  (__SRC__% __tmp78133 _stx77748_)))
              (let () (declare (not safe)) (_$E7775277758_))))))
    (define __compile-import%
      (lambda (_stx77723_)
        (let* ((_$e77725_ _stx77723_)
               (_$E7772777733_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77725_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77725_))
              (let* ((_$tgt7772877736_
                      (let () (declare (not safe)) (__AST-e _$e77725_)))
                     (_$hd7772977739_
                      (let () (declare (not safe)) (##car _$tgt7772877736_)))
                     (_$tl7773077742_
                      (let () (declare (not safe)) (##cdr _$tgt7772877736_))))
                (let* ((_body77746_ _$tl7773077742_)
                       (__tmp78135
                        (let ((__tmp78136
                               (let ((__tmp78137
                                      (let ((__tmp78138
                                             (let ()
                                               (declare (not safe))
                                               (cons _body77746_ '()))))
                                        (declare (not safe))
                                        (cons 'quote __tmp78138))))
                                 (declare (not safe))
                                 (cons __tmp78137 '()))))
                          (declare (not safe))
                          (cons '__eval-import __tmp78136))))
                  (declare (not safe))
                  (__SRC__% __tmp78135 _stx77723_)))
              (let () (declare (not safe)) (_$E7772777733_))))))
    (define __compile-begin-annotation%
      (lambda (_stx77670_)
        (let* ((_$e77672_ _stx77670_)
               (_$E7767477686_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77672_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77672_))
              (let* ((_$tgt7767577689_
                      (let () (declare (not safe)) (__AST-e _$e77672_)))
                     (_$hd7767677692_
                      (let () (declare (not safe)) (##car _$tgt7767577689_)))
                     (_$tl7767777695_
                      (let () (declare (not safe)) (##cdr _$tgt7767577689_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7767777695_))
                    (let* ((_$tgt7767877699_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7767777695_)))
                           (_$hd7767977702_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7767877699_)))
                           (_$tl7768077705_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7767877699_))))
                      (let ((_ann77709_ _$hd7767977702_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7768077705_))
                            (let* ((_$tgt7768177711_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7768077705_)))
                                   (_$hd7768277714_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7768177711_)))
                                   (_$tl7768377717_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7768177711_))))
                              (let ((_expr77721_ _$hd7768277714_))
                                (if (let ((__tmp78139
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7768377717_))))
                                      (declare (not safe))
                                      (equal? __tmp78139 '()))
                                    (let ()
                                      (declare (not safe))
                                      (__compile _expr77721_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7767477686_)))))
                            (let () (declare (not safe)) (_$E7767477686_)))))
                    (let () (declare (not safe)) (_$E7767477686_))))
              (let () (declare (not safe)) (_$E7767477686_))))))
    (define __compile-define-values%
      (lambda (_stx77561_)
        (let* ((_$e77563_ _stx77561_)
               (_$E7756577577_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77563_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77563_))
              (let* ((_$tgt7756677580_
                      (let () (declare (not safe)) (__AST-e _$e77563_)))
                     (_$hd7756777583_
                      (let () (declare (not safe)) (##car _$tgt7756677580_)))
                     (_$tl7756877586_
                      (let () (declare (not safe)) (##cdr _$tgt7756677580_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7756877586_))
                    (let* ((_$tgt7756977590_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7756877586_)))
                           (_$hd7757077593_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7756977590_)))
                           (_$tl7757177596_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7756977590_))))
                      (let ((_hd77600_ _$hd7757077593_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7757177596_))
                            (let* ((_$tgt7757277602_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7757177596_)))
                                   (_$hd7757377605_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7757277602_)))
                                   (_$tl7757477608_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7757277602_))))
                              (let ((_expr77612_ _$hd7757377605_))
                                (if (let ((__tmp78172
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7757477608_))))
                                      (declare (not safe))
                                      (equal? __tmp78172 '()))
                                    (let* ((_$e77614_ _hd77600_)
                                           (_$E7761677657_
                                            (lambda ()
                                              (let ((_$E7761777642_
                                                     (lambda ()
                                                       (let* ((_$E7761877629_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__raise-syntax-error
                            '#f
                            '"Bad syntax; malformed ast clause"
                            _$e77614_))))
                      (_ids77632_ _hd77600_)
                      (_len77634_ (length _ids77632_))
                      (_tmp77636_
                       (let ((__tmp78140 (gensym)))
                         (declare (not safe))
                         (__SRC__0 __tmp78140))))
                 (let ((__tmp78141
                        (let ((__tmp78142
                               (let ((__tmp78159
                                      (let ((__tmp78160
                                             (let ((__tmp78161
                                                    (let ((__tmp78162
                                                           (let ((__tmp78163
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (__compile _expr77612_))))
                     (declare (not safe))
                     (cons __tmp78163 '()))))
              (declare (not safe))
              (cons _tmp77636_ __tmp78162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'define __tmp78161))))
                                        (declare (not safe))
                                        (__SRC__% __tmp78160 _stx77561_)))
                                     (__tmp78143
                                      (let ((__tmp78155
                                             (let ((__tmp78156
                                                    (let ((__tmp78157
                                                           (let ((__tmp78158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _len77634_ '()))))
                     (declare (not safe))
                     (cons _tmp77636_ __tmp78158))))
              (declare (not safe))
              (cons '__check-values __tmp78157))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (__SRC__%
                                                __tmp78156
                                                _stx77561_)))
                                            (__tmp78144
                                             (let ((__tmp78145
                                                    (let ((__tmp78147
                                                           (lambda (_id77639_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _k77640_)
                     (if (let () (declare (not safe)) (__AST-e _id77639_))
                         (let ((__tmp78148
                                (let ((__tmp78149
                                       (let ((__tmp78154
                                              (let ()
                                                (declare (not safe))
                                                (__SRC__0 _id77639_)))
                                             (__tmp78150
                                              (let ((__tmp78151
                                                     (let ((__tmp78152
                                                            (let ((__tmp78153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (cons _k77640_ '()))))
                      (declare (not safe))
                      (cons _tmp77636_ __tmp78153))))
               (declare (not safe))
               (cons '##vector-ref __tmp78152))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78151 '()))))
                                         (declare (not safe))
                                         (cons __tmp78154 __tmp78150))))
                                  (declare (not safe))
                                  (cons 'define __tmp78149))))
                           (declare (not safe))
                           (__SRC__% __tmp78148 _stx77561_))
                         '#f)))
                  (__tmp78146
                   (let () (declare (not safe)) (iota__0 _len77634_))))
              (declare (not safe))
              (filter-map2 __tmp78147 _ids77632_ __tmp78146))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 cons '() __tmp78145))))
                                        (declare (not safe))
                                        (cons __tmp78155 __tmp78144))))
                                 (declare (not safe))
                                 (cons __tmp78159 __tmp78143))))
                          (declare (not safe))
                          (cons 'begin __tmp78142))))
                   (declare (not safe))
                   (__SRC__% __tmp78141 _stx77561_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (__AST-pair? _$e77614_))
                                                    (let* ((_$tgt7761977645_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (__AST-e _$e77614_)))
                                                           (_$hd7762077648_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _$tgt7761977645_)))
                                                           (_$tl7762177651_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _$tgt7761977645_))))
                                                      (let ((_id77655_
                                                             _$hd7762077648_))
                                                        (if (let ((__tmp78169
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (__AST-e _$tl7762177651_))))
                      (declare (not safe))
                      (equal? __tmp78169 '()))
                    (let ((__tmp78164
                           (let ((__tmp78165
                                  (let ((__tmp78168
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id77655_)))
                                        (__tmp78166
                                         (let ((__tmp78167
                                                (let ()
                                                  (declare (not safe))
                                                  (__compile _expr77612_))))
                                           (declare (not safe))
                                           (cons __tmp78167 '()))))
                                    (declare (not safe))
                                    (cons __tmp78168 __tmp78166))))
                             (declare (not safe))
                             (cons 'define __tmp78165))))
                      (declare (not safe))
                      (__SRC__% __tmp78164 _stx77561_))
                    (let () (declare (not safe)) (_$E7761777642_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7761777642_)))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$e77614_))
                                          (let* ((_$tgt7762277660_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$e77614_)))
                                                 (_$hd7762377663_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7762277660_)))
                                                 (_$tl7762477666_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7762277660_))))
                                            (if (let ((__tmp78171
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$hd7762377663_))))
                                                  (declare (not safe))
                                                  (equal? __tmp78171 '#f))
                                                (if (let ((__tmp78170
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (__AST-e _$tl7762477666_))))
                                                      (declare (not safe))
                                                      (equal? __tmp78170 '()))
                                                    (let ()
                                                      (declare (not safe))
                                                      (__compile _expr77612_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_$E7761677657_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7761677657_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7761677657_))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7756577577_)))))
                            (let () (declare (not safe)) (_$E7756577577_)))))
                    (let () (declare (not safe)) (_$E7756577577_))))
              (let () (declare (not safe)) (_$E7756577577_))))))
    (define __compile-head-id
      (lambda (_e77559_)
        (let ((__tmp78173
               (if (let () (declare (not safe)) (__AST-e _e77559_))
                   _e77559_
                   (gensym))))
          (declare (not safe))
          (__SRC__0 __tmp78173))))
    (define __compile-lambda-head
      (lambda (_hd77516_)
        (let _recur77518_ ((_rest77520_ _hd77516_))
          (let* ((_$e77522_ _rest77520_)
                 (_$E7752477542_
                  (lambda ()
                    (let ((_$E7752577539_
                           (lambda ()
                             (let* ((_$E7752677534_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _$e77522_))))
                                    (_tail77537_ _$e77522_))
                               (declare (not safe))
                               (__compile-head-id _tail77537_)))))
                      (if (let ((__tmp78174
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _$e77522_))))
                            (declare (not safe))
                            (equal? __tmp78174 '()))
                          '()
                          (let () (declare (not safe)) (_$E7752577539_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e77522_))
                (let* ((_$tgt7752777545_
                        (let () (declare (not safe)) (__AST-e _$e77522_)))
                       (_$hd7752877548_
                        (let () (declare (not safe)) (##car _$tgt7752777545_)))
                       (_$tl7752977551_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7752777545_))))
                  (let* ((_hd77555_ _$hd7752877548_)
                         (_rest77557_ _$tl7752977551_))
                    (let ((__tmp78176
                           (let ()
                             (declare (not safe))
                             (__compile-head-id _hd77555_)))
                          (__tmp78175
                           (let ()
                             (declare (not safe))
                             (_recur77518_ _rest77557_))))
                      (declare (not safe))
                      (cons __tmp78176 __tmp78175))))
                (let () (declare (not safe)) (_$E7752477542_)))))))
    (define __compile-lambda%
      (lambda (_stx77463_)
        (let* ((_$e77465_ _stx77463_)
               (_$E7746777479_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e77465_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e77465_))
              (let* ((_$tgt7746877482_
                      (let () (declare (not safe)) (__AST-e _$e77465_)))
                     (_$hd7746977485_
                      (let () (declare (not safe)) (##car _$tgt7746877482_)))
                     (_$tl7747077488_
                      (let () (declare (not safe)) (##cdr _$tgt7746877482_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7747077488_))
                    (let* ((_$tgt7747177492_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7747077488_)))
                           (_$hd7747277495_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7747177492_)))
                           (_$tl7747377498_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7747177492_))))
                      (let ((_hd77502_ _$hd7747277495_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7747377498_))
                            (let* ((_$tgt7747477504_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7747377498_)))
                                   (_$hd7747577507_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7747477504_)))
                                   (_$tl7747677510_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7747477504_))))
                              (let ((_body77514_ _$hd7747577507_))
                                (if (let ((__tmp78182
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7747677510_))))
                                      (declare (not safe))
                                      (equal? __tmp78182 '()))
                                    (let ((__tmp78177
                                           (let ((__tmp78178
                                                  (let ((__tmp78181
                                                         (let ()
                                                           (declare (not safe))
                                                           (__compile-lambda-head
                                                            _hd77502_)))
                                                        (__tmp78179
                                                         (let ((__tmp78180
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _body77514_))))
                   (declare (not safe))
                   (cons __tmp78180 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78181
                                                          __tmp78179))))
                                             (declare (not safe))
                                             (cons 'lambda __tmp78178))))
                                      (declare (not safe))
                                      (__SRC__% __tmp78177 _stx77463_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7746777479_)))))
                            (let () (declare (not safe)) (_$E7746777479_)))))
                    (let () (declare (not safe)) (_$E7746777479_))))
              (let () (declare (not safe)) (_$E7746777479_))))))
    (define __compile-case-lambda%
      (lambda (_stx77255_)
        (letrec ((_variadic?77257_
                  (lambda (_hd77428_)
                    (let* ((_$e77430_ _hd77428_)
                           (_$E7743277448_
                            (lambda ()
                              (let ((_$E7743377445_
                                     (lambda ()
                                       (let ((_$E7743477442_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _$e77430_)))))
                                         '#t))))
                                (if (let ((__tmp78183
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$e77430_))))
                                      (declare (not safe))
                                      (equal? __tmp78183 '()))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_$E7743377445_)))))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77430_))
                          (let* ((_$tgt7743577451_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77430_)))
                                 (_$hd7743677454_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7743577451_)))
                                 (_$tl7743777457_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7743577451_))))
                            (let ((_rest77461_ _$tl7743777457_))
                              (declare (not safe))
                              (_variadic?77257_ _rest77461_)))
                          (let () (declare (not safe)) (_$E7743277448_))))))
                 (_arity77258_
                  (lambda (_hd77393_)
                    (let _lp77395_ ((_rest77397_ _hd77393_) (_k77398_ '0))
                      (let* ((_$e77400_ _rest77397_)
                             (_$E7740277413_
                              (lambda ()
                                (let ((_$E7740377410_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _$e77400_)))))
                                  _k77398_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$e77400_))
                            (let* ((_$tgt7740477416_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$e77400_)))
                                   (_$hd7740577419_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7740477416_)))
                                   (_$tl7740677422_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7740477416_))))
                              (let* ((_rest77426_ _$tl7740677422_)
                                     (__tmp78184
                                      (let ()
                                        (declare (not safe))
                                        (fx+ _k77398_ '1))))
                                (declare (not safe))
                                (_lp77395_ _rest77426_ __tmp78184)))
                            (let () (declare (not safe)) (_$E7740277413_)))))))
                 (_generate77259_
                  (lambda (_rest77320_ _args77321_ _len77322_)
                    (let* ((_$e77324_ _rest77320_)
                           (_$E7732677337_
                            (lambda ()
                              (let* ((_$E7732777334_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (__raise-syntax-error
                                           '#f
                                           '"Bad syntax; malformed ast clause"
                                           _$e77324_))))
                                     (__tmp78185
                                      (let ((__tmp78186
                                             (let ((__tmp78187
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args77321_ '()))))
                                               (declare (not safe))
                                               (cons '"No clause matching arguments"
                                                     __tmp78187))))
                                        (declare (not safe))
                                        (cons 'error __tmp78186))))
                                (declare (not safe))
                                (__SRC__% __tmp78185 _stx77255_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77324_))
                          (let* ((_$tgt7732877340_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77324_)))
                                 (_$hd7732977343_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7732877340_)))
                                 (_$tl7733077346_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7732877340_))))
                            (let* ((_clause77350_ _$hd7732977343_)
                                   (_rest77352_ _$tl7733077346_)
                                   (_$e77354_ _clause77350_)
                                   (_$E7735677365_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (__raise-syntax-error
                                         '#f
                                         '"Bad syntax; malformed ast clause"
                                         _$e77354_)))))
                              (if (let ()
                                    (declare (not safe))
                                    (__AST-pair? _$e77354_))
                                  (let* ((_$tgt7735777368_
                                          (let ()
                                            (declare (not safe))
                                            (__AST-e _$e77354_)))
                                         (_$hd7735877371_
                                          (let ()
                                            (declare (not safe))
                                            (##car _$tgt7735777368_)))
                                         (_$tl7735977374_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _$tgt7735777368_))))
                                    (let ((_hd77378_ _$hd7735877371_))
                                      (if (let ()
                                            (declare (not safe))
                                            (__AST-pair? _$tl7735977374_))
                                          (let* ((_$tgt7736077380_
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7735977374_)))
                                                 (_$hd7736177383_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _$tgt7736077380_)))
                                                 (_$tl7736277386_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _$tgt7736077380_))))
                                            (if (let ((__tmp78202
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7736277386_))))
                                                  (declare (not safe))
                                                  (equal? __tmp78202 '()))
                                                (let ((_clen77390_
                                                       (let ()
                                                         (declare (not safe))
                                                         (_arity77258_
                                                          _hd77378_)))
                                                      (_cmp77391_
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_variadic?77257_
                                                              _hd77378_))
                                                           'fx>=
                                                           'fx=)))
                                                  (let ((__tmp78188
                                                         (let ((__tmp78189
                                                                (let ((__tmp78199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp78200
                                      (let ((__tmp78201
                                             (let ()
                                               (declare (not safe))
                                               (cons _clen77390_ '()))))
                                        (declare (not safe))
                                        (cons _len77322_ __tmp78201))))
                                 (declare (not safe))
                                 (cons _cmp77391_ __tmp78200)))
                              (__tmp78190
                               (let ((__tmp78193
                                      (let ((__tmp78194
                                             (let ((__tmp78195
                                                    (let ((__tmp78197
                                                           (let ((__tmp78198
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons '%#lambda _clause77350_))))
                     (declare (not safe))
                     (__compile-lambda% __tmp78198)))
                  (__tmp78196
                   (let () (declare (not safe)) (cons _args77321_ '()))))
              (declare (not safe))
              (cons __tmp78197 __tmp78196))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '##apply __tmp78195))))
                                        (declare (not safe))
                                        (__SRC__% __tmp78194 _stx77255_)))
                                     (__tmp78191
                                      (let ((__tmp78192
                                             (let ()
                                               (declare (not safe))
                                               (_generate77259_
                                                _rest77352_
                                                _args77321_
                                                _len77322_))))
                                        (declare (not safe))
                                        (cons __tmp78192 '()))))
                                 (declare (not safe))
                                 (cons __tmp78193 __tmp78191))))
                          (declare (not safe))
                          (cons __tmp78199 __tmp78190))))
                   (declare (not safe))
                   (cons 'if __tmp78189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__SRC__%
                                                     __tmp78188
                                                     _stx77255_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7735677365_))))
                                          (let ()
                                            (declare (not safe))
                                            (_$E7735677365_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_$E7735677365_)))))
                          (let () (declare (not safe)) (_$E7732677337_)))))))
          (let* ((_$e77261_ _stx77255_)
                 (_$E7726377295_
                  (lambda ()
                    (let ((_$E7726477277_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e77261_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77261_))
                          (let* ((_$tgt7726577280_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77261_)))
                                 (_$hd7726677283_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7726577280_)))
                                 (_$tl7726777286_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7726577280_))))
                            (let ((_clauses77290_ _$tl7726777286_))
                              (let ((_args77292_
                                     (let ((__tmp78203 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp78203 _stx77255_)))
                                    (_len77293_
                                     (let ((__tmp78204 (gensym)))
                                       (declare (not safe))
                                       (__SRC__% __tmp78204 _stx77255_))))
                                (let ((__tmp78205
                                       (let ((__tmp78206
                                              (let ((__tmp78207
                                                     (let ((__tmp78208
                                                            (let ((__tmp78209
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78210
                                  (let ((__tmp78213
                                         (let ((__tmp78214
                                                (let ((__tmp78215
                                                       (let ((__tmp78216
                                                              (let ((__tmp78217
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp78218
                                    (let ()
                                      (declare (not safe))
                                      (cons _args77292_ '()))))
                               (declare (not safe))
                               (cons '##length __tmp78218))))
                        (declare (not safe))
                        (__SRC__% __tmp78217 _stx77255_))))
                 (declare (not safe))
                 (cons __tmp78216 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _len77293_
                                                        __tmp78215))))
                                           (declare (not safe))
                                           (cons __tmp78214 '())))
                                        (__tmp78211
                                         (let ((__tmp78212
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate77259_
                                                   _clauses77290_
                                                   _args77292_
                                                   _len77293_))))
                                           (declare (not safe))
                                           (cons __tmp78212 '()))))
                                    (declare (not safe))
                                    (cons __tmp78213 __tmp78211))))
                             (declare (not safe))
                             (cons 'let __tmp78210))))
                      (declare (not safe))
                      (__SRC__% __tmp78209 _stx77255_))))
               (declare (not safe))
               (cons __tmp78208 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons _args77292_
                                                      __tmp78207))))
                                         (declare (not safe))
                                         (cons 'lambda __tmp78206))))
                                  (declare (not safe))
                                  (__SRC__% __tmp78205 _stx77255_)))))
                          (let () (declare (not safe)) (_$E7726477277_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e77261_))
                (let* ((_$tgt7726877298_
                        (let () (declare (not safe)) (__AST-e _$e77261_)))
                       (_$hd7726977301_
                        (let () (declare (not safe)) (##car _$tgt7726877298_)))
                       (_$tl7727077304_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7726877298_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7727077304_))
                      (let* ((_$tgt7727177308_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7727077304_)))
                             (_$hd7727277311_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7727177308_)))
                             (_$tl7727377314_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7727177308_))))
                        (let ((_clause77318_ _$hd7727277311_))
                          (if (let ((__tmp78220
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$tl7727377314_))))
                                (declare (not safe))
                                (equal? __tmp78220 '()))
                              (let ((__tmp78219
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#lambda _clause77318_))))
                                (declare (not safe))
                                (__compile-lambda% __tmp78219))
                              (let () (declare (not safe)) (_$E7726377295_)))))
                      (let () (declare (not safe)) (_$E7726377295_))))
                (let () (declare (not safe)) (_$E7726377295_)))))))
    (define __compile-let-form
      (lambda (_stx77024_ _compile-simple77025_ _compile-values77026_)
        (letrec ((_simple-bind?77028_
                  (lambda (_hd77213_)
                    (let* ((_hd7721477224_ _hd77213_)
                           (_else7721777232_ (lambda () '#f)))
                      (let ((_K7722077245_ (lambda (_id77243_) '#t))
                            (_K7721977237_ (lambda () '#t)))
                        (let ((_try-match7721677240_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _hd7721477224_ '#f))
                                     (let ()
                                       (declare (not safe))
                                       (_K7721977237_))
                                     (let ()
                                       (declare (not safe))
                                       (_else7721777232_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _hd7721477224_))
                              (let ((_tl7722277250_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _hd7721477224_)))
                                    (_hd7722177248_
                                     (let ()
                                       (declare (not safe))
                                       (##car _hd7721477224_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##null? _tl7722277250_))
                                    (let ((_id77253_ _hd7722177248_))
                                      (declare (not safe))
                                      (_K7722077245_ _id77253_))
                                    (let ()
                                      (declare (not safe))
                                      (_try-match7721677240_))))
                              (let ()
                                (declare (not safe))
                                (_try-match7721677240_))))))))
                 (_car-e77029_
                  (lambda (_hd77211_)
                    (if (let () (declare (not safe)) (pair? _hd77211_))
                        (car _hd77211_)
                        _hd77211_))))
          (let* ((_$e77031_ _stx77024_)
                 (_$E7703377176_
                  (lambda ()
                    (let ((_$E7703477056_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _$e77031_)))))
                      (if (let () (declare (not safe)) (__AST-pair? _$e77031_))
                          (let* ((_$tgt7703577059_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _$e77031_)))
                                 (_$hd7703677062_
                                  (let ()
                                    (declare (not safe))
                                    (##car _$tgt7703577059_)))
                                 (_$tl7703777065_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _$tgt7703577059_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7703777065_))
                                (let* ((_$tgt7703877069_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7703777065_)))
                                       (_$hd7703977072_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7703877069_)))
                                       (_$tl7704077075_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7703877069_))))
                                  (let ((_hd77079_ _$hd7703977072_))
                                    (if (let ()
                                          (declare (not safe))
                                          (__AST-pair? _$tl7704077075_))
                                        (let* ((_$tgt7704177081_
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _$tl7704077075_)))
                                               (_$hd7704277084_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _$tgt7704177081_)))
                                               (_$tl7704377087_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _$tgt7704177081_))))
                                          (let ((_body77091_ _$hd7704277084_))
                                            (if (let ((__tmp78223
                                                       (let ()
                                                         (declare (not safe))
                                                         (__AST-e _$tl7704377087_))))
                                                  (declare (not safe))
                                                  (equal? __tmp78223 '()))
                                                (let* ((_hd-ids77131_
                                                        (map (lambda (_bind77093_)
                                                               (let* ((_$e77095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind77093_)
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
                               (let ((_ids77119_ _$hd7709977112_))
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
                                       (if (let ((__tmp78221
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7710377127_))))
                                             (declare (not safe))
                                             (equal? __tmp78221 '()))
                                           _ids77119_
                                           (let ()
                                             (declare (not safe))
                                             (_$E7709777106_))))
                                     (let ()
                                       (declare (not safe))
                                       (_$E7709777106_)))))
                             (let () (declare (not safe)) (_$E7709777106_)))))
                     _hd77079_))
               (_exprs77171_
                (map (lambda (_bind77133_)
                       (let* ((_$e77135_ _bind77133_)
                              (_$E7713777146_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (__raise-syntax-error
                                    '#f
                                    '"Bad syntax; malformed ast clause"
                                    _$e77135_)))))
                         (if (let ()
                               (declare (not safe))
                               (__AST-pair? _$e77135_))
                             (let* ((_$tgt7713877149_
                                     (let ()
                                       (declare (not safe))
                                       (__AST-e _$e77135_)))
                                    (_$hd7713977152_
                                     (let ()
                                       (declare (not safe))
                                       (##car _$tgt7713877149_)))
                                    (_$tl7714077155_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _$tgt7713877149_))))
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-pair? _$tl7714077155_))
                                   (let* ((_$tgt7714177159_
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7714077155_)))
                                          (_$hd7714277162_
                                           (let ()
                                             (declare (not safe))
                                             (##car _$tgt7714177159_)))
                                          (_$tl7714377165_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _$tgt7714177159_))))
                                     (let ((_expr77169_ _$hd7714277162_))
                                       (if (let ((__tmp78222
                                                  (let ()
                                                    (declare (not safe))
                                                    (__AST-e _$tl7714377165_))))
                                             (declare (not safe))
                                             (equal? __tmp78222 '()))
                                           (let ()
                                             (declare (not safe))
                                             (__compile _expr77169_))
                                           (let ()
                                             (declare (not safe))
                                             (_$E7713777146_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_$E7713777146_))))
                             (let () (declare (not safe)) (_$E7713777146_)))))
                     _hd77079_))
               (_body77173_
                (let () (declare (not safe)) (__compile _body77091_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (andmap1 _simple-bind?77028_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd-ids77131_))
              (_compile-simple77025_
               (map _car-e77029_ _hd-ids77131_)
               _exprs77171_
               _body77173_)
              (_compile-values77026_ _hd-ids77131_ _exprs77171_ _body77173_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_$E7703477056_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7703477056_)))))
                                (let ()
                                  (declare (not safe))
                                  (_$E7703477056_))))
                          (let () (declare (not safe)) (_$E7703477056_)))))))
            (if (let () (declare (not safe)) (__AST-pair? _$e77031_))
                (let* ((_$tgt7704477179_
                        (let () (declare (not safe)) (__AST-e _$e77031_)))
                       (_$hd7704577182_
                        (let () (declare (not safe)) (##car _$tgt7704477179_)))
                       (_$tl7704677185_
                        (let ()
                          (declare (not safe))
                          (##cdr _$tgt7704477179_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _$tl7704677185_))
                      (let* ((_$tgt7704777189_
                              (let ()
                                (declare (not safe))
                                (__AST-e _$tl7704677185_)))
                             (_$hd7704877192_
                              (let ()
                                (declare (not safe))
                                (##car _$tgt7704777189_)))
                             (_$tl7704977195_
                              (let ()
                                (declare (not safe))
                                (##cdr _$tgt7704777189_))))
                        (if (let ((__tmp78225
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$hd7704877192_))))
                              (declare (not safe))
                              (equal? __tmp78225 '()))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _$tl7704977195_))
                                (let* ((_$tgt7705077199_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _$tl7704977195_)))
                                       (_$hd7705177202_
                                        (let ()
                                          (declare (not safe))
                                          (##car _$tgt7705077199_)))
                                       (_$tl7705277205_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _$tgt7705077199_))))
                                  (let ((_body77209_ _$hd7705177202_))
                                    (if (let ((__tmp78224
                                               (let ()
                                                 (declare (not safe))
                                                 (__AST-e _$tl7705277205_))))
                                          (declare (not safe))
                                          (equal? __tmp78224 '()))
                                        (let ()
                                          (declare (not safe))
                                          (__compile _body77209_))
                                        (let ()
                                          (declare (not safe))
                                          (_$E7703377176_)))))
                                (let () (declare (not safe)) (_$E7703377176_)))
                            (let () (declare (not safe)) (_$E7703377176_))))
                      (let () (declare (not safe)) (_$E7703377176_))))
                (let () (declare (not safe)) (_$E7703377176_)))))))
    (define __compile-let-values%
      (lambda (_stx76839_)
        (letrec ((_compile-simple76841_
                  (lambda (_hd-ids77020_ _exprs77021_ _body77022_)
                    (let ((__tmp78226
                           (let ((__tmp78227
                                  (let ((__tmp78229
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids77020_)
                                              _exprs77021_))
                                        (__tmp78228
                                         (let ()
                                           (declare (not safe))
                                           (cons _body77022_ '()))))
                                    (declare (not safe))
                                    (cons __tmp78229 __tmp78228))))
                             (declare (not safe))
                             (cons 'let __tmp78227))))
                      (declare (not safe))
                      (__SRC__% __tmp78226 _stx76839_))))
                 (_compile-values76842_
                  (lambda (_hd-ids76938_ _exprs76939_ _body76940_)
                    (let _lp76942_ ((_rest76944_ _hd-ids76938_)
                                    (_exprs76945_ _exprs76939_)
                                    (_bind76946_ '())
                                    (_post76947_ '()))
                      (let* ((_rest7694876962_ _rest76944_)
                             (_else7695176970_
                              (lambda ()
                                (let ((__tmp78230
                                       (let ((__tmp78231
                                              (let ((__tmp78234
                                                     (reverse _bind76946_))
                                                    (__tmp78232
                                                     (let ((__tmp78233
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (_compile-post76843_
                                                               _post76947_
                                                               _body76940_))))
                                                       (declare (not safe))
                                                       (cons __tmp78233 '()))))
                                                (declare (not safe))
                                                (cons __tmp78234 __tmp78232))))
                                         (declare (not safe))
                                         (cons 'let __tmp78231))))
                                  (declare (not safe))
                                  (__SRC__% __tmp78230 _stx76839_)))))
                        (let ((_K7695677003_
                               (lambda (_rest77000_ _id77001_)
                                 (let ((__tmp78240 (cdr _exprs76945_))
                                       (__tmp78235
                                        (let ((__tmp78236
                                               (let ((__tmp78239
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id77001_)))
                                                     (__tmp78237
                                                      (let ((__tmp78238
                                                             (car _exprs76945_)))
                                                        (declare (not safe))
                                                        (cons __tmp78238
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp78239
                                                       __tmp78237))))
                                          (declare (not safe))
                                          (cons __tmp78236 _bind76946_))))
                                   (declare (not safe))
                                   (_lp76942_
                                    _rest77000_
                                    __tmp78240
                                    __tmp78235
                                    _post76947_))))
                              (_K7695376985_
                               (lambda (_rest76974_ _hd76975_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76975_))
                                     (let ((__tmp78261 (cdr _exprs76945_))
                                           (__tmp78254
                                            (let ((__tmp78255
                                                   (let ((__tmp78260
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd76975_)))
                                                         (__tmp78256
                                                          (let ((__tmp78257
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp78258
                                (let ((__tmp78259 (car _exprs76945_)))
                                  (declare (not safe))
                                  (cons __tmp78259 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp78258))))
                    (declare (not safe))
                    (cons __tmp78257 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp78260
                                                           __tmp78256))))
                                              (declare (not safe))
                                              (cons __tmp78255 _bind76946_))))
                                       (declare (not safe))
                                       (_lp76942_
                                        _rest76974_
                                        __tmp78261
                                        __tmp78254
                                        _post76947_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd76975_))
                                         (let* ((_len76977_ (length _hd76975_))
                                                (_tmp76979_
                                                 (let ((__tmp78241 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp78241))))
                                           (let ((__tmp78253
                                                  (cdr _exprs76945_))
                                                 (__tmp78249
                                                  (let ((__tmp78250
                                                         (let ((__tmp78251
                                                                (let ((__tmp78252
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs76945_)))
                          (declare (not safe))
                          (cons __tmp78252 '()))))
                   (declare (not safe))
                   (cons _tmp76979_ __tmp78251))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78250
                                                          _bind76946_)))
                                                 (__tmp78242
                                                  (let ((__tmp78243
                                                         (let ((__tmp78244
                                                                (let ((__tmp78245
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp78247
                                      (lambda (_id76982_ _k76983_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id76982_))
                                            (let ((__tmp78248
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id76982_))))
                                              (declare (not safe))
                                              (cons __tmp78248 _k76983_))
                                            '#f)))
                                     (__tmp78246
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len76977_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp78247
                                  _hd76975_
                                  __tmp78246))))
                          (declare (not safe))
                          (cons _len76977_ __tmp78245))))
                   (declare (not safe))
                   (cons _tmp76979_ __tmp78244))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78243
                                                          _post76947_))))
                                             (declare (not safe))
                                             (_lp76942_
                                              _rest76974_
                                              __tmp78253
                                              __tmp78249
                                              __tmp78242)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx76839_
                                            _hd76975_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7694876962_))
                              (let ((_tl7695877008_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7694876962_)))
                                    (_hd7695777006_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7694876962_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7695777006_))
                                    (let ((_tl7696077013_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7695777006_)))
                                          (_hd7695977011_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7695777006_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7696077013_))
                                          (let ((_id77016_ _hd7695977011_)
                                                (_rest77018_ _tl7695877008_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7695677003_
                                               _rest77018_
                                               _id77016_)))
                                          (let ((_hd76993_ _hd7695777006_)
                                                (_rest76995_ _tl7695877008_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7695376985_
                                               _rest76995_
                                               _hd76993_)))))
                                    (let ((_hd76993_ _hd7695777006_)
                                          (_rest76995_ _tl7695877008_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7695376985_
                                         _rest76995_
                                         _hd76993_)))))
                              (let ()
                                (declare (not safe))
                                (_else7695176970_))))))))
                 (_compile-post76843_
                  (lambda (_post76845_ _body76846_)
                    (let _lp76848_ ((_rest76850_ _post76845_)
                                    (_check76851_ '())
                                    (_bind76852_ '()))
                      (let* ((_rest7685376865_ _rest76850_)
                             (_else7685576873_
                              (lambda ()
                                (let ((__tmp78262
                                       (let ((__tmp78263
                                              (let ((__tmp78264
                                                     (let ((__tmp78265
                                                            (let ((__tmp78266
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78267
                                  (let ((__tmp78268
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76846_ '()))))
                                    (declare (not safe))
                                    (cons _bind76852_ __tmp78268))))
                             (declare (not safe))
                             (cons 'let __tmp78267))))
                      (declare (not safe))
                      (__SRC__% __tmp78266 _stx76839_))))
               (declare (not safe))
               (cons __tmp78265 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp78264
                                                        _check76851_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp78263))))
                                  (declare (not safe))
                                  (__SRC__% __tmp78262 _stx76839_))))
                             (_K7685776912_
                              (lambda (_rest76876_
                                       _init76877_
                                       _len76878_
                                       _tmp76879_)
                                (let ((__tmp78276
                                       (let ((__tmp78277
                                              (let ((__tmp78278
                                                     (let ((__tmp78279
                                                            (let ((__tmp78280
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len76878_ '()))))
                      (declare (not safe))
                      (cons _tmp76879_ __tmp78280))))
               (declare (not safe))
               (cons '__check-values __tmp78279))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp78278
                                                 _stx76839_))))
                                         (declare (not safe))
                                         (cons __tmp78277 _check76851_)))
                                      (__tmp78269
                                       (let ((__tmp78270
                                              (lambda (_hd76881_ _r76882_)
                                                (let* ((_hd7688376890_
                                                        _hd76881_)
                                                       (_E7688576894_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7688376890_))))
               (_K7688676900_
                (lambda (_k76897_ _id76898_)
                  (let ((__tmp78271
                         (let ((__tmp78272
                                (let ((__tmp78273
                                       (let ((__tmp78274
                                              (let ((__tmp78275
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _k76897_ '()))))
                                                (declare (not safe))
                                                (cons _tmp76879_ __tmp78275))))
                                         (declare (not safe))
                                         (cons '##vector-ref __tmp78274))))
                                  (declare (not safe))
                                  (cons __tmp78273 '()))))
                           (declare (not safe))
                           (cons _id76898_ __tmp78272))))
                    (declare (not safe))
                    (cons __tmp78271 _r76882_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7688376890_))
                                                      (let ((_hd7688776903_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7688376890_)))
                    (_tl7688876905_
                     (let () (declare (not safe)) (##cdr _hd7688376890_))))
                (let* ((_id76908_ _hd7688776903_) (_k76910_ _tl7688876905_))
                  (declare (not safe))
                  (_K7688676900_ _k76910_ _id76908_)))
              (let () (declare (not safe)) (_E7688576894_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp78270
                                                 _bind76852_
                                                 _init76877_))))
                                  (declare (not safe))
                                  (_lp76848_
                                   _rest76876_
                                   __tmp78276
                                   __tmp78269)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7685376865_))
                            (let ((_hd7685876915_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7685376865_)))
                                  (_tl7685976917_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7685376865_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7685876915_))
                                  (let ((_hd7686076920_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7685876915_)))
                                        (_tl7686176922_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7685876915_))))
                                    (let ((_tmp76925_ _hd7686076920_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7686176922_))
                                          (let ((_hd7686276927_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7686176922_)))
                                                (_tl7686376929_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7686176922_))))
                                            (let* ((_len76932_ _hd7686276927_)
                                                   (_init76934_ _tl7686376929_)
                                                   (_rest76936_
                                                    _tl7685976917_))
                                              (declare (not safe))
                                              (_K7685776912_
                                               _rest76936_
                                               _init76934_
                                               _len76932_
                                               _tmp76925_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7685576873_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7685576873_))))
                            (let ()
                              (declare (not safe))
                              (_else7685576873_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76839_
             _compile-simple76841_
             _compile-values76842_)))))
    (define __compile-letrec-values%
      (lambda (_stx76639_)
        (letrec ((_compile-simple76641_
                  (lambda (_hd-ids76835_ _exprs76836_ _body76837_)
                    (let ((__tmp78281
                           (let ((__tmp78282
                                  (let ((__tmp78284
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76835_)
                                              _exprs76836_))
                                        (__tmp78283
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76837_ '()))))
                                    (declare (not safe))
                                    (cons __tmp78284 __tmp78283))))
                             (declare (not safe))
                             (cons 'letrec __tmp78282))))
                      (declare (not safe))
                      (__SRC__% __tmp78281 _stx76639_))))
                 (_compile-values76642_
                  (lambda (_hd-ids76749_ _exprs76750_ _body76751_)
                    (let _lp76753_ ((_rest76755_ _hd-ids76749_)
                                    (_exprs76756_ _exprs76750_)
                                    (_pre76757_ '())
                                    (_bind76758_ '())
                                    (_post76759_ '()))
                      (let* ((_rest7676076774_ _rest76755_)
                             (_else7676376782_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-inner76643_
                                   _pre76757_
                                   _bind76758_
                                   _post76759_
                                   _body76751_)))))
                        (let ((_K7676876818_
                               (lambda (_rest76815_ _id76816_)
                                 (let ((__tmp78290 (cdr _exprs76756_))
                                       (__tmp78285
                                        (let ((__tmp78286
                                               (let ((__tmp78289
                                                      (let ()
                                                        (declare (not safe))
                                                        (__compile-head-id
                                                         _id76816_)))
                                                     (__tmp78287
                                                      (let ((__tmp78288
                                                             (car _exprs76756_)))
                                                        (declare (not safe))
                                                        (cons __tmp78288
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons __tmp78289
                                                       __tmp78287))))
                                          (declare (not safe))
                                          (cons __tmp78286 _bind76758_))))
                                   (declare (not safe))
                                   (_lp76753_
                                    _rest76815_
                                    __tmp78290
                                    _pre76757_
                                    __tmp78285
                                    _post76759_))))
                              (_K7676576800_
                               (lambda (_rest76786_ _hd76787_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76787_))
                                     (let ((__tmp78318 (cdr _exprs76756_))
                                           (__tmp78311
                                            (let ((__tmp78312
                                                   (let ((__tmp78317
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (__compile-head-id
                                                             _hd76787_)))
                                                         (__tmp78313
                                                          (let ((__tmp78314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp78315
                                (let ((__tmp78316 (car _exprs76756_)))
                                  (declare (not safe))
                                  (cons __tmp78316 '()))))
                           (declare (not safe))
                           (cons 'values->list __tmp78315))))
                    (declare (not safe))
                    (cons __tmp78314 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp78317
                                                           __tmp78313))))
                                              (declare (not safe))
                                              (cons __tmp78312 _bind76758_))))
                                       (declare (not safe))
                                       (_lp76753_
                                        _rest76786_
                                        __tmp78318
                                        _pre76757_
                                        __tmp78311
                                        _post76759_))
                                     (if (let ()
                                           (declare (not safe))
                                           (list? _hd76787_))
                                         (let* ((_len76789_ (length _hd76787_))
                                                (_tmp76791_
                                                 (let ((__tmp78291 (gensym)))
                                                   (declare (not safe))
                                                   (__SRC__0 __tmp78291))))
                                           (let ((__tmp78310
                                                  (cdr _exprs76756_))
                                                 (__tmp78303
                                                  (let ((__tmp78304
                                                         (lambda (_id76794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _r76795_)
                   (if (let () (declare (not safe)) (__AST-e _id76794_))
                       (let ((__tmp78305
                              (let ((__tmp78309
                                     (let ()
                                       (declare (not safe))
                                       (__SRC__0 _id76794_)))
                                    (__tmp78306
                                     (let ((__tmp78307
                                            (let ((__tmp78308
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons '#!void '()))))
                                              (declare (not safe))
                                              (cons 'quote __tmp78308))))
                                       (declare (not safe))
                                       (cons __tmp78307 '()))))
                                (declare (not safe))
                                (cons __tmp78309 __tmp78306))))
                         (declare (not safe))
                         (cons __tmp78305 _r76795_))
                       _r76795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldl1 __tmp78304
                                                            _pre76757_
                                                            _hd76787_)))
                                                 (__tmp78299
                                                  (let ((__tmp78300
                                                         (let ((__tmp78301
                                                                (let ((__tmp78302
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (car _exprs76756_)))
                          (declare (not safe))
                          (cons __tmp78302 '()))))
                   (declare (not safe))
                   (cons _tmp76791_ __tmp78301))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78300
                                                          _bind76758_)))
                                                 (__tmp78292
                                                  (let ((__tmp78293
                                                         (let ((__tmp78294
                                                                (let ((__tmp78295
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp78297
                                      (lambda (_id76797_ _k76798_)
                                        (if (let ()
                                              (declare (not safe))
                                              (__AST-e _id76797_))
                                            (let ((__tmp78298
                                                   (let ()
                                                     (declare (not safe))
                                                     (__SRC__0 _id76797_))))
                                              (declare (not safe))
                                              (cons __tmp78298 _k76798_))
                                            '#f)))
                                     (__tmp78296
                                      (let ()
                                        (declare (not safe))
                                        (iota__0 _len76789_))))
                                 (declare (not safe))
                                 (filter-map2
                                  __tmp78297
                                  _hd76787_
                                  __tmp78296))))
                          (declare (not safe))
                          (cons _len76789_ __tmp78295))))
                   (declare (not safe))
                   (cons _tmp76791_ __tmp78294))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78293
                                                          _post76759_))))
                                             (declare (not safe))
                                             (_lp76753_
                                              _rest76786_
                                              __tmp78310
                                              __tmp78303
                                              __tmp78299
                                              __tmp78292)))
                                         (let ()
                                           (declare (not safe))
                                           (__compile-error__%
                                            _stx76639_
                                            _hd76787_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7676076774_))
                              (let ((_tl7677076823_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7676076774_)))
                                    (_hd7676976821_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7676076774_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7676976821_))
                                    (let ((_tl7677276828_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7676976821_)))
                                          (_hd7677176826_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7676976821_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7677276828_))
                                          (let ((_id76831_ _hd7677176826_)
                                                (_rest76833_ _tl7677076823_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7676876818_
                                               _rest76833_
                                               _id76831_)))
                                          (let ((_hd76808_ _hd7676976821_)
                                                (_rest76810_ _tl7677076823_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7676576800_
                                               _rest76810_
                                               _hd76808_)))))
                                    (let ((_hd76808_ _hd7676976821_)
                                          (_rest76810_ _tl7677076823_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7676576800_
                                         _rest76810_
                                         _hd76808_)))))
                              (let ()
                                (declare (not safe))
                                (_else7676376782_))))))))
                 (_compile-inner76643_
                  (lambda (_pre76744_ _bind76745_ _post76746_ _body76747_)
                    (if (let () (declare (not safe)) (null? _pre76744_))
                        (let ()
                          (declare (not safe))
                          (_compile-bind76644_
                           _bind76745_
                           _post76746_
                           _body76747_))
                        (let ((__tmp78319
                               (let ((__tmp78320
                                      (let ((__tmp78323 (reverse _pre76744_))
                                            (__tmp78321
                                             (let ((__tmp78322
                                                    (let ()
                                                      (declare (not safe))
                                                      (_compile-bind76644_
                                                       _bind76745_
                                                       _post76746_
                                                       _body76747_))))
                                               (declare (not safe))
                                               (cons __tmp78322 '()))))
                                        (declare (not safe))
                                        (cons __tmp78323 __tmp78321))))
                                 (declare (not safe))
                                 (cons 'let __tmp78320))))
                          (declare (not safe))
                          (__SRC__% __tmp78319 _stx76639_)))))
                 (_compile-bind76644_
                  (lambda (_bind76740_ _post76741_ _body76742_)
                    (let ((__tmp78324
                           (let ((__tmp78325
                                  (let ((__tmp78328 (reverse _bind76740_))
                                        (__tmp78326
                                         (let ((__tmp78327
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post76645_
                                                   _post76741_
                                                   _body76742_))))
                                           (declare (not safe))
                                           (cons __tmp78327 '()))))
                                    (declare (not safe))
                                    (cons __tmp78328 __tmp78326))))
                             (declare (not safe))
                             (cons 'letrec __tmp78325))))
                      (declare (not safe))
                      (__SRC__% __tmp78324 _stx76639_))))
                 (_compile-post76645_
                  (lambda (_post76647_ _body76648_)
                    (let _lp76650_ ((_rest76652_ _post76647_)
                                    (_check76653_ '())
                                    (_bind76654_ '()))
                      (let* ((_rest7665576667_ _rest76652_)
                             (_else7665776675_
                              (lambda ()
                                (let ((__tmp78329
                                       (let ((__tmp78330
                                              (let ((__tmp78331
                                                     (let ((__tmp78332
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _body76648_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (foldr1 cons __tmp78332 _bind76654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldr1 cons
                                                        __tmp78331
                                                        _check76653_))))
                                         (declare (not safe))
                                         (cons 'begin __tmp78330))))
                                  (declare (not safe))
                                  (__SRC__% __tmp78329 _stx76639_))))
                             (_K7665976714_
                              (lambda (_rest76678_
                                       _init76679_
                                       _len76680_
                                       _tmp76681_)
                                (let ((__tmp78341
                                       (let ((__tmp78342
                                              (let ((__tmp78343
                                                     (let ((__tmp78344
                                                            (let ((__tmp78345
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _len76680_ '()))))
                      (declare (not safe))
                      (cons _tmp76681_ __tmp78345))))
               (declare (not safe))
               (cons '__check-values __tmp78344))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__SRC__%
                                                 __tmp78343
                                                 _stx76639_))))
                                         (declare (not safe))
                                         (cons __tmp78342 _check76653_)))
                                      (__tmp78333
                                       (let ((__tmp78334
                                              (lambda (_hd76683_ _r76684_)
                                                (let* ((_hd7668576692_
                                                        _hd76683_)
                                                       (_E7668776696_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd7668576692_))))
               (_K7668876702_
                (lambda (_k76699_ _id76700_)
                  (let ((__tmp78335
                         (let ((__tmp78336
                                (let ((__tmp78337
                                       (let ((__tmp78338
                                              (let ((__tmp78339
                                                     (let ((__tmp78340
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _k76699_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons _tmp76681_ __tmp78340))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '##vector-ref
                                                      __tmp78339))))
                                         (declare (not safe))
                                         (cons __tmp78338 '()))))
                                  (declare (not safe))
                                  (cons _id76700_ __tmp78337))))
                           (declare (not safe))
                           (cons 'set! __tmp78336))))
                    (declare (not safe))
                    (cons __tmp78335 _r76684_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _hd7668576692_))
                                                      (let ((_hd7668976705_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _hd7668576692_)))
                    (_tl7669076707_
                     (let () (declare (not safe)) (##cdr _hd7668576692_))))
                (let* ((_id76710_ _hd7668976705_) (_k76712_ _tl7669076707_))
                  (declare (not safe))
                  (_K7668876702_ _k76712_ _id76710_)))
              (let () (declare (not safe)) (_E7668776696_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (foldr1 __tmp78334
                                                 _bind76654_
                                                 _init76679_))))
                                  (declare (not safe))
                                  (_lp76650_
                                   _rest76678_
                                   __tmp78341
                                   __tmp78333)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest7665576667_))
                            (let ((_hd7666076717_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest7665576667_)))
                                  (_tl7666176719_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest7665576667_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _hd7666076717_))
                                  (let ((_hd7666276722_
                                         (let ()
                                           (declare (not safe))
                                           (##car _hd7666076717_)))
                                        (_tl7666376724_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _hd7666076717_))))
                                    (let ((_tmp76727_ _hd7666276722_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl7666376724_))
                                          (let ((_hd7666476729_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _tl7666376724_)))
                                                (_tl7666576731_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl7666376724_))))
                                            (let* ((_len76734_ _hd7666476729_)
                                                   (_init76736_ _tl7666576731_)
                                                   (_rest76738_
                                                    _tl7666176719_))
                                              (declare (not safe))
                                              (_K7665976714_
                                               _rest76738_
                                               _init76736_
                                               _len76734_
                                               _tmp76727_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else7665776675_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_else7665776675_))))
                            (let ()
                              (declare (not safe))
                              (_else7665776675_))))))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76639_
             _compile-simple76641_
             _compile-values76642_)))))
    (define __compile-letrec*-values%
      (lambda (_stx76394_)
        (letrec ((_compile-simple76396_
                  (lambda (_hd-ids76635_ _exprs76636_ _body76637_)
                    (let ((__tmp78346
                           (let ((__tmp78347
                                  (let ((__tmp78349
                                         (map list
                                              (map __compile-head-id
                                                   _hd-ids76635_)
                                              _exprs76636_))
                                        (__tmp78348
                                         (let ()
                                           (declare (not safe))
                                           (cons _body76637_ '()))))
                                    (declare (not safe))
                                    (cons __tmp78349 __tmp78348))))
                             (declare (not safe))
                             (cons 'letrec* __tmp78347))))
                      (declare (not safe))
                      (__SRC__% __tmp78346 _stx76394_))))
                 (_compile-values76397_
                  (lambda (_hd-ids76546_ _exprs76547_ _body76548_)
                    (let _lp76550_ ((_rest76552_ _hd-ids76546_)
                                    (_exprs76553_ _exprs76547_)
                                    (_bind76554_ '())
                                    (_post76555_ '()))
                      (let* ((_rest7655676570_ _rest76552_)
                             (_else7655976578_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (_compile-bind76398_
                                   _bind76554_
                                   _post76555_
                                   _body76548_)))))
                        (let ((_K7656476618_
                               (lambda (_rest76613_ _hd76614_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76614_))
                                     (let ((_id76616_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd76614_))))
                                       (let ((__tmp78364 (cdr _exprs76553_))
                                             (__tmp78359
                                              (let ((__tmp78360
                                                     (let ((__tmp78361
                                                            (let ((__tmp78362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78363
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp78363))))
                      (declare (not safe))
                      (cons __tmp78362 '()))))
               (declare (not safe))
               (cons _id76616_ __tmp78361))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78360 _bind76554_)))
                                             (__tmp78355
                                              (let ((__tmp78356
                                                     (let ((__tmp78357
                                                            (let ((__tmp78358
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (car _exprs76553_)))
                      (declare (not safe))
                      (cons __tmp78358 '()))))
               (declare (not safe))
               (cons _id76616_ __tmp78357))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78356
                                                      _post76555_))))
                                         (declare (not safe))
                                         (_lp76550_
                                          _rest76613_
                                          __tmp78364
                                          __tmp78359
                                          __tmp78355)))
                                     (let ((__tmp78354 (cdr _exprs76553_))
                                           (__tmp78350
                                            (let ((__tmp78351
                                                   (let ((__tmp78352
                                                          (let ((__tmp78353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (car _exprs76553_)))
                    (declare (not safe))
                    (cons __tmp78353 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '#f __tmp78352))))
                                              (declare (not safe))
                                              (cons __tmp78351 _post76555_))))
                                       (declare (not safe))
                                       (_lp76550_
                                        _rest76613_
                                        __tmp78354
                                        _bind76554_
                                        __tmp78350)))))
                              (_K7656176598_
                               (lambda (_rest76582_ _hd76583_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _hd76583_))
                                     (let ((_id76585_
                                            (let ()
                                              (declare (not safe))
                                              (__SRC__0 _hd76583_))))
                                       (let ((__tmp78400 (cdr _exprs76553_))
                                             (__tmp78395
                                              (let ((__tmp78396
                                                     (let ((__tmp78397
                                                            (let ((__tmp78398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78399
                                  (let ()
                                    (declare (not safe))
                                    (cons '#!void '()))))
                             (declare (not safe))
                             (cons 'quote __tmp78399))))
                      (declare (not safe))
                      (cons __tmp78398 '()))))
               (declare (not safe))
               (cons _id76585_ __tmp78397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78396 _bind76554_)))
                                             (__tmp78389
                                              (let ((__tmp78390
                                                     (let ((__tmp78391
                                                            (let ((__tmp78392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78393
                                  (let ((__tmp78394 (car _exprs76553_)))
                                    (declare (not safe))
                                    (cons __tmp78394 '()))))
                             (declare (not safe))
                             (cons 'values->list __tmp78393))))
                      (declare (not safe))
                      (cons __tmp78392 '()))))
               (declare (not safe))
               (cons _id76585_ __tmp78391))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78390
                                                      _post76555_))))
                                         (declare (not safe))
                                         (_lp76550_
                                          _rest76582_
                                          __tmp78400
                                          __tmp78395
                                          __tmp78389)))
                                     (if (let ((__tmp78388
                                                (let ()
                                                  (declare (not safe))
                                                  (__AST-e _hd76583_))))
                                           (declare (not safe))
                                           (not __tmp78388))
                                         (let ((__tmp78387 (cdr _exprs76553_))
                                               (__tmp78383
                                                (let ((__tmp78384
                                                       (let ((__tmp78385
                                                              (let ((__tmp78386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (car _exprs76553_)))
                        (declare (not safe))
                        (cons __tmp78386 '()))))
                 (declare (not safe))
                 (cons '#f __tmp78385))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp78384
                                                        _post76555_))))
                                           (declare (not safe))
                                           (_lp76550_
                                            _rest76582_
                                            __tmp78387
                                            _bind76554_
                                            __tmp78383))
                                         (if (let ()
                                               (declare (not safe))
                                               (list? _hd76583_))
                                             (let* ((_len76587_
                                                     (length _hd76583_))
                                                    (_tmp76589_
                                                     (let ((__tmp78365
                                                            (gensym)))
                                                       (declare (not safe))
                                                       (__SRC__0 __tmp78365))))
                                               (let ((__tmp78382
                                                      (cdr _exprs76553_))
                                                     (__tmp78375
                                                      (let ((__tmp78376
                                                             (lambda (_id76592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _r76593_)
                       (if (let () (declare (not safe)) (__AST-e _id76592_))
                           (let ((__tmp78377
                                  (let ((__tmp78381
                                         (let ()
                                           (declare (not safe))
                                           (__SRC__0 _id76592_)))
                                        (__tmp78378
                                         (let ((__tmp78379
                                                (let ((__tmp78380
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons '#!void '()))))
                                                  (declare (not safe))
                                                  (cons 'quote __tmp78380))))
                                           (declare (not safe))
                                           (cons __tmp78379 '()))))
                                    (declare (not safe))
                                    (cons __tmp78381 __tmp78378))))
                             (declare (not safe))
                             (cons __tmp78377 _r76593_))
                           _r76593_))))
                (declare (not safe))
                (foldl1 __tmp78376 _bind76554_ _hd76583_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp78366
                                                      (let ((__tmp78367
                                                             (let ((__tmp78368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp78374 (car _exprs76553_))
                                  (__tmp78369
                                   (let ((__tmp78370
                                          (let ((__tmp78372
                                                 (lambda (_id76595_ _k76596_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (__AST-e _id76595_))
                                                       (let ((__tmp78373
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__SRC__0 _id76595_))))
                 (declare (not safe))
                 (cons __tmp78373 _k76596_))
               '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (__tmp78371
                                                 (let ()
                                                   (declare (not safe))
                                                   (iota__0 _len76587_))))
                                            (declare (not safe))
                                            (filter-map2
                                             __tmp78372
                                             _hd76583_
                                             __tmp78371))))
                                     (declare (not safe))
                                     (cons _len76587_ __tmp78370))))
                              (declare (not safe))
                              (cons __tmp78374 __tmp78369))))
                       (declare (not safe))
                       (cons _tmp76589_ __tmp78368))))
                (declare (not safe))
                (cons __tmp78367 _post76555_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (_lp76550_
                                                  _rest76582_
                                                  __tmp78382
                                                  __tmp78375
                                                  __tmp78366)))
                                             (let ()
                                               (declare (not safe))
                                               (__compile-error__%
                                                _stx76394_
                                                _hd76583_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest7655676570_))
                              (let ((_tl7656676623_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest7655676570_)))
                                    (_hd7656576621_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest7655676570_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7656576621_))
                                    (let ((_tl7656876628_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7656576621_)))
                                          (_hd7656776626_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7656576621_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl7656876628_))
                                          (let ((_hd76631_ _hd7656776626_)
                                                (_rest76633_ _tl7656676623_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7656476618_
                                               _rest76633_
                                               _hd76631_)))
                                          (let ((_hd76606_ _hd7656576621_)
                                                (_rest76608_ _tl7656676623_))
                                            (let ()
                                              (declare (not safe))
                                              (_K7656176598_
                                               _rest76608_
                                               _hd76606_)))))
                                    (let ((_hd76606_ _hd7656576621_)
                                          (_rest76608_ _tl7656676623_))
                                      (let ()
                                        (declare (not safe))
                                        (_K7656176598_
                                         _rest76608_
                                         _hd76606_)))))
                              (let ()
                                (declare (not safe))
                                (_else7655976578_))))))))
                 (_compile-bind76398_
                  (lambda (_bind76542_ _post76543_ _body76544_)
                    (let ((__tmp78401
                           (let ((__tmp78402
                                  (let ((__tmp78405 (reverse _bind76542_))
                                        (__tmp78403
                                         (let ((__tmp78404
                                                (let ()
                                                  (declare (not safe))
                                                  (_compile-post76399_
                                                   _post76543_
                                                   _body76544_))))
                                           (declare (not safe))
                                           (cons __tmp78404 '()))))
                                    (declare (not safe))
                                    (cons __tmp78405 __tmp78403))))
                             (declare (not safe))
                             (cons 'let __tmp78402))))
                      (declare (not safe))
                      (__SRC__% __tmp78401 _stx76394_))))
                 (_compile-post76399_
                  (lambda (_post76401_ _body76402_)
                    (let ((__tmp78406
                           (let ((__tmp78407
                                  (let ((__tmp78408
                                         (let ((__tmp78410
                                                (lambda (_hd76404_ _r76405_)
                                                  (let* ((_hd7640676429_
                                                          _hd76404_)
                                                         (_E7641076433_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd7640676429_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K7642376527_
                                                           (lambda (_expr76525_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _expr76525_ _r76405_))))
                  (_K7641876505_
                   (lambda (_expr76502_ _id76503_)
                     (let ((__tmp78411
                            (let ((__tmp78412
                                   (let ((__tmp78413
                                          (let ((__tmp78414
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _expr76502_ '()))))
                                            (declare (not safe))
                                            (cons _id76503_ __tmp78414))))
                                     (declare (not safe))
                                     (cons 'set! __tmp78413))))
                              (declare (not safe))
                              (__SRC__% __tmp78412 _stx76394_))))
                       (declare (not safe))
                       (cons __tmp78411 _r76405_))))
                  (_K7641176472_
                   (lambda (_init76437_ _len76438_ _expr76439_ _tmp76440_)
                     (let ((__tmp78415
                            (let ((__tmp78416
                                   (let ((__tmp78417
                                          (let ((__tmp78431
                                                 (let ((__tmp78432
                                                        (let ((__tmp78433
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _expr76439_ '()))))
                  (declare (not safe))
                  (cons _tmp76440_ __tmp78433))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp78432 '())))
                                                (__tmp78418
                                                 (let ((__tmp78427
                                                        (let ((__tmp78428
                                                               (let ((__tmp78429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp78430
                                     (let ()
                                       (declare (not safe))
                                       (cons _len76438_ '()))))
                                (declare (not safe))
                                (cons _tmp76440_ __tmp78430))))
                         (declare (not safe))
                         (cons '__check-values __tmp78429))))
                  (declare (not safe))
                  (__SRC__% __tmp78428 _stx76394_)))
               (__tmp78419
                (let ((__tmp78420
                       (map (lambda (_hd76442_)
                              (let* ((_hd7644376450_ _hd76442_)
                                     (_E7644576454_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (error '"No clause matching"
                                                 _hd7644376450_))))
                                     (_K7644676460_
                                      (lambda (_k76457_ _id76458_)
                                        (let ((__tmp78421
                                               (let ((__tmp78422
                                                      (let ((__tmp78423
                                                             (let ((__tmp78424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp78425
                                   (let ((__tmp78426
                                          (let ()
                                            (declare (not safe))
                                            (cons _k76457_ '()))))
                                     (declare (not safe))
                                     (cons _tmp76440_ __tmp78426))))
                              (declare (not safe))
                              (cons '##vector-ref __tmp78425))))
                       (declare (not safe))
                       (cons __tmp78424 '()))))
                (declare (not safe))
                (cons _id76458_ __tmp78423))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'set! __tmp78422))))
                                          (declare (not safe))
                                          (__SRC__% __tmp78421 _stx76394_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd7644376450_))
                                    (let ((_hd7644776463_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd7644376450_)))
                                          (_tl7644876465_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd7644376450_))))
                                      (let* ((_id76468_ _hd7644776463_)
                                             (_k76470_ _tl7644876465_))
                                        (declare (not safe))
                                        (_K7644676460_ _k76470_ _id76468_)))
                                    (let ()
                                      (declare (not safe))
                                      (_E7644576454_)))))
                            _init76437_)))
                  (declare (not safe))
                  (foldr1 cons '() __tmp78420))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp78427
                                                         __tmp78419))))
                                            (declare (not safe))
                                            (cons __tmp78431 __tmp78418))))
                                     (declare (not safe))
                                     (cons 'let __tmp78417))))
                              (declare (not safe))
                              (__SRC__% __tmp78416 _stx76394_))))
                       (declare (not safe))
                       (cons __tmp78415 _r76405_)))))
              (if (let () (declare (not safe)) (##pair? _hd7640676429_))
                  (let ((_tl7642576532_
                         (let () (declare (not safe)) (##cdr _hd7640676429_)))
                        (_hd7642476530_
                         (let () (declare (not safe)) (##car _hd7640676429_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd7642476530_ '#f))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7642576532_))
                            (let ((_tl7642776537_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7642576532_)))
                                  (_hd7642676535_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7642576532_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7642776537_))
                                  (let ((_expr76540_ _hd7642676535_))
                                    (declare (not safe))
                                    (_K7642376527_ _expr76540_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7642776537_))
                                      (let ((_tl7641776491_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7642776537_)))
                                            (_hd7641676489_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7642776537_))))
                                        (let ((_tmp76480_ _hd7642476530_)
                                              (_expr76487_ _hd7642676535_)
                                              (_len76494_ _hd7641676489_)
                                              (_init76496_ _tl7641776491_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7641176472_
                                             _init76496_
                                             _len76494_
                                             _expr76487_
                                             _tmp76480_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7641076433_)))))
                            (let () (declare (not safe)) (_E7641076433_)))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl7642576532_))
                            (let ((_tl7642276517_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl7642576532_)))
                                  (_hd7642176515_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl7642576532_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl7642276517_))
                                  (let ((_id76513_ _hd7642476530_)
                                        (_expr76520_ _hd7642176515_))
                                    (let ()
                                      (declare (not safe))
                                      (_K7641876505_ _expr76520_ _id76513_)))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl7642276517_))
                                      (let ((_tl7641776491_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl7642276517_)))
                                            (_hd7641676489_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl7642276517_))))
                                        (let ((_tmp76480_ _hd7642476530_)
                                              (_expr76487_ _hd7642176515_)
                                              (_len76494_ _hd7641676489_)
                                              (_init76496_ _tl7641776491_))
                                          (let ()
                                            (declare (not safe))
                                            (_K7641176472_
                                             _init76496_
                                             _len76494_
                                             _expr76487_
                                             _tmp76480_))))
                                      (let ()
                                        (declare (not safe))
                                        (_E7641076433_)))))
                            (let () (declare (not safe)) (_E7641076433_)))))
                  (let () (declare (not safe)) (_E7641076433_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp78409 (list _body76402_)))
                                           (declare (not safe))
                                           (foldl1 __tmp78410
                                                   __tmp78409
                                                   _post76401_))))
                                    (declare (not safe))
                                    (foldr1 cons '() __tmp78408))))
                             (declare (not safe))
                             (cons 'begin __tmp78407))))
                      (declare (not safe))
                      (__SRC__% __tmp78406 _stx76394_)))))
          (let ()
            (declare (not safe))
            (__compile-let-form
             _stx76394_
             _compile-simple76396_
             _compile-values76397_)))))
    (define __compile-call%
      (lambda (_stx76354_)
        (let* ((_$e76356_ _stx76354_)
               (_$E7635876367_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76356_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76356_))
              (let* ((_$tgt7635976370_
                      (let () (declare (not safe)) (__AST-e _$e76356_)))
                     (_$hd7636076373_
                      (let () (declare (not safe)) (##car _$tgt7635976370_)))
                     (_$tl7636176376_
                      (let () (declare (not safe)) (##cdr _$tgt7635976370_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7636176376_))
                    (let* ((_$tgt7636276380_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7636176376_)))
                           (_$hd7636376383_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7636276380_)))
                           (_$tl7636476386_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7636276380_))))
                      (let* ((_rator76390_ _$hd7636376383_)
                             (_rands76392_ _$tl7636476386_)
                             (__tmp78434
                              (let ((__tmp78436
                                     (let ()
                                       (declare (not safe))
                                       (__compile _rator76390_)))
                                    (__tmp78435 (map __compile _rands76392_)))
                                (declare (not safe))
                                (cons __tmp78436 __tmp78435))))
                        (declare (not safe))
                        (__SRC__% __tmp78434 _stx76354_)))
                    (let () (declare (not safe)) (_$E7635876367_))))
              (let () (declare (not safe)) (_$E7635876367_))))))
    (define __compile-ref%
      (lambda (_stx76316_)
        (let* ((_$e76318_ _stx76316_)
               (_$E7632076329_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76318_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76318_))
              (let* ((_$tgt7632176332_
                      (let () (declare (not safe)) (__AST-e _$e76318_)))
                     (_$hd7632276335_
                      (let () (declare (not safe)) (##car _$tgt7632176332_)))
                     (_$tl7632376338_
                      (let () (declare (not safe)) (##cdr _$tgt7632176332_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7632376338_))
                    (let* ((_$tgt7632476342_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7632376338_)))
                           (_$hd7632576345_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7632476342_)))
                           (_$tl7632676348_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7632476342_))))
                      (let ((_id76352_ _$hd7632576345_))
                        (if (let ((__tmp78437
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7632676348_))))
                              (declare (not safe))
                              (equal? __tmp78437 '()))
                            (let ()
                              (declare (not safe))
                              (__SRC__% _id76352_ _stx76316_))
                            (let () (declare (not safe)) (_$E7632076329_)))))
                    (let () (declare (not safe)) (_$E7632076329_))))
              (let () (declare (not safe)) (_$E7632076329_))))))
    (define __compile-setq%
      (lambda (_stx76263_)
        (let* ((_$e76265_ _stx76263_)
               (_$E7626776279_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76265_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76265_))
              (let* ((_$tgt7626876282_
                      (let () (declare (not safe)) (__AST-e _$e76265_)))
                     (_$hd7626976285_
                      (let () (declare (not safe)) (##car _$tgt7626876282_)))
                     (_$tl7627076288_
                      (let () (declare (not safe)) (##cdr _$tgt7626876282_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7627076288_))
                    (let* ((_$tgt7627176292_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7627076288_)))
                           (_$hd7627276295_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7627176292_)))
                           (_$tl7627376298_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7627176292_))))
                      (let ((_id76302_ _$hd7627276295_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7627376298_))
                            (let* ((_$tgt7627476304_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7627376298_)))
                                   (_$hd7627576307_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7627476304_)))
                                   (_$tl7627676310_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7627476304_))))
                              (let ((_expr76314_ _$hd7627576307_))
                                (if (let ((__tmp78443
                                           (let ()
                                             (declare (not safe))
                                             (__AST-e _$tl7627676310_))))
                                      (declare (not safe))
                                      (equal? __tmp78443 '()))
                                    (let ((__tmp78438
                                           (let ((__tmp78439
                                                  (let ((__tmp78442
                                                         (let ()
                                                           (declare (not safe))
                                                           (__SRC__%
                                                            _id76302_
                                                            _stx76263_)))
                                                        (__tmp78440
                                                         (let ((__tmp78441
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (__compile _expr76314_))))
                   (declare (not safe))
                   (cons __tmp78441 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78442
                                                          __tmp78440))))
                                             (declare (not safe))
                                             (cons 'set! __tmp78439))))
                                      (declare (not safe))
                                      (__SRC__% __tmp78438 _stx76263_))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7626776279_)))))
                            (let () (declare (not safe)) (_$E7626776279_)))))
                    (let () (declare (not safe)) (_$E7626776279_))))
              (let () (declare (not safe)) (_$E7626776279_))))))
    (define __compile-if%
      (lambda (_stx76195_)
        (let* ((_$e76197_ _stx76195_)
               (_$E7619976214_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76197_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76197_))
              (let* ((_$tgt7620076217_
                      (let () (declare (not safe)) (__AST-e _$e76197_)))
                     (_$hd7620176220_
                      (let () (declare (not safe)) (##car _$tgt7620076217_)))
                     (_$tl7620276223_
                      (let () (declare (not safe)) (##cdr _$tgt7620076217_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7620276223_))
                    (let* ((_$tgt7620376227_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7620276223_)))
                           (_$hd7620476230_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7620376227_)))
                           (_$tl7620576233_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7620376227_))))
                      (let ((_p76237_ _$hd7620476230_))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _$tl7620576233_))
                            (let* ((_$tgt7620676239_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _$tl7620576233_)))
                                   (_$hd7620776242_
                                    (let ()
                                      (declare (not safe))
                                      (##car _$tgt7620676239_)))
                                   (_$tl7620876245_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _$tgt7620676239_))))
                              (let ((_t76249_ _$hd7620776242_))
                                (if (let ()
                                      (declare (not safe))
                                      (__AST-pair? _$tl7620876245_))
                                    (let* ((_$tgt7620976251_
                                            (let ()
                                              (declare (not safe))
                                              (__AST-e _$tl7620876245_)))
                                           (_$hd7621076254_
                                            (let ()
                                              (declare (not safe))
                                              (##car _$tgt7620976251_)))
                                           (_$tl7621176257_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _$tgt7620976251_))))
                                      (let ((_f76261_ _$hd7621076254_))
                                        (if (let ((__tmp78451
                                                   (let ()
                                                     (declare (not safe))
                                                     (__AST-e _$tl7621176257_))))
                                              (declare (not safe))
                                              (equal? __tmp78451 '()))
                                            (let ((__tmp78444
                                                   (let ((__tmp78445
                                                          (let ((__tmp78450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (__compile _p76237_)))
                        (__tmp78446
                         (let ((__tmp78449
                                (let ()
                                  (declare (not safe))
                                  (__compile _t76249_)))
                               (__tmp78447
                                (let ((__tmp78448
                                       (let ()
                                         (declare (not safe))
                                         (__compile _f76261_))))
                                  (declare (not safe))
                                  (cons __tmp78448 '()))))
                           (declare (not safe))
                           (cons __tmp78449 __tmp78447))))
                    (declare (not safe))
                    (cons __tmp78450 __tmp78446))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons 'if __tmp78445))))
                                              (declare (not safe))
                                              (__SRC__% __tmp78444 _stx76195_))
                                            (let ()
                                              (declare (not safe))
                                              (_$E7619976214_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_$E7619976214_)))))
                            (let () (declare (not safe)) (_$E7619976214_)))))
                    (let () (declare (not safe)) (_$E7619976214_))))
              (let () (declare (not safe)) (_$E7619976214_))))))
    (define __compile-quote%
      (lambda (_stx76157_)
        (let* ((_$e76159_ _stx76157_)
               (_$E7616176170_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76159_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76159_))
              (let* ((_$tgt7616276173_
                      (let () (declare (not safe)) (__AST-e _$e76159_)))
                     (_$hd7616376176_
                      (let () (declare (not safe)) (##car _$tgt7616276173_)))
                     (_$tl7616476179_
                      (let () (declare (not safe)) (##cdr _$tgt7616276173_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7616476179_))
                    (let* ((_$tgt7616576183_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7616476179_)))
                           (_$hd7616676186_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7616576183_)))
                           (_$tl7616776189_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7616576183_))))
                      (let ((_e76193_ _$hd7616676186_))
                        (if (let ((__tmp78455
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7616776189_))))
                              (declare (not safe))
                              (equal? __tmp78455 '()))
                            (let ((__tmp78452
                                   (let ((__tmp78453
                                          (let ((__tmp78454
                                                 (let ()
                                                   (declare (not safe))
                                                   (__AST->datum _e76193_))))
                                            (declare (not safe))
                                            (cons __tmp78454 '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp78453))))
                              (declare (not safe))
                              (__SRC__% __tmp78452 _stx76157_))
                            (let () (declare (not safe)) (_$E7616176170_)))))
                    (let () (declare (not safe)) (_$E7616176170_))))
              (let () (declare (not safe)) (_$E7616176170_))))))
    (define __compile-quote-syntax%
      (lambda (_stx76119_)
        (let* ((_$e76121_ _stx76119_)
               (_$E7612376132_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _$e76121_)))))
          (if (let () (declare (not safe)) (__AST-pair? _$e76121_))
              (let* ((_$tgt7612476135_
                      (let () (declare (not safe)) (__AST-e _$e76121_)))
                     (_$hd7612576138_
                      (let () (declare (not safe)) (##car _$tgt7612476135_)))
                     (_$tl7612676141_
                      (let () (declare (not safe)) (##cdr _$tgt7612476135_))))
                (if (let () (declare (not safe)) (__AST-pair? _$tl7612676141_))
                    (let* ((_$tgt7612776145_
                            (let ()
                              (declare (not safe))
                              (__AST-e _$tl7612676141_)))
                           (_$hd7612876148_
                            (let ()
                              (declare (not safe))
                              (##car _$tgt7612776145_)))
                           (_$tl7612976151_
                            (let ()
                              (declare (not safe))
                              (##cdr _$tgt7612776145_))))
                      (let ((_e76155_ _$hd7612876148_))
                        (if (let ((__tmp78458
                                   (let ()
                                     (declare (not safe))
                                     (__AST-e _$tl7612976151_))))
                              (declare (not safe))
                              (equal? __tmp78458 '()))
                            (let ((__tmp78456
                                   (let ((__tmp78457
                                          (let ()
                                            (declare (not safe))
                                            (cons _e76155_ '()))))
                                     (declare (not safe))
                                     (cons 'quote __tmp78457))))
                              (declare (not safe))
                              (__SRC__% __tmp78456 _stx76119_))
                            (let () (declare (not safe)) (_$E7612376132_)))))
                    (let () (declare (not safe)) (_$E7612376132_))))
              (let () (declare (not safe)) (_$E7612376132_))))))
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
