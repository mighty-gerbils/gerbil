(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gxc#current-compile-optimizer-info (make-parameter '#f))
  (define gxc#current-compile-mutators (make-parameter '#f))
  (define gxc#current-compile-local-type (make-parameter '#f))
  (define gxc#optimizer-info::t
    (make-struct-type
     'gxc#optimizer-info::t
     '#f
     '2
     'optimizer-info
     '()
     ':init!
     '(type ssxi)))
  (define gxc#optimizer-info? (make-struct-predicate gxc#optimizer-info::t))
  (define gxc#make-optimizer-info
    (lambda _$args34757_
      (apply make-struct-instance gxc#optimizer-info::t _$args34757_)))
  (define gxc#optimizer-info-type
    (make-struct-field-accessor gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi
    (make-struct-field-accessor gxc#optimizer-info::t '1))
  (define gxc#optimizer-info-type-set!
    (make-struct-field-mutator gxc#optimizer-info::t '0))
  (define gxc#optimizer-info-ssxi-set!
    (make-struct-field-mutator gxc#optimizer-info::t '1))
  (define gxc#optimizer-info:::init!
    (lambda (_self34755_)
      (if (##fx< '2 (##vector-length _self34755_))
          (begin
            (##vector-set! _self34755_ '1 (make-hash-table-eq))
            (##vector-set! _self34755_ '2 (make-hash-table-eq)))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self34755_))))
  (bind-method! gxc#optimizer-info::t ':init! gxc#optimizer-info:::init! '#f)
  (define gxc#optimizer-info-init!
    (lambda ()
      (if (gxc#current-compile-optimizer-info)
          '#!void
          (gxc#current-compile-optimizer-info
           (let ((__obj34825 (make-object gxc#optimizer-info::t '2)))
             (begin (gxc#optimizer-info:::init! __obj34825) __obj34825))))))
  (define gxc#optimize!
    (lambda (_ctx34627_)
      (call-with-parameters
       (lambda ()
         (begin
           (gxc#optimizer-load-ssxi-deps _ctx34627_)
           (table-set!
            (##structure-ref
             (gxc#current-compile-optimizer-info)
             '2
             gxc#optimizer-info::t
             '#f)
            (##structure-ref _ctx34627_ '1 gx#expander-context::t '#f)
            '#t)
           (let ((_code34630_
                  (gxc#optimize-source
                   (##structure-ref _ctx34627_ '11 gx#module-context::t '#f))))
             (##structure-set!
              _ctx34627_
              _code34630_
              '11
              gx#module-context::t
              '#f))))
       gxc#current-compile-mutators
       (make-hash-table-eq)
       gxc#current-compile-local-type
       (make-hash-table-eq))))
  (define gxc#optimizer-load-ssxi-deps
    (lambda (_ctx34572_)
      (letrec* ((_deps34574_
                 (let* ((_imports34618_
                         (##structure-ref
                          _ctx34572_
                          '8
                          gx#module-context::t
                          '#f))
                        (_$e34620_ (gx#core-context-prelude__% _ctx34572_)))
                   (if _$e34620_
                       ((lambda (_g3462234624_)
                          (cons _g3462234624_ _imports34618_))
                        _$e34620_)
                       _imports34618_))))
        (let _lp34576_ ((_rest34578_ _deps34574_))
          (let* ((_rest3457934587_ _rest34578_)
                 (_else3458134595_ (lambda () '#!void))
                 (_K3458334606_
                  (lambda (_rest34598_ _hd34599_)
                    (if (##structure-instance-of?
                         _hd34599_
                         'gx#module-context::t)
                        (begin
                          (if (table-ref
                               (##structure-ref
                                (gxc#current-compile-optimizer-info)
                                '2
                                gxc#optimizer-info::t
                                '#f)
                               (##structure-ref
                                _hd34599_
                                '1
                                gx#expander-context::t
                                '#f)
                               '#f)
                              '#!void
                              (begin
                                (let ((_$e34601_
                                       (gx#core-context-prelude__% _hd34599_)))
                                  (if _$e34601_
                                      ((lambda (_pre34604_)
                                         (_lp34576_
                                          (cons _pre34604_
                                                (##structure-ref
                                                 _hd34599_
                                                 '8
                                                 gx#module-context::t
                                                 '#f))))
                                       _$e34601_)
                                      (_lp34576_
                                       (##structure-ref
                                        _hd34599_
                                        '8
                                        gx#module-context::t
                                        '#f))))
                                (gxc#optimizer-load-ssxi _hd34599_)))
                          (_lp34576_ _rest34598_))
                        (if (##structure-instance-of?
                             _hd34599_
                             'gx#prelude-context::t)
                            (begin
                              (if (table-ref
                                   (##structure-ref
                                    (gxc#current-compile-optimizer-info)
                                    '2
                                    gxc#optimizer-info::t
                                    '#f)
                                   (##structure-ref
                                    _hd34599_
                                    '1
                                    gx#expander-context::t
                                    '#f)
                                   '#f)
                                  '#!void
                                  (begin
                                    (_lp34576_
                                     (##structure-ref
                                      _hd34599_
                                      '7
                                      gx#prelude-context::t
                                      '#f))
                                    (gxc#optimizer-load-ssxi _hd34599_)))
                              (_lp34576_ _rest34598_))
                            (if (##structure-direct-instance-of?
                                 _hd34599_
                                 'gx#module-import::t)
                                (_lp34576_
                                 (cons (##direct-structure-ref
                                        _hd34599_
                                        '1
                                        gx#module-import::t
                                        '#f)
                                       _rest34598_))
                                (if (##structure-direct-instance-of?
                                     _hd34599_
                                     'gx#module-export::t)
                                    (_lp34576_
                                     (cons (##direct-structure-ref
                                            _hd34599_
                                            '1
                                            gx#module-export::t
                                            '#f)
                                           _rest34598_))
                                    (if (##structure-direct-instance-of?
                                         _hd34599_
                                         'gx#import-set::t)
                                        (_lp34576_
                                         (cons (##direct-structure-ref
                                                _hd34599_
                                                '1
                                                gx#import-set::t
                                                '#f)
                                               _rest34598_))
                                        (error '"Unexpected module import"
                                               _hd34599_)))))))))
            (if (##pair? _rest3457934587_)
                (let ((_hd3458434609_ (##car _rest3457934587_))
                      (_tl3458534611_ (##cdr _rest3457934587_)))
                  (let* ((_hd34614_ _hd3458434609_)
                         (_rest34616_ _tl3458534611_))
                    (_K3458334606_ _rest34616_ _hd34614_)))
                (_else3458134595_)))))))
  (define gxc#optimizer-load-ssxi
    (lambda (_ctx34552_)
      (if (if (##structure-instance-of? _ctx34552_ 'gx#module-context::t)
              (list? (##structure-ref _ctx34552_ '7 gx#module-context::t '#f))
              '#f)
          '#!void
          (let* ((_ht34554_
                  (##structure-ref
                   (gxc#current-compile-optimizer-info)
                   '2
                   gxc#optimizer-info::t
                   '#f))
                 (_id34556_
                  (##structure-ref _ctx34552_ '1 gx#expander-context::t '#f))
                 (_mod34558_ (table-ref _ht34554_ _id34556_ '#f)))
            (let ((_$e34561_ _mod34558_))
              (if _$e34561_
                  _$e34561_
                  (let* ((_mod34564_ (gxc#optimizer-import-ssxi _ctx34552_))
                         (_val34569_
                          (let ((_$e34566_ _mod34564_))
                            (if _$e34566_ _$e34566_ '#!void))))
                    (begin
                      (table-set! _ht34554_ _id34556_ _val34569_)
                      _val34569_))))))))
  (define gxc#optimizer-import-ssxi
    (lambda (_ctx34529_)
      (letrec ((_catch-e34531_
                (lambda (_exn34550_)
                  (begin
                    (if (gxc#current-compile-verbose)
                        (begin
                          (displayln
                           '"Failed to load ssxi module for "
                           (##structure-ref
                            _ctx34529_
                            '1
                            gx#expander-context::t
                            '#f))
                          (display-exception _exn34550_))
                        '#!void)
                    '#f)))
               (_import-e34532_
                (lambda ()
                  (let* ((_str-id34535_
                          (string-append
                           (gxc#module-id->path-string
                            (##structure-ref
                             _ctx34529_
                             '1
                             gx#expander-context::t
                             '#f))
                           '".ssxi"))
                         (_artefact-path34543_
                          (let ((_odir3453634538_
                                 (gxc#current-compile-output-dir)))
                            (if _odir3453634538_
                                (let ((_odir34541_ _odir3453634538_))
                                  (path-expand
                                   (string-append _str-id34535_ '".ss")
                                   _odir34541_))
                                '#f)))
                         (_library-path34545_
                          (string->symbol
                           (string-append '":" _str-id34535_ '".ss")))
                         (_ssxi-path34547_
                          (if (if _artefact-path34543_
                                  (file-exists? _artefact-path34543_)
                                  '#f)
                              _artefact-path34543_
                              _library-path34545_)))
                    (begin
                      (gxc#verbose '"Loading ssxi module " _ssxi-path34547_)
                      (gx#import-module__% _ssxi-path34547_ '#t '#t))))))
        (if (##structure-ref _ctx34529_ '1 gx#expander-context::t '#f)
            (with-exception-catcher _catch-e34531_ _import-e34532_)
            '#f))))
  (define gxc#!type::t
    (make-struct-type 'gxc#!type::t '#f '1 '!type '() '#f '(id)))
  (define gxc#!type? (make-struct-predicate gxc#!type::t))
  (define gxc#make-!type
    (lambda _$args34526_
      (apply make-struct-instance gxc#!type::t _$args34526_)))
  (define gxc#!type-id (make-struct-field-accessor gxc#!type::t '0))
  (define gxc#!type-id-set! (make-struct-field-mutator gxc#!type::t '0))
  (define gxc#!alias::t
    (make-struct-type 'gxc#!alias::t gxc#!type::t '0 '!alias '() '#f '()))
  (define gxc#!alias? (make-struct-predicate gxc#!alias::t))
  (define gxc#make-!alias
    (lambda _$args34523_
      (apply make-struct-instance gxc#!alias::t _$args34523_)))
  (define gxc#!struct-type::t
    (make-struct-type
     'gxc#!struct-type::t
     gxc#!type::t
     '6
     '!struct-type
     '()
     ':init!
     '(super fields xfields ctor plist methods)))
  (define gxc#!struct-type? (make-struct-predicate gxc#!struct-type::t))
  (define gxc#make-!struct-type
    (lambda _$args34520_
      (apply make-struct-instance gxc#!struct-type::t _$args34520_)))
  (define gxc#!struct-type-super
    (make-struct-field-accessor gxc#!struct-type::t '0))
  (define gxc#!struct-type-fields
    (make-struct-field-accessor gxc#!struct-type::t '1))
  (define gxc#!struct-type-xfields
    (make-struct-field-accessor gxc#!struct-type::t '2))
  (define gxc#!struct-type-ctor
    (make-struct-field-accessor gxc#!struct-type::t '3))
  (define gxc#!struct-type-plist
    (make-struct-field-accessor gxc#!struct-type::t '4))
  (define gxc#!struct-type-methods
    (make-struct-field-accessor gxc#!struct-type::t '5))
  (define gxc#!struct-type-super-set!
    (make-struct-field-mutator gxc#!struct-type::t '0))
  (define gxc#!struct-type-fields-set!
    (make-struct-field-mutator gxc#!struct-type::t '1))
  (define gxc#!struct-type-xfields-set!
    (make-struct-field-mutator gxc#!struct-type::t '2))
  (define gxc#!struct-type-ctor-set!
    (make-struct-field-mutator gxc#!struct-type::t '3))
  (define gxc#!struct-type-plist-set!
    (make-struct-field-mutator gxc#!struct-type::t '4))
  (define gxc#!struct-type-methods-set!
    (make-struct-field-mutator gxc#!struct-type::t '5))
  (define gxc#!procedure::t
    (make-struct-type
     'gxc#!procedure::t
     gxc#!type::t
     '0
     '!procedure
     '()
     '#f
     '()))
  (define gxc#!procedure? (make-struct-predicate gxc#!procedure::t))
  (define gxc#make-!procedure
    (lambda _$args34517_
      (apply make-struct-instance gxc#!procedure::t _$args34517_)))
  (define gxc#!struct-pred::t
    (make-struct-type
     'gxc#!struct-pred::t
     gxc#!procedure::t
     '0
     '!struct-pred
     '()
     '#f
     '()))
  (define gxc#!struct-pred? (make-struct-predicate gxc#!struct-pred::t))
  (define gxc#make-!struct-pred
    (lambda _$args34514_
      (apply make-struct-instance gxc#!struct-pred::t _$args34514_)))
  (define gxc#!struct-cons::t
    (make-struct-type
     'gxc#!struct-cons::t
     gxc#!procedure::t
     '0
     '!struct-cons
     '()
     '#f
     '()))
  (define gxc#!struct-cons? (make-struct-predicate gxc#!struct-cons::t))
  (define gxc#make-!struct-cons
    (lambda _$args34511_
      (apply make-struct-instance gxc#!struct-cons::t _$args34511_)))
  (define gxc#!struct-getf::t
    (make-struct-type
     'gxc#!struct-getf::t
     gxc#!procedure::t
     '2
     '!struct-getf
     '()
     '#f
     '(off unchecked?)))
  (define gxc#!struct-getf? (make-struct-predicate gxc#!struct-getf::t))
  (define gxc#make-!struct-getf
    (lambda _$args34508_
      (apply make-struct-instance gxc#!struct-getf::t _$args34508_)))
  (define gxc#!struct-getf-off
    (make-struct-field-accessor gxc#!struct-getf::t '0))
  (define gxc#!struct-getf-unchecked?
    (make-struct-field-accessor gxc#!struct-getf::t '1))
  (define gxc#!struct-getf-off-set!
    (make-struct-field-mutator gxc#!struct-getf::t '0))
  (define gxc#!struct-getf-unchecked?-set!
    (make-struct-field-mutator gxc#!struct-getf::t '1))
  (define gxc#!struct-setf::t
    (make-struct-type
     'gxc#!struct-setf::t
     gxc#!procedure::t
     '2
     '!struct-setf
     '()
     '#f
     '(off unchecked?)))
  (define gxc#!struct-setf? (make-struct-predicate gxc#!struct-setf::t))
  (define gxc#make-!struct-setf
    (lambda _$args34505_
      (apply make-struct-instance gxc#!struct-setf::t _$args34505_)))
  (define gxc#!struct-setf-off
    (make-struct-field-accessor gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-unchecked?
    (make-struct-field-accessor gxc#!struct-setf::t '1))
  (define gxc#!struct-setf-off-set!
    (make-struct-field-mutator gxc#!struct-setf::t '0))
  (define gxc#!struct-setf-unchecked?-set!
    (make-struct-field-mutator gxc#!struct-setf::t '1))
  (define gxc#!lambda::t
    (make-struct-type
     'gxc#!lambda::t
     gxc#!procedure::t
     '4
     '!lambda
     '()
     ':init!
     '(arity dispatch inline inline-typedecl)))
  (define gxc#!lambda? (make-struct-predicate gxc#!lambda::t))
  (define gxc#make-!lambda
    (lambda _$args34502_
      (apply make-struct-instance gxc#!lambda::t _$args34502_)))
  (define gxc#!lambda-arity (make-struct-field-accessor gxc#!lambda::t '0))
  (define gxc#!lambda-dispatch (make-struct-field-accessor gxc#!lambda::t '1))
  (define gxc#!lambda-inline (make-struct-field-accessor gxc#!lambda::t '2))
  (define gxc#!lambda-inline-typedecl
    (make-struct-field-accessor gxc#!lambda::t '3))
  (define gxc#!lambda-arity-set! (make-struct-field-mutator gxc#!lambda::t '0))
  (define gxc#!lambda-dispatch-set!
    (make-struct-field-mutator gxc#!lambda::t '1))
  (define gxc#!lambda-inline-set!
    (make-struct-field-mutator gxc#!lambda::t '2))
  (define gxc#!lambda-inline-typedecl-set!
    (make-struct-field-mutator gxc#!lambda::t '3))
  (define gxc#!case-lambda::t
    (make-struct-type
     'gxc#!case-lambda::t
     gxc#!procedure::t
     '1
     '!case-lambda
     '()
     '#f
     '(clauses)))
  (define gxc#!case-lambda? (make-struct-predicate gxc#!case-lambda::t))
  (define gxc#make-!case-lambda
    (lambda _$args34499_
      (apply make-struct-instance gxc#!case-lambda::t _$args34499_)))
  (define gxc#!case-lambda-clauses
    (make-struct-field-accessor gxc#!case-lambda::t '0))
  (define gxc#!case-lambda-clauses-set!
    (make-struct-field-mutator gxc#!case-lambda::t '0))
  (define gxc#!kw-lambda::t
    (make-struct-type
     'gxc#!kw-lambda::t
     gxc#!procedure::t
     '2
     '!kw-lambda
     '()
     '#f
     '(table dispatch)))
  (define gxc#!kw-lambda? (make-struct-predicate gxc#!kw-lambda::t))
  (define gxc#make-!kw-lambda
    (lambda _$args34496_
      (apply make-struct-instance gxc#!kw-lambda::t _$args34496_)))
  (define gxc#!kw-lambda-table
    (make-struct-field-accessor gxc#!kw-lambda::t '0))
  (define gxc#!kw-lambda-dispatch
    (make-struct-field-accessor gxc#!kw-lambda::t '1))
  (define gxc#!kw-lambda-table-set!
    (make-struct-field-mutator gxc#!kw-lambda::t '0))
  (define gxc#!kw-lambda-dispatch-set!
    (make-struct-field-mutator gxc#!kw-lambda::t '1))
  (define gxc#!kw-lambda-primary::t
    (make-struct-type
     'gxc#!kw-lambda-primary::t
     gxc#!procedure::t
     '2
     '!kw-lambda-primary
     '()
     '#f
     '(keys main)))
  (define gxc#!kw-lambda-primary?
    (make-struct-predicate gxc#!kw-lambda-primary::t))
  (define gxc#make-!kw-lambda-primary
    (lambda _$args34493_
      (apply make-struct-instance gxc#!kw-lambda-primary::t _$args34493_)))
  (define gxc#!kw-lambda-primary-keys
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main
    (make-struct-field-accessor gxc#!kw-lambda-primary::t '1))
  (define gxc#!kw-lambda-primary-keys-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '0))
  (define gxc#!kw-lambda-primary-main-set!
    (make-struct-field-mutator gxc#!kw-lambda-primary::t '1))
  (define gxc#!struct-type:::init!
    (lambda (_self34485_
             _id34486_
             _super34487_
             _fields34488_
             _xfields34489_
             _ctor34490_
             _plist34491_)
      (if (##fx< '7 (##vector-length _self34485_))
          (begin
            (##vector-set! _self34485_ '1 _id34486_)
            (##vector-set! _self34485_ '2 _super34487_)
            (##vector-set! _self34485_ '3 _fields34488_)
            (##vector-set! _self34485_ '4 _xfields34489_)
            (##vector-set! _self34485_ '5 _ctor34490_)
            (##vector-set! _self34485_ '6 _plist34491_)
            (##vector-set! _self34485_ '7 '#f))
          (error '"struct-instance-init!: too many arguments for struct"
                 _self34485_))))
  (bind-method! gxc#!struct-type::t ':init! gxc#!struct-type:::init! '#f)
  (begin
    (define gxc#!lambda:::init!__%
      (lambda (_self34329_
               _id34330_
               _arity34331_
               _dispatch34332_
               _inline34333_
               _typedecl34334_)
        (if (##fx< '5 (##vector-length _self34329_))
            (begin
              (##vector-set! _self34329_ '1 _id34330_)
              (##vector-set! _self34329_ '2 _arity34331_)
              (##vector-set! _self34329_ '3 _dispatch34332_)
              (##vector-set! _self34329_ '4 _inline34333_)
              (##vector-set! _self34329_ '5 _typedecl34334_))
            (error '"struct-instance-init!: too many arguments for struct"
                   _self34329_))))
    (begin
      (define gxc#!lambda:::init!__0
        (lambda (_self34339_ _id34340_ _arity34341_ _dispatch34342_)
          (let* ((_inline34344_ '#f) (_typedecl34346_ '#f))
            (if (##fx< '5 (##vector-length _self34339_))
                (begin
                  (##vector-set! _self34339_ '1 _id34340_)
                  (##vector-set! _self34339_ '2 _arity34341_)
                  (##vector-set! _self34339_ '3 _dispatch34342_)
                  (##vector-set! _self34339_ '4 _inline34344_)
                  (##vector-set! _self34339_ '5 _typedecl34346_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self34339_)))))
      (define gxc#!lambda:::init!__1
        (lambda (_self34348_
                 _id34349_
                 _arity34350_
                 _dispatch34351_
                 _inline34352_)
          (let ((_typedecl34354_ '#f))
            (if (##fx< '5 (##vector-length _self34348_))
                (begin
                  (##vector-set! _self34348_ '1 _id34349_)
                  (##vector-set! _self34348_ '2 _arity34350_)
                  (##vector-set! _self34348_ '3 _dispatch34351_)
                  (##vector-set! _self34348_ '4 _inline34352_)
                  (##vector-set! _self34348_ '5 _typedecl34354_))
                (error '"struct-instance-init!: too many arguments for struct"
                       _self34348_)))))
      (define gxc#!lambda:::init!
        (lambda _g34834_
          (let ((_g34833_ (length _g34834_)))
            (cond ((##fx= _g34833_ 4) (apply gxc#!lambda:::init!__0 _g34834_))
                  ((##fx= _g34833_ 5) (apply gxc#!lambda:::init!__1 _g34834_))
                  ((##fx= _g34833_ 6)
                   (apply (lambda (_self34356_
                                   _id34357_
                                   _arity34358_
                                   _dispatch34359_
                                   _inline34360_
                                   _typedecl34361_)
                            (if (##fx< '5 (##vector-length _self34356_))
                                (begin
                                  (##vector-set! _self34356_ '1 _id34357_)
                                  (##vector-set! _self34356_ '2 _arity34358_)
                                  (##vector-set!
                                   _self34356_
                                   '3
                                   _dispatch34359_)
                                  (##vector-set! _self34356_ '4 _inline34360_)
                                  (##vector-set!
                                   _self34356_
                                   '5
                                   _typedecl34361_))
                                (error '"struct-instance-init!: too many arguments for struct"
                                       _self34356_)))
                          _g34834_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#!lambda:::init!
                    _g34834_))))))))
  (bind-method! gxc#!lambda::t ':init! gxc#!lambda:::init! '#f)
  (define gxc#!struct-type-vtab
    (lambda (_type34199_)
      (let ((_$e34201_
             (##structure-ref _type34199_ '7 gxc#!struct-type::t '#f)))
        (if _$e34201_
            (values _$e34201_)
            (let ((_vtab34204_ (make-hash-table-eq)))
              (begin
                (##structure-set!
                 _type34199_
                 _vtab34204_
                 '7
                 gxc#!struct-type::t
                 '#f)
                _vtab34204_))))))
  (define gxc#!struct-type-lookup-method
    (lambda (_type34190_ _method34191_)
      (let ((_vtab3419234194_
             (##structure-ref _type34190_ '7 gxc#!struct-type::t '#f)))
        (if _vtab3419234194_
            (let ((_vtab34197_ _vtab3419234194_))
              (table-ref _vtab34197_ _method34191_ '#f))
            '#f))))
  (begin
    (define gxc#optimizer-declare-type!__%
      (lambda (_sym34174_ _type34175_ _local?34176_)
        (begin
          (if (##structure-instance-of? _type34175_ 'gxc#!type::t)
              '#!void
              (error '"bad declaration: expected !type"
                     _sym34174_
                     _type34175_))
          (gxc#verbose
           '"declare-type "
           _sym34174_
           '" "
           (struct->list _type34175_))
          (table-set!
           (if _local?34176_
               (gxc#current-compile-local-type)
               (##structure-ref
                (gxc#current-compile-optimizer-info)
                '1
                gxc#optimizer-info::t
                '#f))
           _sym34174_
           _type34175_))))
    (begin
      (define gxc#optimizer-declare-type!__0
        (lambda (_sym34181_ _type34182_)
          (let ((_local?34184_ '#f))
            (gxc#optimizer-declare-type!__%
             _sym34181_
             _type34182_
             _local?34184_))))
      (define gxc#optimizer-declare-type!
        (lambda _g34836_
          (let ((_g34835_ (length _g34836_)))
            (cond ((##fx= _g34835_ 2)
                   (apply gxc#optimizer-declare-type!__0 _g34836_))
                  ((##fx= _g34835_ 3)
                   (apply gxc#optimizer-declare-type!__% _g34836_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-type!
                    _g34836_))))))))
  (begin
    (define gxc#optimizer-declare-method!__%
      (lambda (_type-t34150_ _method34151_ _sym34152_ _rebind?34153_)
        (let ((_type34155_ (gxc#optimizer-resolve-type _type-t34150_)))
          (if (##structure-instance-of? _type34155_ 'gxc#!struct-type::t)
              (let ((_vtab34157_ (gxc#!struct-type-vtab _type34155_)))
                (if _rebind?34153_
                    (if (hash-key? _vtab34157_ _method34151_)
                        (gxc#verbose
                         '"declare-method: [warning] skip rebind on existing method"
                         _type-t34150_
                         '" "
                         _method34151_)
                        (gxc#verbose
                         '"declare-method: skip rebind method "
                         _type-t34150_
                         '" "
                         _method34151_))
                    (if (hash-key? _vtab34157_ _method34151_)
                        (error '"declare-method: duplicate method declaration")
                        (begin
                          (gxc#verbose
                           '"declare-method "
                           _type-t34150_
                           '" "
                           _method34151_
                           '" => "
                           _sym34152_)
                          (table-set! _vtab34157_ _method34151_ _sym34152_)))))
              (if (not _type34155_)
                  (gxc#verbose '"declare-method: unknown type " _type-t34150_)
                  (error '"declare-method: bad method declaration; no method table"
                         _type-t34150_
                         _type34155_))))))
    (begin
      (define gxc#optimizer-declare-method!__0
        (lambda (_type-t34162_ _method34163_ _sym34164_)
          (let ((_rebind?34166_ '#f))
            (gxc#optimizer-declare-method!__%
             _type-t34162_
             _method34163_
             _sym34164_
             _rebind?34166_))))
      (define gxc#optimizer-declare-method!
        (lambda _g34838_
          (let ((_g34837_ (length _g34838_)))
            (cond ((##fx= _g34837_ 3)
                   (apply gxc#optimizer-declare-method!__0 _g34838_))
                  ((##fx= _g34837_ 4)
                   (apply gxc#optimizer-declare-method!__% _g34838_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#optimizer-declare-method!
                    _g34838_))))))))
  (define gxc#optimizer-lookup-type
    (lambda (_sym34138_)
      (let ((_$e34146_
             (let ((_ht3413934141_ (gxc#current-compile-local-type)))
               (if _ht3413934141_
                   (let ((_ht34144_ _ht3413934141_))
                     (table-ref _ht34144_ _sym34138_ '#f))
                   '#f))))
        (if _$e34146_
            _$e34146_
            (table-ref
             (##structure-ref
              (gxc#current-compile-optimizer-info)
              '1
              gxc#optimizer-info::t
              '#f)
             _sym34138_
             '#f)))))
  (define gxc#optimizer-resolve-type
    (lambda (_sym34130_)
      (let ((_type3413134133_ (gxc#optimizer-lookup-type _sym34130_)))
        (if _type3413134133_
            (let ((_type34136_ _type3413134133_))
              (if (##structure-instance-of? _type34136_ 'gxc#!alias::t)
                  (gxc#optimizer-resolve-type
                   (##structure-ref _type34136_ '1 gxc#!type::t '#f))
                  _type34136_))
            '#f))))
  (define gxc#optimizer-lookup-method
    (lambda (_type-t34125_ _method34126_)
      (let ((_type34128_ (gxc#optimizer-resolve-type _type-t34125_)))
        (if (##structure-instance-of? _type34128_ 'gxc#!struct-type::t)
            (gxc#!struct-type-lookup-method _type34128_ _method34126_)
            '#f))))
  (define gxc#optimize-source
    (lambda (_stx34119_)
      (begin
        (gxc#apply-collect-mutators _stx34119_)
        (let ((_stx34121_ (gxc#apply-lift-top-lambdas _stx34119_)))
          (begin
            (gxc#apply-collect-type-info _stx34121_)
            (let ((_stx34123_ (gxc#apply-optimize-annotated _stx34121_)))
              (gxc#apply-optimize-call _stx34123_)))))))
  (define gxc#&identity-expression
    (make-promise
     (lambda ()
       (let ((_tbl34116_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl34116_ '%#begin-annotation gxc#xform-identity)
           (table-set! _tbl34116_ '%#lambda gxc#xform-identity)
           (table-set! _tbl34116_ '%#case-lambda gxc#xform-identity)
           (table-set! _tbl34116_ '%#let-values gxc#xform-identity)
           (table-set! _tbl34116_ '%#letrec-values gxc#xform-identity)
           (table-set! _tbl34116_ '%#letrec*-values gxc#xform-identity)
           (table-set! _tbl34116_ '%#quote gxc#xform-identity)
           (table-set! _tbl34116_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl34116_ '%#call gxc#xform-identity)
           (table-set! _tbl34116_ '%#if gxc#xform-identity)
           (table-set! _tbl34116_ '%#ref gxc#xform-identity)
           (table-set! _tbl34116_ '%#set! gxc#xform-identity)
           (table-set! _tbl34116_ '%#struct-instance? gxc#xform-identity)
           (table-set!
            _tbl34116_
            '%#struct-direct-instance?
            gxc#xform-identity)
           (table-set! _tbl34116_ '%#struct-ref gxc#xform-identity)
           (table-set! _tbl34116_ '%#struct-set! gxc#xform-identity)
           (table-set! _tbl34116_ '%#struct-direct-ref gxc#xform-identity)
           (table-set! _tbl34116_ '%#struct-direct-set! gxc#xform-identity)
           (table-set! _tbl34116_ '%#struct-unchecked-ref gxc#xform-identity)
           (table-set! _tbl34116_ '%#struct-unchecked-set! gxc#xform-identity)
           _tbl34116_)))))
  (define gxc#&identity-special-form
    (make-promise
     (lambda ()
       (let ((_tbl34112_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl34112_ '%#begin gxc#xform-identity)
           (table-set! _tbl34112_ '%#begin-syntax gxc#xform-identity)
           (table-set! _tbl34112_ '%#begin-foreign gxc#xform-identity)
           (table-set! _tbl34112_ '%#module gxc#xform-identity)
           (table-set! _tbl34112_ '%#import gxc#xform-identity)
           (table-set! _tbl34112_ '%#export gxc#xform-identity)
           (table-set! _tbl34112_ '%#provide gxc#xform-identity)
           (table-set! _tbl34112_ '%#extern gxc#xform-identity)
           (table-set! _tbl34112_ '%#define-values gxc#xform-identity)
           (table-set! _tbl34112_ '%#define-syntax gxc#xform-identity)
           (table-set! _tbl34112_ '%#define-alias gxc#xform-identity)
           (table-set! _tbl34112_ '%#declare gxc#xform-identity)
           _tbl34112_)))))
  (define gxc#&identity
    (make-promise
     (lambda ()
       (let ((_tbl34108_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl34108_ (force gxc#&identity-special-form))
           (hash-copy! _tbl34108_ (force gxc#&identity-expression))
           _tbl34108_)))))
  (define gxc#&basic-xform-expression
    (make-promise
     (lambda ()
       (let ((_tbl34104_ (make-hash-table-eq)))
         (begin
           (table-set!
            _tbl34104_
            '%#begin-annotation
            gxc#xform-begin-annotation%)
           (table-set! _tbl34104_ '%#lambda gxc#xform-lambda%)
           (table-set! _tbl34104_ '%#case-lambda gxc#xform-case-lambda%)
           (table-set! _tbl34104_ '%#let-values gxc#xform-let-values%)
           (table-set! _tbl34104_ '%#letrec-values gxc#xform-let-values%)
           (table-set! _tbl34104_ '%#letrec*-values gxc#xform-let-values%)
           (table-set! _tbl34104_ '%#quote gxc#xform-identity)
           (table-set! _tbl34104_ '%#quote-syntax gxc#xform-identity)
           (table-set! _tbl34104_ '%#call gxc#xform-operands)
           (table-set! _tbl34104_ '%#if gxc#xform-operands)
           (table-set! _tbl34104_ '%#ref gxc#xform-identity)
           (table-set! _tbl34104_ '%#set! gxc#xform-setq%)
           (table-set! _tbl34104_ '%#struct-instance? gxc#xform-operands)
           (table-set!
            _tbl34104_
            '%#struct-direct-instance?
            gxc#xform-operands)
           (table-set! _tbl34104_ '%#struct-ref gxc#xform-operands)
           (table-set! _tbl34104_ '%#struct-set! gxc#xform-operands)
           (table-set! _tbl34104_ '%#struct-direct-ref gxc#xform-operands)
           (table-set! _tbl34104_ '%#struct-direct-set! gxc#xform-operands)
           (table-set! _tbl34104_ '%#struct-unchecked-ref gxc#xform-operands)
           (table-set! _tbl34104_ '%#struct-unchecked-set! gxc#xform-operands)
           _tbl34104_)))))
  (define gxc#&basic-xform
    (make-promise
     (lambda ()
       (let ((_tbl34100_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl34100_ (force gxc#&basic-xform-expression))
           (hash-copy! _tbl34100_ (force gxc#&identity))
           (table-set! _tbl34100_ '%#begin gxc#xform-begin%)
           (table-set! _tbl34100_ '%#module gxc#xform-module%)
           (table-set! _tbl34100_ '%#define-values gxc#xform-define-values%)
           _tbl34100_)))))
  (define gxc#&collect-mutators
    (make-promise
     (lambda ()
       (let ((_tbl34096_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl34096_ (force gxc#&void))
           (table-set! _tbl34096_ '%#begin gxc#collect-begin%)
           (table-set! _tbl34096_ '%#module gxc#collect-module%)
           (table-set!
            _tbl34096_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl34096_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl34096_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl34096_ '%#let-values gxc#collect-body-let-values%)
           (table-set!
            _tbl34096_
            '%#letrec-values
            gxc#collect-body-let-values%)
           (table-set!
            _tbl34096_
            '%#letrec*-values
            gxc#collect-body-let-values%)
           (table-set! _tbl34096_ '%#call gxc#collect-operands)
           (table-set! _tbl34096_ '%#if gxc#collect-operands)
           (table-set! _tbl34096_ '%#set! gxc#collect-mutators-setq%)
           (table-set! _tbl34096_ '%#struct-instance? gxc#collect-operands)
           (table-set!
            _tbl34096_
            '%#struct-direct-instance?
            gxc#collect-operands)
           (table-set! _tbl34096_ '%#struct-ref gxc#collect-operands)
           (table-set! _tbl34096_ '%#struct-set! gxc#collect-operands)
           (table-set! _tbl34096_ '%#struct-direct-ref gxc#collect-operands)
           (table-set! _tbl34096_ '%#struct-direct-set! gxc#collect-operands)
           (table-set! _tbl34096_ '%#struct-unchecked-ref gxc#collect-operands)
           (table-set!
            _tbl34096_
            '%#struct-unchecked-set!
            gxc#collect-operands)
           _tbl34096_)))))
  (define gxc#apply-collect-mutators
    (lambda (_stx34089_ . _args34091_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx34089_ _args34091_))
       gxc#current-compile-methods
       (force gxc#&collect-mutators))))
  (define gxc#&lift-top-lambdas
    (make-promise
     (lambda ()
       (let ((_tbl34086_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl34086_ (force gxc#&basic-xform))
           (table-set!
            _tbl34086_
            '%#define-values
            gxc#lift-top-lambda-define-values%)
           (table-set!
            _tbl34086_
            '%#let-values
            gxc#lift-top-lambda-let-values%)
           (table-set!
            _tbl34086_
            '%#letrec-values
            gxc#lift-top-lambda-letrec-values%)
           (table-set!
            _tbl34086_
            '%#letrec*-values
            gxc#lift-top-lambda-letrec-values%)
           _tbl34086_)))))
  (define gxc#apply-lift-top-lambdas
    (lambda (_stx34079_ . _args34081_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx34079_ _args34081_))
       gxc#current-compile-methods
       (force gxc#&lift-top-lambdas))))
  (define gxc#&expression-subst
    (make-promise
     (lambda ()
       (let ((_tbl34076_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl34076_ (force gxc#&basic-xform-expression))
           (table-set! _tbl34076_ '%#begin gxc#xform-begin%)
           (table-set! _tbl34076_ '%#ref gxc#expression-subst-ref%)
           (table-set! _tbl34076_ '%#set! gxc#expression-subst-setq%)
           _tbl34076_)))))
  (define gxc#apply-expression-subst
    (lambda (_stx34069_ . _args34071_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx34069_ _args34071_))
       gxc#current-compile-methods
       (force gxc#&expression-subst))))
  (define gxc#&expression-subst*
    (make-promise
     (lambda ()
       (let ((_tbl34066_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl34066_ (force gxc#&expression-subst))
           (table-set! _tbl34066_ '%#ref gxc#expression-subst*-ref%)
           (table-set! _tbl34066_ '%#set! gxc#expression-subst*-setq%)
           _tbl34066_)))))
  (define gxc#apply-expression-subst*
    (lambda (_stx34059_ . _args34061_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx34059_ _args34061_))
       gxc#current-compile-methods
       (force gxc#&expression-subst*))))
  (define gxc#&collect-type-info
    (make-promise
     (lambda ()
       (let ((_tbl34056_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl34056_ (force gxc#&void))
           (table-set! _tbl34056_ '%#begin gxc#collect-begin%)
           (table-set! _tbl34056_ '%#module gxc#collect-module%)
           (table-set!
            _tbl34056_
            '%#define-values
            gxc#collect-type-define-values%)
           (table-set!
            _tbl34056_
            '%#begin-annotation
            gxc#collect-begin-annotation%)
           (table-set! _tbl34056_ '%#lambda gxc#collect-body-lambda%)
           (table-set! _tbl34056_ '%#case-lambda gxc#collect-body-case-lambda%)
           (table-set! _tbl34056_ '%#let-values gxc#collect-type-let-values%)
           (table-set!
            _tbl34056_
            '%#letrec-values
            gxc#collect-type-let-values%)
           (table-set!
            _tbl34056_
            '%#letrec*-values
            gxc#collect-type-let-values%)
           (table-set! _tbl34056_ '%#call gxc#collect-type-call%)
           (table-set! _tbl34056_ '%#if gxc#collect-operands)
           (table-set! _tbl34056_ '%#set! gxc#collect-body-setq%)
           _tbl34056_)))))
  (define gxc#apply-collect-type-info
    (lambda (_stx34049_ . _args34051_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx34049_ _args34051_))
       gxc#current-compile-methods
       (force gxc#&collect-type-info))))
  (define gxc#&basic-expression-type
    (make-promise
     (lambda ()
       (let ((_tbl34046_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl34046_ (force gxc#&false))
           (table-set! _tbl34046_ '%#begin gxc#basic-expression-type-begin%)
           (table-set!
            _tbl34046_
            '%#begin-annotation
            gxc#basic-expression-type-begin-annotation%)
           (table-set! _tbl34046_ '%#lambda gxc#basic-expression-type-lambda%)
           (table-set!
            _tbl34046_
            '%#case-lambda
            gxc#basic-expression-type-case-lambda%)
           (table-set! _tbl34046_ '%#call gxc#basic-expression-type-call%)
           (table-set! _tbl34046_ '%#ref gxc#basic-expression-type-ref%)
           _tbl34046_)))))
  (define gxc#apply-basic-expression-type
    (lambda (_stx34039_ . _args34041_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx34039_ _args34041_))
       gxc#current-compile-methods
       (force gxc#&basic-expression-type))))
  (define gxc#&optimize-call
    (make-promise
     (lambda ()
       (let ((_tbl34036_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl34036_ (force gxc#&basic-xform))
           (table-set! _tbl34036_ '%#call gxc#optimize-call%)
           _tbl34036_)))))
  (define gxc#apply-optimize-call
    (lambda (_stx34029_ . _args34031_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx34029_ _args34031_))
       gxc#current-compile-methods
       (force gxc#&optimize-call))))
  (define gxc#&optmize-annotated
    (make-promise
     (lambda ()
       (let ((_tbl34026_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl34026_ (force gxc#&basic-xform))
           (table-set! _tbl34026_ '%#begin-annotation gxc#optimize-annotation%)
           _tbl34026_)))))
  (define gxc#apply-optimize-annotated
    (lambda (_stx34019_ . _args34021_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx34019_ _args34021_))
       gxc#current-compile-methods
       (force gxc#&optmize-annotated))))
  (define gxc#&push-match-vars
    (make-promise
     (lambda ()
       (let ((_tbl34016_ (make-hash-table-eq)))
         (begin
           (table-set! _tbl34016_ '%#lambda gxc#xform-lambda%)
           (table-set!
            _tbl34016_
            '%#let-values
            gxc#push-match-vars-let-values%)
           (table-set! _tbl34016_ '%#letrec-values gxc#push-match-vars-stop)
           (table-set! _tbl34016_ '%#if gxc#push-match-vars-if%)
           (table-set! _tbl34016_ '%#call gxc#push-match-vars-call%)
           _tbl34016_)))))
  (define gxc#apply-push-match-vars
    (lambda (_stx34009_ . _args34011_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx34009_ _args34011_))
       gxc#current-compile-methods
       (force gxc#&push-match-vars))))
  (define gxc#&find-expression
    (make-promise
     (lambda ()
       (let ((_tbl34006_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl34006_ (force gxc#&false-expression))
           (table-set! _tbl34006_ '%#begin gxc#find-body%)
           (table-set!
            _tbl34006_
            '%#begin-annotation
            gxc#find-begin-annotation%)
           (table-set! _tbl34006_ '%#lambda gxc#find-lambda%)
           (table-set! _tbl34006_ '%#case-lambda gxc#find-case-lambda%)
           (table-set! _tbl34006_ '%#let-values gxc#find-let-values%)
           (table-set! _tbl34006_ '%#letrec-values gxc#find-let-values%)
           (table-set! _tbl34006_ '%#letrec*-values gxc#find-let-values%)
           (table-set! _tbl34006_ '%#call gxc#find-body%)
           (table-set! _tbl34006_ '%#if gxc#find-body%)
           (table-set! _tbl34006_ '%#set! gxc#find-setq%)
           (table-set! _tbl34006_ '%#struct-instance? gxc#find-body%)
           (table-set! _tbl34006_ '%#struct-direct-instance? gxc#find-body%)
           (table-set! _tbl34006_ '%#struct-ref gxc#find-body%)
           (table-set! _tbl34006_ '%#struct-set! gxc#find-body%)
           (table-set! _tbl34006_ '%#struct-direct-ref gxc#find-body%)
           (table-set! _tbl34006_ '%#struct-direct-set! gxc#find-body%)
           (table-set! _tbl34006_ '%#struct-unchecked-ref gxc#find-body%)
           (table-set! _tbl34006_ '%#struct-unchecked-set! gxc#find-body%)
           _tbl34006_)))))
  (define gxc#&find-var-refs
    (make-promise
     (lambda ()
       (let ((_tbl34002_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl34002_ (force gxc#&find-expression))
           (table-set! _tbl34002_ '%#ref gxc#find-var-refs-ref%)
           (table-set! _tbl34002_ '%#set! gxc#find-var-refs-setq%)
           _tbl34002_)))))
  (define gxc#apply-find-var-refs
    (lambda (_stx33995_ . _args33997_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx33995_ _args33997_))
       gxc#current-compile-methods
       (force gxc#&find-var-refs))))
  (define gxc#&collect-runtime-refs
    (make-promise
     (lambda ()
       (let ((_tbl33992_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl33992_ (force gxc#&collect-expression-refs))
           (table-set! _tbl33992_ '%#ref gxc#collect-runtime-refs-ref%)
           (table-set! _tbl33992_ '%#set! gxc#collect-runtime-refs-setq%)
           _tbl33992_)))))
  (define gxc#apply-collect-runtime-refs
    (lambda (_stx33985_ . _args33987_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx33985_ _args33987_))
       gxc#current-compile-methods
       (force gxc#&collect-runtime-refs))))
  (define gxc#&generate-ssxi
    (make-promise
     (lambda ()
       (let ((_tbl33982_ (make-hash-table-eq)))
         (begin
           (hash-copy! _tbl33982_ (force gxc#&generate-runtime-empty))
           (table-set! _tbl33982_ '%#begin gxc#generate-runtime-begin%)
           (table-set! _tbl33982_ '%#module gxc#generate-ssxi-module%)
           (table-set!
            _tbl33982_
            '%#define-values
            gxc#generate-ssxi-define-values%)
           (table-set! _tbl33982_ '%#call gxc#generate-ssxi-call%)
           _tbl33982_)))))
  (define gxc#apply-generate-ssxi
    (lambda (_stx33975_ . _args33977_)
      (call-with-parameters
       (lambda () (apply gxc#compile-e _stx33975_ _args33977_))
       gxc#current-compile-methods
       (force gxc#&generate-ssxi))))
  (define gxc#xform-identity (lambda (_stx33972_ . _args33973_) _stx33972_))
  (define gxc#xform-wrap-source
    (lambda (_stx33969_ _src-stx33970_)
      (gx#stx-wrap-source _stx33969_ (gx#stx-source _src-stx33970_))))
  (define gxc#xform-apply-compile-e
    (lambda (_args33963_)
      (lambda (_g3396433966_)
        (apply gxc#compile-e _g3396433966_ _args33963_))))
  (define gxc#xform-begin%
    (lambda (_stx33922_ . _args33923_)
      (let* ((_g3392533935_
              (lambda (_g3392633932_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3392633932_)))
             (_g3392433960_
              (lambda (_g3392633938_)
                (if (gx#stx-pair? _g3392633938_)
                    (let ((_e3392833940_ (gx#stx-e _g3392633938_)))
                      (let ((_hd3392933943_ (##car _e3392833940_))
                            (_tl3393033945_ (##cdr _e3392833940_)))
                        ((lambda (_L33948_)
                           (let ((_forms33958_
                                  (map (gxc#xform-apply-compile-e _args33923_)
                                       _L33948_)))
                             (gxc#xform-wrap-source
                              (cons '%#begin _forms33958_)
                              _stx33922_)))
                         _tl3393033945_)))
                    (_g3392533935_ _g3392633938_)))))
        (_g3392433960_ _stx33922_))))
  (define gxc#xform-module%
    (lambda (_stx33859_ . _args33860_)
      (let* ((_g3386233876_
              (lambda (_g3386333873_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3386333873_)))
             (_g3386133919_
              (lambda (_g3386333879_)
                (if (gx#stx-pair? _g3386333879_)
                    (let ((_e3386633881_ (gx#stx-e _g3386333879_)))
                      (let ((_hd3386733884_ (##car _e3386633881_))
                            (_tl3386833886_ (##cdr _e3386633881_)))
                        (if (gx#stx-pair? _tl3386833886_)
                            (let ((_e3386933889_ (gx#stx-e _tl3386833886_)))
                              (let ((_hd3387033892_ (##car _e3386933889_))
                                    (_tl3387133894_ (##cdr _e3386933889_)))
                                ((lambda (_L33897_ _L33898_)
                                   (let* ((_ctx33911_
                                           (gx#syntax-local-e__0 _L33898_))
                                          (_code33913_
                                           (##structure-ref
                                            _ctx33911_
                                            '11
                                            gx#module-context::t
                                            '#f))
                                          (_code33916_
                                           (call-with-parameters
                                            (lambda ()
                                              (apply gxc#compile-e
                                                     _code33913_
                                                     _args33860_))
                                            gx#current-expander-context
                                            _ctx33911_)))
                                     (begin
                                       (##structure-set!
                                        _ctx33911_
                                        _code33916_
                                        '11
                                        gx#module-context::t
                                        '#f)
                                       (gxc#xform-wrap-source
                                        (cons '%#module
                                              (cons _L33898_
                                                    (cons _code33916_ '())))
                                        _stx33859_))))
                                 _tl3387133894_
                                 _hd3387033892_)))
                            (_g3386233876_ _g3386333879_))))
                    (_g3386233876_ _g3386333879_)))))
        (_g3386133919_ _stx33859_))))
  (define gxc#xform-define-values%
    (lambda (_stx33789_ . _args33790_)
      (let* ((_g3379233809_
              (lambda (_g3379333806_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3379333806_)))
             (_g3379133856_
              (lambda (_g3379333812_)
                (if (gx#stx-pair? _g3379333812_)
                    (let ((_e3379633814_ (gx#stx-e _g3379333812_)))
                      (let ((_hd3379733817_ (##car _e3379633814_))
                            (_tl3379833819_ (##cdr _e3379633814_)))
                        (if (gx#stx-pair? _tl3379833819_)
                            (let ((_e3379933822_ (gx#stx-e _tl3379833819_)))
                              (let ((_hd3380033825_ (##car _e3379933822_))
                                    (_tl3380133827_ (##cdr _e3379933822_)))
                                (if (gx#stx-pair? _tl3380133827_)
                                    (let ((_e3380233830_
                                           (gx#stx-e _tl3380133827_)))
                                      (let ((_hd3380333833_
                                             (##car _e3380233830_))
                                            (_tl3380433835_
                                             (##cdr _e3380233830_)))
                                        (if (gx#stx-null? _tl3380433835_)
                                            ((lambda (_L33838_ _L33839_)
                                               (let ((_expr33854_
                                                      (apply gxc#compile-e
                                                             _L33838_
                                                             _args33790_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L33839_
                                                              (cons _expr33854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx33789_)))
                                             _hd3380333833_
                                             _hd3380033825_)
                                            (_g3379233809_ _g3379333812_))))
                                    (_g3379233809_ _g3379333812_))))
                            (_g3379233809_ _g3379333812_))))
                    (_g3379233809_ _g3379333812_)))))
        (_g3379133856_ _stx33789_))))
  (define gxc#xform-begin-annotation%
    (lambda (_stx33719_ . _args33720_)
      (let* ((_g3372233739_
              (lambda (_g3372333736_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3372333736_)))
             (_g3372133786_
              (lambda (_g3372333742_)
                (if (gx#stx-pair? _g3372333742_)
                    (let ((_e3372633744_ (gx#stx-e _g3372333742_)))
                      (let ((_hd3372733747_ (##car _e3372633744_))
                            (_tl3372833749_ (##cdr _e3372633744_)))
                        (if (gx#stx-pair? _tl3372833749_)
                            (let ((_e3372933752_ (gx#stx-e _tl3372833749_)))
                              (let ((_hd3373033755_ (##car _e3372933752_))
                                    (_tl3373133757_ (##cdr _e3372933752_)))
                                (if (gx#stx-pair? _tl3373133757_)
                                    (let ((_e3373233760_
                                           (gx#stx-e _tl3373133757_)))
                                      (let ((_hd3373333763_
                                             (##car _e3373233760_))
                                            (_tl3373433765_
                                             (##cdr _e3373233760_)))
                                        (if (gx#stx-null? _tl3373433765_)
                                            ((lambda (_L33768_ _L33769_)
                                               (let ((_expr33784_
                                                      (apply gxc#compile-e
                                                             _L33768_
                                                             _args33720_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#begin-annotation
                                                        (cons _L33769_
                                                              (cons _expr33784_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx33719_)))
                                             _hd3373333763_
                                             _hd3373033755_)
                                            (_g3372233739_ _g3372333742_))))
                                    (_g3372233739_ _g3372333742_))))
                            (_g3372233739_ _g3372333742_))))
                    (_g3372233739_ _g3372333742_)))))
        (_g3372133786_ _stx33719_))))
  (define gxc#xform-lambda%
    (lambda (_stx33662_ . _args33663_)
      (let* ((_g3366533679_
              (lambda (_g3366633676_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3366633676_)))
             (_g3366433716_
              (lambda (_g3366633682_)
                (if (gx#stx-pair? _g3366633682_)
                    (let ((_e3366933684_ (gx#stx-e _g3366633682_)))
                      (let ((_hd3367033687_ (##car _e3366933684_))
                            (_tl3367133689_ (##cdr _e3366933684_)))
                        (if (gx#stx-pair? _tl3367133689_)
                            (let ((_e3367233692_ (gx#stx-e _tl3367133689_)))
                              (let ((_hd3367333695_ (##car _e3367233692_))
                                    (_tl3367433697_ (##cdr _e3367233692_)))
                                ((lambda (_L33700_ _L33701_)
                                   (let ((_body33714_
                                          (map (gxc#xform-apply-compile-e
                                                _args33663_)
                                               _L33700_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#lambda
                                            (cons _L33701_ _body33714_))
                                      _stx33662_)))
                                 _tl3367433697_
                                 _hd3367333695_)))
                            (_g3366533679_ _g3366633682_))))
                    (_g3366533679_ _g3366633682_)))))
        (_g3366433716_ _stx33662_))))
  (define gxc#xform-case-lambda%
    (lambda (_stx33575_ . _args33576_)
      (letrec ((_clause-e33578_
                (lambda (_clause33619_)
                  (let* ((_g3362133632_
                          (lambda (_g3362233629_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g3362233629_)))
                         (_g3362033659_
                          (lambda (_g3362233635_)
                            (if (gx#stx-pair? _g3362233635_)
                                (let ((_e3362533637_ (gx#stx-e _g3362233635_)))
                                  (let ((_hd3362633640_ (##car _e3362533637_))
                                        (_tl3362733642_ (##cdr _e3362533637_)))
                                    ((lambda (_L33645_ _L33646_)
                                       (let ((_body33657_
                                              (map (gxc#xform-apply-compile-e
                                                    _args33576_)
                                                   _L33645_)))
                                         (cons _L33646_ _body33657_)))
                                     _tl3362733642_
                                     _hd3362633640_)))
                                (_g3362133632_ _g3362233635_)))))
                    (_g3362033659_ _clause33619_)))))
        (let* ((_g3358033590_
                (lambda (_g3358133587_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g3358133587_)))
               (_g3357933616_
                (lambda (_g3358133593_)
                  (if (gx#stx-pair? _g3358133593_)
                      (let ((_e3358333595_ (gx#stx-e _g3358133593_)))
                        (let ((_hd3358433598_ (##car _e3358333595_))
                              (_tl3358533600_ (##cdr _e3358333595_)))
                          ((lambda (_L33603_)
                             (let ((_clauses33614_
                                    (map _clause-e33578_ _L33603_)))
                               (gxc#xform-wrap-source
                                (cons '%#case-lambda _clauses33614_)
                                _stx33575_)))
                           _tl3358533600_)))
                      (_g3358033590_ _g3358133593_)))))
          (_g3357933616_ _stx33575_)))))
  (define gxc#xform-let-values%
    (lambda (_stx33369_ . _args33370_)
      (let* ((_g3337233405_
              (lambda (_g3337333402_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3337333402_)))
             (_g3337133572_
              (lambda (_g3337333408_)
                (if (gx#stx-pair? _g3337333408_)
                    (let ((_e3337833410_ (gx#stx-e _g3337333408_)))
                      (let ((_hd3337933413_ (##car _e3337833410_))
                            (_tl3338033415_ (##cdr _e3337833410_)))
                        (if (gx#stx-pair? _tl3338033415_)
                            (let ((_e3338133418_ (gx#stx-e _tl3338033415_)))
                              (let ((_hd3338233421_ (##car _e3338133418_))
                                    (_tl3338333423_ (##cdr _e3338133418_)))
                                (if (gx#stx-pair/null? _hd3338233421_)
                                    (if (fx>= (gx#stx-length _hd3338233421_)
                                              '0)
                                        (let ((_g34839_
                                               (gx#syntax-split-splice
                                                _hd3338233421_
                                                '0)))
                                          (begin
                                            (let ((_g34840_
                                                   (if (##values? _g34839_)
                                                       (##vector-length
                                                        _g34839_)
                                                       1)))
                                              (if (not (##fx= _g34840_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34840_)))
                                            (let ((_target3338433426_
                                                   (##vector-ref _g34839_ 0))
                                                  (_tl3338633428_
                                                   (##vector-ref _g34839_ 1)))
                                              (if (gx#stx-null? _tl3338633428_)
                                                  (letrec ((_loop3338733431_
                                                            (lambda (_hd3338533434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr3339133436_
                             _hd3339233438_)
                      (if (gx#stx-pair? _hd3338533434_)
                          (let ((_e3338833441_ (gx#stx-e _hd3338533434_)))
                            (let ((_lp-hd3338933444_ (##car _e3338833441_))
                                  (_lp-tl3339033446_ (##cdr _e3338833441_)))
                              (if (gx#stx-pair? _lp-hd3338933444_)
                                  (let ((_e3339533449_
                                         (gx#stx-e _lp-hd3338933444_)))
                                    (let ((_hd3339633452_
                                           (##car _e3339533449_))
                                          (_tl3339733454_
                                           (##cdr _e3339533449_)))
                                      (if (gx#stx-pair? _tl3339733454_)
                                          (let ((_e3339833457_
                                                 (gx#stx-e _tl3339733454_)))
                                            (let ((_hd3339933460_
                                                   (##car _e3339833457_))
                                                  (_tl3340033462_
                                                   (##cdr _e3339833457_)))
                                              (if (gx#stx-null? _tl3340033462_)
                                                  (_loop3338733431_
                                                   _lp-tl3339033446_
                                                   (cons _hd3339933460_
                                                         _expr3339133436_)
                                                   (cons _hd3339633452_
                                                         _hd3339233438_))
                                                  (_g3337233405_
                                                   _g3337333408_))))
                                          (_g3337233405_ _g3337333408_))))
                                  (_g3337233405_ _g3337333408_))))
                          (let ((_expr3339333465_ (reverse _expr3339133436_))
                                (_hd3339433467_ (reverse _hd3339233438_)))
                            ((lambda (_L33470_ _L33471_ _L33472_ _L33473_)
                               (let* ((_g3349233508_
                                       (lambda (_g3349333505_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g3349333505_)))
                                      (_g3349133562_
                                       (lambda (_g3349333511_)
                                         (if (gx#stx-pair/null? _g3349333511_)
                                             (if (fx>= (gx#stx-length
                                                        _g3349333511_)
                                                       '0)
                                                 (let ((_g34841_
                                                        (gx#syntax-split-splice
                                                         _g3349333511_
                                                         '0)))
                                                   (begin
                                                     (let ((_g34842_
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g34841_)
                        (##vector-length _g34841_)
                        1)))
               (if (not (##fx= _g34842_ 2))
                   (error "Context expects 2 values" _g34842_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target3349533513_
                                                            (##vector-ref
                                                             _g34841_
                                                             0))
                                                           (_tl3349733515_
                                                            (##vector-ref
                                                             _g34841_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl3349733515_)
                                                           (letrec ((_loop3349833518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd3349633521_ _expr3350233523_)
                               (if (gx#stx-pair? _hd3349633521_)
                                   (let ((_e3349933526_
                                          (gx#syntax-e _hd3349633521_)))
                                     (let ((_lp-hd3350033529_
                                            (##car _e3349933526_))
                                           (_lp-tl3350133531_
                                            (##cdr _e3349933526_)))
                                       (_loop3349833518_
                                        _lp-tl3350133531_
                                        (cons _lp-hd3350033529_
                                              _expr3350233523_))))
                                   (let ((_expr3350333534_
                                          (reverse _expr3350233523_)))
                                     ((lambda (_L33537_)
                                        (let ()
                                          (let ((_body33550_
                                                 (map (gxc#xform-apply-compile-e
                                                       _args33370_)
                                                      _L33470_)))
                                            (gxc#xform-wrap-source
                                             (cons _L33473_
                                                   (cons (begin
                                                           (gx#syntax-check-splice-targets
                                                            _L33537_
                                                            _L33472_)
                                                           (foldr2 (lambda (_g3355133555_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g3355233557_
                                    _g3355333559_)
                             (cons (cons _g3355233557_
                                         (cons _g3355133555_ '()))
                                   _g3355333559_))
                           '()
                           _L33537_
                           _L33472_))
                 _body33550_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _stx33369_))))
                                      _expr3350333534_))))))
                     (_loop3349833518_ _target3349533513_ '()))
                   (_g3349233508_ _g3349333511_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g3349233508_ _g3349333511_))
                                             (_g3349233508_ _g3349333511_)))))
                                 (_g3349133562_
                                  (map (gxc#xform-apply-compile-e _args33370_)
                                       (begin
                                         '#!void
                                         (foldr1 (lambda (_g3356433567_
                                                          _g3356533569_)
                                                   (cons _g3356433567_
                                                         _g3356533569_))
                                                 '()
                                                 _L33471_))))))
                             _tl3338333423_
                             _expr3339333465_
                             _hd3339433467_
                             _hd3337933413_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop3338733431_
                                                     _target3338433426_
                                                     '()
                                                     '()))
                                                  (_g3337233405_
                                                   _g3337333408_)))))
                                        (_g3337233405_ _g3337333408_))
                                    (_g3337233405_ _g3337333408_))))
                            (_g3337233405_ _g3337333408_))))
                    (_g3337233405_ _g3337333408_)))))
        (_g3337133572_ _stx33369_))))
  (define gxc#xform-operands
    (lambda (_stx33325_ . _args33326_)
      (let* ((_g3332833339_
              (lambda (_g3332933336_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3332933336_)))
             (_g3332733366_
              (lambda (_g3332933342_)
                (if (gx#stx-pair? _g3332933342_)
                    (let ((_e3333233344_ (gx#stx-e _g3332933342_)))
                      (let ((_hd3333333347_ (##car _e3333233344_))
                            (_tl3333433349_ (##cdr _e3333233344_)))
                        ((lambda (_L33352_ _L33353_)
                           (let ((_rands33364_
                                  (map (gxc#xform-apply-compile-e _args33326_)
                                       _L33352_)))
                             (gxc#xform-wrap-source
                              (cons _L33353_ _rands33364_)
                              _stx33325_)))
                         _tl3333433349_
                         _hd3333333347_)))
                    (_g3332833339_ _g3332933342_)))))
        (_g3332733366_ _stx33325_))))
  (define gxc#xform-call% gxc#xform-operands)
  (define gxc#xform-setq%
    (lambda (_stx33255_ . _args33256_)
      (let* ((_g3325833275_
              (lambda (_g3325933272_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3325933272_)))
             (_g3325733322_
              (lambda (_g3325933278_)
                (if (gx#stx-pair? _g3325933278_)
                    (let ((_e3326233280_ (gx#stx-e _g3325933278_)))
                      (let ((_hd3326333283_ (##car _e3326233280_))
                            (_tl3326433285_ (##cdr _e3326233280_)))
                        (if (gx#stx-pair? _tl3326433285_)
                            (let ((_e3326533288_ (gx#stx-e _tl3326433285_)))
                              (let ((_hd3326633291_ (##car _e3326533288_))
                                    (_tl3326733293_ (##cdr _e3326533288_)))
                                (if (gx#stx-pair? _tl3326733293_)
                                    (let ((_e3326833296_
                                           (gx#stx-e _tl3326733293_)))
                                      (let ((_hd3326933299_
                                             (##car _e3326833296_))
                                            (_tl3327033301_
                                             (##cdr _e3326833296_)))
                                        (if (gx#stx-null? _tl3327033301_)
                                            ((lambda (_L33304_ _L33305_)
                                               (let ((_expr33320_
                                                      (apply gxc#compile-e
                                                             _L33304_
                                                             _args33256_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _L33305_
                                                              (cons _expr33320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx33255_)))
                                             _hd3326933299_
                                             _hd3326633291_)
                                            (_g3325833275_ _g3325933278_))))
                                    (_g3325833275_ _g3325933278_))))
                            (_g3325833275_ _g3325933278_))))
                    (_g3325833275_ _g3325933278_)))))
        (_g3325733322_ _stx33255_))))
  (define gxc#collect-mutators-setq%
    (lambda (_stx33186_)
      (let* ((_g3318833205_
              (lambda (_g3318933202_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3318933202_)))
             (_g3318733252_
              (lambda (_g3318933208_)
                (if (gx#stx-pair? _g3318933208_)
                    (let ((_e3319233210_ (gx#stx-e _g3318933208_)))
                      (let ((_hd3319333213_ (##car _e3319233210_))
                            (_tl3319433215_ (##cdr _e3319233210_)))
                        (if (gx#stx-pair? _tl3319433215_)
                            (let ((_e3319533218_ (gx#stx-e _tl3319433215_)))
                              (let ((_hd3319633221_ (##car _e3319533218_))
                                    (_tl3319733223_ (##cdr _e3319533218_)))
                                (if (gx#stx-pair? _tl3319733223_)
                                    (let ((_e3319833226_
                                           (gx#stx-e _tl3319733223_)))
                                      (let ((_hd3319933229_
                                             (##car _e3319833226_))
                                            (_tl3320033231_
                                             (##cdr _e3319833226_)))
                                        (if (gx#stx-null? _tl3320033231_)
                                            ((lambda (_L33234_ _L33235_)
                                               (let ((_sym33250_
                                                      (gxc#identifier-symbol
                                                       _L33235_)))
                                                 (begin
                                                   (gxc#verbose
                                                    '"collect mutator "
                                                    _sym33250_)
                                                   (table-set!
                                                    (gxc#current-compile-mutators)
                                                    _sym33250_
                                                    '#t)
                                                   (gxc#compile-e _L33234_))))
                                             _hd3319933229_
                                             _hd3319633221_)
                                            (_g3318833205_ _g3318933208_))))
                                    (_g3318833205_ _g3318933208_))))
                            (_g3318833205_ _g3318933208_))))
                    (_g3318833205_ _g3318933208_)))))
        (_g3318733252_ _stx33186_))))
  (define gxc#dispatch-lambda-form?
    (lambda (_form32420_)
      (let* ((_g3242532582_
              (lambda (_g3242632579_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3242632579_)))
             (_g3242432589_ (lambda (_g3242632585_) ((lambda () '#f))))
             (_g3242332729_
              (lambda (_g3242632592_)
                (if (gx#stx-pair? _g3242632592_)
                    (let ((_e3254232594_ (gx#stx-e _g3242632592_)))
                      (let ((_hd3254332597_ (##car _e3254232594_))
                            (_tl3254432599_ (##cdr _e3254232594_)))
                        (if (gx#stx-pair? _tl3254432599_)
                            (let ((_e3254532602_ (gx#stx-e _tl3254432599_)))
                              (let ((_hd3254632605_ (##car _e3254532602_))
                                    (_tl3254732607_ (##cdr _e3254532602_)))
                                (if (gx#stx-pair? _hd3254632605_)
                                    (let ((_e3254832610_
                                           (gx#stx-e _hd3254632605_)))
                                      (let ((_hd3254932613_
                                             (##car _e3254832610_))
                                            (_tl3255032615_
                                             (##cdr _e3254832610_)))
                                        (if (gx#identifier? _hd3254932613_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd3254932613_)
                                                (if (gx#stx-pair?
                                                     _tl3255032615_)
                                                    (let ((_e3255132618_
                                                           (gx#stx-e
                                                            _tl3255032615_)))
                                                      (let ((_hd3255232621_
                                                             (##car _e3255132618_))
                                                            (_tl3255332623_
                                                             (##cdr _e3255132618_)))
                                                        (if (gx#stx-pair?
                                                             _hd3255232621_)
                                                            (let ((_e3255432626_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3255232621_)))
                      (let ((_hd3255532629_ (##car _e3255432626_))
                            (_tl3255632631_ (##cdr _e3255432626_)))
                        (if (gx#identifier? _hd3255532629_)
                            (if (gx#stx-eq? '%#ref _hd3255532629_)
                                (if (gx#stx-pair? _tl3255632631_)
                                    (let ((_e3255732634_
                                           (gx#stx-e _tl3255632631_)))
                                      (let ((_hd3255832637_
                                             (##car _e3255732634_))
                                            (_tl3255932639_
                                             (##cdr _e3255732634_)))
                                        (if (gx#stx-null? _tl3255932639_)
                                            (if (gx#stx-pair? _tl3255332623_)
                                                (let ((_e3256032642_
                                                       (gx#stx-e
                                                        _tl3255332623_)))
                                                  (let ((_hd3256132645_
                                                         (##car _e3256032642_))
                                                        (_tl3256232647_
                                                         (##cdr _e3256032642_)))
                                                    (if (gx#stx-pair?
                                                         _hd3256132645_)
                                                        (let ((_e3256332650_
                                                               (gx#stx-e
                                                                _hd3256132645_)))
                                                          (let ((_hd3256432653_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3256332650_))
                        (_tl3256532655_ (##cdr _e3256332650_)))
                    (if (gx#identifier? _hd3256432653_)
                        (if (gx#stx-eq? '%#ref _hd3256432653_)
                            (if (gx#stx-pair? _tl3256532655_)
                                (let ((_e3256632658_
                                       (gx#stx-e _tl3256532655_)))
                                  (let ((_hd3256732661_ (##car _e3256632658_))
                                        (_tl3256832663_ (##cdr _e3256632658_)))
                                    (if (gx#stx-null? _tl3256832663_)
                                        (if (gx#stx-pair? _tl3256232647_)
                                            (let ((_e3256932666_
                                                   (gx#stx-e _tl3256232647_)))
                                              (let ((_hd3257032669_
                                                     (##car _e3256932666_))
                                                    (_tl3257132671_
                                                     (##cdr _e3256932666_)))
                                                (if (gx#stx-pair?
                                                     _hd3257032669_)
                                                    (let ((_e3257232674_
                                                           (gx#stx-e
                                                            _hd3257032669_)))
                                                      (let ((_hd3257332677_
                                                             (##car _e3257232674_))
                                                            (_tl3257432679_
                                                             (##cdr _e3257232674_)))
                                                        (if (gx#identifier?
                                                             _hd3257332677_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd3257332677_)
                        (if (gx#stx-pair? _tl3257432679_)
                            (let ((_e3257532682_ (gx#stx-e _tl3257432679_)))
                              (let ((_hd3257632685_ (##car _e3257532682_))
                                    (_tl3257732687_ (##cdr _e3257532682_)))
                                (if (gx#stx-null? _tl3257732687_)
                                    (if (gx#stx-null? _tl3257132671_)
                                        (if (gx#stx-null? _tl3254732607_)
                                            ((lambda (_L32690_
                                                      _L32691_
                                                      _L32692_
                                                      _L32693_)
                                               (if (if (gx#identifier?
                                                        _L32693_)
                                                       (if (gxc#runtime-identifier=?
                                                            _L32692_
                                                            'apply)
                                                           (if (gx#free-identifier=?
                                                                _L32693_
                                                                _L32690_)
                                                               (not (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L32691_
                             _L32693_))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#t
                                                   (_g3242432589_
                                                    _g3242632592_)))
                                             _hd3257632685_
                                             _hd3256732661_
                                             _hd3255832637_
                                             _hd3254332597_)
                                            (_g3242432589_ _g3242632592_))
                                        (_g3242432589_ _g3242632592_))
                                    (_g3242432589_ _g3242632592_))))
                            (_g3242432589_ _g3242632592_))
                        (_g3242432589_ _g3242632592_))
                    (_g3242432589_ _g3242632592_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3242432589_
                                                     _g3242632592_))))
                                            (_g3242432589_ _g3242632592_))
                                        (_g3242432589_ _g3242632592_))))
                                (_g3242432589_ _g3242632592_))
                            (_g3242432589_ _g3242632592_))
                        (_g3242432589_ _g3242632592_))))
                (_g3242432589_ _g3242632592_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3242432589_ _g3242632592_))
                                            (_g3242432589_ _g3242632592_))))
                                    (_g3242432589_ _g3242632592_))
                                (_g3242432589_ _g3242632592_))
                            (_g3242432589_ _g3242632592_))))
                    (_g3242432589_ _g3242632592_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3242432589_
                                                     _g3242632592_))
                                                (_g3242432589_ _g3242632592_))
                                            (_g3242432589_ _g3242632592_))))
                                    (_g3242432589_ _g3242632592_))))
                            (_g3242432589_ _g3242632592_))))
                    (_g3242432589_ _g3242632592_))))
             (_g3242232989_
              (lambda (_g3242632732_)
                (if (gx#stx-pair? _g3242632732_)
                    (let ((_e3247832734_ (gx#stx-e _g3242632732_)))
                      (let ((_hd3247932737_ (##car _e3247832734_))
                            (_tl3248032739_ (##cdr _e3247832734_)))
                        (if (gx#stx-pair/null? _hd3247932737_)
                            (if (fx>= (gx#stx-length _hd3247932737_) '0)
                                (let ((_g34843_
                                       (gx#syntax-split-splice
                                        _hd3247932737_
                                        '0)))
                                  (begin
                                    (let ((_g34844_
                                           (if (##values? _g34843_)
                                               (##vector-length _g34843_)
                                               1)))
                                      (if (not (##fx= _g34844_ 2))
                                          (error "Context expects 2 values"
                                                 _g34844_)))
                                    (let ((_target3248132742_
                                           (##vector-ref _g34843_ 0))
                                          (_tl3248332744_
                                           (##vector-ref _g34843_ 1)))
                                      (letrec ((_loop3248432747_
                                                (lambda (_hd3248232750_
                                                         _arg3248832752_)
                                                  (if (gx#stx-pair?
                                                       _hd3248232750_)
                                                      (let ((_e3248532755_
                                                             (gx#stx-e
                                                              _hd3248232750_)))
                                                        (let ((_lp-hd3248632758_
                                                               (##car _e3248532755_))
                                                              (_lp-tl3248732760_
                                                               (##cdr _e3248532755_)))
                                                          (_loop3248432747_
                                                           _lp-tl3248732760_
                                                           (cons _lp-hd3248632758_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg3248832752_))))
              (let ((_arg3248932763_ (reverse _arg3248832752_)))
                (if (gx#stx-pair? _tl3248032739_)
                    (let ((_e3249032766_ (gx#stx-e _tl3248032739_)))
                      (let ((_hd3249132769_ (##car _e3249032766_))
                            (_tl3249232771_ (##cdr _e3249032766_)))
                        (if (gx#stx-pair? _hd3249132769_)
                            (let ((_e3249332774_ (gx#stx-e _hd3249132769_)))
                              (let ((_hd3249432777_ (##car _e3249332774_))
                                    (_tl3249532779_ (##cdr _e3249332774_)))
                                (if (gx#identifier? _hd3249432777_)
                                    (if (gx#stx-eq? '%#call _hd3249432777_)
                                        (if (gx#stx-pair? _tl3249532779_)
                                            (let ((_e3249632782_
                                                   (gx#stx-e _tl3249532779_)))
                                              (let ((_hd3249732785_
                                                     (##car _e3249632782_))
                                                    (_tl3249832787_
                                                     (##cdr _e3249632782_)))
                                                (if (gx#stx-pair?
                                                     _hd3249732785_)
                                                    (let ((_e3249932790_
                                                           (gx#stx-e
                                                            _hd3249732785_)))
                                                      (let ((_hd3250032793_
                                                             (##car _e3249932790_))
                                                            (_tl3250132795_
                                                             (##cdr _e3249932790_)))
                                                        (if (gx#identifier?
                                                             _hd3250032793_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd3250032793_)
                        (if (gx#stx-pair? _tl3250132795_)
                            (let ((_e3250232798_ (gx#stx-e _tl3250132795_)))
                              (let ((_hd3250332801_ (##car _e3250232798_))
                                    (_tl3250432803_ (##cdr _e3250232798_)))
                                (if (gx#stx-null? _tl3250432803_)
                                    (if (gx#stx-pair? _tl3249832787_)
                                        (let ((_e3250532806_
                                               (gx#stx-e _tl3249832787_)))
                                          (let ((_hd3250632809_
                                                 (##car _e3250532806_))
                                                (_tl3250732811_
                                                 (##cdr _e3250532806_)))
                                            (if (gx#stx-pair? _hd3250632809_)
                                                (let ((_e3250832814_
                                                       (gx#stx-e
                                                        _hd3250632809_)))
                                                  (let ((_hd3250932817_
                                                         (##car _e3250832814_))
                                                        (_tl3251032819_
                                                         (##cdr _e3250832814_)))
                                                    (if (gx#identifier?
                                                         _hd3250932817_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd3250932817_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3251032819_)
                        (let ((_e3251132822_ (gx#stx-e _tl3251032819_)))
                          (let ((_hd3251232825_ (##car _e3251132822_))
                                (_tl3251332827_ (##cdr _e3251132822_)))
                            (if (gx#stx-null? _tl3251332827_)
                                (if (gx#stx-pair/null? _tl3250732811_)
                                    (if (fx>= (gx#stx-length _tl3250732811_)
                                              '1)
                                        (let ((_g34845_
                                               (gx#syntax-split-splice
                                                _tl3250732811_
                                                '1)))
                                          (begin
                                            (let ((_g34846_
                                                   (if (##values? _g34845_)
                                                       (##vector-length
                                                        _g34845_)
                                                       1)))
                                              (if (not (##fx= _g34846_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34846_)))
                                            (let ((_target3251432830_
                                                   (##vector-ref _g34845_ 0))
                                                  (_tl3251632832_
                                                   (##vector-ref _g34845_ 1)))
                                              (if (gx#stx-pair? _tl3251632832_)
                                                  (let ((_e3252332835_
                                                         (gx#stx-e
                                                          _tl3251632832_)))
                                                    (let ((_hd3252432838_
                                                           (##car _e3252332835_))
                                                          (_tl3252532840_
                                                           (##cdr _e3252332835_)))
                                                      (if (gx#stx-pair?
                                                           _hd3252432838_)
                                                          (let ((_e3252632843_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3252432838_)))
                    (let ((_hd3252732846_ (##car _e3252632843_))
                          (_tl3252832848_ (##cdr _e3252632843_)))
                      (if (gx#identifier? _hd3252732846_)
                          (if (gx#stx-eq? '%#ref _hd3252732846_)
                              (if (gx#stx-pair? _tl3252832848_)
                                  (let ((_e3252932851_
                                         (gx#stx-e _tl3252832848_)))
                                    (let ((_hd3253032854_
                                           (##car _e3252932851_))
                                          (_tl3253132856_
                                           (##cdr _e3252932851_)))
                                      (if (gx#stx-null? _tl3253132856_)
                                          (if (gx#stx-null? _tl3252532840_)
                                              (letrec ((_loop3251732859_
                                                        (lambda (_hd3251532862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _xarg3252132864_)
                  (if (gx#stx-pair? _hd3251532862_)
                      (let ((_e3251832867_ (gx#stx-e _hd3251532862_)))
                        (let ((_lp-hd3251932870_ (##car _e3251832867_))
                              (_lp-tl3252032872_ (##cdr _e3251832867_)))
                          (if (gx#stx-pair? _lp-hd3251932870_)
                              (let ((_e3253232875_
                                     (gx#stx-e _lp-hd3251932870_)))
                                (let ((_hd3253332878_ (##car _e3253232875_))
                                      (_tl3253432880_ (##cdr _e3253232875_)))
                                  (if (gx#identifier? _hd3253332878_)
                                      (if (gx#stx-eq? '%#ref _hd3253332878_)
                                          (if (gx#stx-pair? _tl3253432880_)
                                              (let ((_e3253532883_
                                                     (gx#stx-e
                                                      _tl3253432880_)))
                                                (let ((_hd3253632886_
                                                       (##car _e3253532883_))
                                                      (_tl3253732888_
                                                       (##cdr _e3253532883_)))
                                                  (if (gx#stx-null?
                                                       _tl3253732888_)
                                                      (_loop3251732859_
                                                       _lp-tl3252032872_
                                                       (cons _hd3253632886_
                                                             _xarg3252132864_))
                                                      (_g3242332729_
                                                       _g3242632732_))))
                                              (_g3242332729_ _g3242632732_))
                                          (_g3242332729_ _g3242632732_))
                                      (_g3242332729_ _g3242632732_))))
                              (_g3242332729_ _g3242632732_))))
                      (let ((_xarg3252232891_ (reverse _xarg3252132864_)))
                        (if (gx#stx-null? _tl3249232771_)
                            ((lambda (_L32894_
                                      _L32895_
                                      _L32896_
                                      _L32897_
                                      _L32898_
                                      _L32899_)
                               (if (if (gx#identifier-list?
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g3294232945_
                                                           _g3294332947_)
                                                    (cons _g3294232945_
                                                          _g3294332947_))
                                                  '()
                                                  _L32899_)))
                                       (if (gx#identifier? _L32898_)
                                           (if (gxc#runtime-identifier=?
                                                _L32897_
                                                'apply)
                                               (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g3294932952_ _g3295032954_)
                                    (cons _g3294932952_ _g3295032954_))
                                  '()
                                  _L32899_)))
                (length (begin
                          '#!void
                          (foldr1 (lambda (_g3295632959_ _g3295732961_)
                                    (cons _g3295632959_ _g3295732961_))
                                  '()
                                  _L32895_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (andmap2 gx#free-identifier=?
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g3296332966_ _g3296432968_)
                                    (cons _g3296332966_ _g3296432968_))
                                  '()
                                  _L32899_))
                        (begin
                          '#!void
                          (foldr1 (lambda (_g3297032973_ _g3297132975_)
                                    (cons _g3297032973_ _g3297132975_))
                                  '()
                                  _L32895_)))
               (if (gx#free-identifier=? _L32898_ _L32894_)
                   (not (find (lambda (_g3297732979_)
                                (gx#free-identifier=? _g3297732979_ _L32896_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g3298132984_ _g3298232986_)
                                          (cons _g3298132984_ _g3298232986_))
                                        (cons _L32898_ '())
                                        _L32899_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#t
                                   (_g3242332729_ _g3242632732_)))
                             _hd3253032854_
                             _xarg3252232891_
                             _hd3251232825_
                             _hd3250332801_
                             _tl3248332744_
                             _arg3248932763_)
                            (_g3242332729_ _g3242632732_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop3251732859_
                                                 _target3251432830_
                                                 '()))
                                              (_g3242332729_ _g3242632732_))
                                          (_g3242332729_ _g3242632732_))))
                                  (_g3242332729_ _g3242632732_))
                              (_g3242332729_ _g3242632732_))
                          (_g3242332729_ _g3242632732_))))
                  (_g3242332729_ _g3242632732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3242332729_
                                                   _g3242632732_)))))
                                        (_g3242332729_ _g3242632732_))
                                    (_g3242332729_ _g3242632732_))
                                (_g3242332729_ _g3242632732_))))
                        (_g3242332729_ _g3242632732_))
                    (_g3242332729_ _g3242632732_))
                (_g3242332729_ _g3242632732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3242332729_
                                                 _g3242632732_))))
                                        (_g3242332729_ _g3242632732_))
                                    (_g3242332729_ _g3242632732_))))
                            (_g3242332729_ _g3242632732_))
                        (_g3242332729_ _g3242632732_))
                    (_g3242332729_ _g3242632732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3242332729_
                                                     _g3242632732_))))
                                            (_g3242332729_ _g3242632732_))
                                        (_g3242332729_ _g3242632732_))
                                    (_g3242332729_ _g3242632732_))))
                            (_g3242332729_ _g3242632732_))))
                    (_g3242332729_ _g3242632732_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop3248432747_
                                         _target3248132742_
                                         '())))))
                                (_g3242332729_ _g3242632732_))
                            (_g3242332729_ _g3242632732_))))
                    (_g3242332729_ _g3242632732_))))
             (_g3242133183_
              (lambda (_g3242632992_)
                (if (gx#stx-pair? _g3242632992_)
                    (let ((_e3243032994_ (gx#stx-e _g3242632992_)))
                      (let ((_hd3243132997_ (##car _e3243032994_))
                            (_tl3243232999_ (##cdr _e3243032994_)))
                        (if (gx#stx-pair/null? _hd3243132997_)
                            (if (fx>= (gx#stx-length _hd3243132997_) '0)
                                (let ((_g34847_
                                       (gx#syntax-split-splice
                                        _hd3243132997_
                                        '0)))
                                  (begin
                                    (let ((_g34848_
                                           (if (##values? _g34847_)
                                               (##vector-length _g34847_)
                                               1)))
                                      (if (not (##fx= _g34848_ 2))
                                          (error "Context expects 2 values"
                                                 _g34848_)))
                                    (let ((_target3243333002_
                                           (##vector-ref _g34847_ 0))
                                          (_tl3243533004_
                                           (##vector-ref _g34847_ 1)))
                                      (if (gx#stx-null? _tl3243533004_)
                                          (letrec ((_loop3243633007_
                                                    (lambda (_hd3243433010_
                                                             _arg3244033012_)
                                                      (if (gx#stx-pair?
                                                           _hd3243433010_)
                                                          (let ((_e3243733015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3243433010_)))
                    (let ((_lp-hd3243833018_ (##car _e3243733015_))
                          (_lp-tl3243933020_ (##cdr _e3243733015_)))
                      (_loop3243633007_
                       _lp-tl3243933020_
                       (cons _lp-hd3243833018_ _arg3244033012_))))
                  (let ((_arg3244133023_ (reverse _arg3244033012_)))
                    (if (gx#stx-pair? _tl3243232999_)
                        (let ((_e3244233026_ (gx#stx-e _tl3243232999_)))
                          (let ((_hd3244333029_ (##car _e3244233026_))
                                (_tl3244433031_ (##cdr _e3244233026_)))
                            (if (gx#stx-pair? _hd3244333029_)
                                (let ((_e3244533034_
                                       (gx#stx-e _hd3244333029_)))
                                  (let ((_hd3244633037_ (##car _e3244533034_))
                                        (_tl3244733039_ (##cdr _e3244533034_)))
                                    (if (gx#identifier? _hd3244633037_)
                                        (if (gx#stx-eq? '%#call _hd3244633037_)
                                            (if (gx#stx-pair? _tl3244733039_)
                                                (let ((_e3244833042_
                                                       (gx#stx-e
                                                        _tl3244733039_)))
                                                  (let ((_hd3244933045_
                                                         (##car _e3244833042_))
                                                        (_tl3245033047_
                                                         (##cdr _e3244833042_)))
                                                    (if (gx#stx-pair?
                                                         _hd3244933045_)
                                                        (let ((_e3245133050_
                                                               (gx#stx-e
                                                                _hd3244933045_)))
                                                          (let ((_hd3245233053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3245133050_))
                        (_tl3245333055_ (##cdr _e3245133050_)))
                    (if (gx#identifier? _hd3245233053_)
                        (if (gx#stx-eq? '%#ref _hd3245233053_)
                            (if (gx#stx-pair? _tl3245333055_)
                                (let ((_e3245433058_
                                       (gx#stx-e _tl3245333055_)))
                                  (let ((_hd3245533061_ (##car _e3245433058_))
                                        (_tl3245633063_ (##cdr _e3245433058_)))
                                    (if (gx#stx-null? _tl3245633063_)
                                        (if (gx#stx-pair/null? _tl3245033047_)
                                            (if (fx>= (gx#stx-length
                                                       _tl3245033047_)
                                                      '0)
                                                (let ((_g34849_
                                                       (gx#syntax-split-splice
                                                        _tl3245033047_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34850_
                                                           (if (##values?
                                                                _g34849_)
                                                               (##vector-length
                                                                _g34849_)
                                                               1)))
                                                      (if (not (##fx= _g34850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g34850_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3245733066_
                                                           (##vector-ref
                                                            _g34849_
                                                            0))
                                                          (_tl3245933068_
                                                           (##vector-ref
                                                            _g34849_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl3245933068_)
                                                          (letrec ((_loop3246033071_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3245833074_ _xarg3246433076_)
                              (if (gx#stx-pair? _hd3245833074_)
                                  (let ((_e3246133079_
                                         (gx#stx-e _hd3245833074_)))
                                    (let ((_lp-hd3246233082_
                                           (##car _e3246133079_))
                                          (_lp-tl3246333084_
                                           (##cdr _e3246133079_)))
                                      (if (gx#stx-pair? _lp-hd3246233082_)
                                          (let ((_e3246633087_
                                                 (gx#stx-e _lp-hd3246233082_)))
                                            (let ((_hd3246733090_
                                                   (##car _e3246633087_))
                                                  (_tl3246833092_
                                                   (##cdr _e3246633087_)))
                                              (if (gx#identifier?
                                                   _hd3246733090_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd3246733090_)
                                                      (if (gx#stx-pair?
                                                           _tl3246833092_)
                                                          (let ((_e3246933095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3246833092_)))
                    (let ((_hd3247033098_ (##car _e3246933095_))
                          (_tl3247133100_ (##cdr _e3246933095_)))
                      (if (gx#stx-null? _tl3247133100_)
                          (_loop3246033071_
                           _lp-tl3246333084_
                           (cons _hd3247033098_ _xarg3246433076_))
                          (_g3242232989_ _g3242632992_))))
                  (_g3242232989_ _g3242632992_))
              (_g3242232989_ _g3242632992_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3242232989_
                                                   _g3242632992_))))
                                          (_g3242232989_ _g3242632992_))))
                                  (let ((_xarg3246533103_
                                         (reverse _xarg3246433076_)))
                                    (if (gx#stx-null? _tl3244433031_)
                                        ((lambda (_L33106_ _L33107_ _L33108_)
                                           (if (if (gx#identifier-list?
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g3313633139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g3313733141_)
                        (cons _g3313633139_ _g3313733141_))
                      '()
                      _L33108_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (fx= (length (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#!void
                              (foldr1 (lambda (_g3314333146_ _g3314433148_)
                                        (cons _g3314333146_ _g3314433148_))
                                      '()
                                      _L33108_)))
                    (length (begin
                              '#!void
                              (foldr1 (lambda (_g3315033153_ _g3315133155_)
                                        (cons _g3315033153_ _g3315133155_))
                                      '()
                                      _L33106_))))
               (if (andmap2 gx#free-identifier=?
                            (begin
                              '#!void
                              (foldr1 (lambda (_g3315733160_ _g3315833162_)
                                        (cons _g3315733160_ _g3315833162_))
                                      '()
                                      _L33108_))
                            (begin
                              '#!void
                              (foldr1 (lambda (_g3316433167_ _g3316533169_)
                                        (cons _g3316433167_ _g3316533169_))
                                      '()
                                      _L33106_)))
                   (not (find (lambda (_g3317133173_)
                                (gx#free-identifier=? _g3317133173_ _L33107_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g3317533178_ _g3317633180_)
                                          (cons _g3317533178_ _g3317633180_))
                                        '()
                                        _L33108_))))
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '#f)
                                               '#t
                                               (_g3242232989_ _g3242632992_)))
                                         _xarg3246533103_
                                         _hd3245533061_
                                         _arg3244133023_)
                                        (_g3242232989_ _g3242632992_)))))))
                    (_loop3246033071_ _target3245733066_ '()))
                  (_g3242232989_ _g3242632992_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3242232989_ _g3242632992_))
                                            (_g3242232989_ _g3242632992_))
                                        (_g3242232989_ _g3242632992_))))
                                (_g3242232989_ _g3242632992_))
                            (_g3242232989_ _g3242632992_))
                        (_g3242232989_ _g3242632992_))))
                (_g3242232989_ _g3242632992_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3242232989_ _g3242632992_))
                                            (_g3242232989_ _g3242632992_))
                                        (_g3242232989_ _g3242632992_))))
                                (_g3242232989_ _g3242632992_))))
                        (_g3242232989_ _g3242632992_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop3243633007_
                                             _target3243333002_
                                             '()))
                                          (_g3242232989_ _g3242632992_)))))
                                (_g3242232989_ _g3242632992_))
                            (_g3242232989_ _g3242632992_))))
                    (_g3242232989_ _g3242632992_)))))
        (_g3242133183_ _form32420_))))
  (define gxc#dispatch-lambda-form-delegate
    (lambda (_form31888_)
      (let* ((_g3189232016_
              (lambda (_g3189332013_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3189332013_)))
             (_g3189132133_
              (lambda (_g3189332019_)
                (if (gx#stx-pair? _g3189332019_)
                    (let ((_e3198232021_ (gx#stx-e _g3189332019_)))
                      (let ((_hd3198332024_ (##car _e3198232021_))
                            (_tl3198432026_ (##cdr _e3198232021_)))
                        (if (gx#stx-pair? _tl3198432026_)
                            (let ((_e3198532029_ (gx#stx-e _tl3198432026_)))
                              (let ((_hd3198632032_ (##car _e3198532029_))
                                    (_tl3198732034_ (##cdr _e3198532029_)))
                                (if (gx#stx-pair? _hd3198632032_)
                                    (let ((_e3198832037_
                                           (gx#stx-e _hd3198632032_)))
                                      (let ((_hd3198932040_
                                             (##car _e3198832037_))
                                            (_tl3199032042_
                                             (##cdr _e3198832037_)))
                                        (if (gx#identifier? _hd3198932040_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd3198932040_)
                                                (if (gx#stx-pair?
                                                     _tl3199032042_)
                                                    (let ((_e3199132045_
                                                           (gx#stx-e
                                                            _tl3199032042_)))
                                                      (let ((_hd3199232048_
                                                             (##car _e3199132045_))
                                                            (_tl3199332050_
                                                             (##cdr _e3199132045_)))
                                                        (if (gx#stx-pair?
                                                             _hd3199232048_)
                                                            (let ((_e3199432053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3199232048_)))
                      (let ((_hd3199532056_ (##car _e3199432053_))
                            (_tl3199632058_ (##cdr _e3199432053_)))
                        (if (gx#identifier? _hd3199532056_)
                            (if (gx#stx-eq? '%#ref _hd3199532056_)
                                (if (gx#stx-pair? _tl3199632058_)
                                    (let ((_e3199732061_
                                           (gx#stx-e _tl3199632058_)))
                                      (let ((_hd3199832064_
                                             (##car _e3199732061_))
                                            (_tl3199932066_
                                             (##cdr _e3199732061_)))
                                        (if (gx#stx-null? _tl3199932066_)
                                            (if (gx#stx-pair? _tl3199332050_)
                                                (let ((_e3200032069_
                                                       (gx#stx-e
                                                        _tl3199332050_)))
                                                  (let ((_hd3200132072_
                                                         (##car _e3200032069_))
                                                        (_tl3200232074_
                                                         (##cdr _e3200032069_)))
                                                    (if (gx#stx-pair?
                                                         _hd3200132072_)
                                                        (let ((_e3200332077_
                                                               (gx#stx-e
                                                                _hd3200132072_)))
                                                          (let ((_hd3200432080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3200332077_))
                        (_tl3200532082_ (##cdr _e3200332077_)))
                    (if (gx#identifier? _hd3200432080_)
                        (if (gx#stx-eq? '%#ref _hd3200432080_)
                            (if (gx#stx-pair? _tl3200532082_)
                                (let ((_e3200632085_
                                       (gx#stx-e _tl3200532082_)))
                                  (let ((_hd3200732088_ (##car _e3200632085_))
                                        (_tl3200832090_ (##cdr _e3200632085_)))
                                    (if (gx#stx-null? _tl3200832090_)
                                        (if (gx#stx-pair? _tl3200232074_)
                                            (let ((_e3200932093_
                                                   (gx#stx-e _tl3200232074_)))
                                              (let ((_hd3201032096_
                                                     (##car _e3200932093_))
                                                    (_tl3201132098_
                                                     (##cdr _e3200932093_)))
                                                (if (gx#stx-null?
                                                     _tl3201132098_)
                                                    (if (gx#stx-null?
                                                         _tl3198732034_)
                                                        ((lambda (_L32101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L32102_
                          _L32103_)
                   (gxc#identifier-symbol _L32101_))
                 _hd3200732088_
                 _hd3199832064_
                 _hd3198332024_)
                (_g3189232016_ _g3189332019_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3189232016_
                                                     _g3189332019_))))
                                            (_g3189232016_ _g3189332019_))
                                        (_g3189232016_ _g3189332019_))))
                                (_g3189232016_ _g3189332019_))
                            (_g3189232016_ _g3189332019_))
                        (_g3189232016_ _g3189332019_))))
                (_g3189232016_ _g3189332019_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3189232016_ _g3189332019_))
                                            (_g3189232016_ _g3189332019_))))
                                    (_g3189232016_ _g3189332019_))
                                (_g3189232016_ _g3189332019_))
                            (_g3189232016_ _g3189332019_))))
                    (_g3189232016_ _g3189332019_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3189232016_
                                                     _g3189332019_))
                                                (_g3189232016_ _g3189332019_))
                                            (_g3189232016_ _g3189332019_))))
                                    (_g3189232016_ _g3189332019_))))
                            (_g3189232016_ _g3189332019_))))
                    (_g3189232016_ _g3189332019_))))
             (_g3189032269_
              (lambda (_g3189332136_)
                (if (gx#stx-pair? _g3189332136_)
                    (let ((_e3194332138_ (gx#stx-e _g3189332136_)))
                      (let ((_hd3194432141_ (##car _e3194332138_))
                            (_tl3194532143_ (##cdr _e3194332138_)))
                        (if (gx#stx-pair/null? _hd3194432141_)
                            (if (fx>= (gx#stx-length _hd3194432141_) '0)
                                (let ((_g34851_
                                       (gx#syntax-split-splice
                                        _hd3194432141_
                                        '0)))
                                  (begin
                                    (let ((_g34852_
                                           (if (##values? _g34851_)
                                               (##vector-length _g34851_)
                                               1)))
                                      (if (not (##fx= _g34852_ 2))
                                          (error "Context expects 2 values"
                                                 _g34852_)))
                                    (let ((_target3194632146_
                                           (##vector-ref _g34851_ 0))
                                          (_tl3194832148_
                                           (##vector-ref _g34851_ 1)))
                                      (letrec ((_loop3194932151_
                                                (lambda (_hd3194732154_
                                                         _arg3195332156_)
                                                  (if (gx#stx-pair?
                                                       _hd3194732154_)
                                                      (let ((_e3195032159_
                                                             (gx#stx-e
                                                              _hd3194732154_)))
                                                        (let ((_lp-hd3195132162_
                                                               (##car _e3195032159_))
                                                              (_lp-tl3195232164_
                                                               (##cdr _e3195032159_)))
                                                          (_loop3194932151_
                                                           _lp-tl3195232164_
                                                           (cons _lp-hd3195132162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _arg3195332156_))))
              (let ((_arg3195432167_ (reverse _arg3195332156_)))
                (if (gx#stx-pair? _tl3194532143_)
                    (let ((_e3195532170_ (gx#stx-e _tl3194532143_)))
                      (let ((_hd3195632173_ (##car _e3195532170_))
                            (_tl3195732175_ (##cdr _e3195532170_)))
                        (if (gx#stx-pair? _hd3195632173_)
                            (let ((_e3195832178_ (gx#stx-e _hd3195632173_)))
                              (let ((_hd3195932181_ (##car _e3195832178_))
                                    (_tl3196032183_ (##cdr _e3195832178_)))
                                (if (gx#identifier? _hd3195932181_)
                                    (if (gx#stx-eq? '%#call _hd3195932181_)
                                        (if (gx#stx-pair? _tl3196032183_)
                                            (let ((_e3196132186_
                                                   (gx#stx-e _tl3196032183_)))
                                              (let ((_hd3196232189_
                                                     (##car _e3196132186_))
                                                    (_tl3196332191_
                                                     (##cdr _e3196132186_)))
                                                (if (gx#stx-pair?
                                                     _hd3196232189_)
                                                    (let ((_e3196432194_
                                                           (gx#stx-e
                                                            _hd3196232189_)))
                                                      (let ((_hd3196532197_
                                                             (##car _e3196432194_))
                                                            (_tl3196632199_
                                                             (##cdr _e3196432194_)))
                                                        (if (gx#identifier?
                                                             _hd3196532197_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd3196532197_)
                        (if (gx#stx-pair? _tl3196632199_)
                            (let ((_e3196732202_ (gx#stx-e _tl3196632199_)))
                              (let ((_hd3196832205_ (##car _e3196732202_))
                                    (_tl3196932207_ (##cdr _e3196732202_)))
                                (if (gx#stx-null? _tl3196932207_)
                                    (if (gx#stx-pair? _tl3196332191_)
                                        (let ((_e3197032210_
                                               (gx#stx-e _tl3196332191_)))
                                          (let ((_hd3197132213_
                                                 (##car _e3197032210_))
                                                (_tl3197232215_
                                                 (##cdr _e3197032210_)))
                                            (if (gx#stx-pair? _hd3197132213_)
                                                (let ((_e3197332218_
                                                       (gx#stx-e
                                                        _hd3197132213_)))
                                                  (let ((_hd3197432221_
                                                         (##car _e3197332218_))
                                                        (_tl3197532223_
                                                         (##cdr _e3197332218_)))
                                                    (if (gx#identifier?
                                                         _hd3197432221_)
                                                        (if (gx#stx-eq?
                                                             '%#ref
                                                             _hd3197432221_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3197532223_)
                        (let ((_e3197632226_ (gx#stx-e _tl3197532223_)))
                          (let ((_hd3197732229_ (##car _e3197632226_))
                                (_tl3197832231_ (##cdr _e3197632226_)))
                            (if (gx#stx-null? _tl3197832231_)
                                (if (gx#stx-null? _tl3195732175_)
                                    ((lambda (_L32234_
                                              _L32235_
                                              _L32236_
                                              _L32237_)
                                       (gxc#identifier-symbol _L32234_))
                                     _hd3197732229_
                                     _hd3196832205_
                                     _tl3194832148_
                                     _arg3195432167_)
                                    (_g3189132133_ _g3189332136_))
                                (_g3189132133_ _g3189332136_))))
                        (_g3189132133_ _g3189332136_))
                    (_g3189132133_ _g3189332136_))
                (_g3189132133_ _g3189332136_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3189132133_
                                                 _g3189332136_))))
                                        (_g3189132133_ _g3189332136_))
                                    (_g3189132133_ _g3189332136_))))
                            (_g3189132133_ _g3189332136_))
                        (_g3189132133_ _g3189332136_))
                    (_g3189132133_ _g3189332136_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3189132133_
                                                     _g3189332136_))))
                                            (_g3189132133_ _g3189332136_))
                                        (_g3189132133_ _g3189332136_))
                                    (_g3189132133_ _g3189332136_))))
                            (_g3189132133_ _g3189332136_))))
                    (_g3189132133_ _g3189332136_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop3194932151_
                                         _target3194632146_
                                         '())))))
                                (_g3189132133_ _g3189332136_))
                            (_g3189132133_ _g3189332136_))))
                    (_g3189132133_ _g3189332136_))))
             (_g3188932417_
              (lambda (_g3189332272_)
                (if (gx#stx-pair? _g3189332272_)
                    (let ((_e3189732274_ (gx#stx-e _g3189332272_)))
                      (let ((_hd3189832277_ (##car _e3189732274_))
                            (_tl3189932279_ (##cdr _e3189732274_)))
                        (if (gx#stx-pair/null? _hd3189832277_)
                            (if (fx>= (gx#stx-length _hd3189832277_) '0)
                                (let ((_g34853_
                                       (gx#syntax-split-splice
                                        _hd3189832277_
                                        '0)))
                                  (begin
                                    (let ((_g34854_
                                           (if (##values? _g34853_)
                                               (##vector-length _g34853_)
                                               1)))
                                      (if (not (##fx= _g34854_ 2))
                                          (error "Context expects 2 values"
                                                 _g34854_)))
                                    (let ((_target3190032282_
                                           (##vector-ref _g34853_ 0))
                                          (_tl3190232284_
                                           (##vector-ref _g34853_ 1)))
                                      (if (gx#stx-null? _tl3190232284_)
                                          (letrec ((_loop3190332287_
                                                    (lambda (_hd3190132290_
                                                             _arg3190732292_)
                                                      (if (gx#stx-pair?
                                                           _hd3190132290_)
                                                          (let ((_e3190432295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd3190132290_)))
                    (let ((_lp-hd3190532298_ (##car _e3190432295_))
                          (_lp-tl3190632300_ (##cdr _e3190432295_)))
                      (_loop3190332287_
                       _lp-tl3190632300_
                       (cons _lp-hd3190532298_ _arg3190732292_))))
                  (let ((_arg3190832303_ (reverse _arg3190732292_)))
                    (if (gx#stx-pair? _tl3189932279_)
                        (let ((_e3190932306_ (gx#stx-e _tl3189932279_)))
                          (let ((_hd3191032309_ (##car _e3190932306_))
                                (_tl3191132311_ (##cdr _e3190932306_)))
                            (if (gx#stx-pair? _hd3191032309_)
                                (let ((_e3191232314_
                                       (gx#stx-e _hd3191032309_)))
                                  (let ((_hd3191332317_ (##car _e3191232314_))
                                        (_tl3191432319_ (##cdr _e3191232314_)))
                                    (if (gx#identifier? _hd3191332317_)
                                        (if (gx#stx-eq? '%#call _hd3191332317_)
                                            (if (gx#stx-pair? _tl3191432319_)
                                                (let ((_e3191532322_
                                                       (gx#stx-e
                                                        _tl3191432319_)))
                                                  (let ((_hd3191632325_
                                                         (##car _e3191532322_))
                                                        (_tl3191732327_
                                                         (##cdr _e3191532322_)))
                                                    (if (gx#stx-pair?
                                                         _hd3191632325_)
                                                        (let ((_e3191832330_
                                                               (gx#stx-e
                                                                _hd3191632325_)))
                                                          (let ((_hd3191932333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3191832330_))
                        (_tl3192032335_ (##cdr _e3191832330_)))
                    (if (gx#identifier? _hd3191932333_)
                        (if (gx#stx-eq? '%#ref _hd3191932333_)
                            (if (gx#stx-pair? _tl3192032335_)
                                (let ((_e3192132338_
                                       (gx#stx-e _tl3192032335_)))
                                  (let ((_hd3192232341_ (##car _e3192132338_))
                                        (_tl3192332343_ (##cdr _e3192132338_)))
                                    (if (gx#stx-null? _tl3192332343_)
                                        (if (gx#stx-pair/null? _tl3191732327_)
                                            (if (fx>= (gx#stx-length
                                                       _tl3191732327_)
                                                      '0)
                                                (let ((_g34855_
                                                       (gx#syntax-split-splice
                                                        _tl3191732327_
                                                        '0)))
                                                  (begin
                                                    (let ((_g34856_
                                                           (if (##values?
                                                                _g34855_)
                                                               (##vector-length
                                                                _g34855_)
                                                               1)))
                                                      (if (not (##fx= _g34856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g34856_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target3192432346_
                                                           (##vector-ref
                                                            _g34855_
                                                            0))
                                                          (_tl3192632348_
                                                           (##vector-ref
                                                            _g34855_
                                                            1)))
                                                      (if (gx#stx-null?
                                                           _tl3192632348_)
                                                          (letrec ((_loop3192732351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd3192532354_ _xarg3193132356_)
                              (if (gx#stx-pair? _hd3192532354_)
                                  (let ((_e3192832359_
                                         (gx#stx-e _hd3192532354_)))
                                    (let ((_lp-hd3192932362_
                                           (##car _e3192832359_))
                                          (_lp-tl3193032364_
                                           (##cdr _e3192832359_)))
                                      (if (gx#stx-pair? _lp-hd3192932362_)
                                          (let ((_e3193332367_
                                                 (gx#stx-e _lp-hd3192932362_)))
                                            (let ((_hd3193432370_
                                                   (##car _e3193332367_))
                                                  (_tl3193532372_
                                                   (##cdr _e3193332367_)))
                                              (if (gx#identifier?
                                                   _hd3193432370_)
                                                  (if (gx#stx-eq?
                                                       '%#ref
                                                       _hd3193432370_)
                                                      (if (gx#stx-pair?
                                                           _tl3193532372_)
                                                          (let ((_e3193632375_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl3193532372_)))
                    (let ((_hd3193732378_ (##car _e3193632375_))
                          (_tl3193832380_ (##cdr _e3193632375_)))
                      (if (gx#stx-null? _tl3193832380_)
                          (_loop3192732351_
                           _lp-tl3193032364_
                           (cons _hd3193732378_ _xarg3193132356_))
                          (_g3189032269_ _g3189332272_))))
                  (_g3189032269_ _g3189332272_))
              (_g3189032269_ _g3189332272_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g3189032269_
                                                   _g3189332272_))))
                                          (_g3189032269_ _g3189332272_))))
                                  (let ((_xarg3193232383_
                                         (reverse _xarg3193132356_)))
                                    (if (gx#stx-null? _tl3191132311_)
                                        ((lambda (_L32386_ _L32387_ _L32388_)
                                           (gxc#identifier-symbol _L32387_))
                                         _xarg3193232383_
                                         _hd3192232341_
                                         _arg3190832303_)
                                        (_g3189032269_ _g3189332272_)))))))
                    (_loop3192732351_ _target3192432346_ '()))
                  (_g3189032269_ _g3189332272_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3189032269_ _g3189332272_))
                                            (_g3189032269_ _g3189332272_))
                                        (_g3189032269_ _g3189332272_))))
                                (_g3189032269_ _g3189332272_))
                            (_g3189032269_ _g3189332272_))
                        (_g3189032269_ _g3189332272_))))
                (_g3189032269_ _g3189332272_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3189032269_ _g3189332272_))
                                            (_g3189032269_ _g3189332272_))
                                        (_g3189032269_ _g3189332272_))))
                                (_g3189032269_ _g3189332272_))))
                        (_g3189032269_ _g3189332272_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop3190332287_
                                             _target3190032282_
                                             '()))
                                          (_g3189032269_ _g3189332272_)))))
                                (_g3189032269_ _g3189332272_))
                            (_g3189032269_ _g3189332272_))))
                    (_g3189032269_ _g3189332272_)))))
        (_g3188932417_ _form31888_))))
  (define gxc#lambda-form-arity
    (lambda (_form31692_)
      (let* ((_g3169431708_
              (lambda (_g3169531705_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3169531705_)))
             (_g3169331885_
              (lambda (_g3169531711_)
                (if (gx#stx-pair? _g3169531711_)
                    (let ((_e3169831713_ (gx#stx-e _g3169531711_)))
                      (let ((_hd3169931716_ (##car _e3169831713_))
                            (_tl3170031718_ (##cdr _e3169831713_)))
                        (if (gx#stx-pair? _tl3170031718_)
                            (let ((_e3170131721_ (gx#stx-e _tl3170031718_)))
                              (let ((_hd3170231724_ (##car _e3170131721_))
                                    (_tl3170331726_ (##cdr _e3170131721_)))
                                (if (gx#stx-null? _tl3170331726_)
                                    ((lambda (_L31729_ _L31730_)
                                       (let* ((_g3174531773_
                                               (lambda (_g3174631770_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g3174631770_)))
                                              (_g3174431786_
                                               (lambda (_g3174631776_)
                                                 ((lambda (_L31778_)
                                                    (cons '0 '()))
                                                  _g3174631776_)))
                                              (_g3174331835_
                                               (lambda (_g3174631789_)
                                                 (if (gx#stx-pair/null?
                                                      _g3174631789_)
                                                     (if (fx>= (gx#stx-length
                                                                _g3174631789_)
                                                               '0)
                                                         (let ((_g34857_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3174631789_
                         '0)))
                   (begin
                     (let ((_g34858_
                            (if (##values? _g34857_)
                                (##vector-length _g34857_)
                                1)))
                       (if (not (##fx= _g34858_ 2))
                           (error "Context expects 2 values" _g34858_)))
                     (let ((_target3175931791_ (##vector-ref _g34857_ 0))
                           (_tl3176131793_ (##vector-ref _g34857_ 1)))
                       (letrec ((_loop3176231796_
                                 (lambda (_hd3176031799_ _arg3176631801_)
                                   (if (gx#stx-pair? _hd3176031799_)
                                       (let ((_e3176331804_
                                              (gx#stx-e _hd3176031799_)))
                                         (let ((_lp-hd3176431807_
                                                (##car _e3176331804_))
                                               (_lp-tl3176531809_
                                                (##cdr _e3176331804_)))
                                           (_loop3176231796_
                                            _lp-tl3176531809_
                                            (cons _lp-hd3176431807_
                                                  _arg3176631801_))))
                                       (let ((_arg3176731812_
                                              (reverse _arg3176631801_)))
                                         ((lambda (_L31815_ _L31816_)
                                            (cons (length (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g3182731830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g3182831832_)
                              (cons _g3182731830_ _g3182831832_))
                            '()
                            _L31816_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                          _tl3176131793_
                                          _arg3176731812_))))))
                         (_loop3176231796_ _target3175931791_ '())))))
                 (_g3174431786_ _g3174631789_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3174431786_
                                                      _g3174631789_))))
                                              (_g3174231882_
                                               (lambda (_g3174631838_)
                                                 (if (gx#stx-pair/null?
                                                      _g3174631838_)
                                                     (if (fx>= (gx#stx-length
                                                                _g3174631838_)
                                                               '0)
                                                         (let ((_g34859_
                                                                (gx#syntax-split-splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g3174631838_
                         '0)))
                   (begin
                     (let ((_g34860_
                            (if (##values? _g34859_)
                                (##vector-length _g34859_)
                                1)))
                       (if (not (##fx= _g34860_ 2))
                           (error "Context expects 2 values" _g34860_)))
                     (let ((_target3174831840_ (##vector-ref _g34859_ 0))
                           (_tl3175031842_ (##vector-ref _g34859_ 1)))
                       (if (gx#stx-null? _tl3175031842_)
                           (letrec ((_loop3175131845_
                                     (lambda (_hd3174931848_ _arg3175531850_)
                                       (if (gx#stx-pair? _hd3174931848_)
                                           (let ((_e3175231853_
                                                  (gx#stx-e _hd3174931848_)))
                                             (let ((_lp-hd3175331856_
                                                    (##car _e3175231853_))
                                                   (_lp-tl3175431858_
                                                    (##cdr _e3175231853_)))
                                               (_loop3175131845_
                                                _lp-tl3175431858_
                                                (cons _lp-hd3175331856_
                                                      _arg3175531850_))))
                                           (let ((_arg3175631861_
                                                  (reverse _arg3175531850_)))
                                             ((lambda (_L31864_)
                                                (length (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g3187431877_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g3187531879_)
                            (cons _g3187431877_ _g3187531879_))
                          '()
                          _L31864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _arg3175631861_))))))
                             (_loop3175131845_ _target3174831840_ '()))
                           (_g3174331835_ _g3174631838_)))))
                 (_g3174331835_ _g3174631838_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g3174331835_
                                                      _g3174631838_)))))
                                         (_g3174231882_ _L31730_)))
                                     _hd3170231724_
                                     _hd3169931716_)
                                    (_g3169431708_ _g3169531711_))))
                            (_g3169431708_ _g3169531711_))))
                    (_g3169431708_ _g3169531711_)))))
        (_g3169331885_ _form31692_))))
  (define gxc#lambda-expr?
    (lambda (_expr31645_)
      (let* ((_g3164831658_
              (lambda (_g3164931655_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3164931655_)))
             (_g3164731665_ (lambda (_g3164931661_) ((lambda () '#f))))
             (_g3164631689_
              (lambda (_g3164931668_)
                (if (gx#stx-pair? _g3164931668_)
                    (let ((_e3165131670_ (gx#stx-e _g3164931668_)))
                      (let ((_hd3165231673_ (##car _e3165131670_))
                            (_tl3165331675_ (##cdr _e3165131670_)))
                        (if (gx#identifier? _hd3165231673_)
                            (if (gx#stx-eq? '%#lambda _hd3165231673_)
                                ((lambda (_L31678_) '#t) _tl3165331675_)
                                (_g3164731665_ _g3164931668_))
                            (_g3164731665_ _g3164931668_))))
                    (_g3164731665_ _g3164931668_)))))
        (_g3164631689_ _expr31645_))))
  (define gxc#case-lambda-expr?
    (lambda (_expr31598_)
      (let* ((_g3160131611_
              (lambda (_g3160231608_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3160231608_)))
             (_g3160031618_ (lambda (_g3160231614_) ((lambda () '#f))))
             (_g3159931642_
              (lambda (_g3160231621_)
                (if (gx#stx-pair? _g3160231621_)
                    (let ((_e3160431623_ (gx#stx-e _g3160231621_)))
                      (let ((_hd3160531626_ (##car _e3160431623_))
                            (_tl3160631628_ (##cdr _e3160431623_)))
                        (if (gx#identifier? _hd3160531626_)
                            (if (gx#stx-eq? '%#case-lambda _hd3160531626_)
                                ((lambda (_L31631_) '#t) _tl3160631628_)
                                (_g3160031618_ _g3160231621_))
                            (_g3160031618_ _g3160231621_))))
                    (_g3160031618_ _g3160231621_)))))
        (_g3159931642_ _expr31598_))))
  (define gxc#opt-lambda-expr?
    (lambda (_expr31467_)
      (let* ((_g3147031500_
              (lambda (_g3147131497_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3147131497_)))
             (_g3146931507_ (lambda (_g3147131503_) ((lambda () '#f))))
             (_g3146831595_
              (lambda (_g3147131510_)
                (if (gx#stx-pair? _g3147131510_)
                    (let ((_e3147531512_ (gx#stx-e _g3147131510_)))
                      (let ((_hd3147631515_ (##car _e3147531512_))
                            (_tl3147731517_ (##cdr _e3147531512_)))
                        (if (gx#identifier? _hd3147631515_)
                            (if (gx#stx-eq? '%#let-values _hd3147631515_)
                                (if (gx#stx-pair? _tl3147731517_)
                                    (let ((_e3147831520_
                                           (gx#stx-e _tl3147731517_)))
                                      (let ((_hd3147931523_
                                             (##car _e3147831520_))
                                            (_tl3148031525_
                                             (##cdr _e3147831520_)))
                                        (if (gx#stx-pair? _hd3147931523_)
                                            (let ((_e3148131528_
                                                   (gx#stx-e _hd3147931523_)))
                                              (let ((_hd3148231531_
                                                     (##car _e3148131528_))
                                                    (_tl3148331533_
                                                     (##cdr _e3148131528_)))
                                                (if (gx#stx-pair?
                                                     _hd3148231531_)
                                                    (let ((_e3148431536_
                                                           (gx#stx-e
                                                            _hd3148231531_)))
                                                      (let ((_hd3148531539_
                                                             (##car _e3148431536_))
                                                            (_tl3148631541_
                                                             (##cdr _e3148431536_)))
                                                        (if (gx#stx-pair?
                                                             _hd3148531539_)
                                                            (let ((_e3148731544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3148531539_)))
                      (let ((_hd3148831547_ (##car _e3148731544_))
                            (_tl3148931549_ (##cdr _e3148731544_)))
                        (if (gx#stx-null? _tl3148931549_)
                            (if (gx#stx-pair? _tl3148631541_)
                                (let ((_e3149031552_
                                       (gx#stx-e _tl3148631541_)))
                                  (let ((_hd3149131555_ (##car _e3149031552_))
                                        (_tl3149231557_ (##cdr _e3149031552_)))
                                    (if (gx#stx-null? _tl3149231557_)
                                        (if (gx#stx-null? _tl3148331533_)
                                            (if (gx#stx-pair? _tl3148031525_)
                                                (let ((_e3149331560_
                                                       (gx#stx-e
                                                        _tl3148031525_)))
                                                  (let ((_hd3149431563_
                                                         (##car _e3149331560_))
                                                        (_tl3149531565_
                                                         (##cdr _e3149331560_)))
                                                    (if (gx#stx-null?
                                                         _tl3149531565_)
                                                        ((lambda (_L31568_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L31569_
                          _L31570_)
                   (if (gx#identifier? _L31570_)
                       (if (gxc#lambda-expr? _L31569_)
                           (gxc#case-lambda-expr? _L31568_)
                           '#f)
                       '#f))
                 _hd3149431563_
                 _hd3149131555_
                 _hd3148831547_)
                (_g3146931507_ _g3147131510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3146931507_ _g3147131510_))
                                            (_g3146931507_ _g3147131510_))
                                        (_g3146931507_ _g3147131510_))))
                                (_g3146931507_ _g3147131510_))
                            (_g3146931507_ _g3147131510_))))
                    (_g3146931507_ _g3147131510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3146931507_
                                                     _g3147131510_))))
                                            (_g3146931507_ _g3147131510_))))
                                    (_g3146931507_ _g3147131510_))
                                (_g3146931507_ _g3147131510_))
                            (_g3146931507_ _g3147131510_))))
                    (_g3146931507_ _g3147131510_)))))
        (_g3146831595_ _expr31467_))))
  (define gxc#kw-lambda-expr?
    (lambda (_expr30792_)
      (let* ((_g3079530953_
              (lambda (_g3079630950_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g3079630950_)))
             (_g3079430960_ (lambda (_g3079630956_) ((lambda () '#f))))
             (_g3079331464_
              (lambda (_g3079630963_)
                (if (gx#stx-pair? _g3079630963_)
                    (let ((_e3080830965_ (gx#stx-e _g3079630963_)))
                      (let ((_hd3080930968_ (##car _e3080830965_))
                            (_tl3081030970_ (##cdr _e3080830965_)))
                        (if (gx#identifier? _hd3080930968_)
                            (if (gx#stx-eq? '%#let-values _hd3080930968_)
                                (if (gx#stx-pair? _tl3081030970_)
                                    (let ((_e3081130973_
                                           (gx#stx-e _tl3081030970_)))
                                      (let ((_hd3081230976_
                                             (##car _e3081130973_))
                                            (_tl3081330978_
                                             (##cdr _e3081130973_)))
                                        (if (gx#stx-pair? _hd3081230976_)
                                            (let ((_e3081430981_
                                                   (gx#stx-e _hd3081230976_)))
                                              (let ((_hd3081530984_
                                                     (##car _e3081430981_))
                                                    (_tl3081630986_
                                                     (##cdr _e3081430981_)))
                                                (if (gx#stx-pair?
                                                     _hd3081530984_)
                                                    (let ((_e3081730989_
                                                           (gx#stx-e
                                                            _hd3081530984_)))
                                                      (let ((_hd3081830992_
                                                             (##car _e3081730989_))
                                                            (_tl3081930994_
                                                             (##cdr _e3081730989_)))
                                                        (if (gx#stx-pair?
                                                             _hd3081830992_)
                                                            (let ((_e3082030997_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3081830992_)))
                      (let ((_hd3082131000_ (##car _e3082030997_))
                            (_tl3082231002_ (##cdr _e3082030997_)))
                        (if (gx#stx-null? _tl3082231002_)
                            (if (gx#stx-pair? _tl3081930994_)
                                (let ((_e3082331005_
                                       (gx#stx-e _tl3081930994_)))
                                  (let ((_hd3082431008_ (##car _e3082331005_))
                                        (_tl3082531010_ (##cdr _e3082331005_)))
                                    (if (gx#stx-pair? _hd3082431008_)
                                        (let ((_e3082631013_
                                               (gx#stx-e _hd3082431008_)))
                                          (let ((_hd3082731016_
                                                 (##car _e3082631013_))
                                                (_tl3082831018_
                                                 (##cdr _e3082631013_)))
                                            (if (gx#identifier? _hd3082731016_)
                                                (if (gx#stx-eq?
                                                     '%#let-values
                                                     _hd3082731016_)
                                                    (if (gx#stx-pair?
                                                         _tl3082831018_)
                                                        (let ((_e3082931021_
                                                               (gx#stx-e
                                                                _tl3082831018_)))
                                                          (let ((_hd3083031024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3082931021_))
                        (_tl3083131026_ (##cdr _e3082931021_)))
                    (if (gx#stx-pair? _hd3083031024_)
                        (let ((_e3083231029_ (gx#stx-e _hd3083031024_)))
                          (let ((_hd3083331032_ (##car _e3083231029_))
                                (_tl3083431034_ (##cdr _e3083231029_)))
                            (if (gx#stx-pair? _hd3083331032_)
                                (let ((_e3083531037_
                                       (gx#stx-e _hd3083331032_)))
                                  (let ((_hd3083631040_ (##car _e3083531037_))
                                        (_tl3083731042_ (##cdr _e3083531037_)))
                                    (if (gx#stx-pair? _hd3083631040_)
                                        (let ((_e3083831045_
                                               (gx#stx-e _hd3083631040_)))
                                          (let ((_hd3083931048_
                                                 (##car _e3083831045_))
                                                (_tl3084031050_
                                                 (##cdr _e3083831045_)))
                                            (if (gx#stx-null? _tl3084031050_)
                                                (if (gx#stx-pair?
                                                     _tl3083731042_)
                                                    (let ((_e3084131053_
                                                           (gx#stx-e
                                                            _tl3083731042_)))
                                                      (let ((_hd3084231056_
                                                             (##car _e3084131053_))
                                                            (_tl3084331058_
                                                             (##cdr _e3084131053_)))
                                                        (if (gx#stx-null?
                                                             _tl3084331058_)
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3083431034_)
                        (if (gx#stx-pair? _tl3083131026_)
                            (let ((_e3084431061_ (gx#stx-e _tl3083131026_)))
                              (let ((_hd3084531064_ (##car _e3084431061_))
                                    (_tl3084631066_ (##cdr _e3084431061_)))
                                (if (gx#stx-pair? _hd3084531064_)
                                    (let ((_e3084731069_
                                           (gx#stx-e _hd3084531064_)))
                                      (let ((_hd3084831072_
                                             (##car _e3084731069_))
                                            (_tl3084931074_
                                             (##cdr _e3084731069_)))
                                        (if (gx#identifier? _hd3084831072_)
                                            (if (gx#stx-eq?
                                                 '%#lambda
                                                 _hd3084831072_)
                                                (if (gx#stx-pair?
                                                     _tl3084931074_)
                                                    (let ((_e3085031077_
                                                           (gx#stx-e
                                                            _tl3084931074_)))
                                                      (let ((_hd3085131080_
                                                             (##car _e3085031077_))
                                                            (_tl3085231082_
                                                             (##cdr _e3085031077_)))
                                                        (if (gx#stx-pair?
                                                             _hd3085131080_)
                                                            (let ((_e3085331085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3085131080_)))
                      (let ((_hd3085431088_ (##car _e3085331085_))
                            (_tl3085531090_ (##cdr _e3085331085_)))
                        (if (gx#stx-pair? _tl3085231082_)
                            (let ((_e3085631093_ (gx#stx-e _tl3085231082_)))
                              (let ((_hd3085731096_ (##car _e3085631093_))
                                    (_tl3085831098_ (##cdr _e3085631093_)))
                                (if (gx#stx-pair? _hd3085731096_)
                                    (let ((_e3085931101_
                                           (gx#stx-e _hd3085731096_)))
                                      (let ((_hd3086031104_
                                             (##car _e3085931101_))
                                            (_tl3086131106_
                                             (##cdr _e3085931101_)))
                                        (if (gx#identifier? _hd3086031104_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd3086031104_)
                                                (if (gx#stx-pair?
                                                     _tl3086131106_)
                                                    (let ((_e3086231109_
                                                           (gx#stx-e
                                                            _tl3086131106_)))
                                                      (let ((_hd3086331112_
                                                             (##car _e3086231109_))
                                                            (_tl3086431114_
                                                             (##cdr _e3086231109_)))
                                                        (if (gx#stx-pair?
                                                             _hd3086331112_)
                                                            (let ((_e3086531117_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd3086331112_)))
                      (let ((_hd3086631120_ (##car _e3086531117_))
                            (_tl3086731122_ (##cdr _e3086531117_)))
                        (if (gx#identifier? _hd3086631120_)
                            (if (gx#stx-eq? '%#ref _hd3086631120_)
                                (if (gx#stx-pair? _tl3086731122_)
                                    (let ((_e3086831125_
                                           (gx#stx-e _tl3086731122_)))
                                      (let ((_hd3086931128_
                                             (##car _e3086831125_))
                                            (_tl3087031130_
                                             (##cdr _e3086831125_)))
                                        (if (gx#stx-null? _tl3087031130_)
                                            (if (gx#stx-pair? _tl3086431114_)
                                                (let ((_e3087131133_
                                                       (gx#stx-e
                                                        _tl3086431114_)))
                                                  (let ((_hd3087231136_
                                                         (##car _e3087131133_))
                                                        (_tl3087331138_
                                                         (##cdr _e3087131133_)))
                                                    (if (gx#stx-pair?
                                                         _hd3087231136_)
                                                        (let ((_e3087431141_
                                                               (gx#stx-e
                                                                _hd3087231136_)))
                                                          (let ((_hd3087531144_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3087431141_))
                        (_tl3087631146_ (##cdr _e3087431141_)))
                    (if (gx#identifier? _hd3087531144_)
                        (if (gx#stx-eq? '%#ref _hd3087531144_)
                            (if (gx#stx-pair? _tl3087631146_)
                                (let ((_e3087731149_
                                       (gx#stx-e _tl3087631146_)))
                                  (let ((_hd3087831152_ (##car _e3087731149_))
                                        (_tl3087931154_ (##cdr _e3087731149_)))
                                    (if (gx#stx-null? _tl3087931154_)
                                        (if (gx#stx-pair? _tl3087331138_)
                                            (let ((_e3088031157_
                                                   (gx#stx-e _tl3087331138_)))
                                              (let ((_hd3088131160_
                                                     (##car _e3088031157_))
                                                    (_tl3088231162_
                                                     (##cdr _e3088031157_)))
                                                (if (gx#stx-pair?
                                                     _hd3088131160_)
                                                    (let ((_e3088331165_
                                                           (gx#stx-e
                                                            _hd3088131160_)))
                                                      (let ((_hd3088431168_
                                                             (##car _e3088331165_))
                                                            (_tl3088531170_
                                                             (##cdr _e3088331165_)))
                                                        (if (gx#identifier?
                                                             _hd3088431168_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd3088431168_)
                        (if (gx#stx-pair? _tl3088531170_)
                            (let ((_e3088631173_ (gx#stx-e _tl3088531170_)))
                              (let ((_hd3088731176_ (##car _e3088631173_))
                                    (_tl3088831178_ (##cdr _e3088631173_)))
                                (if (gx#stx-null? _tl3088831178_)
                                    (if (gx#stx-null? _tl3085831098_)
                                        (if (gx#stx-null? _tl3084631066_)
                                            (if (gx#stx-null? _tl3082531010_)
                                                (if (gx#stx-null?
                                                     _tl3081630986_)
                                                    (if (gx#stx-pair?
                                                         _tl3081330978_)
                                                        (let ((_e3088931181_
                                                               (gx#stx-e
                                                                _tl3081330978_)))
                                                          (let ((_hd3089031184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3088931181_))
                        (_tl3089131186_ (##cdr _e3088931181_)))
                    (if (gx#stx-pair? _hd3089031184_)
                        (let ((_e3089231189_ (gx#stx-e _hd3089031184_)))
                          (let ((_hd3089331192_ (##car _e3089231189_))
                                (_tl3089431194_ (##cdr _e3089231189_)))
                            (if (gx#identifier? _hd3089331192_)
                                (if (gx#stx-eq? '%#lambda _hd3089331192_)
                                    (if (gx#stx-pair? _tl3089431194_)
                                        (let ((_e3089531197_
                                               (gx#stx-e _tl3089431194_)))
                                          (let ((_hd3089631200_
                                                 (##car _e3089531197_))
                                                (_tl3089731202_
                                                 (##cdr _e3089531197_)))
                                            (if (gx#stx-pair? _tl3089731202_)
                                                (let ((_e3089831205_
                                                       (gx#stx-e
                                                        _tl3089731202_)))
                                                  (let ((_hd3089931208_
                                                         (##car _e3089831205_))
                                                        (_tl3090031210_
                                                         (##cdr _e3089831205_)))
                                                    (if (gx#stx-pair?
                                                         _hd3089931208_)
                                                        (let ((_e3090131213_
                                                               (gx#stx-e
                                                                _hd3089931208_)))
                                                          (let ((_hd3090231216_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3090131213_))
                        (_tl3090331218_ (##cdr _e3090131213_)))
                    (if (gx#identifier? _hd3090231216_)
                        (if (gx#stx-eq? '%#call _hd3090231216_)
                            (if (gx#stx-pair? _tl3090331218_)
                                (let ((_e3090431221_
                                       (gx#stx-e _tl3090331218_)))
                                  (let ((_hd3090531224_ (##car _e3090431221_))
                                        (_tl3090631226_ (##cdr _e3090431221_)))
                                    (if (gx#stx-pair? _hd3090531224_)
                                        (let ((_e3090731229_
                                               (gx#stx-e _hd3090531224_)))
                                          (let ((_hd3090831232_
                                                 (##car _e3090731229_))
                                                (_tl3090931234_
                                                 (##cdr _e3090731229_)))
                                            (if (gx#identifier? _hd3090831232_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd3090831232_)
                                                    (if (gx#stx-pair?
                                                         _tl3090931234_)
                                                        (let ((_e3091031237_
                                                               (gx#stx-e
                                                                _tl3090931234_)))
                                                          (let ((_hd3091131240_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3091031237_))
                        (_tl3091231242_ (##cdr _e3091031237_)))
                    (if (gx#stx-null? _tl3091231242_)
                        (if (gx#stx-pair? _tl3090631226_)
                            (let ((_e3091331245_ (gx#stx-e _tl3090631226_)))
                              (let ((_hd3091431248_ (##car _e3091331245_))
                                    (_tl3091531250_ (##cdr _e3091331245_)))
                                (if (gx#stx-pair? _hd3091431248_)
                                    (let ((_e3091631253_
                                           (gx#stx-e _hd3091431248_)))
                                      (let ((_hd3091731256_
                                             (##car _e3091631253_))
                                            (_tl3091831258_
                                             (##cdr _e3091631253_)))
                                        (if (gx#identifier? _hd3091731256_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd3091731256_)
                                                (if (gx#stx-pair?
                                                     _tl3091831258_)
                                                    (let ((_e3091931261_
                                                           (gx#stx-e
                                                            _tl3091831258_)))
                                                      (let ((_hd3092031264_
                                                             (##car _e3091931261_))
                                                            (_tl3092131266_
                                                             (##cdr _e3091931261_)))
                                                        (if (gx#stx-null?
                                                             _tl3092131266_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3091531250_)
                        (let ((_e3092231269_ (gx#stx-e _tl3091531250_)))
                          (let ((_hd3092331272_ (##car _e3092231269_))
                                (_tl3092431274_ (##cdr _e3092231269_)))
                            (if (gx#stx-pair? _hd3092331272_)
                                (let ((_e3092531277_
                                       (gx#stx-e _hd3092331272_)))
                                  (let ((_hd3092631280_ (##car _e3092531277_))
                                        (_tl3092731282_ (##cdr _e3092531277_)))
                                    (if (gx#identifier? _hd3092631280_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd3092631280_)
                                            (if (gx#stx-pair? _tl3092731282_)
                                                (let ((_e3092831285_
                                                       (gx#stx-e
                                                        _tl3092731282_)))
                                                  (let ((_hd3092931288_
                                                         (##car _e3092831285_))
                                                        (_tl3093031290_
                                                         (##cdr _e3092831285_)))
                                                    (if (gx#stx-null?
                                                         _tl3093031290_)
                                                        (if (gx#stx-pair?
                                                             _tl3092431274_)
                                                            (let ((_e3093131293_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl3092431274_)))
                      (let ((_hd3093231296_ (##car _e3093131293_))
                            (_tl3093331298_ (##cdr _e3093131293_)))
                        (if (gx#stx-pair? _hd3093231296_)
                            (let ((_e3093431301_ (gx#stx-e _hd3093231296_)))
                              (let ((_hd3093531304_ (##car _e3093431301_))
                                    (_tl3093631306_ (##cdr _e3093431301_)))
                                (if (gx#identifier? _hd3093531304_)
                                    (if (gx#stx-eq? '%#ref _hd3093531304_)
                                        (if (gx#stx-pair? _tl3093631306_)
                                            (let ((_e3093731309_
                                                   (gx#stx-e _tl3093631306_)))
                                              (let ((_hd3093831312_
                                                     (##car _e3093731309_))
                                                    (_tl3093931314_
                                                     (##cdr _e3093731309_)))
                                                (if (gx#stx-null?
                                                     _tl3093931314_)
                                                    (if (gx#stx-pair?
                                                         _tl3093331298_)
                                                        (let ((_e3094031317_
                                                               (gx#stx-e
                                                                _tl3093331298_)))
                                                          (let ((_hd3094131320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e3094031317_))
                        (_tl3094231322_ (##cdr _e3094031317_)))
                    (if (gx#stx-pair? _hd3094131320_)
                        (let ((_e3094331325_ (gx#stx-e _hd3094131320_)))
                          (let ((_hd3094431328_ (##car _e3094331325_))
                                (_tl3094531330_ (##cdr _e3094331325_)))
                            (if (gx#identifier? _hd3094431328_)
                                (if (gx#stx-eq? '%#ref _hd3094431328_)
                                    (if (gx#stx-pair? _tl3094531330_)
                                        (let ((_e3094631333_
                                               (gx#stx-e _tl3094531330_)))
                                          (let ((_hd3094731336_
                                                 (##car _e3094631333_))
                                                (_tl3094831338_
                                                 (##cdr _e3094631333_)))
                                            (if (gx#stx-null? _tl3094831338_)
                                                (if (gx#stx-null?
                                                     _tl3094231322_)
                                                    (if (gx#stx-null?
                                                         _tl3090031210_)
                                                        (if (gx#stx-null?
                                                             _tl3089131186_)
                                                            ((lambda (_L31341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L31342_
                              _L31343_
                              _L31344_
                              _L31345_
                              _L31346_
                              _L31347_
                              _L31348_
                              _L31349_
                              _L31350_
                              _L31351_)
                       (if (gxc#runtime-identifier=? _L31348_ 'apply)
                           (if (gxc#runtime-identifier=? _L31344_ 'apply)
                               (if (gxc#runtime-identifier=?
                                    _L31343_
                                    'keyword-dispatch)
                                   (if (gx#free-identifier=? _L31351_ _L31342_)
                                       (if (gx#free-identifier=?
                                            _L31350_
                                            _L31347_)
                                           (if (gx#free-identifier=?
                                                _L31345_
                                                _L31341_)
                                               (gx#free-identifier=?
                                                _L31349_
                                                _L31346_)
                                               '#f)
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f))
                     _hd3094731336_
                     _hd3093831312_
                     _hd3092031264_
                     _hd3091131240_
                     _hd3089631200_
                     _hd3088731176_
                     _hd3087831152_
                     _hd3086931128_
                     _hd3085431088_
                     _hd3083931048_
                     _hd3082131000_)
                    (_g3079430960_ _g3079630963_))
                (_g3079430960_ _g3079630963_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3079430960_
                                                     _g3079630963_))
                                                (_g3079430960_
                                                 _g3079630963_))))
                                        (_g3079430960_ _g3079630963_))
                                    (_g3079430960_ _g3079630963_))
                                (_g3079430960_ _g3079630963_))))
                        (_g3079430960_ _g3079630963_))))
                (_g3079430960_ _g3079630963_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3079430960_
                                                     _g3079630963_))))
                                            (_g3079430960_ _g3079630963_))
                                        (_g3079430960_ _g3079630963_))
                                    (_g3079430960_ _g3079630963_))))
                            (_g3079430960_ _g3079630963_))))
                    (_g3079430960_ _g3079630963_))
                (_g3079430960_ _g3079630963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3079430960_ _g3079630963_))
                                            (_g3079430960_ _g3079630963_))
                                        (_g3079430960_ _g3079630963_))))
                                (_g3079430960_ _g3079630963_))))
                        (_g3079430960_ _g3079630963_))
                    (_g3079430960_ _g3079630963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3079430960_
                                                     _g3079630963_))
                                                (_g3079430960_ _g3079630963_))
                                            (_g3079430960_ _g3079630963_))))
                                    (_g3079430960_ _g3079630963_))))
                            (_g3079430960_ _g3079630963_))
                        (_g3079430960_ _g3079630963_))))
                (_g3079430960_ _g3079630963_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3079430960_
                                                     _g3079630963_))
                                                (_g3079430960_
                                                 _g3079630963_))))
                                        (_g3079430960_ _g3079630963_))))
                                (_g3079430960_ _g3079630963_))
                            (_g3079430960_ _g3079630963_))
                        (_g3079430960_ _g3079630963_))))
                (_g3079430960_ _g3079630963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3079430960_
                                                 _g3079630963_))))
                                        (_g3079430960_ _g3079630963_))
                                    (_g3079430960_ _g3079630963_))
                                (_g3079430960_ _g3079630963_))))
                        (_g3079430960_ _g3079630963_))))
                (_g3079430960_ _g3079630963_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3079430960_
                                                     _g3079630963_))
                                                (_g3079430960_ _g3079630963_))
                                            (_g3079430960_ _g3079630963_))
                                        (_g3079430960_ _g3079630963_))
                                    (_g3079430960_ _g3079630963_))))
                            (_g3079430960_ _g3079630963_))
                        (_g3079430960_ _g3079630963_))
                    (_g3079430960_ _g3079630963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3079430960_
                                                     _g3079630963_))))
                                            (_g3079430960_ _g3079630963_))
                                        (_g3079430960_ _g3079630963_))))
                                (_g3079430960_ _g3079630963_))
                            (_g3079430960_ _g3079630963_))
                        (_g3079430960_ _g3079630963_))))
                (_g3079430960_ _g3079630963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g3079430960_ _g3079630963_))
                                            (_g3079430960_ _g3079630963_))))
                                    (_g3079430960_ _g3079630963_))
                                (_g3079430960_ _g3079630963_))
                            (_g3079430960_ _g3079630963_))))
                    (_g3079430960_ _g3079630963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3079430960_
                                                     _g3079630963_))
                                                (_g3079430960_ _g3079630963_))
                                            (_g3079430960_ _g3079630963_))))
                                    (_g3079430960_ _g3079630963_))))
                            (_g3079430960_ _g3079630963_))))
                    (_g3079430960_ _g3079630963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3079430960_
                                                     _g3079630963_))
                                                (_g3079430960_ _g3079630963_))
                                            (_g3079430960_ _g3079630963_))))
                                    (_g3079430960_ _g3079630963_))))
                            (_g3079430960_ _g3079630963_))
                        (_g3079430960_ _g3079630963_))
                    (_g3079430960_ _g3079630963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3079430960_
                                                     _g3079630963_))
                                                (_g3079430960_
                                                 _g3079630963_))))
                                        (_g3079430960_ _g3079630963_))))
                                (_g3079430960_ _g3079630963_))))
                        (_g3079430960_ _g3079630963_))))
                (_g3079430960_ _g3079630963_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3079430960_
                                                     _g3079630963_))
                                                (_g3079430960_
                                                 _g3079630963_))))
                                        (_g3079430960_ _g3079630963_))))
                                (_g3079430960_ _g3079630963_))
                            (_g3079430960_ _g3079630963_))))
                    (_g3079430960_ _g3079630963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g3079430960_
                                                     _g3079630963_))))
                                            (_g3079430960_ _g3079630963_))))
                                    (_g3079430960_ _g3079630963_))
                                (_g3079430960_ _g3079630963_))
                            (_g3079430960_ _g3079630963_))))
                    (_g3079430960_ _g3079630963_)))))
        (_g3079331464_ _expr30792_))))
  (begin
    (define gxc#lift-case-lambda-clauses__%
      (lambda (_stx30534_ _id30535_ _clauses30536_ _gensym?30537_)
        (let _lp30539_ ((_rest30541_ _clauses30536_)
                        (_ids30542_ '())
                        (_impls30543_ '())
                        (_clauses30544_ '()))
          (let* ((_rest3054530553_ _rest30541_)
                 (_else3054730561_
                  (lambda ()
                    (values (reverse _ids30542_)
                            (reverse _impls30543_)
                            (reverse _clauses30544_))))
                 (_K3054930766_
                  (lambda (_rest30564_ _clause30565_)
                    (if (gxc#dispatch-lambda-form? _clause30565_)
                        (_lp30539_
                         _rest30564_
                         _ids30542_
                         _impls30543_
                         (cons _clause30565_ _clauses30544_))
                        (let* ((_g3056730578_
                                (lambda (_g3056830575_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g3056830575_)))
                               (_g3056630763_
                                (lambda (_g3056830581_)
                                  (if (gx#stx-pair? _g3056830581_)
                                      (let ((_e3057130583_
                                             (gx#stx-e _g3056830581_)))
                                        (let ((_hd3057230586_
                                               (##car _e3057130583_))
                                              (_tl3057330588_
                                               (##cdr _e3057130583_)))
                                          ((lambda (_L30591_ _L30592_)
                                             (let* ((_id30609_
                                                     (make-symbol
                                                      (gx#stx-e _id30535_)
                                                      '"__"
                                                      (length _clauses30544_)
                                                      (if _gensym?30537_
                                                          (gensym '__)
                                                          '"")))
                                                    (_id30611_
                                                     (gx#core-quote-syntax__1
                                                      _id30609_
                                                      (gx#stx-source
                                                       _stx30534_)))
                                                    (_impl30613_
                                                     (gxc#xform-wrap-source
                                                      (cons (gx#datum->syntax__0
                                                             '#f
                                                             '%#lambda)
                                                            (cons _L30592_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L30591_))
              _stx30534_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_clause30760_
                                                     (let* ((_g3061730645_
                                                             (lambda (_g3061830642_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax"
                                                                _g3061830642_)))
                                                            (_g3061630661_
                                                             (lambda (_g3061830648_)
                                                               ((lambda (_L30650_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L30592_
                                (cons (gxc#xform-wrap-source
                                       (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'apply '()))
                                                   (cons (cons '%#ref
                                                               (cons _id30611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                             (cons _L30650_ '()))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx30534_)
                                      '())))
                        _g3061830648_)))
                    (_g3061530710_
                     (lambda (_g3061830664_)
                       (if (gx#stx-pair/null? _g3061830664_)
                           (if (fx>= (gx#stx-length _g3061830664_) '0)
                               (let ((_g34861_
                                      (gx#syntax-split-splice
                                       _g3061830664_
                                       '0)))
                                 (begin
                                   (let ((_g34862_
                                          (if (##values? _g34861_)
                                              (##vector-length _g34861_)
                                              1)))
                                     (if (not (##fx= _g34862_ 2))
                                         (error "Context expects 2 values"
                                                _g34862_)))
                                   (let ((_target3063130666_
                                          (##vector-ref _g34861_ 0))
                                         (_tl3063330668_
                                          (##vector-ref _g34861_ 1)))
                                     (letrec ((_loop3063430671_
                                               (lambda (_hd3063230674_
                                                        _arg3063830676_)
                                                 (if (gx#stx-pair?
                                                      _hd3063230674_)
                                                     (let ((_e3063530679_
                                                            (gx#stx-e
                                                             _hd3063230674_)))
                                                       (let ((_lp-hd3063630682_
                                                              (##car _e3063530679_))
                                                             (_lp-tl3063730684_
                                                              (##cdr _e3063530679_)))
                                                         (_loop3063430671_
                                                          _lp-tl3063730684_
                                                          (cons _lp-hd3063630682_
                                                                _arg3063830676_))))
                                                     (let ((_arg3063930687_
                                                            (reverse _arg3063830676_)))
                                                       ((lambda (_L30690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L30691_)
                  (cons _L30592_
                        (cons (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons 'apply '()))
                                           (cons (cons '%#ref
                                                       (cons _id30611_ '()))
                                                 (foldr1 cons
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '%#ref)
                             (cons _L30690_ '()))
                       '())
                 (begin
                   '#!void
                   (foldr1 (lambda (_g3070230705_ _g3070330707_)
                             (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                                         (cons _g3070230705_ '()))
                                   _g3070330707_))
                           '()
                           _L30691_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _stx30534_)
                              '())))
                _tl3063330668_
                _arg3063930687_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_loop3063430671_
                                        _target3063130666_
                                        '())))))
                               (_g3061630661_ _g3061830664_))
                           (_g3061630661_ _g3061830664_))))
                    (_g3061430757_
                     (lambda (_g3061830713_)
                       (if (gx#stx-pair/null? _g3061830713_)
                           (if (fx>= (gx#stx-length _g3061830713_) '0)
                               (let ((_g34863_
                                      (gx#syntax-split-splice
                                       _g3061830713_
                                       '0)))
                                 (begin
                                   (let ((_g34864_
                                          (if (##values? _g34863_)
                                              (##vector-length _g34863_)
                                              1)))
                                     (if (not (##fx= _g34864_ 2))
                                         (error "Context expects 2 values"
                                                _g34864_)))
                                   (let ((_target3062030715_
                                          (##vector-ref _g34863_ 0))
                                         (_tl3062230717_
                                          (##vector-ref _g34863_ 1)))
                                     (if (gx#stx-null? _tl3062230717_)
                                         (letrec ((_loop3062330720_
                                                   (lambda (_hd3062130723_
                                                            _arg3062730725_)
                                                     (if (gx#stx-pair?
                                                          _hd3062130723_)
                                                         (let ((_e3062430728_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd3062130723_)))
                   (let ((_lp-hd3062530731_ (##car _e3062430728_))
                         (_lp-tl3062630733_ (##cdr _e3062430728_)))
                     (_loop3062330720_
                      _lp-tl3062630733_
                      (cons _lp-hd3062530731_ _arg3062730725_))))
                 (let ((_arg3062830736_ (reverse _arg3062730725_)))
                   ((lambda (_L30739_)
                      (cons _L30592_
                            (cons (gxc#xform-wrap-source
                                   (cons '%#call
                                         (cons (cons '%#ref
                                                     (cons _id30611_ '()))
                                               (begin
                                                 '#!void
                                                 (foldr1 (lambda (_g3074930752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g3075030754_)
                   (cons (cons (gx#datum->syntax__0 '#f '%#ref)
                               (cons _g3074930752_ '()))
                         _g3075030754_))
                 '()
                 _L30739_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _stx30534_)
                                  '())))
                    _arg3062830736_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop3062330720_
                                            _target3062030715_
                                            '()))
                                         (_g3061530710_ _g3061830713_)))))
                               (_g3061530710_ _g3061830713_))
                           (_g3061530710_ _g3061830713_)))))
               (_g3061430757_ _L30592_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp30539_
                                                _rest30564_
                                                (cons _id30611_ _ids30542_)
                                                (cons _impl30613_ _impls30543_)
                                                (cons _clause30760_
                                                      _clauses30544_))))
                                           _tl3057330588_
                                           _hd3057230586_)))
                                      (_g3056730578_ _g3056830581_)))))
                          (_g3056630763_ _clause30565_))))))
            (if (##pair? _rest3054530553_)
                (let ((_hd3055030769_ (##car _rest3054530553_))
                      (_tl3055130771_ (##cdr _rest3054530553_)))
                  (let* ((_clause30774_ _hd3055030769_)
                         (_rest30776_ _tl3055130771_))
                    (_K3054930766_ _rest30776_ _clause30774_)))
                (_else3054730561_))))))
    (begin
      (define gxc#lift-case-lambda-clauses__0
        (lambda (_stx30781_ _id30782_ _clauses30783_)
          (let ((_gensym?30785_ '#f))
            (gxc#lift-case-lambda-clauses__%
             _stx30781_
             _id30782_
             _clauses30783_
             _gensym?30785_))))
      (define gxc#lift-case-lambda-clauses
        (lambda _g34866_
          (let ((_g34865_ (length _g34866_)))
            (cond ((##fx= _g34865_ 3)
                   (apply gxc#lift-case-lambda-clauses__0 _g34866_))
                  ((##fx= _g34865_ 4)
                   (apply gxc#lift-case-lambda-clauses__% _g34866_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#lift-case-lambda-clauses
                    _g34866_))))))))
  (define gxc#lift-top-lambda-define-values%
    (lambda (_stx29811_)
      (letrec ((_case-lambda-clause-def29813_
                (lambda (_id30530_ _impl30531_)
                  (gxc#xform-wrap-source
                   (cons '%#define-values
                         (cons (cons _id30530_ '())
                               (cons (gxc#compile-e _impl30531_) '())))
                   _stx29811_)))
               (_opt-lambda-dispatch-name29814_
                (lambda (_id30526_)
                  (if (uninterned-symbol? _id30526_)
                      (let ((_str30528_ (symbol->string _id30526_)))
                        (if (string-prefix? _str30528_ '"opt-lambda")
                            '"%"
                            _id30526_))
                      _id30526_)))
               (_kw-lambda-dispatch-name29815_
                (lambda (_id30521_ _name30522_)
                  (if (uninterned-symbol? _id30521_)
                      (let ((_str30524_ (symbol->string _id30521_)))
                        (if (string-prefix? _str30524_ '"kw-lambda")
                            _name30522_
                            _id30521_))
                      _id30521_))))
        (let* ((_g2982029879_
                (lambda (_g2982129876_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2982129876_)))
               (_g2981929925_
                (lambda (_g2982129882_)
                  (if (gx#stx-pair? _g2982129882_)
                      (let ((_e2986629884_ (gx#stx-e _g2982129882_)))
                        (let ((_hd2986729887_ (##car _e2986629884_))
                              (_tl2986829889_ (##cdr _e2986629884_)))
                          (if (gx#stx-pair? _tl2986829889_)
                              (let ((_e2986929892_ (gx#stx-e _tl2986829889_)))
                                (let ((_hd2987029895_ (##car _e2986929892_))
                                      (_tl2987129897_ (##cdr _e2986929892_)))
                                  (if (gx#stx-pair? _tl2987129897_)
                                      (let ((_e2987229900_
                                             (gx#stx-e _tl2987129897_)))
                                        (let ((_hd2987329903_
                                               (##car _e2987229900_))
                                              (_tl2987429905_
                                               (##cdr _e2987229900_)))
                                          (if (gx#stx-null? _tl2987429905_)
                                              ((lambda (_L29908_ _L29909_)
                                                 (gxc#xform-wrap-source
                                                  (cons '%#define-values
                                                        (cons _L29909_
                                                              (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L29908_)
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx29811_))
                                               _hd2987329903_
                                               _hd2987029895_)
                                              (_g2982029879_ _g2982129882_))))
                                      (_g2982029879_ _g2982129882_))))
                              (_g2982029879_ _g2982129882_))))
                      (_g2982029879_ _g2982129882_))))
               (_g2981830211_
                (lambda (_g2982129928_)
                  (if (gx#stx-pair? _g2982129928_)
                      (let ((_e2985229930_ (gx#stx-e _g2982129928_)))
                        (let ((_hd2985329933_ (##car _e2985229930_))
                              (_tl2985429935_ (##cdr _e2985229930_)))
                          (if (gx#stx-pair? _tl2985429935_)
                              (let ((_e2985529938_ (gx#stx-e _tl2985429935_)))
                                (let ((_hd2985629941_ (##car _e2985529938_))
                                      (_tl2985729943_ (##cdr _e2985529938_)))
                                  (if (gx#stx-pair? _hd2985629941_)
                                      (let ((_e2985829946_
                                             (gx#stx-e _hd2985629941_)))
                                        (let ((_hd2985929949_
                                               (##car _e2985829946_))
                                              (_tl2986029951_
                                               (##cdr _e2985829946_)))
                                          (if (gx#stx-null? _tl2986029951_)
                                              (if (gx#stx-pair? _tl2985729943_)
                                                  (let ((_e2986129954_
                                                         (gx#stx-e
                                                          _tl2985729943_)))
                                                    (let ((_hd2986229957_
                                                           (##car _e2986129954_))
                                                          (_tl2986329959_
                                                           (##cdr _e2986129954_)))
                                                      (if (gx#stx-null?
                                                           _tl2986329959_)
                                                          ((lambda (_L29962_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L29963_)
                     (if (if (gx#identifier? _L29963_)
                             (gxc#kw-lambda-expr? _L29962_)
                             '#f)
                         (let* ((_g2997930032_
                                 (lambda (_g2998030029_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g2998030029_)))
                                (_g2997830208_
                                 (lambda (_g2998030035_)
                                   (if (gx#stx-pair? _g2998030035_)
                                       (let ((_e2998630037_
                                              (gx#stx-e _g2998030035_)))
                                         (let ((_hd2998730040_
                                                (##car _e2998630037_))
                                               (_tl2998830042_
                                                (##cdr _e2998630037_)))
                                           (if (gx#stx-pair? _tl2998830042_)
                                               (let ((_e2998930045_
                                                      (gx#stx-e
                                                       _tl2998830042_)))
                                                 (let ((_hd2999030048_
                                                        (##car _e2998930045_))
                                                       (_tl2999130050_
                                                        (##cdr _e2998930045_)))
                                                   (if (gx#stx-pair?
                                                        _hd2999030048_)
                                                       (let ((_e2999230053_
                                                              (gx#stx-e
                                                               _hd2999030048_)))
                                                         (let ((_hd2999330056_
                                                                (##car _e2999230053_))
                                                               (_tl2999430058_
                                                                (##cdr _e2999230053_)))
                                                           (if (gx#stx-pair?
                                                                _hd2999330056_)
                                                               (let ((_e2999530061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd2999330056_)))
                         (let ((_hd2999630064_ (##car _e2999530061_))
                               (_tl2999730066_ (##cdr _e2999530061_)))
                           (if (gx#stx-pair? _hd2999630064_)
                               (let ((_e2999830069_ (gx#stx-e _hd2999630064_)))
                                 (let ((_hd2999930072_ (##car _e2999830069_))
                                       (_tl3000030074_ (##cdr _e2999830069_)))
                                   (if (gx#stx-null? _tl3000030074_)
                                       (if (gx#stx-pair? _tl2999730066_)
                                           (let ((_e3000130077_
                                                  (gx#stx-e _tl2999730066_)))
                                             (let ((_hd3000230080_
                                                    (##car _e3000130077_))
                                                   (_tl3000330082_
                                                    (##cdr _e3000130077_)))
                                               (if (gx#stx-pair?
                                                    _hd3000230080_)
                                                   (let ((_e3000430085_
                                                          (gx#stx-e
                                                           _hd3000230080_)))
                                                     (let ((_hd3000530088_
                                                            (##car _e3000430085_))
                                                           (_tl3000630090_
                                                            (##cdr _e3000430085_)))
                                                       (if (gx#stx-pair?
                                                            _tl3000630090_)
                                                           (let ((_e3000730093_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3000630090_)))
                     (let ((_hd3000830096_ (##car _e3000730093_))
                           (_tl3000930098_ (##cdr _e3000730093_)))
                       (if (gx#stx-pair? _hd3000830096_)
                           (let ((_e3001030101_ (gx#stx-e _hd3000830096_)))
                             (let ((_hd3001130104_ (##car _e3001030101_))
                                   (_tl3001230106_ (##cdr _e3001030101_)))
                               (if (gx#stx-pair? _hd3001130104_)
                                   (let ((_e3001330109_
                                          (gx#stx-e _hd3001130104_)))
                                     (let ((_hd3001430112_
                                            (##car _e3001330109_))
                                           (_tl3001530114_
                                            (##cdr _e3001330109_)))
                                       (if (gx#stx-pair? _hd3001430112_)
                                           (let ((_e3001630117_
                                                  (gx#stx-e _hd3001430112_)))
                                             (let ((_hd3001730120_
                                                    (##car _e3001630117_))
                                                   (_tl3001830122_
                                                    (##cdr _e3001630117_)))
                                               (if (gx#stx-null?
                                                    _tl3001830122_)
                                                   (if (gx#stx-pair?
                                                        _tl3001530114_)
                                                       (let ((_e3001930125_
                                                              (gx#stx-e
                                                               _tl3001530114_)))
                                                         (let ((_hd3002030128_
                                                                (##car _e3001930125_))
                                                               (_tl3002130130_
                                                                (##cdr _e3001930125_)))
                                                           (if (gx#stx-null?
                                                                _tl3002130130_)
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl3001230106_)
                           (if (gx#stx-pair? _tl3000930098_)
                               (let ((_e3002230133_ (gx#stx-e _tl3000930098_)))
                                 (let ((_hd3002330136_ (##car _e3002230133_))
                                       (_tl3002430138_ (##cdr _e3002230133_)))
                                   (if (gx#stx-null? _tl3002430138_)
                                       (if (gx#stx-null? _tl3000330082_)
                                           (if (gx#stx-null? _tl2999430058_)
                                               (if (gx#stx-pair?
                                                    _tl2999130050_)
                                                   (let ((_e3002530141_
                                                          (gx#stx-e
                                                           _tl2999130050_)))
                                                     (let ((_hd3002630144_
                                                            (##car _e3002530141_))
                                                           (_tl3002730146_
                                                            (##cdr _e3002530141_)))
                                                       (if (gx#stx-null?
                                                            _tl3002730146_)
                                                           ((lambda (_L30149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L30150_
                             _L30151_
                             _L30152_
                             _L30153_)
                      (let* ((_get-kws-id30193_
                              (make-symbol
                               (gx#stx-e _L29963_)
                               '"__"
                               (_kw-lambda-dispatch-name29815_
                                (gx#stx-e _L30153_)
                                '"@")))
                             (_get-kws-id30195_
                              (gx#core-quote-syntax__1
                               _get-kws-id30193_
                               (gx#stx-source _stx29811_)))
                             (_main-id30197_
                              (make-symbol
                               (gx#stx-e _L29963_)
                               '"__"
                               (_kw-lambda-dispatch-name29815_
                                (gx#stx-e _L30152_)
                                '"%")))
                             (_main-id30199_
                              (gx#core-quote-syntax__1
                               _main-id30197_
                               (gx#stx-source _stx29811_)))
                             (_g34867_
                              (gx#core-bind-runtime!__0 _get-kws-id30195_))
                             (_g34868_
                              (gx#core-bind-runtime!__0 _main-id30199_))
                             (_new-kw-dispatch30203_
                              (gxc#apply-expression-subst
                               _L30149_
                               _L30153_
                               _get-kws-id30195_))
                             (_new-get-kws30205_
                              (gxc#apply-expression-subst
                               _L30150_
                               _L30152_
                               _main-id30199_)))
                        (begin
                          (gxc#verbose
                           '"lift kw-lambda dispatch "
                           (gxc#identifier-symbol _L29963_)
                           '" => "
                           (gxc#identifier-symbol _get-kws-id30195_)
                           '" => "
                           (gxc#identifier-symbol _main-id30199_))
                          (gxc#xform-wrap-source
                           (cons '%#begin
                                 (cons (gxc#lift-top-lambda-define-values%
                                        (gxc#xform-wrap-source
                                         (cons '%#define-values
                                               (cons (cons _main-id30199_ '())
                                                     (cons _L30151_ '())))
                                         _stx29811_))
                                       (cons (gxc#xform-wrap-source
                                              (cons '%#define-values
                                                    (cons (cons _get-kws-id30195_
                                                                '())
                                                          (cons _new-get-kws30205_
                                                                '())))
                                              _stx29811_)
                                             (cons (gxc#xform-wrap-source
                                                    (cons '%#define-values
                                                          (cons (cons _L29963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _new-kw-dispatch30203_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _stx29811_)
                                                   '()))))
                           _stx29811_))))
                    _hd3002630144_
                    _hd3002330136_
                    _hd3002030128_
                    _hd3001730120_
                    _hd2999930072_)
                   (_g2997930032_ _g2998030035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2997930032_
                                                    _g2998030035_))
                                               (_g2997930032_ _g2998030035_))
                                           (_g2997930032_ _g2998030035_))
                                       (_g2997930032_ _g2998030035_))))
                               (_g2997930032_ _g2998030035_))
                           (_g2997930032_ _g2998030035_))
                       (_g2997930032_ _g2998030035_))))
               (_g2997930032_ _g2998030035_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2997930032_
                                                    _g2998030035_))))
                                           (_g2997930032_ _g2998030035_))))
                                   (_g2997930032_ _g2998030035_))))
                           (_g2997930032_ _g2998030035_))))
                   (_g2997930032_ _g2998030035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2997930032_
                                                    _g2998030035_))))
                                           (_g2997930032_ _g2998030035_))
                                       (_g2997930032_ _g2998030035_))))
                               (_g2997930032_ _g2998030035_))))
                       (_g2997930032_ _g2998030035_))))
               (_g2997930032_ _g2998030035_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2997930032_ _g2998030035_))))
                                       (_g2997930032_ _g2998030035_)))))
                           (_g2997830208_ _L29962_))
                         (_g2981929925_ _g2982129928_)))
                   _hd2986229957_
                   _hd2985929949_)
                  (_g2981929925_ _g2982129928_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2981929925_
                                                   _g2982129928_))
                                              (_g2981929925_ _g2982129928_))))
                                      (_g2981929925_ _g2982129928_))))
                              (_g2981929925_ _g2982129928_))))
                      (_g2981929925_ _g2982129928_))))
               (_g2981730393_
                (lambda (_g2982130214_)
                  (if (gx#stx-pair? _g2982130214_)
                      (let ((_e2983830216_ (gx#stx-e _g2982130214_)))
                        (let ((_hd2983930219_ (##car _e2983830216_))
                              (_tl2984030221_ (##cdr _e2983830216_)))
                          (if (gx#stx-pair? _tl2984030221_)
                              (let ((_e2984130224_ (gx#stx-e _tl2984030221_)))
                                (let ((_hd2984230227_ (##car _e2984130224_))
                                      (_tl2984330229_ (##cdr _e2984130224_)))
                                  (if (gx#stx-pair? _hd2984230227_)
                                      (let ((_e2984430232_
                                             (gx#stx-e _hd2984230227_)))
                                        (let ((_hd2984530235_
                                               (##car _e2984430232_))
                                              (_tl2984630237_
                                               (##cdr _e2984430232_)))
                                          (if (gx#stx-null? _tl2984630237_)
                                              (if (gx#stx-pair? _tl2984330229_)
                                                  (let ((_e2984730240_
                                                         (gx#stx-e
                                                          _tl2984330229_)))
                                                    (let ((_hd2984830243_
                                                           (##car _e2984730240_))
                                                          (_tl2984930245_
                                                           (##cdr _e2984730240_)))
                                                      (if (gx#stx-null?
                                                           _tl2984930245_)
                                                          ((lambda (_L30248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L30249_)
                     (if (if (gx#identifier? _L30249_)
                             (gxc#opt-lambda-expr? _L30248_)
                             '#f)
                         (let* ((_g3026530295_
                                 (lambda (_g3026630292_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g3026630292_)))
                                (_g3026430390_
                                 (lambda (_g3026630298_)
                                   (if (gx#stx-pair? _g3026630298_)
                                       (let ((_e3027030300_
                                              (gx#stx-e _g3026630298_)))
                                         (let ((_hd3027130303_
                                                (##car _e3027030300_))
                                               (_tl3027230305_
                                                (##cdr _e3027030300_)))
                                           (if (gx#stx-pair? _tl3027230305_)
                                               (let ((_e3027330308_
                                                      (gx#stx-e
                                                       _tl3027230305_)))
                                                 (let ((_hd3027430311_
                                                        (##car _e3027330308_))
                                                       (_tl3027530313_
                                                        (##cdr _e3027330308_)))
                                                   (if (gx#stx-pair?
                                                        _hd3027430311_)
                                                       (let ((_e3027630316_
                                                              (gx#stx-e
                                                               _hd3027430311_)))
                                                         (let ((_hd3027730319_
                                                                (##car _e3027630316_))
                                                               (_tl3027830321_
                                                                (##cdr _e3027630316_)))
                                                           (if (gx#stx-pair?
                                                                _hd3027730319_)
                                                               (let ((_e3027930324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd3027730319_)))
                         (let ((_hd3028030327_ (##car _e3027930324_))
                               (_tl3028130329_ (##cdr _e3027930324_)))
                           (if (gx#stx-pair? _hd3028030327_)
                               (let ((_e3028230332_ (gx#stx-e _hd3028030327_)))
                                 (let ((_hd3028330335_ (##car _e3028230332_))
                                       (_tl3028430337_ (##cdr _e3028230332_)))
                                   (if (gx#stx-null? _tl3028430337_)
                                       (if (gx#stx-pair? _tl3028130329_)
                                           (let ((_e3028530340_
                                                  (gx#stx-e _tl3028130329_)))
                                             (let ((_hd3028630343_
                                                    (##car _e3028530340_))
                                                   (_tl3028730345_
                                                    (##cdr _e3028530340_)))
                                               (if (gx#stx-null?
                                                    _tl3028730345_)
                                                   (if (gx#stx-null?
                                                        _tl3027830321_)
                                                       (if (gx#stx-pair?
                                                            _tl3027530313_)
                                                           (let ((_e3028830348_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl3027530313_)))
                     (let ((_hd3028930351_ (##car _e3028830348_))
                           (_tl3029030353_ (##cdr _e3028830348_)))
                       (if (gx#stx-null? _tl3029030353_)
                           ((lambda (_L30356_ _L30357_ _L30358_)
                              (let* ((_lambda-id30382_
                                      (make-symbol
                                       (gx#stx-e _L30249_)
                                       '"__"
                                       (_opt-lambda-dispatch-name29814_
                                        (gx#stx-e _L30358_))))
                                     (_lambda-id30384_
                                      (gx#core-quote-syntax__1
                                       _lambda-id30382_
                                       (gx#stx-source _stx29811_)))
                                     (_g34869_
                                      (gx#core-bind-runtime!__0
                                       _lambda-id30384_))
                                     (_new-case-lambda-expr30387_
                                      (gxc#apply-expression-subst
                                       _L30356_
                                       _L30358_
                                       _lambda-id30384_)))
                                (begin
                                  (gxc#verbose
                                   '"lift opt-lambda dispatch "
                                   (gxc#identifier-symbol _L30249_)
                                   '" => "
                                   (gxc#identifier-symbol _lambda-id30384_))
                                  (gxc#xform-wrap-source
                                   (cons '%#begin
                                         (cons (gxc#xform-wrap-source
                                                (cons '%#define-values
                                                      (cons (cons _lambda-id30384_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gxc#compile-e _L30357_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _stx29811_)
                                               (cons (gxc#lift-top-lambda-define-values%
                                                      (gxc#xform-wrap-source
                                                       (cons '%#define-values
                                                             (cons (cons _L30249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons _new-case-lambda-expr30387_ '())))
               _stx29811_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   _stx29811_))))
                            _hd3028930351_
                            _hd3028630343_
                            _hd3028330335_)
                           (_g3026530295_ _g3026630298_))))
                   (_g3026530295_ _g3026630298_))
               (_g3026530295_ _g3026630298_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g3026530295_
                                                    _g3026630298_))))
                                           (_g3026530295_ _g3026630298_))
                                       (_g3026530295_ _g3026630298_))))
                               (_g3026530295_ _g3026630298_))))
                       (_g3026530295_ _g3026630298_))))
               (_g3026530295_ _g3026630298_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g3026530295_ _g3026630298_))))
                                       (_g3026530295_ _g3026630298_)))))
                           (_g3026430390_ _L30248_))
                         (_g2981830211_ _g2982130214_)))
                   _hd2984830243_
                   _hd2984530235_)
                  (_g2981830211_ _g2982130214_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2981830211_
                                                   _g2982130214_))
                                              (_g2981830211_ _g2982130214_))))
                                      (_g2981830211_ _g2982130214_))))
                              (_g2981830211_ _g2982130214_))))
                      (_g2981830211_ _g2982130214_))))
               (_g2981630518_
                (lambda (_g2982130396_)
                  (if (gx#stx-pair? _g2982130396_)
                      (let ((_e2982430398_ (gx#stx-e _g2982130396_)))
                        (let ((_hd2982530401_ (##car _e2982430398_))
                              (_tl2982630403_ (##cdr _e2982430398_)))
                          (if (gx#stx-pair? _tl2982630403_)
                              (let ((_e2982730406_ (gx#stx-e _tl2982630403_)))
                                (let ((_hd2982830409_ (##car _e2982730406_))
                                      (_tl2982930411_ (##cdr _e2982730406_)))
                                  (if (gx#stx-pair? _hd2982830409_)
                                      (let ((_e2983030414_
                                             (gx#stx-e _hd2982830409_)))
                                        (let ((_hd2983130417_
                                               (##car _e2983030414_))
                                              (_tl2983230419_
                                               (##cdr _e2983030414_)))
                                          (if (gx#stx-null? _tl2983230419_)
                                              (if (gx#stx-pair? _tl2982930411_)
                                                  (let ((_e2983330422_
                                                         (gx#stx-e
                                                          _tl2982930411_)))
                                                    (let ((_hd2983430425_
                                                           (##car _e2983330422_))
                                                          (_tl2983530427_
                                                           (##cdr _e2983330422_)))
                                                      (if (gx#stx-null?
                                                           _tl2983530427_)
                                                          ((lambda (_L30430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L30431_)
                     (if (if (gx#identifier? _L30431_)
                             (gxc#case-lambda-expr? _L30430_)
                             '#f)
                         (let* ((_g3044830462_
                                 (lambda (_g3044930459_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g3044930459_)))
                                (_g3044730493_
                                 (lambda (_g3044930465_)
                                   (if (gx#stx-pair? _g3044930465_)
                                       (let ((_e3045530467_
                                              (gx#stx-e _g3044930465_)))
                                         (let ((_hd3045630470_
                                                (##car _e3045530467_))
                                               (_tl3045730472_
                                                (##cdr _e3045530467_)))
                                           ((lambda (_L30475_)
                                              (let ((_g34870_
                                                     (gxc#lift-case-lambda-clauses__0
                                                      _stx29811_
                                                      _L30431_
                                                      _L30475_)))
                                                (begin
                                                  (let ((_g34871_
                                                         (if (##values?
                                                              _g34870_)
                                                             (##vector-length
                                                              _g34870_)
                                                             1)))
                                                    (if (not (##fx= _g34871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            3))
                (error "Context expects 3 values" _g34871_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_ids30485_
                                                         (##vector-ref
                                                          _g34870_
                                                          0))
                                                        (_impls30486_
                                                         (##vector-ref
                                                          _g34870_
                                                          1))
                                                        (_clauses30487_
                                                         (##vector-ref
                                                          _g34870_
                                                          2)))
                                                    (let* ((_g34872_
                                                            (for-each
                                                             gx#core-bind-runtime!
                                                             _ids30485_))
                                                           (_defs30490_
                                                            (map _case-lambda-clause-def29813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _ids30485_
                         _impls30486_)))
              (begin
                (gxc#verbose
                 '"lift case-lambda clauses "
                 (gxc#identifier-symbol _L30431_)
                 '" => "
                 (map gxc#identifier-symbol _ids30485_))
                (gxc#xform-wrap-source
                 (cons '%#begin
                       (foldr1 cons
                               (cons (gxc#xform-wrap-source
                                      (cons '%#define-values
                                            (cons (cons _L30431_ '())
                                                  (cons (gxc#xform-wrap-source
                                                         (cons '%#case-lambda
                                                               _clauses30487_)
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'case-lambda-expr))
                                                        '())))
                                      _stx29811_)
                                     '())
                               _defs30490_))
                 _stx29811_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _tl3045730472_)))
                                       (_g3044830462_ _g3044930465_))))
                                (_g3044630515_
                                 (lambda (_g3044930496_)
                                   (if (gx#stx-pair? _g3044930496_)
                                       (let ((_e3045130498_
                                              (gx#stx-e _g3044930496_)))
                                         (let ((_hd3045230501_
                                                (##car _e3045130498_))
                                               (_tl3045330503_
                                                (##cdr _e3045130498_)))
                                           ((lambda (_L30506_)
                                              (if (andmap1 gxc#dispatch-lambda-form?
                                                           _L30506_)
                                                  _stx29811_
                                                  (_g3044730493_
                                                   _g3044930496_)))
                                            _tl3045330503_)))
                                       (_g3044730493_ _g3044930496_)))))
                           (_g3044630515_ _L30430_))
                         (_g2981730393_ _g2982130396_)))
                   _hd2983430425_
                   _hd2983130417_)
                  (_g2981730393_ _g2982130396_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2981730393_
                                                   _g2982130396_))
                                              (_g2981730393_ _g2982130396_))))
                                      (_g2981730393_ _g2982130396_))))
                              (_g2981730393_ _g2982130396_))))
                      (_g2981730393_ _g2982130396_)))))
          (_g2981630518_ _stx29811_)))))
  (define gxc#lift-top-lambda-let-values%
    (lambda (_stx28743_)
      (letrec* ((_bind-e__3476034761_
                 (lambda (_id29795_ _expr29796_ _compile?29797_)
                   (cons (cons _id29795_ '())
                         (cons (if _compile?29797_
                                   (gxc#compile-e _expr29796_)
                                   _expr29796_)
                               '()))))
                (_bind-e__0__3476234763_
                 (lambda (_id29802_ _expr29803_)
                   (let ((_compile?29805_ '#t))
                     (_bind-e__3476034761_
                      _id29802_
                      _expr29803_
                      _compile?29805_))))
                (_bind-e28745_
                 (lambda _g34874_
                   (let ((_g34873_ (length _g34874_)))
                     (cond ((##fx= _g34873_ 2)
                            (apply _bind-e__0__3476234763_ _g34874_))
                           ((##fx= _g34873_ 3)
                            (apply _bind-e__3476034761_ _g34874_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g34874_))))))
                (_compile-bindings28746_
                 (lambda (_bindings29379_)
                   (let _lp29381_ ((_rest29383_ _bindings29379_)
                                   (_lift129384_ '())
                                   (_lift229385_ '())
                                   (_bind29386_ '()))
                     (let* ((_rest2938729395_ _rest29383_)
                            (_else2938929403_
                             (lambda ()
                               (values (reverse _lift129384_)
                                       (reverse _lift229385_)
                                       (reverse _bind29386_))))
                            (_K2939129782_
                             (lambda (_rest29406_ _hd29407_)
                               (let* ((_g2941129447_
                                       (lambda (_g2941229444_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2941229444_)))
                                      (_g2941029488_
                                       (lambda (_g2941229450_)
                                         (if (gx#stx-pair? _g2941229450_)
                                             (let ((_e2943729452_
                                                    (gx#stx-e _g2941229450_)))
                                               (let ((_hd2943829455_
                                                      (##car _e2943729452_))
                                                     (_tl2943929457_
                                                      (##cdr _e2943729452_)))
                                                 (if (gx#stx-pair?
                                                      _tl2943929457_)
                                                     (let ((_e2944029460_
                                                            (gx#stx-e
                                                             _tl2943929457_)))
                                                       (let ((_hd2944129463_
                                                              (##car _e2944029460_))
                                                             (_tl2944229465_
                                                              (##cdr _e2944029460_)))
                                                         (if (gx#stx-null?
                                                              _tl2944229465_)
                                                             ((lambda (_L29468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L29469_)
                        (_lp29381_
                         _rest29406_
                         _lift129384_
                         _lift229385_
                         (cons (cons _L29469_
                                     (cons (gxc#compile-e _L29468_) '()))
                               _bind29386_)))
                      _hd2944129463_
                      _hd2943829455_)
                     (_g2941129447_ _g2941229450_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2941129447_
                                                      _g2941229450_))))
                                             (_g2941129447_ _g2941229450_))))
                                      (_g2940929660_
                                       (lambda (_g2941229491_)
                                         (if (gx#stx-pair? _g2941229491_)
                                             (let ((_e2942629493_
                                                    (gx#stx-e _g2941229491_)))
                                               (let ((_hd2942729496_
                                                      (##car _e2942629493_))
                                                     (_tl2942829498_
                                                      (##cdr _e2942629493_)))
                                                 (if (gx#stx-pair?
                                                      _hd2942729496_)
                                                     (let ((_e2942929501_
                                                            (gx#stx-e
                                                             _hd2942729496_)))
                                                       (let ((_hd2943029504_
                                                              (##car _e2942929501_))
                                                             (_tl2943129506_
                                                              (##cdr _e2942929501_)))
                                                         (if (gx#stx-null?
                                                              _tl2943129506_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2942829498_)
                         (let ((_e2943229509_ (gx#stx-e _tl2942829498_)))
                           (let ((_hd2943329512_ (##car _e2943229509_))
                                 (_tl2943429514_ (##cdr _e2943229509_)))
                             (if (gx#stx-null? _tl2943429514_)
                                 ((lambda (_L29517_ _L29518_)
                                    (if (if (gx#identifier? _L29518_)
                                            (gxc#opt-lambda-expr? _L29517_)
                                            '#f)
                                        (let* ((_g2953229562_
                                                (lambda (_g2953329559_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2953329559_)))
                                               (_g2953129657_
                                                (lambda (_g2953329565_)
                                                  (if (gx#stx-pair?
                                                       _g2953329565_)
                                                      (let ((_e2953729567_
                                                             (gx#stx-e
                                                              _g2953329565_)))
                                                        (let ((_hd2953829570_
                                                               (##car _e2953729567_))
                                                              (_tl2953929572_
                                                               (##cdr _e2953729567_)))
                                                          (if (gx#stx-pair?
                                                               _tl2953929572_)
                                                              (let ((_e2954029575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2953929572_)))
                        (let ((_hd2954129578_ (##car _e2954029575_))
                              (_tl2954229580_ (##cdr _e2954029575_)))
                          (if (gx#stx-pair? _hd2954129578_)
                              (let ((_e2954329583_ (gx#stx-e _hd2954129578_)))
                                (let ((_hd2954429586_ (##car _e2954329583_))
                                      (_tl2954529588_ (##cdr _e2954329583_)))
                                  (if (gx#stx-pair? _hd2954429586_)
                                      (let ((_e2954629591_
                                             (gx#stx-e _hd2954429586_)))
                                        (let ((_hd2954729594_
                                               (##car _e2954629591_))
                                              (_tl2954829596_
                                               (##cdr _e2954629591_)))
                                          (if (gx#stx-pair? _hd2954729594_)
                                              (let ((_e2954929599_
                                                     (gx#stx-e
                                                      _hd2954729594_)))
                                                (let ((_hd2955029602_
                                                       (##car _e2954929599_))
                                                      (_tl2955129604_
                                                       (##cdr _e2954929599_)))
                                                  (if (gx#stx-null?
                                                       _tl2955129604_)
                                                      (if (gx#stx-pair?
                                                           _tl2954829596_)
                                                          (let ((_e2955229607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2954829596_)))
                    (let ((_hd2955329610_ (##car _e2955229607_))
                          (_tl2955429612_ (##cdr _e2955229607_)))
                      (if (gx#stx-null? _tl2955429612_)
                          (if (gx#stx-null? _tl2954529588_)
                              (if (gx#stx-pair? _tl2954229580_)
                                  (let ((_e2955529615_
                                         (gx#stx-e _tl2954229580_)))
                                    (let ((_hd2955629618_
                                           (##car _e2955529615_))
                                          (_tl2955729620_
                                           (##cdr _e2955529615_)))
                                      (if (gx#stx-null? _tl2955729620_)
                                          ((lambda (_L29623_ _L29624_ _L29625_)
                                             (let* ((_lambda-id29649_
                                                     (make-symbol
                                                      (gx#stx-e _L29518_)
                                                      (gensym '__)))
                                                    (_lambda-id29651_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id29649_
                                                      (gx#stx-source
                                                       _stx28743_)))
                                                    (_g34875_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id29651_))
                                                    (_new-case-lambda-expr29654_
                                                     (gxc#apply-expression-subst
                                                      _L29623_
                                                      _L29625_
                                                      _lambda-id29651_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#identifier-symbol
                                                   _L29518_)
                                                  '" => "
                                                  (gxc#identifier-symbol
                                                   _lambda-id29651_))
                                                 (_lp29381_
                                                  (cons (_bind-e__3476034761_
                                                         _L29518_
                                                         _new-case-lambda-expr29654_
                                                         '#f)
                                                        _rest29406_)
                                                  (cons (_bind-e__0__3476234763_
                                                         _lambda-id29651_
                                                         _L29624_)
                                                        _lift129384_)
                                                  _lift229385_
                                                  _bind29386_))))
                                           _hd2955629618_
                                           _hd2955329610_
                                           _hd2955029602_)
                                          (_g2953229562_ _g2953329565_))))
                                  (_g2953229562_ _g2953329565_))
                              (_g2953229562_ _g2953329565_))
                          (_g2953229562_ _g2953329565_))))
                  (_g2953229562_ _g2953329565_))
              (_g2953229562_ _g2953329565_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2953229562_ _g2953329565_))))
                                      (_g2953229562_ _g2953329565_))))
                              (_g2953229562_ _g2953329565_))))
                      (_g2953229562_ _g2953329565_))))
              (_g2953229562_ _g2953329565_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2953129657_ _L29517_))
                                        (_g2941029488_ _g2941229491_)))
                                  _hd2943329512_
                                  _hd2943029504_)
                                 (_g2941029488_ _g2941229491_))))
                         (_g2941029488_ _g2941229491_))
                     (_g2941029488_ _g2941229491_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2941029488_
                                                      _g2941229491_))))
                                             (_g2941029488_ _g2941229491_))))
                                      (_g2940829779_
                                       (lambda (_g2941229663_)
                                         (if (gx#stx-pair? _g2941229663_)
                                             (let ((_e2941529665_
                                                    (gx#stx-e _g2941229663_)))
                                               (let ((_hd2941629668_
                                                      (##car _e2941529665_))
                                                     (_tl2941729670_
                                                      (##cdr _e2941529665_)))
                                                 (if (gx#stx-pair?
                                                      _hd2941629668_)
                                                     (let ((_e2941829673_
                                                            (gx#stx-e
                                                             _hd2941629668_)))
                                                       (let ((_hd2941929676_
                                                              (##car _e2941829673_))
                                                             (_tl2942029678_
                                                              (##cdr _e2941829673_)))
                                                         (if (gx#stx-null?
                                                              _tl2942029678_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2941729670_)
                         (let ((_e2942129681_ (gx#stx-e _tl2941729670_)))
                           (let ((_hd2942229684_ (##car _e2942129681_))
                                 (_tl2942329686_ (##cdr _e2942129681_)))
                             (if (gx#stx-null? _tl2942329686_)
                                 ((lambda (_L29689_ _L29690_)
                                    (if (if (gx#identifier? _L29690_)
                                            (gxc#case-lambda-expr? _L29689_)
                                            '#f)
                                        (let* ((_g2970529719_
                                                (lambda (_g2970629716_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2970629716_)))
                                               (_g2970429754_
                                                (lambda (_g2970629722_)
                                                  (if (gx#stx-pair?
                                                       _g2970629722_)
                                                      (let ((_e2971229724_
                                                             (gx#stx-e
                                                              _g2970629722_)))
                                                        (let ((_hd2971329727_
                                                               (##car _e2971229724_))
                                                              (_tl2971429729_
                                                               (##cdr _e2971229724_)))
                                                          ((lambda (_L29732_)
                                                             (let ((_g34876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx28743_
                             _L29690_
                             _L29732_
                             '#t)))
                       (begin
                         (let ((_g34877_
                                (if (##values? _g34876_)
                                    (##vector-length _g34876_)
                                    1)))
                           (if (not (##fx= _g34877_ 3))
                               (error "Context expects 3 values" _g34877_)))
                         (let ((_ids29742_ (##vector-ref _g34876_ 0))
                               (_impls29743_ (##vector-ref _g34876_ 1))
                               (_clauses29744_ (##vector-ref _g34876_ 2)))
                           (let* ((_g34878_
                                   (for-each gx#core-bind-runtime! _ids29742_))
                                  (_xbind29747_
                                   (map _bind-e28745_ _ids29742_ _impls29743_))
                                  (_expr*29749_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses29744_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*29751_
                                   (_bind-e__3476034761_
                                    _L29690_
                                    _expr*29749_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#identifier-symbol _L29690_)
                                '" => "
                                (map gxc#identifier-symbol _ids29742_))
                               (_lp29381_
                                _rest29406_
                                _lift129384_
                                (foldl1 cons _lift229385_ _xbind29747_)
                                (cons _bind*29751_ _bind29386_))))))))
                   _tl2971429729_)))
              (_g2970529719_ _g2970629722_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2970329776_
                                                (lambda (_g2970629757_)
                                                  (if (gx#stx-pair?
                                                       _g2970629757_)
                                                      (let ((_e2970829759_
                                                             (gx#stx-e
                                                              _g2970629757_)))
                                                        (let ((_hd2970929762_
                                                               (##car _e2970829759_))
                                                              (_tl2971029764_
                                                               (##cdr _e2970829759_)))
                                                          ((lambda (_L29767_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L29767_)
                         (_lp29381_
                          _rest29406_
                          _lift129384_
                          _lift229385_
                          (cons (_bind-e__3476034761_ _L29690_ _L29689_ '#f)
                                _bind29386_))
                         (_g2970429754_ _g2970629757_)))
                   _tl2971029764_)))
              (_g2970429754_ _g2970629757_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2970329776_ _L29689_))
                                        (_g2940929660_ _g2941229663_)))
                                  _hd2942229684_
                                  _hd2941929676_)
                                 (_g2940929660_ _g2941229663_))))
                         (_g2940929660_ _g2941229663_))
                     (_g2940929660_ _g2941229663_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2940929660_
                                                      _g2941229663_))))
                                             (_g2940929660_ _g2941229663_)))))
                                 (_g2940829779_ _hd29407_)))))
                       (if (##pair? _rest2938729395_)
                           (let ((_hd2939229785_ (##car _rest2938729395_))
                                 (_tl2939329787_ (##cdr _rest2938729395_)))
                             (let* ((_hd29790_ _hd2939229785_)
                                    (_rest29792_ _tl2939329787_))
                               (_K2939129782_ _rest29792_ _hd29790_)))
                           (_else2938929403_))))))
                (_lift-kw-lambda?28747_
                 (lambda (_bind29303_)
                   (let* ((_g2930629323_
                           (lambda (_g2930729320_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g2930729320_)))
                          (_g2930529330_
                           (lambda (_g2930729326_) ((lambda () '#f))))
                          (_g2930429376_
                           (lambda (_g2930729333_)
                             (if (gx#stx-pair? _g2930729333_)
                                 (let ((_e2931029335_
                                        (gx#stx-e _g2930729333_)))
                                   (let ((_hd2931129338_ (##car _e2931029335_))
                                         (_tl2931229340_
                                          (##cdr _e2931029335_)))
                                     (if (gx#stx-pair? _hd2931129338_)
                                         (let ((_e2931329343_
                                                (gx#stx-e _hd2931129338_)))
                                           (let ((_hd2931429346_
                                                  (##car _e2931329343_))
                                                 (_tl2931529348_
                                                  (##cdr _e2931329343_)))
                                             (if (gx#stx-null? _tl2931529348_)
                                                 (if (gx#stx-pair?
                                                      _tl2931229340_)
                                                     (let ((_e2931629351_
                                                            (gx#stx-e
                                                             _tl2931229340_)))
                                                       (let ((_hd2931729354_
                                                              (##car _e2931629351_))
                                                             (_tl2931829356_
                                                              (##cdr _e2931629351_)))
                                                         (if (gx#stx-null?
                                                              _tl2931829356_)
                                                             ((lambda (_L29359_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L29360_)
                        (if (gx#identifier? _L29360_)
                            (gxc#kw-lambda-expr? _L29359_)
                            '#f))
                      _hd2931729354_
                      _hd2931429346_)
                     (_g2930529330_ _g2930729333_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2930529330_
                                                      _g2930729333_))
                                                 (_g2930529330_
                                                  _g2930729333_))))
                                         (_g2930529330_ _g2930729333_))))
                                 (_g2930529330_ _g2930729333_)))))
                     (_g2930429376_ _bind29303_))))
                (_lift-kw-lambda-bindings28748_
                 (lambda (_bindings28915_)
                   (let _lp28917_ ((_rest28919_ _bindings28915_)
                                   (_lift128920_ '())
                                   (_lift228921_ '())
                                   (_bind28922_ '()))
                     (let* ((_rest2892328931_ _rest28919_)
                            (_else2892528939_
                             (lambda ()
                               (values (reverse _lift128920_)
                                       (reverse _lift228921_)
                                       (reverse _bind28922_))))
                            (_K2892729291_
                             (lambda (_rest28942_ _hd28943_)
                               (let* ((_g2894628971_
                                       (lambda (_g2894728968_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2894728968_)))
                                      (_g2894529012_
                                       (lambda (_g2894728974_)
                                         (if (gx#stx-pair? _g2894728974_)
                                             (let ((_e2896128976_
                                                    (gx#stx-e _g2894728974_)))
                                               (let ((_hd2896228979_
                                                      (##car _e2896128976_))
                                                     (_tl2896328981_
                                                      (##cdr _e2896128976_)))
                                                 (if (gx#stx-pair?
                                                      _tl2896328981_)
                                                     (let ((_e2896428984_
                                                            (gx#stx-e
                                                             _tl2896328981_)))
                                                       (let ((_hd2896528987_
                                                              (##car _e2896428984_))
                                                             (_tl2896628989_
                                                              (##cdr _e2896428984_)))
                                                         (if (gx#stx-null?
                                                              _tl2896628989_)
                                                             ((lambda (_L28992_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L28993_)
                        (_lp28917_
                         _rest28942_
                         _lift128920_
                         _lift228921_
                         (cons (cons _L28993_ (cons _L28992_ '()))
                               _bind28922_)))
                      _hd2896528987_
                      _hd2896228979_)
                     (_g2894628971_ _g2894728974_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2894628971_
                                                      _g2894728974_))))
                                             (_g2894628971_ _g2894728974_))))
                                      (_g2894429288_
                                       (lambda (_g2894729015_)
                                         (if (gx#stx-pair? _g2894729015_)
                                             (let ((_e2895029017_
                                                    (gx#stx-e _g2894729015_)))
                                               (let ((_hd2895129020_
                                                      (##car _e2895029017_))
                                                     (_tl2895229022_
                                                      (##cdr _e2895029017_)))
                                                 (if (gx#stx-pair?
                                                      _hd2895129020_)
                                                     (let ((_e2895329025_
                                                            (gx#stx-e
                                                             _hd2895129020_)))
                                                       (let ((_hd2895429028_
                                                              (##car _e2895329025_))
                                                             (_tl2895529030_
                                                              (##cdr _e2895329025_)))
                                                         (if (gx#stx-null?
                                                              _tl2895529030_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2895229022_)
                         (let ((_e2895629033_ (gx#stx-e _tl2895229022_)))
                           (let ((_hd2895729036_ (##car _e2895629033_))
                                 (_tl2895829038_ (##cdr _e2895629033_)))
                             (if (gx#stx-null? _tl2895829038_)
                                 ((lambda (_L29041_ _L29042_)
                                    (if (if (gx#identifier? _L29042_)
                                            (gxc#kw-lambda-expr? _L29041_)
                                            '#f)
                                        (let* ((_g2905629109_
                                                (lambda (_g2905729106_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2905729106_)))
                                               (_g2905529285_
                                                (lambda (_g2905729112_)
                                                  (if (gx#stx-pair?
                                                       _g2905729112_)
                                                      (let ((_e2906329114_
                                                             (gx#stx-e
                                                              _g2905729112_)))
                                                        (let ((_hd2906429117_
                                                               (##car _e2906329114_))
                                                              (_tl2906529119_
                                                               (##cdr _e2906329114_)))
                                                          (if (gx#stx-pair?
                                                               _tl2906529119_)
                                                              (let ((_e2906629122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2906529119_)))
                        (let ((_hd2906729125_ (##car _e2906629122_))
                              (_tl2906829127_ (##cdr _e2906629122_)))
                          (if (gx#stx-pair? _hd2906729125_)
                              (let ((_e2906929130_ (gx#stx-e _hd2906729125_)))
                                (let ((_hd2907029133_ (##car _e2906929130_))
                                      (_tl2907129135_ (##cdr _e2906929130_)))
                                  (if (gx#stx-pair? _hd2907029133_)
                                      (let ((_e2907229138_
                                             (gx#stx-e _hd2907029133_)))
                                        (let ((_hd2907329141_
                                               (##car _e2907229138_))
                                              (_tl2907429143_
                                               (##cdr _e2907229138_)))
                                          (if (gx#stx-pair? _hd2907329141_)
                                              (let ((_e2907529146_
                                                     (gx#stx-e
                                                      _hd2907329141_)))
                                                (let ((_hd2907629149_
                                                       (##car _e2907529146_))
                                                      (_tl2907729151_
                                                       (##cdr _e2907529146_)))
                                                  (if (gx#stx-null?
                                                       _tl2907729151_)
                                                      (if (gx#stx-pair?
                                                           _tl2907429143_)
                                                          (let ((_e2907829154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2907429143_)))
                    (let ((_hd2907929157_ (##car _e2907829154_))
                          (_tl2908029159_ (##cdr _e2907829154_)))
                      (if (gx#stx-pair? _hd2907929157_)
                          (let ((_e2908129162_ (gx#stx-e _hd2907929157_)))
                            (let ((_hd2908229165_ (##car _e2908129162_))
                                  (_tl2908329167_ (##cdr _e2908129162_)))
                              (if (gx#stx-pair? _tl2908329167_)
                                  (let ((_e2908429170_
                                         (gx#stx-e _tl2908329167_)))
                                    (let ((_hd2908529173_
                                           (##car _e2908429170_))
                                          (_tl2908629175_
                                           (##cdr _e2908429170_)))
                                      (if (gx#stx-pair? _hd2908529173_)
                                          (let ((_e2908729178_
                                                 (gx#stx-e _hd2908529173_)))
                                            (let ((_hd2908829181_
                                                   (##car _e2908729178_))
                                                  (_tl2908929183_
                                                   (##cdr _e2908729178_)))
                                              (if (gx#stx-pair? _hd2908829181_)
                                                  (let ((_e2909029186_
                                                         (gx#stx-e
                                                          _hd2908829181_)))
                                                    (let ((_hd2909129189_
                                                           (##car _e2909029186_))
                                                          (_tl2909229191_
                                                           (##cdr _e2909029186_)))
                                                      (if (gx#stx-pair?
                                                           _hd2909129189_)
                                                          (let ((_e2909329194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2909129189_)))
                    (let ((_hd2909429197_ (##car _e2909329194_))
                          (_tl2909529199_ (##cdr _e2909329194_)))
                      (if (gx#stx-null? _tl2909529199_)
                          (if (gx#stx-pair? _tl2909229191_)
                              (let ((_e2909629202_ (gx#stx-e _tl2909229191_)))
                                (let ((_hd2909729205_ (##car _e2909629202_))
                                      (_tl2909829207_ (##cdr _e2909629202_)))
                                  (if (gx#stx-null? _tl2909829207_)
                                      (if (gx#stx-null? _tl2908929183_)
                                          (if (gx#stx-pair? _tl2908629175_)
                                              (let ((_e2909929210_
                                                     (gx#stx-e
                                                      _tl2908629175_)))
                                                (let ((_hd2910029213_
                                                       (##car _e2909929210_))
                                                      (_tl2910129215_
                                                       (##cdr _e2909929210_)))
                                                  (if (gx#stx-null?
                                                       _tl2910129215_)
                                                      (if (gx#stx-null?
                                                           _tl2908029159_)
                                                          (if (gx#stx-null?
                                                               _tl2907129135_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2906829127_)
                          (let ((_e2910229218_ (gx#stx-e _tl2906829127_)))
                            (let ((_hd2910329221_ (##car _e2910229218_))
                                  (_tl2910429223_ (##cdr _e2910229218_)))
                              (if (gx#stx-null? _tl2910429223_)
                                  ((lambda (_L29226_
                                            _L29227_
                                            _L29228_
                                            _L29229_
                                            _L29230_)
                                     (let* ((_get-kws-id29270_
                                             (make-symbol
                                              (gx#stx-e _L29042_)
                                              (gensym '__)))
                                            (_get-kws-id29272_
                                             (gx#core-quote-syntax__1
                                              _get-kws-id29270_
                                              (gx#stx-source _stx28743_)))
                                            (_main-id29274_
                                             (make-symbol
                                              (gx#stx-e _L29042_)
                                              (gensym '__)))
                                            (_main-id29276_
                                             (gx#core-quote-syntax__1
                                              _main-id29274_
                                              (gx#stx-source _stx28743_)))
                                            (_g34879_
                                             (gx#core-bind-runtime!__0
                                              _get-kws-id29272_))
                                            (_g34880_
                                             (gx#core-bind-runtime!__0
                                              _main-id29276_))
                                            (_new-kw-dispatch29280_
                                             (gxc#apply-expression-subst
                                              _L29226_
                                              _L29230_
                                              _get-kws-id29272_))
                                            (_new-get-kws29282_
                                             (gxc#apply-expression-subst
                                              _L29227_
                                              _L29229_
                                              _main-id29276_)))
                                       (begin
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#identifier-symbol _L29042_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _get-kws-id29272_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _main-id29276_))
                                         (_lp28917_
                                          _rest28942_
                                          (cons (_bind-e__3476034761_
                                                 _main-id29276_
                                                 _L29228_
                                                 '#f)
                                                _lift128920_)
                                          (cons (_bind-e__3476034761_
                                                 _get-kws-id29272_
                                                 _new-get-kws29282_
                                                 '#f)
                                                _lift228921_)
                                          (cons (_bind-e__3476034761_
                                                 _L29042_
                                                 _new-kw-dispatch29280_
                                                 '#f)
                                                _bind28922_)))))
                                   _hd2910329221_
                                   _hd2910029213_
                                   _hd2909729205_
                                   _hd2909429197_
                                   _hd2907629149_)
                                  (_g2905629109_ _g2905729112_))))
                          (_g2905629109_ _g2905729112_))
                      (_g2905629109_ _g2905729112_))
                  (_g2905629109_ _g2905729112_))
              (_g2905629109_ _g2905729112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2905629109_ _g2905729112_))
                                          (_g2905629109_ _g2905729112_))
                                      (_g2905629109_ _g2905729112_))))
                              (_g2905629109_ _g2905729112_))
                          (_g2905629109_ _g2905729112_))))
                  (_g2905629109_ _g2905729112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2905629109_
                                                   _g2905729112_))))
                                          (_g2905629109_ _g2905729112_))))
                                  (_g2905629109_ _g2905729112_))))
                          (_g2905629109_ _g2905729112_))))
                  (_g2905629109_ _g2905729112_))
              (_g2905629109_ _g2905729112_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2905629109_ _g2905729112_))))
                                      (_g2905629109_ _g2905729112_))))
                              (_g2905629109_ _g2905729112_))))
                      (_g2905629109_ _g2905729112_))))
              (_g2905629109_ _g2905729112_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2905529285_ _L29041_))
                                        (_g2894529012_ _g2894729015_)))
                                  _hd2895729036_
                                  _hd2895429028_)
                                 (_g2894529012_ _g2894729015_))))
                         (_g2894529012_ _g2894729015_))
                     (_g2894529012_ _g2894729015_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2894529012_
                                                      _g2894729015_))))
                                             (_g2894529012_ _g2894729015_)))))
                                 (_g2894429288_ _hd28943_)))))
                       (if (##pair? _rest2892328931_)
                           (let ((_hd2892829294_ (##car _rest2892328931_))
                                 (_tl2892929296_ (##cdr _rest2892328931_)))
                             (let* ((_hd29299_ _hd2892829294_)
                                    (_rest29301_ _tl2892929296_))
                               (_K2892729291_ _rest29301_ _hd29299_)))
                           (_else2892528939_)))))))
        (let* ((_g2875128777_
                (lambda (_g2875228774_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2875228774_)))
               (_g2875028784_
                (lambda (_g2875228780_)
                  ((lambda () (gxc#xform-let-values% _stx28743_)))))
               (_g2874928912_
                (lambda (_g2875228787_)
                  (if (gx#stx-pair? _g2875228787_)
                      (let ((_e2875528789_ (gx#stx-e _g2875228787_)))
                        (let ((_hd2875628792_ (##car _e2875528789_))
                              (_tl2875728794_ (##cdr _e2875528789_)))
                          (if (gx#stx-pair? _tl2875728794_)
                              (let ((_e2875828797_ (gx#stx-e _tl2875728794_)))
                                (let ((_hd2875928800_ (##car _e2875828797_))
                                      (_tl2876028802_ (##cdr _e2875828797_)))
                                  (if (gx#stx-pair/null? _hd2875928800_)
                                      (if (fx>= (gx#stx-length _hd2875928800_)
                                                '0)
                                          (let ((_g34881_
                                                 (gx#syntax-split-splice
                                                  _hd2875928800_
                                                  '0)))
                                            (begin
                                              (let ((_g34882_
                                                     (if (##values? _g34881_)
                                                         (##vector-length
                                                          _g34881_)
                                                         1)))
                                                (if (not (##fx= _g34882_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34882_)))
                                              (let ((_target2876128805_
                                                     (##vector-ref _g34881_ 0))
                                                    (_tl2876328807_
                                                     (##vector-ref
                                                      _g34881_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl2876328807_)
                                                    (letrec ((_loop2876428810_
                                                              (lambda (_hd2876228813_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind2876828815_)
                        (if (gx#stx-pair? _hd2876228813_)
                            (let ((_e2876528818_ (gx#stx-e _hd2876228813_)))
                              (let ((_lp-hd2876628821_ (##car _e2876528818_))
                                    (_lp-tl2876728823_ (##cdr _e2876528818_)))
                                (_loop2876428810_
                                 _lp-tl2876728823_
                                 (cons _lp-hd2876628821_ _bind2876828815_))))
                            (let ((_bind2876928826_
                                   (reverse _bind2876828815_)))
                              (if (gx#stx-pair? _tl2876028802_)
                                  (let ((_e2877028829_
                                         (gx#stx-e _tl2876028802_)))
                                    (let ((_hd2877128832_
                                           (##car _e2877028829_))
                                          (_tl2877228834_
                                           (##cdr _e2877028829_)))
                                      (if (gx#stx-null? _tl2877228834_)
                                          ((lambda (_L28837_ _L28838_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g2885828861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2885928863_)
                             (cons _g2885828861_ _g2885928863_))
                           '()
                           _L28838_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (if (ormap1 _lift-kw-lambda?28747_
                                                                (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (foldr1 (lambda (_g2886628869_ _g2886728871_)
                                    (cons _g2886628869_ _g2886728871_))
                                  '()
                                  _L28838_)))
                (let ((_g34883_
                       (_lift-kw-lambda-bindings28748_
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2887328876_ _g2887428878_)
                                    (cons _g2887328876_ _g2887428878_))
                                  '()
                                  _L28838_)))))
                  (begin
                    (let ((_g34884_
                           (if (##values? _g34883_)
                               (##vector-length _g34883_)
                               1)))
                      (if (not (##fx= _g34884_ 3))
                          (error "Context expects 3 values" _g34884_)))
                    (let ((_lift128881_ (##vector-ref _g34883_ 0))
                          (_lift228882_ (##vector-ref _g34883_ 1))
                          (_hd28883_ (##vector-ref _g34883_ 2)))
                      (let* ((_expr28885_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _hd28883_ (cons _L28837_ '())))
                               _stx28743_))
                             (_expr28887_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift228882_
                                           (cons _expr28885_ '())))
                               _stx28743_))
                             (_expr28889_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _lift128881_
                                           (cons _expr28887_ '())))
                               _stx28743_)))
                        (gxc#lift-top-lambda-let-values% _expr28889_)))))
                (let ((_g34885_
                       (_compile-bindings28746_
                        (begin
                          '#!void
                          (foldr1 (lambda (_g2889128894_ _g2889228896_)
                                    (cons _g2889128894_ _g2889228896_))
                                  '()
                                  _L28838_)))))
                  (begin
                    (let ((_g34886_
                           (if (##values? _g34885_)
                               (##vector-length _g34885_)
                               1)))
                      (if (not (##fx= _g34886_ 3))
                          (error "Context expects 3 values" _g34886_)))
                    (let ((_lift128899_ (##vector-ref _g34885_ 0))
                          (_lift228900_ (##vector-ref _g34885_ 1))
                          (_hd28901_ (##vector-ref _g34885_ 2)))
                      (let* ((_body28903_ (gxc#compile-e _L28837_))
                             (_expr28905_
                              (gxc#xform-wrap-source
                               (cons '%#let-values
                                     (cons _hd28901_ (cons _body28903_ '())))
                               _stx28743_))
                             (_expr28907_
                              (if (null? _lift228900_)
                                  _expr28905_
                                  (gxc#xform-wrap-source
                                   (cons '%#let-values
                                         (cons _lift228900_
                                               (cons _expr28905_ '())))
                                   _stx28743_)))
                             (_expr28909_
                              (if (null? _lift128899_)
                                  _expr28907_
                                  (gxc#xform-wrap-source
                                   (cons '%#let-values
                                         (cons _lift128899_
                                               (cons _expr28907_ '())))
                                   _stx28743_))))
                        _expr28909_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj34826
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj34826)
                                                      __obj34826)))
                                                 (_g2875028784_
                                                  _g2875228787_)))
                                           _hd2877128832_
                                           _bind2876928826_)
                                          (_g2875028784_ _g2875228787_))))
                                  (_g2875028784_ _g2875228787_)))))))
              (_loop2876428810_ _target2876128805_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2875028784_
                                                     _g2875228787_)))))
                                          (_g2875028784_ _g2875228787_))
                                      (_g2875028784_ _g2875228787_))))
                              (_g2875028784_ _g2875228787_))))
                      (_g2875028784_ _g2875228787_)))))
          (_g2874928912_ _stx28743_)))))
  (define gxc#lift-top-lambda-letrec-values%
    (lambda (_stx27887_)
      (letrec* ((_bind-e__3476534766_
                 (lambda (_id28727_ _expr28728_ _compile?28729_)
                   (cons (cons _id28727_ '())
                         (cons (if _compile?28729_
                                   (gxc#compile-e _expr28728_)
                                   _expr28728_)
                               '()))))
                (_bind-e__0__3476734768_
                 (lambda (_id28734_ _expr28735_)
                   (let ((_compile?28737_ '#t))
                     (_bind-e__3476534766_
                      _id28734_
                      _expr28735_
                      _compile?28737_))))
                (_bind-e27889_
                 (lambda _g34888_
                   (let ((_g34887_ (length _g34888_)))
                     (cond ((##fx= _g34887_ 2)
                            (apply _bind-e__0__3476734768_ _g34888_))
                           ((##fx= _g34887_ 3)
                            (apply _bind-e__3476534766_ _g34888_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g34888_))))))
                (_compile-bindings27890_
                 (lambda (_rest28025_)
                   (let _lp28027_ ((_rest28029_ _rest28025_) (_bind28030_ '()))
                     (let* ((_rest2803128039_ _rest28029_)
                            (_else2803328047_
                             (lambda () (reverse _bind28030_)))
                            (_K2803528714_
                             (lambda (_rest28050_ _hd28051_)
                               (let* ((_g2805628103_
                                       (lambda (_g2805728100_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2805728100_)))
                                      (_g2805528144_
                                       (lambda (_g2805728106_)
                                         (if (gx#stx-pair? _g2805728106_)
                                             (let ((_e2809328108_
                                                    (gx#stx-e _g2805728106_)))
                                               (let ((_hd2809428111_
                                                      (##car _e2809328108_))
                                                     (_tl2809528113_
                                                      (##cdr _e2809328108_)))
                                                 (if (gx#stx-pair?
                                                      _tl2809528113_)
                                                     (let ((_e2809628116_
                                                            (gx#stx-e
                                                             _tl2809528113_)))
                                                       (let ((_hd2809728119_
                                                              (##car _e2809628116_))
                                                             (_tl2809828121_
                                                              (##cdr _e2809628116_)))
                                                         (if (gx#stx-null?
                                                              _tl2809828121_)
                                                             ((lambda (_L28124_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L28125_)
                        (_lp28027_
                         _rest28050_
                         (cons (cons _L28125_
                                     (cons (gxc#compile-e _L28124_) '()))
                               _bind28030_)))
                      _hd2809728119_
                      _hd2809428111_)
                     (_g2805628103_ _g2805728106_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2805628103_
                                                      _g2805728106_))))
                                             (_g2805628103_ _g2805728106_))))
                                      (_g2805428420_
                                       (lambda (_g2805728147_)
                                         (if (gx#stx-pair? _g2805728147_)
                                             (let ((_e2808228149_
                                                    (gx#stx-e _g2805728147_)))
                                               (let ((_hd2808328152_
                                                      (##car _e2808228149_))
                                                     (_tl2808428154_
                                                      (##cdr _e2808228149_)))
                                                 (if (gx#stx-pair?
                                                      _hd2808328152_)
                                                     (let ((_e2808528157_
                                                            (gx#stx-e
                                                             _hd2808328152_)))
                                                       (let ((_hd2808628160_
                                                              (##car _e2808528157_))
                                                             (_tl2808728162_
                                                              (##cdr _e2808528157_)))
                                                         (if (gx#stx-null?
                                                              _tl2808728162_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2808428154_)
                         (let ((_e2808828165_ (gx#stx-e _tl2808428154_)))
                           (let ((_hd2808928168_ (##car _e2808828165_))
                                 (_tl2809028170_ (##cdr _e2808828165_)))
                             (if (gx#stx-null? _tl2809028170_)
                                 ((lambda (_L28173_ _L28174_)
                                    (if (if (gx#identifier? _L28174_)
                                            (gxc#kw-lambda-expr? _L28173_)
                                            '#f)
                                        (let* ((_g2818828241_
                                                (lambda (_g2818928238_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2818928238_)))
                                               (_g2818728417_
                                                (lambda (_g2818928244_)
                                                  (if (gx#stx-pair?
                                                       _g2818928244_)
                                                      (let ((_e2819528246_
                                                             (gx#stx-e
                                                              _g2818928244_)))
                                                        (let ((_hd2819628249_
                                                               (##car _e2819528246_))
                                                              (_tl2819728251_
                                                               (##cdr _e2819528246_)))
                                                          (if (gx#stx-pair?
                                                               _tl2819728251_)
                                                              (let ((_e2819828254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2819728251_)))
                        (let ((_hd2819928257_ (##car _e2819828254_))
                              (_tl2820028259_ (##cdr _e2819828254_)))
                          (if (gx#stx-pair? _hd2819928257_)
                              (let ((_e2820128262_ (gx#stx-e _hd2819928257_)))
                                (let ((_hd2820228265_ (##car _e2820128262_))
                                      (_tl2820328267_ (##cdr _e2820128262_)))
                                  (if (gx#stx-pair? _hd2820228265_)
                                      (let ((_e2820428270_
                                             (gx#stx-e _hd2820228265_)))
                                        (let ((_hd2820528273_
                                               (##car _e2820428270_))
                                              (_tl2820628275_
                                               (##cdr _e2820428270_)))
                                          (if (gx#stx-pair? _hd2820528273_)
                                              (let ((_e2820728278_
                                                     (gx#stx-e
                                                      _hd2820528273_)))
                                                (let ((_hd2820828281_
                                                       (##car _e2820728278_))
                                                      (_tl2820928283_
                                                       (##cdr _e2820728278_)))
                                                  (if (gx#stx-null?
                                                       _tl2820928283_)
                                                      (if (gx#stx-pair?
                                                           _tl2820628275_)
                                                          (let ((_e2821028286_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2820628275_)))
                    (let ((_hd2821128289_ (##car _e2821028286_))
                          (_tl2821228291_ (##cdr _e2821028286_)))
                      (if (gx#stx-pair? _hd2821128289_)
                          (let ((_e2821328294_ (gx#stx-e _hd2821128289_)))
                            (let ((_hd2821428297_ (##car _e2821328294_))
                                  (_tl2821528299_ (##cdr _e2821328294_)))
                              (if (gx#stx-pair? _tl2821528299_)
                                  (let ((_e2821628302_
                                         (gx#stx-e _tl2821528299_)))
                                    (let ((_hd2821728305_
                                           (##car _e2821628302_))
                                          (_tl2821828307_
                                           (##cdr _e2821628302_)))
                                      (if (gx#stx-pair? _hd2821728305_)
                                          (let ((_e2821928310_
                                                 (gx#stx-e _hd2821728305_)))
                                            (let ((_hd2822028313_
                                                   (##car _e2821928310_))
                                                  (_tl2822128315_
                                                   (##cdr _e2821928310_)))
                                              (if (gx#stx-pair? _hd2822028313_)
                                                  (let ((_e2822228318_
                                                         (gx#stx-e
                                                          _hd2822028313_)))
                                                    (let ((_hd2822328321_
                                                           (##car _e2822228318_))
                                                          (_tl2822428323_
                                                           (##cdr _e2822228318_)))
                                                      (if (gx#stx-pair?
                                                           _hd2822328321_)
                                                          (let ((_e2822528326_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd2822328321_)))
                    (let ((_hd2822628329_ (##car _e2822528326_))
                          (_tl2822728331_ (##cdr _e2822528326_)))
                      (if (gx#stx-null? _tl2822728331_)
                          (if (gx#stx-pair? _tl2822428323_)
                              (let ((_e2822828334_ (gx#stx-e _tl2822428323_)))
                                (let ((_hd2822928337_ (##car _e2822828334_))
                                      (_tl2823028339_ (##cdr _e2822828334_)))
                                  (if (gx#stx-null? _tl2823028339_)
                                      (if (gx#stx-null? _tl2822128315_)
                                          (if (gx#stx-pair? _tl2821828307_)
                                              (let ((_e2823128342_
                                                     (gx#stx-e
                                                      _tl2821828307_)))
                                                (let ((_hd2823228345_
                                                       (##car _e2823128342_))
                                                      (_tl2823328347_
                                                       (##cdr _e2823128342_)))
                                                  (if (gx#stx-null?
                                                       _tl2823328347_)
                                                      (if (gx#stx-null?
                                                           _tl2821228291_)
                                                          (if (gx#stx-null?
                                                               _tl2820328267_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2820028259_)
                          (let ((_e2823428350_ (gx#stx-e _tl2820028259_)))
                            (let ((_hd2823528353_ (##car _e2823428350_))
                                  (_tl2823628355_ (##cdr _e2823428350_)))
                              (if (gx#stx-null? _tl2823628355_)
                                  ((lambda (_L28358_
                                            _L28359_
                                            _L28360_
                                            _L28361_
                                            _L28362_)
                                     (let* ((_get-kws-id28402_
                                             (make-symbol
                                              (gx#stx-e _L28174_)
                                              (gensym '__)))
                                            (_get-kws-id28404_
                                             (gx#core-quote-syntax__1
                                              _get-kws-id28402_
                                              (gx#stx-source _stx27887_)))
                                            (_main-id28406_
                                             (make-symbol
                                              (gx#stx-e _L28174_)
                                              (gensym '__)))
                                            (_main-id28408_
                                             (gx#core-quote-syntax__1
                                              _main-id28406_
                                              (gx#stx-source _stx27887_)))
                                            (_g34889_
                                             (gx#core-bind-runtime!__0
                                              _get-kws-id28404_))
                                            (_g34890_
                                             (gx#core-bind-runtime!__0
                                              _main-id28408_))
                                            (_new-kw-dispatch28412_
                                             (gxc#apply-expression-subst
                                              _L28358_
                                              _L28362_
                                              _get-kws-id28404_))
                                            (_new-get-kws28414_
                                             (gxc#apply-expression-subst
                                              _L28359_
                                              _L28361_
                                              _main-id28408_)))
                                       (begin
                                         (gxc#verbose
                                          '"lift kw-lambda dispatch "
                                          (gxc#identifier-symbol _L28174_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _get-kws-id28404_)
                                          '" => "
                                          (gxc#identifier-symbol
                                           _main-id28408_))
                                         (_lp28027_
                                          (cons (_bind-e__3476534766_
                                                 _main-id28408_
                                                 _L28360_
                                                 '#f)
                                                (cons (_bind-e__3476534766_
                                                       _get-kws-id28404_
                                                       _new-get-kws28414_
                                                       '#f)
                                                      (cons (_bind-e__3476534766_
                                                             _L28174_
                                                             _new-kw-dispatch28412_
                                                             '#f)
                                                            _rest28050_)))
                                          _bind28030_))))
                                   _hd2823528353_
                                   _hd2823228345_
                                   _hd2822928337_
                                   _hd2822628329_
                                   _hd2820828281_)
                                  (_g2818828241_ _g2818928244_))))
                          (_g2818828241_ _g2818928244_))
                      (_g2818828241_ _g2818928244_))
                  (_g2818828241_ _g2818928244_))
              (_g2818828241_ _g2818928244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2818828241_ _g2818928244_))
                                          (_g2818828241_ _g2818928244_))
                                      (_g2818828241_ _g2818928244_))))
                              (_g2818828241_ _g2818928244_))
                          (_g2818828241_ _g2818928244_))))
                  (_g2818828241_ _g2818928244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2818828241_
                                                   _g2818928244_))))
                                          (_g2818828241_ _g2818928244_))))
                                  (_g2818828241_ _g2818928244_))))
                          (_g2818828241_ _g2818928244_))))
                  (_g2818828241_ _g2818928244_))
              (_g2818828241_ _g2818928244_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2818828241_ _g2818928244_))))
                                      (_g2818828241_ _g2818928244_))))
                              (_g2818828241_ _g2818928244_))))
                      (_g2818828241_ _g2818928244_))))
              (_g2818828241_ _g2818928244_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2818728417_ _L28173_))
                                        (_g2805528144_ _g2805728147_)))
                                  _hd2808928168_
                                  _hd2808628160_)
                                 (_g2805528144_ _g2805728147_))))
                         (_g2805528144_ _g2805728147_))
                     (_g2805528144_ _g2805728147_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2805528144_
                                                      _g2805728147_))))
                                             (_g2805528144_ _g2805728147_))))
                                      (_g2805328592_
                                       (lambda (_g2805728423_)
                                         (if (gx#stx-pair? _g2805728423_)
                                             (let ((_e2807128425_
                                                    (gx#stx-e _g2805728423_)))
                                               (let ((_hd2807228428_
                                                      (##car _e2807128425_))
                                                     (_tl2807328430_
                                                      (##cdr _e2807128425_)))
                                                 (if (gx#stx-pair?
                                                      _hd2807228428_)
                                                     (let ((_e2807428433_
                                                            (gx#stx-e
                                                             _hd2807228428_)))
                                                       (let ((_hd2807528436_
                                                              (##car _e2807428433_))
                                                             (_tl2807628438_
                                                              (##cdr _e2807428433_)))
                                                         (if (gx#stx-null?
                                                              _tl2807628438_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2807328430_)
                         (let ((_e2807728441_ (gx#stx-e _tl2807328430_)))
                           (let ((_hd2807828444_ (##car _e2807728441_))
                                 (_tl2807928446_ (##cdr _e2807728441_)))
                             (if (gx#stx-null? _tl2807928446_)
                                 ((lambda (_L28449_ _L28450_)
                                    (if (if (gx#identifier? _L28450_)
                                            (gxc#opt-lambda-expr? _L28449_)
                                            '#f)
                                        (let* ((_g2846428494_
                                                (lambda (_g2846528491_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2846528491_)))
                                               (_g2846328589_
                                                (lambda (_g2846528497_)
                                                  (if (gx#stx-pair?
                                                       _g2846528497_)
                                                      (let ((_e2846928499_
                                                             (gx#stx-e
                                                              _g2846528497_)))
                                                        (let ((_hd2847028502_
                                                               (##car _e2846928499_))
                                                              (_tl2847128504_
                                                               (##cdr _e2846928499_)))
                                                          (if (gx#stx-pair?
                                                               _tl2847128504_)
                                                              (let ((_e2847228507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2847128504_)))
                        (let ((_hd2847328510_ (##car _e2847228507_))
                              (_tl2847428512_ (##cdr _e2847228507_)))
                          (if (gx#stx-pair? _hd2847328510_)
                              (let ((_e2847528515_ (gx#stx-e _hd2847328510_)))
                                (let ((_hd2847628518_ (##car _e2847528515_))
                                      (_tl2847728520_ (##cdr _e2847528515_)))
                                  (if (gx#stx-pair? _hd2847628518_)
                                      (let ((_e2847828523_
                                             (gx#stx-e _hd2847628518_)))
                                        (let ((_hd2847928526_
                                               (##car _e2847828523_))
                                              (_tl2848028528_
                                               (##cdr _e2847828523_)))
                                          (if (gx#stx-pair? _hd2847928526_)
                                              (let ((_e2848128531_
                                                     (gx#stx-e
                                                      _hd2847928526_)))
                                                (let ((_hd2848228534_
                                                       (##car _e2848128531_))
                                                      (_tl2848328536_
                                                       (##cdr _e2848128531_)))
                                                  (if (gx#stx-null?
                                                       _tl2848328536_)
                                                      (if (gx#stx-pair?
                                                           _tl2848028528_)
                                                          (let ((_e2848428539_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2848028528_)))
                    (let ((_hd2848528542_ (##car _e2848428539_))
                          (_tl2848628544_ (##cdr _e2848428539_)))
                      (if (gx#stx-null? _tl2848628544_)
                          (if (gx#stx-null? _tl2847728520_)
                              (if (gx#stx-pair? _tl2847428512_)
                                  (let ((_e2848728547_
                                         (gx#stx-e _tl2847428512_)))
                                    (let ((_hd2848828550_
                                           (##car _e2848728547_))
                                          (_tl2848928552_
                                           (##cdr _e2848728547_)))
                                      (if (gx#stx-null? _tl2848928552_)
                                          ((lambda (_L28555_ _L28556_ _L28557_)
                                             (let* ((_lambda-id28581_
                                                     (make-symbol
                                                      (gx#stx-e _L28450_)
                                                      (gensym '__)))
                                                    (_lambda-id28583_
                                                     (gx#core-quote-syntax__1
                                                      _lambda-id28581_
                                                      (gx#stx-source
                                                       _stx27887_)))
                                                    (_g34891_
                                                     (gx#core-bind-runtime!__0
                                                      _lambda-id28583_))
                                                    (_new-case-lambda-expr28586_
                                                     (gxc#apply-expression-subst
                                                      _L28555_
                                                      _L28557_
                                                      _lambda-id28583_)))
                                               (begin
                                                 (gxc#verbose
                                                  '"lift opt-lambda dispatch "
                                                  (gxc#identifier-symbol
                                                   _L28450_)
                                                  '" => "
                                                  (gxc#identifier-symbol
                                                   _lambda-id28583_))
                                                 (_lp28027_
                                                  (cons (_bind-e__3476534766_
                                                         _L28450_
                                                         _new-case-lambda-expr28586_
                                                         '#f)
                                                        _rest28050_)
                                                  (cons (_bind-e__0__3476734768_
                                                         _lambda-id28583_
                                                         _L28556_)
                                                        _bind28030_)))))
                                           _hd2848828550_
                                           _hd2848528542_
                                           _hd2848228534_)
                                          (_g2846428494_ _g2846528497_))))
                                  (_g2846428494_ _g2846528497_))
                              (_g2846428494_ _g2846528497_))
                          (_g2846428494_ _g2846528497_))))
                  (_g2846428494_ _g2846528497_))
              (_g2846428494_ _g2846528497_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2846428494_ _g2846528497_))))
                                      (_g2846428494_ _g2846528497_))))
                              (_g2846428494_ _g2846528497_))))
                      (_g2846428494_ _g2846528497_))))
              (_g2846428494_ _g2846528497_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2846328589_ _L28449_))
                                        (_g2805428420_ _g2805728423_)))
                                  _hd2807828444_
                                  _hd2807528436_)
                                 (_g2805428420_ _g2805728423_))))
                         (_g2805428420_ _g2805728423_))
                     (_g2805428420_ _g2805728423_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2805428420_
                                                      _g2805728423_))))
                                             (_g2805428420_ _g2805728423_))))
                                      (_g2805228711_
                                       (lambda (_g2805728595_)
                                         (if (gx#stx-pair? _g2805728595_)
                                             (let ((_e2806028597_
                                                    (gx#stx-e _g2805728595_)))
                                               (let ((_hd2806128600_
                                                      (##car _e2806028597_))
                                                     (_tl2806228602_
                                                      (##cdr _e2806028597_)))
                                                 (if (gx#stx-pair?
                                                      _hd2806128600_)
                                                     (let ((_e2806328605_
                                                            (gx#stx-e
                                                             _hd2806128600_)))
                                                       (let ((_hd2806428608_
                                                              (##car _e2806328605_))
                                                             (_tl2806528610_
                                                              (##cdr _e2806328605_)))
                                                         (if (gx#stx-null?
                                                              _tl2806528610_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2806228602_)
                         (let ((_e2806628613_ (gx#stx-e _tl2806228602_)))
                           (let ((_hd2806728616_ (##car _e2806628613_))
                                 (_tl2806828618_ (##cdr _e2806628613_)))
                             (if (gx#stx-null? _tl2806828618_)
                                 ((lambda (_L28621_ _L28622_)
                                    (if (if (gx#identifier? _L28622_)
                                            (gxc#case-lambda-expr? _L28621_)
                                            '#f)
                                        (let* ((_g2863728651_
                                                (lambda (_g2863828648_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2863828648_)))
                                               (_g2863628686_
                                                (lambda (_g2863828654_)
                                                  (if (gx#stx-pair?
                                                       _g2863828654_)
                                                      (let ((_e2864428656_
                                                             (gx#stx-e
                                                              _g2863828654_)))
                                                        (let ((_hd2864528659_
                                                               (##car _e2864428656_))
                                                              (_tl2864628661_
                                                               (##cdr _e2864428656_)))
                                                          ((lambda (_L28664_)
                                                             (let ((_g34892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#lift-case-lambda-clauses__%
                             _stx27887_
                             _L28622_
                             _L28664_
                             '#t)))
                       (begin
                         (let ((_g34893_
                                (if (##values? _g34892_)
                                    (##vector-length _g34892_)
                                    1)))
                           (if (not (##fx= _g34893_ 3))
                               (error "Context expects 3 values" _g34893_)))
                         (let ((_ids28674_ (##vector-ref _g34892_ 0))
                               (_impls28675_ (##vector-ref _g34892_ 1))
                               (_clauses28676_ (##vector-ref _g34892_ 2)))
                           (let* ((_g34894_
                                   (for-each gx#core-bind-runtime! _ids28674_))
                                  (_xbind28679_
                                   (map _bind-e27889_ _ids28674_ _impls28675_))
                                  (_expr*28681_
                                   (gxc#xform-wrap-source
                                    (cons '%#case-lambda _clauses28676_)
                                    (gx#datum->syntax__0
                                     '#f
                                     'case-lambda-expr)))
                                  (_bind*28683_
                                   (_bind-e__3476534766_
                                    _L28622_
                                    _expr*28681_
                                    '#f)))
                             (begin
                               (gxc#verbose
                                '"lift case-lambda clauses "
                                (gxc#identifier-symbol _L28622_)
                                '" => "
                                (map gxc#identifier-symbol _ids28674_))
                               (_lp28027_
                                _rest28050_
                                (cons _bind*28683_
                                      (foldl1 cons
                                              _bind28030_
                                              _xbind28679_)))))))))
                   _tl2864628661_)))
              (_g2863728651_ _g2863828654_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2863528708_
                                                (lambda (_g2863828689_)
                                                  (if (gx#stx-pair?
                                                       _g2863828689_)
                                                      (let ((_e2864028691_
                                                             (gx#stx-e
                                                              _g2863828689_)))
                                                        (let ((_hd2864128694_
                                                               (##car _e2864028691_))
                                                              (_tl2864228696_
                                                               (##cdr _e2864028691_)))
                                                          ((lambda (_L28699_)
                                                             (if (andmap1 gxc#dispatch-lambda-form?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _L28699_)
                         (_lp28027_
                          _rest28050_
                          (cons (_bind-e__3476534766_ _L28622_ _L28621_ '#f)
                                _bind28030_))
                         (_g2863628686_ _g2863828689_)))
                   _tl2864228696_)))
              (_g2863628686_ _g2863828689_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2863528708_ _L28621_))
                                        (_g2805328592_ _g2805728595_)))
                                  _hd2806728616_
                                  _hd2806428608_)
                                 (_g2805328592_ _g2805728595_))))
                         (_g2805328592_ _g2805728595_))
                     (_g2805328592_ _g2805728595_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2805328592_
                                                      _g2805728595_))))
                                             (_g2805328592_ _g2805728595_)))))
                                 (_g2805228711_ _hd28051_)))))
                       (if (##pair? _rest2803128039_)
                           (let ((_hd2803628717_ (##car _rest2803128039_))
                                 (_tl2803728719_ (##cdr _rest2803128039_)))
                             (let* ((_hd28722_ _hd2803628717_)
                                    (_rest28724_ _tl2803728719_))
                               (_K2803528714_ _rest28724_ _hd28722_)))
                           (_else2803328047_)))))))
        (let* ((_g2789327920_
                (lambda (_g2789427917_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2789427917_)))
               (_g2789227927_
                (lambda (_g2789427923_)
                  ((lambda () (gxc#xform-let-values% _stx27887_)))))
               (_g2789128022_
                (lambda (_g2789427930_)
                  (if (gx#stx-pair? _g2789427930_)
                      (let ((_e2789827932_ (gx#stx-e _g2789427930_)))
                        (let ((_hd2789927935_ (##car _e2789827932_))
                              (_tl2790027937_ (##cdr _e2789827932_)))
                          (if (gx#stx-pair? _tl2790027937_)
                              (let ((_e2790127940_ (gx#stx-e _tl2790027937_)))
                                (let ((_hd2790227943_ (##car _e2790127940_))
                                      (_tl2790327945_ (##cdr _e2790127940_)))
                                  (if (gx#stx-pair/null? _hd2790227943_)
                                      (if (fx>= (gx#stx-length _hd2790227943_)
                                                '0)
                                          (let ((_g34895_
                                                 (gx#syntax-split-splice
                                                  _hd2790227943_
                                                  '0)))
                                            (begin
                                              (let ((_g34896_
                                                     (if (##values? _g34895_)
                                                         (##vector-length
                                                          _g34895_)
                                                         1)))
                                                (if (not (##fx= _g34896_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34896_)))
                                              (let ((_target2790427948_
                                                     (##vector-ref _g34895_ 0))
                                                    (_tl2790627950_
                                                     (##vector-ref
                                                      _g34895_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl2790627950_)
                                                    (letrec ((_loop2790727953_
                                                              (lambda (_hd2790527956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _bind2791127958_)
                        (if (gx#stx-pair? _hd2790527956_)
                            (let ((_e2790827961_ (gx#stx-e _hd2790527956_)))
                              (let ((_lp-hd2790927964_ (##car _e2790827961_))
                                    (_lp-tl2791027966_ (##cdr _e2790827961_)))
                                (_loop2790727953_
                                 _lp-tl2791027966_
                                 (cons _lp-hd2790927964_ _bind2791127958_))))
                            (let ((_bind2791227969_
                                   (reverse _bind2791127958_)))
                              (if (gx#stx-pair? _tl2790327945_)
                                  (let ((_e2791327972_
                                         (gx#stx-e _tl2790327945_)))
                                    (let ((_hd2791427975_
                                           (##car _e2791327972_))
                                          (_tl2791527977_
                                           (##cdr _e2791327972_)))
                                      (if (gx#stx-null? _tl2791527977_)
                                          ((lambda (_L27980_ _L27981_ _L27982_)
                                             (if (ormap1 gxc#lift-top-lambda-binding?
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g2800328006_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g2800428008_)
                             (cons _g2800328006_ _g2800428008_))
                           '()
                           _L27981_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (call-with-parameters
                                                  (lambda ()
                                                    (let ((_hd28019_
                                                           (_compile-bindings27890_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g2801128014_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g2801228016_)
                                (cons _g2801128014_ _g2801228016_))
                              '()
                              _L27981_))))
                  (_body28020_ (gxc#compile-e _L27980_)))
              (gxc#xform-wrap-source
               (cons _L27982_ (cons _hd28019_ (cons _body28020_ '())))
               _stx27887_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  gx#current-expander-context
                                                  (let ((__obj34827
                                                         (make-object
                                                          gx#local-context::t
                                                          '5)))
                                                    (begin
                                                      (gx#local-context:::init!__0
                                                       __obj34827)
                                                      __obj34827)))
                                                 (_g2789227927_
                                                  _g2789427930_)))
                                           _hd2791427975_
                                           _bind2791227969_
                                           _hd2789927935_)
                                          (_g2789227927_ _g2789427930_))))
                                  (_g2789227927_ _g2789427930_)))))))
              (_loop2790727953_ _target2790427948_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2789227927_
                                                     _g2789427930_)))))
                                          (_g2789227927_ _g2789427930_))
                                      (_g2789227927_ _g2789427930_))))
                              (_g2789227927_ _g2789427930_))))
                      (_g2789227927_ _g2789427930_)))))
          (_g2789128022_ _stx27887_)))))
  (define gxc#lift-top-lambda-binding?
    (lambda (_bind27805_)
      (let* ((_g2780827825_
              (lambda (_g2780927822_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2780927822_)))
             (_g2780727832_ (lambda (_g2780927828_) ((lambda () '#f))))
             (_g2780627884_
              (lambda (_g2780927835_)
                (if (gx#stx-pair? _g2780927835_)
                    (let ((_e2781227837_ (gx#stx-e _g2780927835_)))
                      (let ((_hd2781327840_ (##car _e2781227837_))
                            (_tl2781427842_ (##cdr _e2781227837_)))
                        (if (gx#stx-pair? _hd2781327840_)
                            (let ((_e2781527845_ (gx#stx-e _hd2781327840_)))
                              (let ((_hd2781627848_ (##car _e2781527845_))
                                    (_tl2781727850_ (##cdr _e2781527845_)))
                                (if (gx#stx-null? _tl2781727850_)
                                    (if (gx#stx-pair? _tl2781427842_)
                                        (let ((_e2781827853_
                                               (gx#stx-e _tl2781427842_)))
                                          (let ((_hd2781927856_
                                                 (##car _e2781827853_))
                                                (_tl2782027858_
                                                 (##cdr _e2781827853_)))
                                            (if (gx#stx-null? _tl2782027858_)
                                                ((lambda (_L27861_ _L27862_)
                                                   (if (gx#identifier?
                                                        _L27862_)
                                                       (let ((_$e27878_
                                                              (gxc#case-lambda-expr?
                                                               _L27861_)))
                                                         (if _$e27878_
                                                             _$e27878_
                                                             (let ((_$e27881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gxc#opt-lambda-expr? _L27861_)))
                       (if _$e27881_
                           _$e27881_
                           (gxc#kw-lambda-expr? _L27861_)))))
               '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2781927856_
                                                 _hd2781627848_)
                                                (_g2780727832_
                                                 _g2780927835_))))
                                        (_g2780727832_ _g2780927835_))
                                    (_g2780727832_ _g2780927835_))))
                            (_g2780727832_ _g2780927835_))))
                    (_g2780727832_ _g2780927835_)))))
        (_g2780627884_ _bind27805_))))
  (define gxc#expression-subst-ref%
    (lambda (_stx27752_ _id27753_ _new-id27754_)
      (let* ((_g2775627769_
              (lambda (_g2775727766_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2775727766_)))
             (_g2775527802_
              (lambda (_g2775727772_)
                (if (gx#stx-pair? _g2775727772_)
                    (let ((_e2775927774_ (gx#stx-e _g2775727772_)))
                      (let ((_hd2776027777_ (##car _e2775927774_))
                            (_tl2776127779_ (##cdr _e2775927774_)))
                        (if (gx#stx-pair? _tl2776127779_)
                            (let ((_e2776227782_ (gx#stx-e _tl2776127779_)))
                              (let ((_hd2776327785_ (##car _e2776227782_))
                                    (_tl2776427787_ (##cdr _e2776227782_)))
                                (if (gx#stx-null? _tl2776427787_)
                                    ((lambda (_L27790_)
                                       (if (gx#free-identifier=?
                                            _L27790_
                                            _id27753_)
                                           (gxc#xform-wrap-source
                                            (cons '%#ref
                                                  (cons _new-id27754_ '()))
                                            _stx27752_)
                                           _stx27752_))
                                     _hd2776327785_)
                                    (_g2775627769_ _g2775727772_))))
                            (_g2775627769_ _g2775727772_))))
                    (_g2775627769_ _g2775727772_)))))
        (_g2775527802_ _stx27752_))))
  (define gxc#expression-subst*-ref%
    (lambda (_stx27693_ _subst27694_)
      (let* ((_g2769627709_
              (lambda (_g2769727706_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2769727706_)))
             (_g2769527749_
              (lambda (_g2769727712_)
                (if (gx#stx-pair? _g2769727712_)
                    (let ((_e2769927714_ (gx#stx-e _g2769727712_)))
                      (let ((_hd2770027717_ (##car _e2769927714_))
                            (_tl2770127719_ (##cdr _e2769927714_)))
                        (if (gx#stx-pair? _tl2770127719_)
                            (let ((_e2770227722_ (gx#stx-e _tl2770127719_)))
                              (let ((_hd2770327725_ (##car _e2770227722_))
                                    (_tl2770427727_ (##cdr _e2770227722_)))
                                (if (gx#stx-null? _tl2770427727_)
                                    ((lambda (_L27730_)
                                       (let ((_$e27744_
                                              (find (lambda (_sub27742_)
                                                      (gx#free-identifier=?
                                                       _L27730_
                                                       (car _sub27742_)))
                                                    _subst27694_)))
                                         (if _$e27744_
                                             ((lambda (_sub27747_)
                                                (gxc#xform-wrap-source
                                                 (cons '%#ref
                                                       (cons (cdr _sub27747_)
                                                             '()))
                                                 _stx27693_))
                                              _$e27744_)
                                             _stx27693_)))
                                     _hd2770327725_)
                                    (_g2769627709_ _g2769727712_))))
                            (_g2769627709_ _g2769727712_))))
                    (_g2769627709_ _g2769727712_)))))
        (_g2769527749_ _stx27693_))))
  (define gxc#expression-subst-setq%
    (lambda (_stx27621_ _id27622_ _new-id27623_)
      (let* ((_g2762527642_
              (lambda (_g2762627639_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2762627639_)))
             (_g2762427690_
              (lambda (_g2762627645_)
                (if (gx#stx-pair? _g2762627645_)
                    (let ((_e2762927647_ (gx#stx-e _g2762627645_)))
                      (let ((_hd2763027650_ (##car _e2762927647_))
                            (_tl2763127652_ (##cdr _e2762927647_)))
                        (if (gx#stx-pair? _tl2763127652_)
                            (let ((_e2763227655_ (gx#stx-e _tl2763127652_)))
                              (let ((_hd2763327658_ (##car _e2763227655_))
                                    (_tl2763427660_ (##cdr _e2763227655_)))
                                (if (gx#stx-pair? _tl2763427660_)
                                    (let ((_e2763527663_
                                           (gx#stx-e _tl2763427660_)))
                                      (let ((_hd2763627666_
                                             (##car _e2763527663_))
                                            (_tl2763727668_
                                             (##cdr _e2763527663_)))
                                        (if (gx#stx-null? _tl2763727668_)
                                            ((lambda (_L27671_ _L27672_)
                                               (let ((_new-expr27687_
                                                      (gxc#compile-e
                                                       _L27671_
                                                       _id27622_
                                                       _new-id27623_))
                                                     (_new-xid27688_
                                                      (if (gx#free-identifier=?
                                                           _L27672_
                                                           _id27622_)
                                                          _new-id27623_
                                                          _L27672_)))
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid27688_
                                                              (cons _new-expr27687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx27621_)))
                                             _hd2763627666_
                                             _hd2763327658_)
                                            (_g2762527642_ _g2762627645_))))
                                    (_g2762527642_ _g2762627645_))))
                            (_g2762527642_ _g2762627645_))))
                    (_g2762527642_ _g2762627645_)))))
        (_g2762427690_ _stx27621_))))
  (define gxc#expression-subst*-setq%
    (lambda (_stx27545_ _subst27546_)
      (let* ((_g2754827565_
              (lambda (_g2754927562_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2754927562_)))
             (_g2754727618_
              (lambda (_g2754927568_)
                (if (gx#stx-pair? _g2754927568_)
                    (let ((_e2755227570_ (gx#stx-e _g2754927568_)))
                      (let ((_hd2755327573_ (##car _e2755227570_))
                            (_tl2755427575_ (##cdr _e2755227570_)))
                        (if (gx#stx-pair? _tl2755427575_)
                            (let ((_e2755527578_ (gx#stx-e _tl2755427575_)))
                              (let ((_hd2755627581_ (##car _e2755527578_))
                                    (_tl2755727583_ (##cdr _e2755527578_)))
                                (if (gx#stx-pair? _tl2755727583_)
                                    (let ((_e2755827586_
                                           (gx#stx-e _tl2755727583_)))
                                      (let ((_hd2755927589_
                                             (##car _e2755827586_))
                                            (_tl2756027591_
                                             (##cdr _e2755827586_)))
                                        (if (gx#stx-null? _tl2756027591_)
                                            ((lambda (_L27594_ _L27595_)
                                               (let ((_new-expr27615_
                                                      (gxc#compile-e
                                                       _L27594_
                                                       _subst27546_))
                                                     (_new-xid27616_
                                                      (let ((_$e27612_
                                                             (find (lambda (_sub27610_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#free-identifier=? _L27595_ (car _sub27610_)))
                           _subst27546_)))
                (if _$e27612_ (cdr _$e27612_) _L27595_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (gxc#xform-wrap-source
                                                  (cons '%#set!
                                                        (cons _new-xid27616_
                                                              (cons _new-expr27615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _stx27545_)))
                                             _hd2755927589_
                                             _hd2755627581_)
                                            (_g2754827565_ _g2754927568_))))
                                    (_g2754827565_ _g2754927568_))))
                            (_g2754827565_ _g2754927568_))))
                    (_g2754827565_ _g2754927568_)))))
        (_g2754727618_ _stx27545_))))
  (define gxc#collect-type-define-values%
    (lambda (_stx27401_)
      (let* ((_g2740427435_
              (lambda (_g2740527432_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2740527432_)))
             (_g2740327480_
              (lambda (_g2740527438_)
                (if (gx#stx-pair? _g2740527438_)
                    (let ((_e2742227440_ (gx#stx-e _g2740527438_)))
                      (let ((_hd2742327443_ (##car _e2742227440_))
                            (_tl2742427445_ (##cdr _e2742227440_)))
                        (if (gx#stx-pair? _tl2742427445_)
                            (let ((_e2742527448_ (gx#stx-e _tl2742427445_)))
                              (let ((_hd2742627451_ (##car _e2742527448_))
                                    (_tl2742727453_ (##cdr _e2742527448_)))
                                (if (gx#stx-pair? _tl2742727453_)
                                    (let ((_e2742827456_
                                           (gx#stx-e _tl2742727453_)))
                                      (let ((_hd2742927459_
                                             (##car _e2742827456_))
                                            (_tl2743027461_
                                             (##cdr _e2742827456_)))
                                        (if (gx#stx-null? _tl2743027461_)
                                            ((lambda (_L27464_ _L27465_)
                                               (gxc#compile-e _L27464_))
                                             _hd2742927459_
                                             _hd2742627451_)
                                            (_g2740427435_ _g2740527438_))))
                                    (_g2740427435_ _g2740527438_))))
                            (_g2740427435_ _g2740527438_))))
                    (_g2740427435_ _g2740527438_))))
             (_g2740227542_
              (lambda (_g2740527483_)
                (if (gx#stx-pair? _g2740527483_)
                    (let ((_e2740827485_ (gx#stx-e _g2740527483_)))
                      (let ((_hd2740927488_ (##car _e2740827485_))
                            (_tl2741027490_ (##cdr _e2740827485_)))
                        (if (gx#stx-pair? _tl2741027490_)
                            (let ((_e2741127493_ (gx#stx-e _tl2741027490_)))
                              (let ((_hd2741227496_ (##car _e2741127493_))
                                    (_tl2741327498_ (##cdr _e2741127493_)))
                                (if (gx#stx-pair? _hd2741227496_)
                                    (let ((_e2741427501_
                                           (gx#stx-e _hd2741227496_)))
                                      (let ((_hd2741527504_
                                             (##car _e2741427501_))
                                            (_tl2741627506_
                                             (##cdr _e2741427501_)))
                                        (if (gx#stx-null? _tl2741627506_)
                                            (if (gx#stx-pair? _tl2741327498_)
                                                (let ((_e2741727509_
                                                       (gx#stx-e
                                                        _tl2741327498_)))
                                                  (let ((_hd2741827512_
                                                         (##car _e2741727509_))
                                                        (_tl2741927514_
                                                         (##cdr _e2741727509_)))
                                                    (if (gx#stx-null?
                                                         _tl2741927514_)
                                                        ((lambda (_L27517_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L27518_)
                   (if (gx#identifier? _L27518_)
                       (let ((_sym27534_ (gxc#identifier-symbol _L27518_)))
                         (begin
                           (if (table-ref
                                (gxc#current-compile-mutators)
                                _sym27534_
                                '#f)
                               (gxc#verbose
                                '"skipping type declaration for mutable binding "
                                _sym27534_)
                               (let ((_type2753527537_
                                      (gxc#apply-basic-expression-type
                                       _L27517_)))
                                 (if _type2753527537_
                                     (let ((_type27540_ _type2753527537_))
                                       (gxc#optimizer-declare-type!__0
                                        _sym27534_
                                        _type27540_))
                                     '#f)))
                           (gxc#compile-e _L27517_)))
                       (_g2740327480_ _g2740527483_)))
                 _hd2741827512_
                 _hd2741527504_)
                (_g2740327480_ _g2740527483_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2740327480_ _g2740527483_))
                                            (_g2740327480_ _g2740527483_))))
                                    (_g2740327480_ _g2740527483_))))
                            (_g2740327480_ _g2740527483_))))
                    (_g2740327480_ _g2740527483_)))))
        (_g2740227542_ _stx27401_))))
  (define gxc#collect-type-let-values%
    (lambda (_stx27186_)
      (letrec ((_collect-e27188_
                (lambda (_hd27345_ _expr27346_)
                  (let* ((_g2734927359_
                          (lambda (_g2735027356_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2735027356_)))
                         (_g2734827366_
                          (lambda (_g2735027362_) ((lambda () '#!void))))
                         (_g2734727398_
                          (lambda (_g2735027369_)
                            (if (gx#stx-pair? _g2735027369_)
                                (let ((_e2735227371_ (gx#stx-e _g2735027369_)))
                                  (let ((_hd2735327374_ (##car _e2735227371_))
                                        (_tl2735427376_ (##cdr _e2735227371_)))
                                    (if (gx#stx-null? _tl2735427376_)
                                        ((lambda (_L27379_)
                                           (if (gx#identifier? _L27379_)
                                               (let ((_sym27390_
                                                      (gxc#identifier-symbol
                                                       _L27379_)))
                                                 (if (table-ref
                                                      (gxc#current-compile-mutators)
                                                      _sym27390_
                                                      '#f)
                                                     (gxc#verbose
                                                      '"skipping type declaration for mutable binding "
                                                      _sym27390_)
                                                     (let ((_type2739127393_
                                                            (gxc#apply-basic-expression-type
                                                             _expr27346_)))
                                                       (if _type2739127393_
                                                           (let ((_type27396_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _type2739127393_))
                     (gxc#optimizer-declare-type!__%
                      _sym27390_
                      _type27396_
                      '#t))
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2734827366_ _g2735027369_)))
                                         _hd2735327374_)
                                        (_g2734827366_ _g2735027369_))))
                                (_g2734827366_ _g2735027369_)))))
                    (_g2734727398_ _hd27345_)))))
        (let* ((_g2719027225_
                (lambda (_g2719127222_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2719127222_)))
               (_g2718927342_
                (lambda (_g2719127228_)
                  (if (gx#stx-pair? _g2719127228_)
                      (let ((_e2719527230_ (gx#stx-e _g2719127228_)))
                        (let ((_hd2719627233_ (##car _e2719527230_))
                              (_tl2719727235_ (##cdr _e2719527230_)))
                          (if (gx#stx-pair? _tl2719727235_)
                              (let ((_e2719827238_ (gx#stx-e _tl2719727235_)))
                                (let ((_hd2719927241_ (##car _e2719827238_))
                                      (_tl2720027243_ (##cdr _e2719827238_)))
                                  (if (gx#stx-pair/null? _hd2719927241_)
                                      (if (fx>= (gx#stx-length _hd2719927241_)
                                                '0)
                                          (let ((_g34897_
                                                 (gx#syntax-split-splice
                                                  _hd2719927241_
                                                  '0)))
                                            (begin
                                              (let ((_g34898_
                                                     (if (##values? _g34897_)
                                                         (##vector-length
                                                          _g34897_)
                                                         1)))
                                                (if (not (##fx= _g34898_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34898_)))
                                              (let ((_target2720127246_
                                                     (##vector-ref _g34897_ 0))
                                                    (_tl2720327248_
                                                     (##vector-ref
                                                      _g34897_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl2720327248_)
                                                    (letrec ((_loop2720427251_
                                                              (lambda (_hd2720227254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr2720827256_
                               _hd2720927258_)
                        (if (gx#stx-pair? _hd2720227254_)
                            (let ((_e2720527261_ (gx#stx-e _hd2720227254_)))
                              (let ((_lp-hd2720627264_ (##car _e2720527261_))
                                    (_lp-tl2720727266_ (##cdr _e2720527261_)))
                                (if (gx#stx-pair? _lp-hd2720627264_)
                                    (let ((_e2721227269_
                                           (gx#stx-e _lp-hd2720627264_)))
                                      (let ((_hd2721327272_
                                             (##car _e2721227269_))
                                            (_tl2721427274_
                                             (##cdr _e2721227269_)))
                                        (if (gx#stx-pair? _tl2721427274_)
                                            (let ((_e2721527277_
                                                   (gx#stx-e _tl2721427274_)))
                                              (let ((_hd2721627280_
                                                     (##car _e2721527277_))
                                                    (_tl2721727282_
                                                     (##cdr _e2721527277_)))
                                                (if (gx#stx-null?
                                                     _tl2721727282_)
                                                    (_loop2720427251_
                                                     _lp-tl2720727266_
                                                     (cons _hd2721627280_
                                                           _expr2720827256_)
                                                     (cons _hd2721327272_
                                                           _hd2720927258_))
                                                    (_g2719027225_
                                                     _g2719127228_))))
                                            (_g2719027225_ _g2719127228_))))
                                    (_g2719027225_ _g2719127228_))))
                            (let ((_expr2721027285_ (reverse _expr2720827256_))
                                  (_hd2721127287_ (reverse _hd2720927258_)))
                              (if (gx#stx-pair? _tl2720027243_)
                                  (let ((_e2721827290_
                                         (gx#stx-e _tl2720027243_)))
                                    (let ((_hd2721927293_
                                           (##car _e2721827290_))
                                          (_tl2722027295_
                                           (##cdr _e2721827290_)))
                                      (if (gx#stx-null? _tl2722027295_)
                                          ((lambda (_L27298_ _L27299_ _L27300_)
                                             (begin
                                               (for-each
                                                _collect-e27188_
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2732027323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2732127325_)
                    (cons _g2732027323_ _g2732127325_))
                  '()
                  _L27300_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2732727330_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2732827332_)
                    (cons _g2732727330_ _g2732827332_))
                  '()
                  _L27299_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (for-each
                                                gxc#compile-e
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2733427337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2733527339_)
                    (cons _g2733427337_ _g2733527339_))
                  '()
                  _L27299_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gxc#compile-e _L27298_)))
                                           _hd2721927293_
                                           _expr2721027285_
                                           _hd2721127287_)
                                          (_g2719027225_ _g2719127228_))))
                                  (_g2719027225_ _g2719127228_)))))))
              (_loop2720427251_ _target2720127246_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2719027225_
                                                     _g2719127228_)))))
                                          (_g2719027225_ _g2719127228_))
                                      (_g2719027225_ _g2719127228_))))
                              (_g2719027225_ _g2719127228_))))
                      (_g2719027225_ _g2719127228_)))))
          (_g2718927342_ _stx27186_)))))
  (define gxc#collect-type-call%
    (lambda (_stx26740_)
      (let* ((_g2674426846_
              (lambda (_g2674526843_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2674526843_)))
             (_g2674326853_ (lambda (_g2674526849_) ((lambda () '#!void))))
             (_g2674227003_
              (lambda (_g2674526856_)
                (if (gx#stx-pair? _g2674526856_)
                    (let ((_e2680326858_ (gx#stx-e _g2674526856_)))
                      (let ((_hd2680426861_ (##car _e2680326858_))
                            (_tl2680526863_ (##cdr _e2680326858_)))
                        (if (gx#stx-pair? _tl2680526863_)
                            (let ((_e2680626866_ (gx#stx-e _tl2680526863_)))
                              (let ((_hd2680726869_ (##car _e2680626866_))
                                    (_tl2680826871_ (##cdr _e2680626866_)))
                                (if (gx#stx-pair? _hd2680726869_)
                                    (let ((_e2680926874_
                                           (gx#stx-e _hd2680726869_)))
                                      (let ((_hd2681026877_
                                             (##car _e2680926874_))
                                            (_tl2681126879_
                                             (##cdr _e2680926874_)))
                                        (if (gx#identifier? _hd2681026877_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2681026877_)
                                                (if (gx#stx-pair?
                                                     _tl2681126879_)
                                                    (let ((_e2681226882_
                                                           (gx#stx-e
                                                            _tl2681126879_)))
                                                      (let ((_hd2681326885_
                                                             (##car _e2681226882_))
                                                            (_tl2681426887_
                                                             (##cdr _e2681226882_)))
                                                        (if (gx#stx-null?
                                                             _tl2681426887_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2680826871_)
                        (let ((_e2681526890_ (gx#stx-e _tl2680826871_)))
                          (let ((_hd2681626893_ (##car _e2681526890_))
                                (_tl2681726895_ (##cdr _e2681526890_)))
                            (if (gx#stx-pair? _hd2681626893_)
                                (let ((_e2681826898_
                                       (gx#stx-e _hd2681626893_)))
                                  (let ((_hd2681926901_ (##car _e2681826898_))
                                        (_tl2682026903_ (##cdr _e2681826898_)))
                                    (if (gx#identifier? _hd2681926901_)
                                        (if (gx#stx-eq? '%#ref _hd2681926901_)
                                            (if (gx#stx-pair? _tl2682026903_)
                                                (let ((_e2682126906_
                                                       (gx#stx-e
                                                        _tl2682026903_)))
                                                  (let ((_hd2682226909_
                                                         (##car _e2682126906_))
                                                        (_tl2682326911_
                                                         (##cdr _e2682126906_)))
                                                    (if (gx#stx-null?
                                                         _tl2682326911_)
                                                        (if (gx#stx-pair?
                                                             _tl2681726895_)
                                                            (let ((_e2682426914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2681726895_)))
                      (let ((_hd2682526917_ (##car _e2682426914_))
                            (_tl2682626919_ (##cdr _e2682426914_)))
                        (if (gx#stx-pair? _hd2682526917_)
                            (let ((_e2682726922_ (gx#stx-e _hd2682526917_)))
                              (let ((_hd2682826925_ (##car _e2682726922_))
                                    (_tl2682926927_ (##cdr _e2682726922_)))
                                (if (gx#identifier? _hd2682826925_)
                                    (if (gx#stx-eq? '%#quote _hd2682826925_)
                                        (if (gx#stx-pair? _tl2682926927_)
                                            (let ((_e2683026930_
                                                   (gx#stx-e _tl2682926927_)))
                                              (let ((_hd2683126933_
                                                     (##car _e2683026930_))
                                                    (_tl2683226935_
                                                     (##cdr _e2683026930_)))
                                                (if (gx#stx-null?
                                                     _tl2683226935_)
                                                    (if (gx#stx-pair?
                                                         _tl2682626919_)
                                                        (let ((_e2683326938_
                                                               (gx#stx-e
                                                                _tl2682626919_)))
                                                          (let ((_hd2683426941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2683326938_))
                        (_tl2683526943_ (##cdr _e2683326938_)))
                    (if (gx#stx-pair? _hd2683426941_)
                        (let ((_e2683626946_ (gx#stx-e _hd2683426941_)))
                          (let ((_hd2683726949_ (##car _e2683626946_))
                                (_tl2683826951_ (##cdr _e2683626946_)))
                            (if (gx#identifier? _hd2683726949_)
                                (if (gx#stx-eq? '%#ref _hd2683726949_)
                                    (if (gx#stx-pair? _tl2683826951_)
                                        (let ((_e2683926954_
                                               (gx#stx-e _tl2683826951_)))
                                          (let ((_hd2684026957_
                                                 (##car _e2683926954_))
                                                (_tl2684126959_
                                                 (##cdr _e2683926954_)))
                                            (if (gx#stx-null? _tl2684126959_)
                                                (if (gx#stx-null?
                                                     _tl2683526943_)
                                                    ((lambda (_L26962_
                                                              _L26963_
                                                              _L26964_
                                                              _L26965_)
                                                       (if (gxc#runtime-identifier=?
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '-bind-method)
                                                            'bind-method!)
                                                           (gxc#optimizer-declare-method!__%
                                                            (gxc#identifier-symbol
                                                             _L26964_)
                                                            (gx#stx-e _L26963_)
                                                            (gxc#identifier-symbol
                                                             _L26962_)
                                                            '#f)
                                                           (_g2674326853_
                                                            _g2674526856_)))
                                                     _hd2684026957_
                                                     _hd2683126933_
                                                     _hd2682226909_
                                                     _hd2681326885_)
                                                    (_g2674326853_
                                                     _g2674526856_))
                                                (_g2674326853_
                                                 _g2674526856_))))
                                        (_g2674326853_ _g2674526856_))
                                    (_g2674326853_ _g2674526856_))
                                (_g2674326853_ _g2674526856_))))
                        (_g2674326853_ _g2674526856_))))
                (_g2674326853_ _g2674526856_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2674326853_
                                                     _g2674526856_))))
                                            (_g2674326853_ _g2674526856_))
                                        (_g2674326853_ _g2674526856_))
                                    (_g2674326853_ _g2674526856_))))
                            (_g2674326853_ _g2674526856_))))
                    (_g2674326853_ _g2674526856_))
                (_g2674326853_ _g2674526856_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2674326853_ _g2674526856_))
                                            (_g2674326853_ _g2674526856_))
                                        (_g2674326853_ _g2674526856_))))
                                (_g2674326853_ _g2674526856_))))
                        (_g2674326853_ _g2674526856_))
                    (_g2674326853_ _g2674526856_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2674326853_
                                                     _g2674526856_))
                                                (_g2674326853_ _g2674526856_))
                                            (_g2674326853_ _g2674526856_))))
                                    (_g2674326853_ _g2674526856_))))
                            (_g2674326853_ _g2674526856_))))
                    (_g2674326853_ _g2674526856_))))
             (_g2674127183_
              (lambda (_g2674527006_)
                (if (gx#stx-pair? _g2674527006_)
                    (let ((_e2675127008_ (gx#stx-e _g2674527006_)))
                      (let ((_hd2675227011_ (##car _e2675127008_))
                            (_tl2675327013_ (##cdr _e2675127008_)))
                        (if (gx#stx-pair? _tl2675327013_)
                            (let ((_e2675427016_ (gx#stx-e _tl2675327013_)))
                              (let ((_hd2675527019_ (##car _e2675427016_))
                                    (_tl2675627021_ (##cdr _e2675427016_)))
                                (if (gx#stx-pair? _hd2675527019_)
                                    (let ((_e2675727024_
                                           (gx#stx-e _hd2675527019_)))
                                      (let ((_hd2675827027_
                                             (##car _e2675727024_))
                                            (_tl2675927029_
                                             (##cdr _e2675727024_)))
                                        (if (gx#identifier? _hd2675827027_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2675827027_)
                                                (if (gx#stx-pair?
                                                     _tl2675927029_)
                                                    (let ((_e2676027032_
                                                           (gx#stx-e
                                                            _tl2675927029_)))
                                                      (let ((_hd2676127035_
                                                             (##car _e2676027032_))
                                                            (_tl2676227037_
                                                             (##cdr _e2676027032_)))
                                                        (if (gx#stx-null?
                                                             _tl2676227037_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2675627021_)
                        (let ((_e2676327040_ (gx#stx-e _tl2675627021_)))
                          (let ((_hd2676427043_ (##car _e2676327040_))
                                (_tl2676527045_ (##cdr _e2676327040_)))
                            (if (gx#stx-pair? _hd2676427043_)
                                (let ((_e2676627048_
                                       (gx#stx-e _hd2676427043_)))
                                  (let ((_hd2676727051_ (##car _e2676627048_))
                                        (_tl2676827053_ (##cdr _e2676627048_)))
                                    (if (gx#identifier? _hd2676727051_)
                                        (if (gx#stx-eq? '%#ref _hd2676727051_)
                                            (if (gx#stx-pair? _tl2676827053_)
                                                (let ((_e2676927056_
                                                       (gx#stx-e
                                                        _tl2676827053_)))
                                                  (let ((_hd2677027059_
                                                         (##car _e2676927056_))
                                                        (_tl2677127061_
                                                         (##cdr _e2676927056_)))
                                                    (if (gx#stx-null?
                                                         _tl2677127061_)
                                                        (if (gx#stx-pair?
                                                             _tl2676527045_)
                                                            (let ((_e2677227064_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2676527045_)))
                      (let ((_hd2677327067_ (##car _e2677227064_))
                            (_tl2677427069_ (##cdr _e2677227064_)))
                        (if (gx#stx-pair? _hd2677327067_)
                            (let ((_e2677527072_ (gx#stx-e _hd2677327067_)))
                              (let ((_hd2677627075_ (##car _e2677527072_))
                                    (_tl2677727077_ (##cdr _e2677527072_)))
                                (if (gx#identifier? _hd2677627075_)
                                    (if (gx#stx-eq? '%#quote _hd2677627075_)
                                        (if (gx#stx-pair? _tl2677727077_)
                                            (let ((_e2677827080_
                                                   (gx#stx-e _tl2677727077_)))
                                              (let ((_hd2677927083_
                                                     (##car _e2677827080_))
                                                    (_tl2678027085_
                                                     (##cdr _e2677827080_)))
                                                (if (gx#stx-null?
                                                     _tl2678027085_)
                                                    (if (gx#stx-pair?
                                                         _tl2677427069_)
                                                        (let ((_e2678127088_
                                                               (gx#stx-e
                                                                _tl2677427069_)))
                                                          (let ((_hd2678227091_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2678127088_))
                        (_tl2678327093_ (##cdr _e2678127088_)))
                    (if (gx#stx-pair? _hd2678227091_)
                        (let ((_e2678427096_ (gx#stx-e _hd2678227091_)))
                          (let ((_hd2678527099_ (##car _e2678427096_))
                                (_tl2678627101_ (##cdr _e2678427096_)))
                            (if (gx#identifier? _hd2678527099_)
                                (if (gx#stx-eq? '%#ref _hd2678527099_)
                                    (if (gx#stx-pair? _tl2678627101_)
                                        (let ((_e2678727104_
                                               (gx#stx-e _tl2678627101_)))
                                          (let ((_hd2678827107_
                                                 (##car _e2678727104_))
                                                (_tl2678927109_
                                                 (##cdr _e2678727104_)))
                                            (if (gx#stx-null? _tl2678927109_)
                                                (if (gx#stx-pair?
                                                     _tl2678327093_)
                                                    (let ((_e2679027112_
                                                           (gx#stx-e
                                                            _tl2678327093_)))
                                                      (let ((_hd2679127115_
                                                             (##car _e2679027112_))
                                                            (_tl2679227117_
                                                             (##cdr _e2679027112_)))
                                                        (if (gx#stx-pair?
                                                             _hd2679127115_)
                                                            (let ((_e2679327120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2679127115_)))
                      (let ((_hd2679427123_ (##car _e2679327120_))
                            (_tl2679527125_ (##cdr _e2679327120_)))
                        (if (gx#identifier? _hd2679427123_)
                            (if (gx#stx-eq? '%#quote _hd2679427123_)
                                (if (gx#stx-pair? _tl2679527125_)
                                    (let ((_e2679627128_
                                           (gx#stx-e _tl2679527125_)))
                                      (let ((_hd2679727131_
                                             (##car _e2679627128_))
                                            (_tl2679827133_
                                             (##cdr _e2679627128_)))
                                        (if (gx#stx-null? _tl2679827133_)
                                            (if (gx#stx-null? _tl2679227117_)
                                                ((lambda (_L27136_
                                                          _L27137_
                                                          _L27138_
                                                          _L27139_
                                                          _L27140_)
                                                   (if (gxc#runtime-identifier=?
                                                        _L27140_
                                                        'bind-method!)
                                                       (gxc#optimizer-declare-method!__%
                                                        (gxc#identifier-symbol
                                                         _L27139_)
                                                        (gx#stx-e _L27138_)
                                                        (gxc#identifier-symbol
                                                         _L27137_)
                                                        (gx#stx-e _L27136_))
                                                       (_g2674227003_
                                                        _g2674527006_)))
                                                 _hd2679727131_
                                                 _hd2678827107_
                                                 _hd2677927083_
                                                 _hd2677027059_
                                                 _hd2676127035_)
                                                (_g2674227003_ _g2674527006_))
                                            (_g2674227003_ _g2674527006_))))
                                    (_g2674227003_ _g2674527006_))
                                (_g2674227003_ _g2674527006_))
                            (_g2674227003_ _g2674527006_))))
                    (_g2674227003_ _g2674527006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2674227003_
                                                     _g2674527006_))
                                                (_g2674227003_
                                                 _g2674527006_))))
                                        (_g2674227003_ _g2674527006_))
                                    (_g2674227003_ _g2674527006_))
                                (_g2674227003_ _g2674527006_))))
                        (_g2674227003_ _g2674527006_))))
                (_g2674227003_ _g2674527006_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2674227003_
                                                     _g2674527006_))))
                                            (_g2674227003_ _g2674527006_))
                                        (_g2674227003_ _g2674527006_))
                                    (_g2674227003_ _g2674527006_))))
                            (_g2674227003_ _g2674527006_))))
                    (_g2674227003_ _g2674527006_))
                (_g2674227003_ _g2674527006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2674227003_ _g2674527006_))
                                            (_g2674227003_ _g2674527006_))
                                        (_g2674227003_ _g2674527006_))))
                                (_g2674227003_ _g2674527006_))))
                        (_g2674227003_ _g2674527006_))
                    (_g2674227003_ _g2674527006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2674227003_
                                                     _g2674527006_))
                                                (_g2674227003_ _g2674527006_))
                                            (_g2674227003_ _g2674527006_))))
                                    (_g2674227003_ _g2674527006_))))
                            (_g2674227003_ _g2674527006_))))
                    (_g2674227003_ _g2674527006_)))))
        (_g2674127183_ _stx26740_))))
  (define gxc#basic-expression-type-begin%
    (lambda (_stx26680_)
      (let* ((_g2668326696_
              (lambda (_g2668426693_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2668426693_)))
             (_g2668226703_ (lambda (_g2668426699_) ((lambda () '#f))))
             (_g2668126737_
              (lambda (_g2668426706_)
                (if (gx#stx-pair? _g2668426706_)
                    (let ((_e2668626708_ (gx#stx-e _g2668426706_)))
                      (let ((_hd2668726711_ (##car _e2668626708_))
                            (_tl2668826713_ (##cdr _e2668626708_)))
                        (if (gx#stx-pair? _tl2668826713_)
                            (let ((_e2668926716_ (gx#stx-e _tl2668826713_)))
                              (let ((_hd2669026719_ (##car _e2668926716_))
                                    (_tl2669126721_ (##cdr _e2668926716_)))
                                (if (gx#stx-null? _tl2669126721_)
                                    ((lambda (_L26724_)
                                       (gxc#compile-e _L26724_))
                                     _hd2669026719_)
                                    (_g2668226703_ _g2668426706_))))
                            (_g2668226703_ _g2668426706_))))
                    (_g2668226703_ _g2668426706_)))))
        (_g2668126737_ _stx26680_))))
  (define gxc#basic-expression-type-begin-annotation%
    (lambda (_stx26613_)
      (let* ((_g2661526632_
              (lambda (_g2661626629_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2661626629_)))
             (_g2661426677_
              (lambda (_g2661626635_)
                (if (gx#stx-pair? _g2661626635_)
                    (let ((_e2661926637_ (gx#stx-e _g2661626635_)))
                      (let ((_hd2662026640_ (##car _e2661926637_))
                            (_tl2662126642_ (##cdr _e2661926637_)))
                        (if (gx#stx-pair? _tl2662126642_)
                            (let ((_e2662226645_ (gx#stx-e _tl2662126642_)))
                              (let ((_hd2662326648_ (##car _e2662226645_))
                                    (_tl2662426650_ (##cdr _e2662226645_)))
                                (if (gx#stx-pair? _tl2662426650_)
                                    (let ((_e2662526653_
                                           (gx#stx-e _tl2662426650_)))
                                      (let ((_hd2662626656_
                                             (##car _e2662526653_))
                                            (_tl2662726658_
                                             (##cdr _e2662526653_)))
                                        (if (gx#stx-null? _tl2662726658_)
                                            ((lambda (_L26661_ _L26662_)
                                               (gxc#compile-e _L26661_))
                                             _hd2662626656_
                                             _hd2662326648_)
                                            (_g2661526632_ _g2661626635_))))
                                    (_g2661526632_ _g2661626635_))))
                            (_g2661526632_ _g2661626635_))))
                    (_g2661526632_ _g2661626635_)))))
        (_g2661426677_ _stx26613_))))
  (define gxc#basic-expression-type-lambda%
    (lambda (_stx25250_)
      (let* ((_g2525725556_
              (lambda (_g2525825553_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2525825553_)))
             (_g2525625563_ (lambda (_g2525825559_) ((lambda () '#f))))
             (_g2525525956_
              (lambda (_g2525825566_)
                (if (gx#stx-pair? _g2525825566_)
                    (let ((_e2544725568_ (gx#stx-e _g2525825566_)))
                      (let ((_hd2544825571_ (##car _e2544725568_))
                            (_tl2544925573_ (##cdr _e2544725568_)))
                        (if (gx#stx-pair? _tl2544925573_)
                            (let ((_e2545025576_ (gx#stx-e _tl2544925573_)))
                              (let ((_hd2545125579_ (##car _e2545025576_))
                                    (_tl2545225581_ (##cdr _e2545025576_)))
                                (if (gx#stx-pair? _hd2545125579_)
                                    (let ((_e2545325584_
                                           (gx#stx-e _hd2545125579_)))
                                      (let ((_hd2545425587_
                                             (##car _e2545325584_))
                                            (_tl2545525589_
                                             (##cdr _e2545325584_)))
                                        (if (gx#stx-pair? _tl2545225581_)
                                            (let ((_e2545625592_
                                                   (gx#stx-e _tl2545225581_)))
                                              (let ((_hd2545725595_
                                                     (##car _e2545625592_))
                                                    (_tl2545825597_
                                                     (##cdr _e2545625592_)))
                                                (if (gx#stx-pair?
                                                     _hd2545725595_)
                                                    (let ((_e2545925600_
                                                           (gx#stx-e
                                                            _hd2545725595_)))
                                                      (let ((_hd2546025603_
                                                             (##car _e2545925600_))
                                                            (_tl2546125605_
                                                             (##cdr _e2545925600_)))
                                                        (if (gx#identifier?
                                                             _hd2546025603_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#call
                         _hd2546025603_)
                        (if (gx#stx-pair? _tl2546125605_)
                            (let ((_e2546225608_ (gx#stx-e _tl2546125605_)))
                              (let ((_hd2546325611_ (##car _e2546225608_))
                                    (_tl2546425613_ (##cdr _e2546225608_)))
                                (if (gx#stx-pair? _hd2546325611_)
                                    (let ((_e2546525616_
                                           (gx#stx-e _hd2546325611_)))
                                      (let ((_hd2546625619_
                                             (##car _e2546525616_))
                                            (_tl2546725621_
                                             (##cdr _e2546525616_)))
                                        (if (gx#identifier? _hd2546625619_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2546625619_)
                                                (if (gx#stx-pair?
                                                     _tl2546725621_)
                                                    (let ((_e2546825624_
                                                           (gx#stx-e
                                                            _tl2546725621_)))
                                                      (let ((_hd2546925627_
                                                             (##car _e2546825624_))
                                                            (_tl2547025629_
                                                             (##cdr _e2546825624_)))
                                                        (if (gx#stx-null?
                                                             _tl2547025629_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2546425613_)
                        (let ((_e2547125632_ (gx#stx-e _tl2546425613_)))
                          (let ((_hd2547225635_ (##car _e2547125632_))
                                (_tl2547325637_ (##cdr _e2547125632_)))
                            (if (gx#stx-pair? _hd2547225635_)
                                (let ((_e2547425640_
                                       (gx#stx-e _hd2547225635_)))
                                  (let ((_hd2547525643_ (##car _e2547425640_))
                                        (_tl2547625645_ (##cdr _e2547425640_)))
                                    (if (gx#identifier? _hd2547525643_)
                                        (if (gx#stx-eq? '%#ref _hd2547525643_)
                                            (if (gx#stx-pair? _tl2547625645_)
                                                (let ((_e2547725648_
                                                       (gx#stx-e
                                                        _tl2547625645_)))
                                                  (let ((_hd2547825651_
                                                         (##car _e2547725648_))
                                                        (_tl2547925653_
                                                         (##cdr _e2547725648_)))
                                                    (if (gx#stx-null?
                                                         _tl2547925653_)
                                                        (if (gx#stx-pair?
                                                             _tl2547325637_)
                                                            (let ((_e2548025656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2547325637_)))
                      (let ((_hd2548125659_ (##car _e2548025656_))
                            (_tl2548225661_ (##cdr _e2548025656_)))
                        (if (gx#stx-pair? _hd2548125659_)
                            (let ((_e2548325664_ (gx#stx-e _hd2548125659_)))
                              (let ((_hd2548425667_ (##car _e2548325664_))
                                    (_tl2548525669_ (##cdr _e2548325664_)))
                                (if (gx#identifier? _hd2548425667_)
                                    (if (gx#stx-eq? '%#ref _hd2548425667_)
                                        (if (gx#stx-pair? _tl2548525669_)
                                            (let ((_e2548625672_
                                                   (gx#stx-e _tl2548525669_)))
                                              (let ((_hd2548725675_
                                                     (##car _e2548625672_))
                                                    (_tl2548825677_
                                                     (##cdr _e2548625672_)))
                                                (if (gx#stx-null?
                                                     _tl2548825677_)
                                                    (if (gx#stx-pair/null?
                                                         _tl2548225661_)
                                                        (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2548225661_)
                          '1)
                    (let ((_g34899_
                           (gx#syntax-split-splice _tl2548225661_ '1)))
                      (begin
                        (let ((_g34900_
                               (if (##values? _g34899_)
                                   (##vector-length _g34899_)
                                   1)))
                          (if (not (##fx= _g34900_ 2))
                              (error "Context expects 2 values" _g34900_)))
                        (let ((_target2548925680_ (##vector-ref _g34899_ 0))
                              (_tl2549125682_ (##vector-ref _g34899_ 1)))
                          (if (gx#stx-pair? _tl2549125682_)
                              (let ((_e2550425685_ (gx#stx-e _tl2549125682_)))
                                (let ((_hd2550525688_ (##car _e2550425685_))
                                      (_tl2550625690_ (##cdr _e2550425685_)))
                                  (if (gx#stx-pair? _hd2550525688_)
                                      (let ((_e2550725693_
                                             (gx#stx-e _hd2550525688_)))
                                        (let ((_hd2550825696_
                                               (##car _e2550725693_))
                                              (_tl2550925698_
                                               (##cdr _e2550725693_)))
                                          (if (gx#identifier? _hd2550825696_)
                                              (if (gx#stx-eq?
                                                   '%#ref
                                                   _hd2550825696_)
                                                  (if (gx#stx-pair?
                                                       _tl2550925698_)
                                                      (let ((_e2551025701_
                                                             (gx#stx-e
                                                              _tl2550925698_)))
                                                        (let ((_hd2551125704_
                                                               (##car _e2551025701_))
                                                              (_tl2551225706_
                                                               (##cdr _e2551025701_)))
                                                          (if (gx#stx-null?
                                                               _tl2551225706_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2550625690_)
                          (letrec ((_loop2549225709_
                                    (lambda (_hd2549025712_
                                             _-absent-value2549625714_
                                             _key2549725716_
                                             _-xkwvar2549825718_
                                             _-hash-ref2549925720_)
                                      (if (gx#stx-pair? _hd2549025712_)
                                          (let ((_e2549325723_
                                                 (gx#stx-e _hd2549025712_)))
                                            (let ((_lp-hd2549425726_
                                                   (##car _e2549325723_))
                                                  (_lp-tl2549525728_
                                                   (##cdr _e2549325723_)))
                                              (if (gx#stx-pair?
                                                   _lp-hd2549425726_)
                                                  (let ((_e2551325731_
                                                         (gx#stx-e
                                                          _lp-hd2549425726_)))
                                                    (let ((_hd2551425734_
                                                           (##car _e2551325731_))
                                                          (_tl2551525736_
                                                           (##cdr _e2551325731_)))
                                                      (if (gx#identifier?
                                                           _hd2551425734_)
                                                          (if (gx#stx-eq?
                                                               '%#call
                                                               _hd2551425734_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl2551525736_)
                          (let ((_e2551625739_ (gx#stx-e _tl2551525736_)))
                            (let ((_hd2551725742_ (##car _e2551625739_))
                                  (_tl2551825744_ (##cdr _e2551625739_)))
                              (if (gx#stx-pair? _hd2551725742_)
                                  (let ((_e2551925747_
                                         (gx#stx-e _hd2551725742_)))
                                    (let ((_hd2552025750_
                                           (##car _e2551925747_))
                                          (_tl2552125752_
                                           (##cdr _e2551925747_)))
                                      (if (gx#identifier? _hd2552025750_)
                                          (if (gx#stx-eq?
                                               '%#ref
                                               _hd2552025750_)
                                              (if (gx#stx-pair? _tl2552125752_)
                                                  (let ((_e2552225755_
                                                         (gx#stx-e
                                                          _tl2552125752_)))
                                                    (let ((_hd2552325758_
                                                           (##car _e2552225755_))
                                                          (_tl2552425760_
                                                           (##cdr _e2552225755_)))
                                                      (if (gx#stx-null?
                                                           _tl2552425760_)
                                                          (if (gx#stx-pair?
                                                               _tl2551825744_)
                                                              (let ((_e2552525763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2551825744_)))
                        (let ((_hd2552625766_ (##car _e2552525763_))
                              (_tl2552725768_ (##cdr _e2552525763_)))
                          (if (gx#stx-pair? _hd2552625766_)
                              (let ((_e2552825771_ (gx#stx-e _hd2552625766_)))
                                (let ((_hd2552925774_ (##car _e2552825771_))
                                      (_tl2553025776_ (##cdr _e2552825771_)))
                                  (if (gx#identifier? _hd2552925774_)
                                      (if (gx#stx-eq? '%#ref _hd2552925774_)
                                          (if (gx#stx-pair? _tl2553025776_)
                                              (let ((_e2553125779_
                                                     (gx#stx-e
                                                      _tl2553025776_)))
                                                (let ((_hd2553225782_
                                                       (##car _e2553125779_))
                                                      (_tl2553325784_
                                                       (##cdr _e2553125779_)))
                                                  (if (gx#stx-null?
                                                       _tl2553325784_)
                                                      (if (gx#stx-pair?
                                                           _tl2552725768_)
                                                          (let ((_e2553425787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2552725768_)))
                    (let ((_hd2553525790_ (##car _e2553425787_))
                          (_tl2553625792_ (##cdr _e2553425787_)))
                      (if (gx#stx-pair? _hd2553525790_)
                          (let ((_e2553725795_ (gx#stx-e _hd2553525790_)))
                            (let ((_hd2553825798_ (##car _e2553725795_))
                                  (_tl2553925800_ (##cdr _e2553725795_)))
                              (if (gx#identifier? _hd2553825798_)
                                  (if (gx#stx-eq? '%#quote _hd2553825798_)
                                      (if (gx#stx-pair? _tl2553925800_)
                                          (let ((_e2554025803_
                                                 (gx#stx-e _tl2553925800_)))
                                            (let ((_hd2554125806_
                                                   (##car _e2554025803_))
                                                  (_tl2554225808_
                                                   (##cdr _e2554025803_)))
                                              (if (gx#stx-null? _tl2554225808_)
                                                  (if (gx#stx-pair?
                                                       _tl2553625792_)
                                                      (let ((_e2554325811_
                                                             (gx#stx-e
                                                              _tl2553625792_)))
                                                        (let ((_hd2554425814_
                                                               (##car _e2554325811_))
                                                              (_tl2554525816_
                                                               (##cdr _e2554325811_)))
                                                          (if (gx#stx-pair?
                                                               _hd2554425814_)
                                                              (let ((_e2554625819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd2554425814_)))
                        (let ((_hd2554725822_ (##car _e2554625819_))
                              (_tl2554825824_ (##cdr _e2554625819_)))
                          (if (gx#identifier? _hd2554725822_)
                              (if (gx#stx-eq? '%#ref _hd2554725822_)
                                  (if (gx#stx-pair? _tl2554825824_)
                                      (let ((_e2554925827_
                                             (gx#stx-e _tl2554825824_)))
                                        (let ((_hd2555025830_
                                               (##car _e2554925827_))
                                              (_tl2555125832_
                                               (##cdr _e2554925827_)))
                                          (if (gx#stx-null? _tl2555125832_)
                                              (if (gx#stx-null? _tl2554525816_)
                                                  (_loop2549225709_
                                                   _lp-tl2549525728_
                                                   (cons _hd2555025830_
                                                         _-absent-value2549625714_)
                                                   (cons _hd2554125806_
                                                         _key2549725716_)
                                                   (cons _hd2553225782_
                                                         _-xkwvar2549825718_)
                                                   (cons _hd2552325758_
                                                         _-hash-ref2549925720_))
                                                  (_g2525625563_
                                                   _g2525825566_))
                                              (_g2525625563_ _g2525825566_))))
                                      (_g2525625563_ _g2525825566_))
                                  (_g2525625563_ _g2525825566_))
                              (_g2525625563_ _g2525825566_))))
                      (_g2525625563_ _g2525825566_))))
              (_g2525625563_ _g2525825566_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2525625563_
                                                   _g2525825566_))))
                                          (_g2525625563_ _g2525825566_))
                                      (_g2525625563_ _g2525825566_))
                                  (_g2525625563_ _g2525825566_))))
                          (_g2525625563_ _g2525825566_))))
                  (_g2525625563_ _g2525825566_))
              (_g2525625563_ _g2525825566_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2525625563_ _g2525825566_))
                                          (_g2525625563_ _g2525825566_))
                                      (_g2525625563_ _g2525825566_))))
                              (_g2525625563_ _g2525825566_))))
                      (_g2525625563_ _g2525825566_))
                  (_g2525625563_ _g2525825566_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2525625563_
                                                   _g2525825566_))
                                              (_g2525625563_ _g2525825566_))
                                          (_g2525625563_ _g2525825566_))))
                                  (_g2525625563_ _g2525825566_))))
                          (_g2525625563_ _g2525825566_))
                      (_g2525625563_ _g2525825566_))
                  (_g2525625563_ _g2525825566_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2525625563_
                                                   _g2525825566_))))
                                          (let ((_-absent-value2550025835_
                                                 (reverse _-absent-value2549625714_))
                                                (_key2550125837_
                                                 (reverse _key2549725716_))
                                                (_-xkwvar2550225839_
                                                 (reverse _-xkwvar2549825718_))
                                                (_-hash-ref2550325841_
                                                 (reverse _-hash-ref2549925720_)))
                                            (if (gx#stx-null? _tl2545825597_)
                                                ((lambda (_L25844_
                                                          _L25845_
                                                          _L25846_
                                                          _L25847_
                                                          _L25848_
                                                          _L25849_
                                                          _L25850_
                                                          _L25851_
                                                          _L25852_
                                                          _L25853_)
                                                   (if (if (gx#identifier?
                                                            _L25853_)
                                                           (if (gx#identifier?
                                                                _L25852_)
                                                               (if (gxc#runtime-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L25851_
                            'apply)
                           (if (gx#free-identifier=? _L25853_ _L25849_)
                               (if (andmap1 gx#stx-keyword?
                                            (begin
                                              '#!void
                                              (foldr1 (lambda (_g2590825911_
                                                               _g2590925913_)
                                                        (cons _g2590825911_
                                                              _g2590925913_))
                                                      '()
                                                      _L25846_)))
                                   (if (andmap1 (lambda (_g2591525917_)
                                                  (gxc#runtime-identifier=?
                                                   _g2591525917_
                                                   'hash-ref))
                                                (begin
                                                  '#!void
                                                  (foldr1 (lambda (_g2591925922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2592025924_)
                    (cons _g2591925922_ _g2592025924_))
                  '()
                  _L25848_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (andmap1 (lambda (_g2592625928_)
                                                      (gxc#runtime-identifier=?
                                                       _g2592625928_
                                                       'absent-value))
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g2593025933_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2593125935_)
                        (cons _g2593025933_ _g2593125935_))
                      '()
                      _L25845_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (andmap1 (lambda (_g2593725939_)
                                                      (gx#free-identifier=?
                                                       _g2593725939_
                                                       _L25853_))
                                                    (begin
                                                      '#!void
                                                      (foldr1 (lambda (_g2594125944_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _g2594225946_)
                        (cons _g2594125944_ _g2594225946_))
                      '()
                      _L25847_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '#f)
                                       '#f)
                                   '#f)
                               '#f)
                           '#f)
                       '#f)
                   '#f)
               (##structure
                gxc#!kw-lambda-primary::t
                'kw-lambda-dispatch
                (map gx#stx-e
                     (begin
                       '#!void
                       (foldr1 (lambda (_g2594825951_ _g2594925953_)
                                 (cons _g2594825951_ _g2594925953_))
                               '()
                               _L25846_)))
                (gxc#identifier-symbol _L25850_))
               (_g2525625563_ _g2525825566_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2551125704_
                                                 _-absent-value2550025835_
                                                 _key2550125837_
                                                 _-xkwvar2550225839_
                                                 _-hash-ref2550325841_
                                                 _hd2548725675_
                                                 _hd2547825651_
                                                 _hd2546925627_
                                                 _tl2545525589_
                                                 _hd2545425587_)
                                                (_g2525625563_
                                                 _g2525825566_)))))))
                            (_loop2549225709_
                             _target2548925680_
                             '()
                             '()
                             '()
                             '()))
                          (_g2525625563_ _g2525825566_))
                      (_g2525625563_ _g2525825566_))))
              (_g2525625563_ _g2525825566_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2525625563_
                                                   _g2525825566_))
                                              (_g2525625563_ _g2525825566_))))
                                      (_g2525625563_ _g2525825566_))))
                              (_g2525625563_ _g2525825566_)))))
                    (_g2525625563_ _g2525825566_))
                (_g2525625563_ _g2525825566_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2525625563_
                                                     _g2525825566_))))
                                            (_g2525625563_ _g2525825566_))
                                        (_g2525625563_ _g2525825566_))
                                    (_g2525625563_ _g2525825566_))))
                            (_g2525625563_ _g2525825566_))))
                    (_g2525625563_ _g2525825566_))
                (_g2525625563_ _g2525825566_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2525625563_ _g2525825566_))
                                            (_g2525625563_ _g2525825566_))
                                        (_g2525625563_ _g2525825566_))))
                                (_g2525625563_ _g2525825566_))))
                        (_g2525625563_ _g2525825566_))
                    (_g2525625563_ _g2525825566_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2525625563_
                                                     _g2525825566_))
                                                (_g2525625563_ _g2525825566_))
                                            (_g2525625563_ _g2525825566_))))
                                    (_g2525625563_ _g2525825566_))))
                            (_g2525625563_ _g2525825566_))
                        (_g2525625563_ _g2525825566_))
                    (_g2525625563_ _g2525825566_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2525625563_
                                                     _g2525825566_))))
                                            (_g2525625563_ _g2525825566_))))
                                    (_g2525625563_ _g2525825566_))))
                            (_g2525625563_ _g2525825566_))))
                    (_g2525625563_ _g2525825566_))))
             (_g2525426173_
              (lambda (_g2525825959_)
                (if (gx#stx-pair? _g2525825959_)
                    (let ((_e2538025961_ (gx#stx-e _g2525825959_)))
                      (let ((_hd2538125964_ (##car _e2538025961_))
                            (_tl2538225966_ (##cdr _e2538025961_)))
                        (if (gx#stx-pair? _tl2538225966_)
                            (let ((_e2538325969_ (gx#stx-e _tl2538225966_)))
                              (let ((_hd2538425972_ (##car _e2538325969_))
                                    (_tl2538525974_ (##cdr _e2538325969_)))
                                (if (gx#stx-pair? _tl2538525974_)
                                    (let ((_e2538625977_
                                           (gx#stx-e _tl2538525974_)))
                                      (let ((_hd2538725980_
                                             (##car _e2538625977_))
                                            (_tl2538825982_
                                             (##cdr _e2538625977_)))
                                        (if (gx#stx-pair? _hd2538725980_)
                                            (let ((_e2538925985_
                                                   (gx#stx-e _hd2538725980_)))
                                              (let ((_hd2539025988_
                                                     (##car _e2538925985_))
                                                    (_tl2539125990_
                                                     (##cdr _e2538925985_)))
                                                (if (gx#identifier?
                                                     _hd2539025988_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2539025988_)
                                                        (if (gx#stx-pair?
                                                             _tl2539125990_)
                                                            (let ((_e2539225993_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2539125990_)))
                      (let ((_hd2539325996_ (##car _e2539225993_))
                            (_tl2539425998_ (##cdr _e2539225993_)))
                        (if (gx#stx-pair? _hd2539325996_)
                            (let ((_e2539526001_ (gx#stx-e _hd2539325996_)))
                              (let ((_hd2539626004_ (##car _e2539526001_))
                                    (_tl2539726006_ (##cdr _e2539526001_)))
                                (if (gx#identifier? _hd2539626004_)
                                    (if (gx#stx-eq? '%#ref _hd2539626004_)
                                        (if (gx#stx-pair? _tl2539726006_)
                                            (let ((_e2539826009_
                                                   (gx#stx-e _tl2539726006_)))
                                              (let ((_hd2539926012_
                                                     (##car _e2539826009_))
                                                    (_tl2540026014_
                                                     (##cdr _e2539826009_)))
                                                (if (gx#stx-null?
                                                     _tl2540026014_)
                                                    (if (gx#stx-pair?
                                                         _tl2539425998_)
                                                        (let ((_e2540126017_
                                                               (gx#stx-e
                                                                _tl2539425998_)))
                                                          (let ((_hd2540226020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2540126017_))
                        (_tl2540326022_ (##cdr _e2540126017_)))
                    (if (gx#stx-pair? _hd2540226020_)
                        (let ((_e2540426025_ (gx#stx-e _hd2540226020_)))
                          (let ((_hd2540526028_ (##car _e2540426025_))
                                (_tl2540626030_ (##cdr _e2540426025_)))
                            (if (gx#identifier? _hd2540526028_)
                                (if (gx#stx-eq? '%#ref _hd2540526028_)
                                    (if (gx#stx-pair? _tl2540626030_)
                                        (let ((_e2540726033_
                                               (gx#stx-e _tl2540626030_)))
                                          (let ((_hd2540826036_
                                                 (##car _e2540726033_))
                                                (_tl2540926038_
                                                 (##cdr _e2540726033_)))
                                            (if (gx#stx-null? _tl2540926038_)
                                                (if (gx#stx-pair?
                                                     _tl2540326022_)
                                                    (let ((_e2541026041_
                                                           (gx#stx-e
                                                            _tl2540326022_)))
                                                      (let ((_hd2541126044_
                                                             (##car _e2541026041_))
                                                            (_tl2541226046_
                                                             (##cdr _e2541026041_)))
                                                        (if (gx#stx-pair?
                                                             _hd2541126044_)
                                                            (let ((_e2541326049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2541126044_)))
                      (let ((_hd2541426052_ (##car _e2541326049_))
                            (_tl2541526054_ (##cdr _e2541326049_)))
                        (if (gx#identifier? _hd2541426052_)
                            (if (gx#stx-eq? '%#quote _hd2541426052_)
                                (if (gx#stx-pair? _tl2541526054_)
                                    (let ((_e2541626057_
                                           (gx#stx-e _tl2541526054_)))
                                      (let ((_hd2541726060_
                                             (##car _e2541626057_))
                                            (_tl2541826062_
                                             (##cdr _e2541626057_)))
                                        (if (gx#stx-null? _tl2541826062_)
                                            (if (gx#stx-pair? _tl2541226046_)
                                                (let ((_e2541926065_
                                                       (gx#stx-e
                                                        _tl2541226046_)))
                                                  (let ((_hd2542026068_
                                                         (##car _e2541926065_))
                                                        (_tl2542126070_
                                                         (##cdr _e2541926065_)))
                                                    (if (gx#stx-pair?
                                                         _hd2542026068_)
                                                        (let ((_e2542226073_
                                                               (gx#stx-e
                                                                _hd2542026068_)))
                                                          (let ((_hd2542326076_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2542226073_))
                        (_tl2542426078_ (##cdr _e2542226073_)))
                    (if (gx#identifier? _hd2542326076_)
                        (if (gx#stx-eq? '%#ref _hd2542326076_)
                            (if (gx#stx-pair? _tl2542426078_)
                                (let ((_e2542526081_
                                       (gx#stx-e _tl2542426078_)))
                                  (let ((_hd2542626084_ (##car _e2542526081_))
                                        (_tl2542726086_ (##cdr _e2542526081_)))
                                    (if (gx#stx-null? _tl2542726086_)
                                        (if (gx#stx-pair? _tl2542126070_)
                                            (let ((_e2542826089_
                                                   (gx#stx-e _tl2542126070_)))
                                              (let ((_hd2542926092_
                                                     (##car _e2542826089_))
                                                    (_tl2543026094_
                                                     (##cdr _e2542826089_)))
                                                (if (gx#stx-pair?
                                                     _hd2542926092_)
                                                    (let ((_e2543126097_
                                                           (gx#stx-e
                                                            _hd2542926092_)))
                                                      (let ((_hd2543226100_
                                                             (##car _e2543126097_))
                                                            (_tl2543326102_
                                                             (##cdr _e2543126097_)))
                                                        (if (gx#identifier?
                                                             _hd2543226100_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd2543226100_)
                        (if (gx#stx-pair? _tl2543326102_)
                            (let ((_e2543426105_ (gx#stx-e _tl2543326102_)))
                              (let ((_hd2543526108_ (##car _e2543426105_))
                                    (_tl2543626110_ (##cdr _e2543426105_)))
                                (if (gx#stx-null? _tl2543626110_)
                                    (if (gx#stx-null? _tl2543026094_)
                                        (if (gx#stx-null? _tl2538825982_)
                                            ((lambda (_L26113_
                                                      _L26114_
                                                      _L26115_
                                                      _L26116_
                                                      _L26117_
                                                      _L26118_)
                                               (if (if (gx#identifier?
                                                        _L26118_)
                                                       (if (gxc#runtime-identifier=?
                                                            _L26117_
                                                            'apply)
                                                           (if (gxc#runtime-identifier=?
                                                                _L26116_
                                                                'keyword-dispatch)
                                                               (gx#free-identifier=?
                                                                _L26118_
                                                                _L26113_)
                                                               '#f)
                                                           '#f)
                                                       '#f)
                                                   (let* ((_tab26168_
                                                           (gx#stx-e _L26115_))
                                                          (_keys26170_
                                                           (if _tab26168_
                                                               (filter values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (vector->list _tab26168_))
                       '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (##structure
                                                      gxc#!kw-lambda::t
                                                      'kw-lambda
                                                      _keys26170_
                                                      (gxc#identifier-symbol
                                                       _L26114_)))
                                                   (_g2525525956_
                                                    _g2525825959_)))
                                             _hd2543526108_
                                             _hd2542626084_
                                             _hd2541726060_
                                             _hd2540826036_
                                             _hd2539926012_
                                             _hd2538425972_)
                                            (_g2525525956_ _g2525825959_))
                                        (_g2525525956_ _g2525825959_))
                                    (_g2525525956_ _g2525825959_))))
                            (_g2525525956_ _g2525825959_))
                        (_g2525525956_ _g2525825959_))
                    (_g2525525956_ _g2525825959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2525525956_
                                                     _g2525825959_))))
                                            (_g2525525956_ _g2525825959_))
                                        (_g2525525956_ _g2525825959_))))
                                (_g2525525956_ _g2525825959_))
                            (_g2525525956_ _g2525825959_))
                        (_g2525525956_ _g2525825959_))))
                (_g2525525956_ _g2525825959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2525525956_ _g2525825959_))
                                            (_g2525525956_ _g2525825959_))))
                                    (_g2525525956_ _g2525825959_))
                                (_g2525525956_ _g2525825959_))
                            (_g2525525956_ _g2525825959_))))
                    (_g2525525956_ _g2525825959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2525525956_
                                                     _g2525825959_))
                                                (_g2525525956_
                                                 _g2525825959_))))
                                        (_g2525525956_ _g2525825959_))
                                    (_g2525525956_ _g2525825959_))
                                (_g2525525956_ _g2525825959_))))
                        (_g2525525956_ _g2525825959_))))
                (_g2525525956_ _g2525825959_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2525525956_
                                                     _g2525825959_))))
                                            (_g2525525956_ _g2525825959_))
                                        (_g2525525956_ _g2525825959_))
                                    (_g2525525956_ _g2525825959_))))
                            (_g2525525956_ _g2525825959_))))
                    (_g2525525956_ _g2525825959_))
                (_g2525525956_ _g2525825959_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2525525956_
                                                     _g2525825959_))))
                                            (_g2525525956_ _g2525825959_))))
                                    (_g2525525956_ _g2525825959_))))
                            (_g2525525956_ _g2525825959_))))
                    (_g2525525956_ _g2525825959_))))
             (_g2525326195_
              (lambda (_g2525826176_)
                (if (gx#stx-pair? _g2525826176_)
                    (let ((_e2537126178_ (gx#stx-e _g2525826176_)))
                      (let ((_hd2537226181_ (##car _e2537126178_))
                            (_tl2537326183_ (##cdr _e2537126178_)))
                        ((lambda (_L26186_)
                           (if (gxc#dispatch-lambda-form? _L26186_)
                               (let ((__obj34828
                                      (make-object gxc#!lambda::t '5)))
                                 (begin
                                   (gxc#!lambda:::init!__0
                                    __obj34828
                                    'lambda
                                    (gxc#lambda-form-arity _L26186_)
                                    (gxc#dispatch-lambda-form-delegate
                                     _L26186_))
                                   __obj34828))
                               (_g2525426173_ _g2525826176_)))
                         _tl2537326183_)))
                    (_g2525426173_ _g2525826176_))))
             (_g2525226425_
              (lambda (_g2525826198_)
                (if (gx#stx-pair? _g2525826198_)
                    (let ((_e2531626200_ (gx#stx-e _g2525826198_)))
                      (let ((_hd2531726203_ (##car _e2531626200_))
                            (_tl2531826205_ (##cdr _e2531626200_)))
                        (if (gx#stx-pair? _tl2531826205_)
                            (let ((_e2531926208_ (gx#stx-e _tl2531826205_)))
                              (let ((_hd2532026211_ (##car _e2531926208_))
                                    (_tl2532126213_ (##cdr _e2531926208_)))
                                (if (gx#stx-pair/null? _hd2532026211_)
                                    (if (fx>= (gx#stx-length _hd2532026211_)
                                              '0)
                                        (let ((_g34901_
                                               (gx#syntax-split-splice
                                                _hd2532026211_
                                                '0)))
                                          (begin
                                            (let ((_g34902_
                                                   (if (##values? _g34901_)
                                                       (##vector-length
                                                        _g34901_)
                                                       1)))
                                              (if (not (##fx= _g34902_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34902_)))
                                            (let ((_target2532226216_
                                                   (##vector-ref _g34901_ 0))
                                                  (_tl2532426218_
                                                   (##vector-ref _g34901_ 1)))
                                              (if (gx#stx-null? _tl2532426218_)
                                                  (letrec ((_loop2532526221_
                                                            (lambda (_hd2532326224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _arg2532926226_)
                      (if (gx#stx-pair? _hd2532326224_)
                          (let ((_e2532626229_ (gx#stx-e _hd2532326224_)))
                            (let ((_lp-hd2532726232_ (##car _e2532626229_))
                                  (_lp-tl2532826234_ (##cdr _e2532626229_)))
                              (_loop2532526221_
                               _lp-tl2532826234_
                               (cons _lp-hd2532726232_ _arg2532926226_))))
                          (let ((_arg2533026237_ (reverse _arg2532926226_)))
                            (if (gx#stx-pair? _tl2532126213_)
                                (let ((_e2533126240_
                                       (gx#stx-e _tl2532126213_)))
                                  (let ((_hd2533226243_ (##car _e2533126240_))
                                        (_tl2533326245_ (##cdr _e2533126240_)))
                                    (if (gx#stx-pair? _hd2533226243_)
                                        (let ((_e2533426248_
                                               (gx#stx-e _hd2533226243_)))
                                          (let ((_hd2533526251_
                                                 (##car _e2533426248_))
                                                (_tl2533626253_
                                                 (##cdr _e2533426248_)))
                                            (if (gx#identifier? _hd2533526251_)
                                                (if (gx#stx-eq?
                                                     '%#call
                                                     _hd2533526251_)
                                                    (if (gx#stx-pair?
                                                         _tl2533626253_)
                                                        (let ((_e2533726256_
                                                               (gx#stx-e
                                                                _tl2533626253_)))
                                                          (let ((_hd2533826259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2533726256_))
                        (_tl2533926261_ (##cdr _e2533726256_)))
                    (if (gx#stx-pair? _hd2533826259_)
                        (let ((_e2534026264_ (gx#stx-e _hd2533826259_)))
                          (let ((_hd2534126267_ (##car _e2534026264_))
                                (_tl2534226269_ (##cdr _e2534026264_)))
                            (if (gx#identifier? _hd2534126267_)
                                (if (gx#stx-eq? '%#ref _hd2534126267_)
                                    (if (gx#stx-pair? _tl2534226269_)
                                        (let ((_e2534326272_
                                               (gx#stx-e _tl2534226269_)))
                                          (let ((_hd2534426275_
                                                 (##car _e2534326272_))
                                                (_tl2534526277_
                                                 (##cdr _e2534326272_)))
                                            (if (gx#stx-null? _tl2534526277_)
                                                (if (gx#stx-pair?
                                                     _tl2533926261_)
                                                    (let ((_e2534626280_
                                                           (gx#stx-e
                                                            _tl2533926261_)))
                                                      (let ((_hd2534726283_
                                                             (##car _e2534626280_))
                                                            (_tl2534826285_
                                                             (##cdr _e2534626280_)))
                                                        (if (gx#stx-pair?
                                                             _hd2534726283_)
                                                            (let ((_e2534926288_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2534726283_)))
                      (let ((_hd2535026291_ (##car _e2534926288_))
                            (_tl2535126293_ (##cdr _e2534926288_)))
                        (if (gx#identifier? _hd2535026291_)
                            (if (gx#stx-eq? '%#ref _hd2535026291_)
                                (if (gx#stx-pair? _tl2535126293_)
                                    (let ((_e2535226296_
                                           (gx#stx-e _tl2535126293_)))
                                      (let ((_hd2535326299_
                                             (##car _e2535226296_))
                                            (_tl2535426301_
                                             (##cdr _e2535226296_)))
                                        (if (gx#stx-null? _tl2535426301_)
                                            (if (gx#stx-pair/null?
                                                 _tl2534826285_)
                                                (if (fx>= (gx#stx-length
                                                           _tl2534826285_)
                                                          '0)
                                                    (let ((_g34903_
                                                           (gx#syntax-split-splice
                                                            _tl2534826285_
                                                            '0)))
                                                      (begin
                                                        (let ((_g34904_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g34903_)
                           (##vector-length _g34903_)
                           1)))
                  (if (not (##fx= _g34904_ 2))
                      (error "Context expects 2 values" _g34904_)))
                (let ((_target2535526304_ (##vector-ref _g34903_ 0))
                      (_tl2535726306_ (##vector-ref _g34903_ 1)))
                  (if (gx#stx-null? _tl2535726306_)
                      (letrec ((_loop2535826309_
                                (lambda (_hd2535626312_ _xarg2536226314_)
                                  (if (gx#stx-pair? _hd2535626312_)
                                      (let ((_e2535926317_
                                             (gx#stx-e _hd2535626312_)))
                                        (let ((_lp-hd2536026320_
                                               (##car _e2535926317_))
                                              (_lp-tl2536126322_
                                               (##cdr _e2535926317_)))
                                          (if (gx#stx-pair? _lp-hd2536026320_)
                                              (let ((_e2536426325_
                                                     (gx#stx-e
                                                      _lp-hd2536026320_)))
                                                (let ((_hd2536526328_
                                                       (##car _e2536426325_))
                                                      (_tl2536626330_
                                                       (##cdr _e2536426325_)))
                                                  (if (gx#identifier?
                                                       _hd2536526328_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd2536526328_)
                                                          (if (gx#stx-pair?
                                                               _tl2536626330_)
                                                              (let ((_e2536726333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl2536626330_)))
                        (let ((_hd2536826336_ (##car _e2536726333_))
                              (_tl2536926338_ (##cdr _e2536726333_)))
                          (if (gx#stx-null? _tl2536926338_)
                              (_loop2535826309_
                               _lp-tl2536126322_
                               (cons _hd2536826336_ _xarg2536226314_))
                              (_g2525326195_ _g2525826198_))))
                      (_g2525326195_ _g2525826198_))
                  (_g2525326195_ _g2525826198_))
              (_g2525326195_ _g2525826198_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2525326195_ _g2525826198_))))
                                      (let ((_xarg2536326341_
                                             (reverse _xarg2536226314_)))
                                        (if (gx#stx-null? _tl2533326245_)
                                            ((lambda (_L26344_
                                                      _L26345_
                                                      _L26346_
                                                      _L26347_)
                                               (if (if (gx#identifier-list?
                                                        (begin
                                                          '#!void
                                                          (foldr1 (lambda (_g2638426387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _g2638526389_)
                            (cons _g2638426387_ _g2638526389_))
                          '()
                          _L26347_)))
               (if (gxc#runtime-identifier=? _L26346_ 'make-struct-instance)
                   (if (fx= (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g2639126394_
                                                       _g2639226396_)
                                                (cons _g2639126394_
                                                      _g2639226396_))
                                              '()
                                              _L26347_)))
                            (length (begin
                                      '#!void
                                      (foldr1 (lambda (_g2639826401_
                                                       _g2639926403_)
                                                (cons _g2639826401_
                                                      _g2639926403_))
                                              '()
                                              _L26344_))))
                       (andmap2 gx#free-identifier=?
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g2640526408_ _g2640626410_)
                                            (cons _g2640526408_ _g2640626410_))
                                          '()
                                          _L26347_))
                                (begin
                                  '#!void
                                  (foldr1 (lambda (_g2641226415_ _g2641326417_)
                                            (cons _g2641226415_ _g2641326417_))
                                          '()
                                          _L26344_)))
                       '#f)
                   '#f)
               '#f)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_type-t26420_
                                                           (gxc#identifier-symbol
                                                            _L26345_))
                                                          (_type26422_
                                                           (gxc#optimizer-resolve-type
                                                            _type-t26420_)))
                                                     (if (##structure-instance-of?
                                                          _type26422_
                                                          'gxc#!struct-type::t)
                                                         (##structure
                                                          gxc#!struct-cons::t
                                                          _type-t26420_)
                                                         '#f))
                                                   (_g2525326195_
                                                    _g2525826198_)))
                                             _xarg2536326341_
                                             _hd2535326299_
                                             _hd2534426275_
                                             _arg2533026237_)
                                            (_g2525326195_ _g2525826198_)))))))
                        (_loop2535826309_ _target2535526304_ '()))
                      (_g2525326195_ _g2525826198_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2525326195_
                                                     _g2525826198_))
                                                (_g2525326195_ _g2525826198_))
                                            (_g2525326195_ _g2525826198_))))
                                    (_g2525326195_ _g2525826198_))
                                (_g2525326195_ _g2525826198_))
                            (_g2525326195_ _g2525826198_))))
                    (_g2525326195_ _g2525826198_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2525326195_
                                                     _g2525826198_))
                                                (_g2525326195_
                                                 _g2525826198_))))
                                        (_g2525326195_ _g2525826198_))
                                    (_g2525326195_ _g2525826198_))
                                (_g2525326195_ _g2525826198_))))
                        (_g2525326195_ _g2525826198_))))
                (_g2525326195_ _g2525826198_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2525326195_
                                                     _g2525826198_))
                                                (_g2525326195_
                                                 _g2525826198_))))
                                        (_g2525326195_ _g2525826198_))))
                                (_g2525326195_ _g2525826198_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop2532526221_
                                                     _target2532226216_
                                                     '()))
                                                  (_g2525326195_
                                                   _g2525826198_)))))
                                        (_g2525326195_ _g2525826198_))
                                    (_g2525326195_ _g2525826198_))))
                            (_g2525326195_ _g2525826198_))))
                    (_g2525326195_ _g2525826198_))))
             (_g2525126610_
              (lambda (_g2525826428_)
                (if (gx#stx-pair? _g2525826428_)
                    (let ((_e2526426430_ (gx#stx-e _g2525826428_)))
                      (let ((_hd2526526433_ (##car _e2526426430_))
                            (_tl2526626435_ (##cdr _e2526426430_)))
                        (if (gx#stx-pair? _tl2526626435_)
                            (let ((_e2526726438_ (gx#stx-e _tl2526626435_)))
                              (let ((_hd2526826441_ (##car _e2526726438_))
                                    (_tl2526926443_ (##cdr _e2526726438_)))
                                (if (gx#stx-pair? _tl2526926443_)
                                    (let ((_e2527026446_
                                           (gx#stx-e _tl2526926443_)))
                                      (let ((_hd2527126449_
                                             (##car _e2527026446_))
                                            (_tl2527226451_
                                             (##cdr _e2527026446_)))
                                        (if (gx#stx-pair? _hd2527126449_)
                                            (let ((_e2527326454_
                                                   (gx#stx-e _hd2527126449_)))
                                              (let ((_hd2527426457_
                                                     (##car _e2527326454_))
                                                    (_tl2527526459_
                                                     (##cdr _e2527326454_)))
                                                (if (gx#identifier?
                                                     _hd2527426457_)
                                                    (if (gx#stx-eq?
                                                         '%#call
                                                         _hd2527426457_)
                                                        (if (gx#stx-pair?
                                                             _tl2527526459_)
                                                            (let ((_e2527626462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2527526459_)))
                      (let ((_hd2527726465_ (##car _e2527626462_))
                            (_tl2527826467_ (##cdr _e2527626462_)))
                        (if (gx#stx-pair? _hd2527726465_)
                            (let ((_e2527926470_ (gx#stx-e _hd2527726465_)))
                              (let ((_hd2528026473_ (##car _e2527926470_))
                                    (_tl2528126475_ (##cdr _e2527926470_)))
                                (if (gx#identifier? _hd2528026473_)
                                    (if (gx#stx-eq? '%#ref _hd2528026473_)
                                        (if (gx#stx-pair? _tl2528126475_)
                                            (let ((_e2528226478_
                                                   (gx#stx-e _tl2528126475_)))
                                              (let ((_hd2528326481_
                                                     (##car _e2528226478_))
                                                    (_tl2528426483_
                                                     (##cdr _e2528226478_)))
                                                (if (gx#stx-null?
                                                     _tl2528426483_)
                                                    (if (gx#stx-pair?
                                                         _tl2527826467_)
                                                        (let ((_e2528526486_
                                                               (gx#stx-e
                                                                _tl2527826467_)))
                                                          (let ((_hd2528626489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2528526486_))
                        (_tl2528726491_ (##cdr _e2528526486_)))
                    (if (gx#stx-pair? _hd2528626489_)
                        (let ((_e2528826494_ (gx#stx-e _hd2528626489_)))
                          (let ((_hd2528926497_ (##car _e2528826494_))
                                (_tl2529026499_ (##cdr _e2528826494_)))
                            (if (gx#identifier? _hd2528926497_)
                                (if (gx#stx-eq? '%#ref _hd2528926497_)
                                    (if (gx#stx-pair? _tl2529026499_)
                                        (let ((_e2529126502_
                                               (gx#stx-e _tl2529026499_)))
                                          (let ((_hd2529226505_
                                                 (##car _e2529126502_))
                                                (_tl2529326507_
                                                 (##cdr _e2529126502_)))
                                            (if (gx#stx-null? _tl2529326507_)
                                                (if (gx#stx-pair?
                                                     _tl2528726491_)
                                                    (let ((_e2529426510_
                                                           (gx#stx-e
                                                            _tl2528726491_)))
                                                      (let ((_hd2529526513_
                                                             (##car _e2529426510_))
                                                            (_tl2529626515_
                                                             (##cdr _e2529426510_)))
                                                        (if (gx#stx-pair?
                                                             _hd2529526513_)
                                                            (let ((_e2529726518_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2529526513_)))
                      (let ((_hd2529826521_ (##car _e2529726518_))
                            (_tl2529926523_ (##cdr _e2529726518_)))
                        (if (gx#identifier? _hd2529826521_)
                            (if (gx#stx-eq? '%#ref _hd2529826521_)
                                (if (gx#stx-pair? _tl2529926523_)
                                    (let ((_e2530026526_
                                           (gx#stx-e _tl2529926523_)))
                                      (let ((_hd2530126529_
                                             (##car _e2530026526_))
                                            (_tl2530226531_
                                             (##cdr _e2530026526_)))
                                        (if (gx#stx-null? _tl2530226531_)
                                            (if (gx#stx-pair? _tl2529626515_)
                                                (let ((_e2530326534_
                                                       (gx#stx-e
                                                        _tl2529626515_)))
                                                  (let ((_hd2530426537_
                                                         (##car _e2530326534_))
                                                        (_tl2530526539_
                                                         (##cdr _e2530326534_)))
                                                    (if (gx#stx-pair?
                                                         _hd2530426537_)
                                                        (let ((_e2530626542_
                                                               (gx#stx-e
                                                                _hd2530426537_)))
                                                          (let ((_hd2530726545_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2530626542_))
                        (_tl2530826547_ (##cdr _e2530626542_)))
                    (if (gx#identifier? _hd2530726545_)
                        (if (gx#stx-eq? '%#ref _hd2530726545_)
                            (if (gx#stx-pair? _tl2530826547_)
                                (let ((_e2530926550_
                                       (gx#stx-e _tl2530826547_)))
                                  (let ((_hd2531026553_ (##car _e2530926550_))
                                        (_tl2531126555_ (##cdr _e2530926550_)))
                                    (if (gx#stx-null? _tl2531126555_)
                                        (if (gx#stx-null? _tl2530526539_)
                                            (if (gx#stx-null? _tl2527226451_)
                                                ((lambda (_L26558_
                                                          _L26559_
                                                          _L26560_
                                                          _L26561_
                                                          _L26562_)
                                                   (if (if (gx#identifier?
                                                            _L26562_)
                                                           (if (gxc#runtime-identifier=?
                                                                _L26561_
                                                                'apply)
                                                               (if (gxc#runtime-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L26560_
                            'make-struct-instance)
                           (gx#free-identifier=? _L26562_ _L26558_)
                           '#f)
                       '#f)
                   '#f)
               (let* ((_type-t26605_ (gxc#identifier-symbol _L26559_))
                      (_type26607_ (gxc#optimizer-resolve-type _type-t26605_)))
                 (if (##structure-instance-of?
                      _type26607_
                      'gxc#!struct-type::t)
                     (##structure gxc#!struct-cons::t _type-t26605_)
                     '#f))
               (_g2525226425_ _g2525826428_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2531026553_
                                                 _hd2530126529_
                                                 _hd2529226505_
                                                 _hd2528326481_
                                                 _hd2526826441_)
                                                (_g2525226425_ _g2525826428_))
                                            (_g2525226425_ _g2525826428_))
                                        (_g2525226425_ _g2525826428_))))
                                (_g2525226425_ _g2525826428_))
                            (_g2525226425_ _g2525826428_))
                        (_g2525226425_ _g2525826428_))))
                (_g2525226425_ _g2525826428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2525226425_ _g2525826428_))
                                            (_g2525226425_ _g2525826428_))))
                                    (_g2525226425_ _g2525826428_))
                                (_g2525226425_ _g2525826428_))
                            (_g2525226425_ _g2525826428_))))
                    (_g2525226425_ _g2525826428_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2525226425_
                                                     _g2525826428_))
                                                (_g2525226425_
                                                 _g2525826428_))))
                                        (_g2525226425_ _g2525826428_))
                                    (_g2525226425_ _g2525826428_))
                                (_g2525226425_ _g2525826428_))))
                        (_g2525226425_ _g2525826428_))))
                (_g2525226425_ _g2525826428_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2525226425_
                                                     _g2525826428_))))
                                            (_g2525226425_ _g2525826428_))
                                        (_g2525226425_ _g2525826428_))
                                    (_g2525226425_ _g2525826428_))))
                            (_g2525226425_ _g2525826428_))))
                    (_g2525226425_ _g2525826428_))
                (_g2525226425_ _g2525826428_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2525226425_
                                                     _g2525826428_))))
                                            (_g2525226425_ _g2525826428_))))
                                    (_g2525226425_ _g2525826428_))))
                            (_g2525226425_ _g2525826428_))))
                    (_g2525226425_ _g2525826428_)))))
        (_g2525126610_ _stx25250_))))
  (define gxc#basic-expression-type-case-lambda%
    (lambda (_stx25196_)
      (letrec ((_clause-e25198_
                (lambda (_form25248_)
                  (let ((__obj34829 (make-object gxc#!lambda::t '5)))
                    (begin
                      (gxc#!lambda:::init!__0
                       __obj34829
                       'case-lambda-clause
                       (gxc#lambda-form-arity _form25248_)
                       (gxc#dispatch-lambda-form-delegate _form25248_))
                      __obj34829)))))
        (let* ((_g2520125211_
                (lambda (_g2520225208_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2520225208_)))
               (_g2520025218_ (lambda (_g2520225214_) ((lambda () '#f))))
               (_g2519925245_
                (lambda (_g2520225221_)
                  (if (gx#stx-pair? _g2520225221_)
                      (let ((_e2520425223_ (gx#stx-e _g2520225221_)))
                        (let ((_hd2520525226_ (##car _e2520425223_))
                              (_tl2520625228_ (##cdr _e2520425223_)))
                          ((lambda (_L25231_)
                             (if (andmap1 gxc#dispatch-lambda-form? _L25231_)
                                 (let ((_clauses25243_
                                        (map _clause-e25198_ _L25231_)))
                                   (##structure
                                    gxc#!case-lambda::t
                                    'case-lambda
                                    _clauses25243_))
                                 (_g2520025218_ _g2520225221_)))
                           _tl2520625228_)))
                      (_g2520025218_ _g2520225221_)))))
          (_g2519925245_ _stx25196_)))))
  (define gxc#basic-expression-type-builtin (make-hash-table-eq))
  (define gxc#basic-expression-type-call%
    (lambda (_stx25101_)
      (let* ((_g2510425124_
              (lambda (_g2510525121_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2510525121_)))
             (_g2510325131_ (lambda (_g2510525127_) ((lambda () '#f))))
             (_g2510225193_
              (lambda (_g2510525134_)
                (if (gx#stx-pair? _g2510525134_)
                    (let ((_e2510825136_ (gx#stx-e _g2510525134_)))
                      (let ((_hd2510925139_ (##car _e2510825136_))
                            (_tl2511025141_ (##cdr _e2510825136_)))
                        (if (gx#stx-pair? _tl2511025141_)
                            (let ((_e2511125144_ (gx#stx-e _tl2511025141_)))
                              (let ((_hd2511225147_ (##car _e2511125144_))
                                    (_tl2511325149_ (##cdr _e2511125144_)))
                                (if (gx#stx-pair? _hd2511225147_)
                                    (let ((_e2511425152_
                                           (gx#stx-e _hd2511225147_)))
                                      (let ((_hd2511525155_
                                             (##car _e2511425152_))
                                            (_tl2511625157_
                                             (##cdr _e2511425152_)))
                                        (if (gx#identifier? _hd2511525155_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2511525155_)
                                                (if (gx#stx-pair?
                                                     _tl2511625157_)
                                                    (let ((_e2511725160_
                                                           (gx#stx-e
                                                            _tl2511625157_)))
                                                      (let ((_hd2511825163_
                                                             (##car _e2511725160_))
                                                            (_tl2511925165_
                                                             (##cdr _e2511725160_)))
                                                        (if (gx#stx-null?
                                                             _tl2511925165_)
                                                            ((lambda (_L25168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L25169_)
                       (let ((_type-e2518625188_
                              (table-ref
                               gxc#basic-expression-type-builtin
                               (gxc#identifier-symbol _L25169_)
                               '#f)))
                         (if _type-e2518625188_
                             (let ((_type-e25191_ _type-e2518625188_))
                               (_type-e25191_ _stx25101_ _L25168_))
                             '#f)))
                     _tl2511325149_
                     _hd2511825163_)
                    (_g2510325131_ _g2510525134_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2510325131_
                                                     _g2510525134_))
                                                (_g2510325131_ _g2510525134_))
                                            (_g2510325131_ _g2510525134_))))
                                    (_g2510325131_ _g2510525134_))))
                            (_g2510325131_ _g2510525134_))))
                    (_g2510325131_ _g2510525134_)))))
        (_g2510225193_ _stx25101_))))
  (define gxc#basic-expression-type-make-struct-type
    (lambda (_stx24586_ _args24587_)
      (let* ((_g2459124704_
              (lambda (_g2459224701_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2459224701_)))
             (_g2459024711_
              (lambda (_g2459224707_)
                ((lambda ()
                   (begin
                     (gxc#verbose
                      '"make-struct-type: can't infer type "
                      (gx#syntax->datum _stx24586_))
                     '#f)))))
             (_g2458924918_
              (lambda (_g2459224714_)
                (if (gx#stx-pair? _g2459224714_)
                    (let ((_e2465224716_ (gx#stx-e _g2459224714_)))
                      (let ((_hd2465324719_ (##car _e2465224716_))
                            (_tl2465424721_ (##cdr _e2465224716_)))
                        (if (gx#stx-pair? _hd2465324719_)
                            (let ((_e2465524724_ (gx#stx-e _hd2465324719_)))
                              (let ((_hd2465624727_ (##car _e2465524724_))
                                    (_tl2465724729_ (##cdr _e2465524724_)))
                                (if (gx#identifier? _hd2465624727_)
                                    (if (gx#stx-eq? '%#quote _hd2465624727_)
                                        (if (gx#stx-pair? _tl2465724729_)
                                            (let ((_e2465824732_
                                                   (gx#stx-e _tl2465724729_)))
                                              (let ((_hd2465924735_
                                                     (##car _e2465824732_))
                                                    (_tl2466024737_
                                                     (##cdr _e2465824732_)))
                                                (if (gx#stx-null?
                                                     _tl2466024737_)
                                                    (if (gx#stx-pair?
                                                         _tl2465424721_)
                                                        (let ((_e2466124740_
                                                               (gx#stx-e
                                                                _tl2465424721_)))
                                                          (let ((_hd2466224743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2466124740_))
                        (_tl2466324745_ (##cdr _e2466124740_)))
                    (if (gx#stx-pair? _hd2466224743_)
                        (let ((_e2466424748_ (gx#stx-e _hd2466224743_)))
                          (let ((_hd2466524751_ (##car _e2466424748_))
                                (_tl2466624753_ (##cdr _e2466424748_)))
                            (if (gx#identifier? _hd2466524751_)
                                (if (gx#stx-eq? '%#ref _hd2466524751_)
                                    (if (gx#stx-pair? _tl2466624753_)
                                        (let ((_e2466724756_
                                               (gx#stx-e _tl2466624753_)))
                                          (let ((_hd2466824759_
                                                 (##car _e2466724756_))
                                                (_tl2466924761_
                                                 (##cdr _e2466724756_)))
                                            (if (gx#stx-null? _tl2466924761_)
                                                (if (gx#stx-pair?
                                                     _tl2466324745_)
                                                    (let ((_e2467024764_
                                                           (gx#stx-e
                                                            _tl2466324745_)))
                                                      (let ((_hd2467124767_
                                                             (##car _e2467024764_))
                                                            (_tl2467224769_
                                                             (##cdr _e2467024764_)))
                                                        (if (gx#stx-pair?
                                                             _hd2467124767_)
                                                            (let ((_e2467324772_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2467124767_)))
                      (let ((_hd2467424775_ (##car _e2467324772_))
                            (_tl2467524777_ (##cdr _e2467324772_)))
                        (if (gx#identifier? _hd2467424775_)
                            (if (gx#stx-eq? '%#quote _hd2467424775_)
                                (if (gx#stx-pair? _tl2467524777_)
                                    (let ((_e2467624780_
                                           (gx#stx-e _tl2467524777_)))
                                      (let ((_hd2467724783_
                                             (##car _e2467624780_))
                                            (_tl2467824785_
                                             (##cdr _e2467624780_)))
                                        (if (gx#stx-null? _tl2467824785_)
                                            (if (gx#stx-pair? _tl2467224769_)
                                                (let ((_e2467924788_
                                                       (gx#stx-e
                                                        _tl2467224769_)))
                                                  (let ((_hd2468024791_
                                                         (##car _e2467924788_))
                                                        (_tl2468124793_
                                                         (##cdr _e2467924788_)))
                                                    (if (gx#stx-pair?
                                                         _tl2468124793_)
                                                        (let ((_e2468224796_
                                                               (gx#stx-e
                                                                _tl2468124793_)))
                                                          (let ((_hd2468324799_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2468224796_))
                        (_tl2468424801_ (##cdr _e2468224796_)))
                    (if (gx#stx-pair? _hd2468324799_)
                        (let ((_e2468524804_ (gx#stx-e _hd2468324799_)))
                          (let ((_hd2468624807_ (##car _e2468524804_))
                                (_tl2468724809_ (##cdr _e2468524804_)))
                            (if (gx#identifier? _hd2468624807_)
                                (if (gx#stx-eq? '%#quote _hd2468624807_)
                                    (if (gx#stx-pair? _tl2468724809_)
                                        (let ((_e2468824812_
                                               (gx#stx-e _tl2468724809_)))
                                          (let ((_hd2468924815_
                                                 (##car _e2468824812_))
                                                (_tl2469024817_
                                                 (##cdr _e2468824812_)))
                                            (if (gx#stx-null? _tl2469024817_)
                                                (if (gx#stx-pair?
                                                     _tl2468424801_)
                                                    (let ((_e2469124820_
                                                           (gx#stx-e
                                                            _tl2468424801_)))
                                                      (let ((_hd2469224823_
                                                             (##car _e2469124820_))
                                                            (_tl2469324825_
                                                             (##cdr _e2469124820_)))
                                                        (if (gx#stx-pair?
                                                             _hd2469224823_)
                                                            (let ((_e2469424828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2469224823_)))
                      (let ((_hd2469524831_ (##car _e2469424828_))
                            (_tl2469624833_ (##cdr _e2469424828_)))
                        (if (gx#identifier? _hd2469524831_)
                            (if (gx#stx-eq? '%#quote _hd2469524831_)
                                (if (gx#stx-pair? _tl2469624833_)
                                    (let ((_e2469724836_
                                           (gx#stx-e _tl2469624833_)))
                                      (let ((_hd2469824839_
                                             (##car _e2469724836_))
                                            (_tl2469924841_
                                             (##cdr _e2469724836_)))
                                        (if (gx#stx-null? _tl2469924841_)
                                            ((lambda (_L24844_
                                                      _L24845_
                                                      _L24846_
                                                      _L24847_
                                                      _L24848_
                                                      _L24849_)
                                               (let* ((_super-t24895_
                                                       (if (gx#stx-e _L24848_)
                                                           (gxc#identifier-symbol
                                                            _L24848_)
                                                           '#f))
                                                      (_super-type24897_
                                                       (if _super-t24895_
                                                           (gxc#optimizer-resolve-type
                                                            _super-t24895_)
                                                           '#f)))
                                                 (begin
                                                   (if (if _super-type24897_
                                                           (not (##structure-instance-of?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _super-type24897_
                         'gxc#!struct-type::t))
                   '#f)
               (gxc#raise-compile-error
                '"Illegal struct-type construction; invalid super type"
                _stx24586_
                _L24848_)
               '#!void)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_fields24913_
                                                          (gx#stx-e _L24847_))
                                                         (_xfields24914_
                                                          (if _super-type24897_
                                                              (let ((_super-fields2489924902_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _super-type24897_
                              '3
                              gxc#!struct-type::t
                              '#f))
                            (_super-xfields2490024904_
                             (##structure-ref
                              _super-type24897_
                              '4
                              gxc#!struct-type::t
                              '#f)))
                        (if _super-fields2489924902_
                            (if _super-xfields2490024904_
                                (let ((_super-fields24907_
                                       _super-fields2489924902_)
                                      (_super-xfields24908_
                                       _super-xfields2490024904_))
                                  (fx+ _super-fields24907_
                                       _super-xfields24908_))
                                '#f)
                            '#f))
                      '#f))
                 (_plist24915_ (gx#stx-e _L24845_))
                 (_ctor24916_
                  (let ((_$e24910_ (gx#stx-e _L24844_)))
                    (if _$e24910_
                        (values _$e24910_)
                        (if _super-type24897_
                            (##structure-ref
                             _super-type24897_
                             '5
                             gxc#!struct-type::t
                             '#f)
                            (if _super-t24895_ '#!void '#f))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__obj34830
                                                            (make-object
                                                             gxc#!struct-type::t
                                                             '7)))
                                                       (begin
                                                         (gxc#!struct-type:::init!
                                                          __obj34830
                                                          (gx#stx-e _L24849_)
                                                          _super-t24895_
                                                          _fields24913_
                                                          _xfields24914_
                                                          _ctor24916_
                                                          _plist24915_)
                                                         __obj34830))))))
                                             _hd2469824839_
                                             _hd2468924815_
                                             _hd2468024791_
                                             _hd2467724783_
                                             _hd2466824759_
                                             _hd2465924735_)
                                            (_g2459024711_ _g2459224714_))))
                                    (_g2459024711_ _g2459224714_))
                                (_g2459024711_ _g2459224714_))
                            (_g2459024711_ _g2459224714_))))
                    (_g2459024711_ _g2459224714_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2459024711_
                                                     _g2459224714_))
                                                (_g2459024711_
                                                 _g2459224714_))))
                                        (_g2459024711_ _g2459224714_))
                                    (_g2459024711_ _g2459224714_))
                                (_g2459024711_ _g2459224714_))))
                        (_g2459024711_ _g2459224714_))))
                (_g2459024711_ _g2459224714_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2459024711_ _g2459224714_))
                                            (_g2459024711_ _g2459224714_))))
                                    (_g2459024711_ _g2459224714_))
                                (_g2459024711_ _g2459224714_))
                            (_g2459024711_ _g2459224714_))))
                    (_g2459024711_ _g2459224714_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2459024711_
                                                     _g2459224714_))
                                                (_g2459024711_
                                                 _g2459224714_))))
                                        (_g2459024711_ _g2459224714_))
                                    (_g2459024711_ _g2459224714_))
                                (_g2459024711_ _g2459224714_))))
                        (_g2459024711_ _g2459224714_))))
                (_g2459024711_ _g2459224714_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2459024711_
                                                     _g2459224714_))))
                                            (_g2459024711_ _g2459224714_))
                                        (_g2459024711_ _g2459224714_))
                                    (_g2459024711_ _g2459224714_))))
                            (_g2459024711_ _g2459224714_))))
                    (_g2459024711_ _g2459224714_))))
             (_g2458825098_
              (lambda (_g2459224921_)
                (if (gx#stx-pair? _g2459224921_)
                    (let ((_e2459824923_ (gx#stx-e _g2459224921_)))
                      (let ((_hd2459924926_ (##car _e2459824923_))
                            (_tl2460024928_ (##cdr _e2459824923_)))
                        (if (gx#stx-pair? _hd2459924926_)
                            (let ((_e2460124931_ (gx#stx-e _hd2459924926_)))
                              (let ((_hd2460224934_ (##car _e2460124931_))
                                    (_tl2460324936_ (##cdr _e2460124931_)))
                                (if (gx#identifier? _hd2460224934_)
                                    (if (gx#stx-eq? '%#quote _hd2460224934_)
                                        (if (gx#stx-pair? _tl2460324936_)
                                            (let ((_e2460424939_
                                                   (gx#stx-e _tl2460324936_)))
                                              (let ((_hd2460524942_
                                                     (##car _e2460424939_))
                                                    (_tl2460624944_
                                                     (##cdr _e2460424939_)))
                                                (if (gx#stx-null?
                                                     _tl2460624944_)
                                                    (if (gx#stx-pair?
                                                         _tl2460024928_)
                                                        (let ((_e2460724947_
                                                               (gx#stx-e
                                                                _tl2460024928_)))
                                                          (let ((_hd2460824950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2460724947_))
                        (_tl2460924952_ (##cdr _e2460724947_)))
                    (if (gx#stx-pair? _hd2460824950_)
                        (let ((_e2461024955_ (gx#stx-e _hd2460824950_)))
                          (let ((_hd2461124958_ (##car _e2461024955_))
                                (_tl2461224960_ (##cdr _e2461024955_)))
                            (if (gx#identifier? _hd2461124958_)
                                (if (gx#stx-eq? '%#quote _hd2461124958_)
                                    (if (gx#stx-pair? _tl2461224960_)
                                        (let ((_e2461324963_
                                               (gx#stx-e _tl2461224960_)))
                                          (let ((_hd2461424966_
                                                 (##car _e2461324963_))
                                                (_tl2461524968_
                                                 (##cdr _e2461324963_)))
                                            (if (gx#stx-datum? _hd2461424966_)
                                                (if (equal? (gx#stx-e
                                                             _hd2461424966_)
                                                            '#f)
                                                    (if (gx#stx-null?
                                                         _tl2461524968_)
                                                        (if (gx#stx-pair?
                                                             _tl2460924952_)
                                                            (let ((_e2461624971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2460924952_)))
                      (let ((_hd2461724974_ (##car _e2461624971_))
                            (_tl2461824976_ (##cdr _e2461624971_)))
                        (if (gx#stx-pair? _hd2461724974_)
                            (let ((_e2461924979_ (gx#stx-e _hd2461724974_)))
                              (let ((_hd2462024982_ (##car _e2461924979_))
                                    (_tl2462124984_ (##cdr _e2461924979_)))
                                (if (gx#identifier? _hd2462024982_)
                                    (if (gx#stx-eq? '%#quote _hd2462024982_)
                                        (if (gx#stx-pair? _tl2462124984_)
                                            (let ((_e2462224987_
                                                   (gx#stx-e _tl2462124984_)))
                                              (let ((_hd2462324990_
                                                     (##car _e2462224987_))
                                                    (_tl2462424992_
                                                     (##cdr _e2462224987_)))
                                                (if (gx#stx-null?
                                                     _tl2462424992_)
                                                    (if (gx#stx-pair?
                                                         _tl2461824976_)
                                                        (let ((_e2462524995_
                                                               (gx#stx-e
                                                                _tl2461824976_)))
                                                          (let ((_hd2462624998_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2462524995_))
                        (_tl2462725000_ (##cdr _e2462524995_)))
                    (if (gx#stx-pair? _tl2462725000_)
                        (let ((_e2462825003_ (gx#stx-e _tl2462725000_)))
                          (let ((_hd2462925006_ (##car _e2462825003_))
                                (_tl2463025008_ (##cdr _e2462825003_)))
                            (if (gx#stx-pair? _hd2462925006_)
                                (let ((_e2463125011_
                                       (gx#stx-e _hd2462925006_)))
                                  (let ((_hd2463225014_ (##car _e2463125011_))
                                        (_tl2463325016_ (##cdr _e2463125011_)))
                                    (if (gx#identifier? _hd2463225014_)
                                        (if (gx#stx-eq?
                                             '%#quote
                                             _hd2463225014_)
                                            (if (gx#stx-pair? _tl2463325016_)
                                                (let ((_e2463425019_
                                                       (gx#stx-e
                                                        _tl2463325016_)))
                                                  (let ((_hd2463525022_
                                                         (##car _e2463425019_))
                                                        (_tl2463625024_
                                                         (##cdr _e2463425019_)))
                                                    (if (gx#stx-null?
                                                         _tl2463625024_)
                                                        (if (gx#stx-pair?
                                                             _tl2463025008_)
                                                            (let ((_e2463725027_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2463025008_)))
                      (let ((_hd2463825030_ (##car _e2463725027_))
                            (_tl2463925032_ (##cdr _e2463725027_)))
                        (if (gx#stx-pair? _hd2463825030_)
                            (let ((_e2464025035_ (gx#stx-e _hd2463825030_)))
                              (let ((_hd2464125038_ (##car _e2464025035_))
                                    (_tl2464225040_ (##cdr _e2464025035_)))
                                (if (gx#identifier? _hd2464125038_)
                                    (if (gx#stx-eq? '%#quote _hd2464125038_)
                                        (if (gx#stx-pair? _tl2464225040_)
                                            (let ((_e2464325043_
                                                   (gx#stx-e _tl2464225040_)))
                                              (let ((_hd2464425046_
                                                     (##car _e2464325043_))
                                                    (_tl2464525048_
                                                     (##cdr _e2464325043_)))
                                                (if (gx#stx-null?
                                                     _tl2464525048_)
                                                    ((lambda (_L25051_
                                                              _L25052_
                                                              _L25053_
                                                              _L25054_
                                                              _L25055_)
                                                       (let ((__obj34831
                                                              (make-object
                                                               gxc#!struct-type::t
                                                               '7)))
                                                         (begin
                                                           (gxc#!struct-type:::init!
                                                            __obj34831
                                                            (gx#stx-e _L25055_)
                                                            '#f
                                                            (gx#stx-e _L25054_)
                                                            '0
                                                            (gx#stx-e _L25051_)
                                                            (gx#stx-e
                                                             _L25052_))
                                                           __obj34831)))
                                                     _hd2464425046_
                                                     _hd2463525022_
                                                     _hd2462624998_
                                                     _hd2462324990_
                                                     _hd2460524942_)
                                                    (_g2458924918_
                                                     _g2459224921_))))
                                            (_g2458924918_ _g2459224921_))
                                        (_g2458924918_ _g2459224921_))
                                    (_g2458924918_ _g2459224921_))))
                            (_g2458924918_ _g2459224921_))))
                    (_g2458924918_ _g2459224921_))
                (_g2458924918_ _g2459224921_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2458924918_ _g2459224921_))
                                            (_g2458924918_ _g2459224921_))
                                        (_g2458924918_ _g2459224921_))))
                                (_g2458924918_ _g2459224921_))))
                        (_g2458924918_ _g2459224921_))))
                (_g2458924918_ _g2459224921_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2458924918_
                                                     _g2459224921_))))
                                            (_g2458924918_ _g2459224921_))
                                        (_g2458924918_ _g2459224921_))
                                    (_g2458924918_ _g2459224921_))))
                            (_g2458924918_ _g2459224921_))))
                    (_g2458924918_ _g2459224921_))
                (_g2458924918_ _g2459224921_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2458924918_
                                                     _g2459224921_))
                                                (_g2458924918_
                                                 _g2459224921_))))
                                        (_g2458924918_ _g2459224921_))
                                    (_g2458924918_ _g2459224921_))
                                (_g2458924918_ _g2459224921_))))
                        (_g2458924918_ _g2459224921_))))
                (_g2458924918_ _g2459224921_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2458924918_
                                                     _g2459224921_))))
                                            (_g2458924918_ _g2459224921_))
                                        (_g2458924918_ _g2459224921_))
                                    (_g2458924918_ _g2459224921_))))
                            (_g2458924918_ _g2459224921_))))
                    (_g2458924918_ _g2459224921_)))))
        (_g2458825098_ _args24587_))))
  (define gxc#basic-expression-type-make-struct-predicate
    (lambda (_stx24512_ _args24513_)
      (let* ((_g2451624532_
              (lambda (_g2451724529_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2451724529_)))
             (_g2451524539_ (lambda (_g2451724535_) ((lambda () '#f))))
             (_g2451424583_
              (lambda (_g2451724542_)
                (if (gx#stx-pair? _g2451724542_)
                    (let ((_e2451924544_ (gx#stx-e _g2451724542_)))
                      (let ((_hd2452024547_ (##car _e2451924544_))
                            (_tl2452124549_ (##cdr _e2451924544_)))
                        (if (gx#stx-pair? _hd2452024547_)
                            (let ((_e2452224552_ (gx#stx-e _hd2452024547_)))
                              (let ((_hd2452324555_ (##car _e2452224552_))
                                    (_tl2452424557_ (##cdr _e2452224552_)))
                                (if (gx#identifier? _hd2452324555_)
                                    (if (gx#stx-eq? '%#ref _hd2452324555_)
                                        (if (gx#stx-pair? _tl2452424557_)
                                            (let ((_e2452524560_
                                                   (gx#stx-e _tl2452424557_)))
                                              (let ((_hd2452624563_
                                                     (##car _e2452524560_))
                                                    (_tl2452724565_
                                                     (##cdr _e2452524560_)))
                                                (if (gx#stx-null?
                                                     _tl2452724565_)
                                                    (if (gx#stx-null?
                                                         _tl2452124549_)
                                                        ((lambda (_L24568_)
                                                           (##structure
                                                            gxc#!struct-pred::t
                                                            (gxc#identifier-symbol
                                                             _L24568_)))
                                                         _hd2452624563_)
                                                        (_g2451524539_
                                                         _g2451724542_))
                                                    (_g2451524539_
                                                     _g2451724542_))))
                                            (_g2451524539_ _g2451724542_))
                                        (_g2451524539_ _g2451724542_))
                                    (_g2451524539_ _g2451724542_))))
                            (_g2451524539_ _g2451724542_))))
                    (_g2451524539_ _g2451724542_)))))
        (_g2451424583_ _args24513_))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-accessor__%
      (lambda (_stx24383_ _args24384_ _unchecked?24385_)
        (let* ((_g2438824414_
                (lambda (_g2438924411_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2438924411_)))
               (_g2438724421_ (lambda (_g2438924417_) ((lambda () '#f))))
               (_g2438624497_
                (lambda (_g2438924424_)
                  (if (gx#stx-pair? _g2438924424_)
                      (let ((_e2439224426_ (gx#stx-e _g2438924424_)))
                        (let ((_hd2439324429_ (##car _e2439224426_))
                              (_tl2439424431_ (##cdr _e2439224426_)))
                          (if (gx#stx-pair? _hd2439324429_)
                              (let ((_e2439524434_ (gx#stx-e _hd2439324429_)))
                                (let ((_hd2439624437_ (##car _e2439524434_))
                                      (_tl2439724439_ (##cdr _e2439524434_)))
                                  (if (gx#identifier? _hd2439624437_)
                                      (if (gx#stx-eq? '%#ref _hd2439624437_)
                                          (if (gx#stx-pair? _tl2439724439_)
                                              (let ((_e2439824442_
                                                     (gx#stx-e
                                                      _tl2439724439_)))
                                                (let ((_hd2439924445_
                                                       (##car _e2439824442_))
                                                      (_tl2440024447_
                                                       (##cdr _e2439824442_)))
                                                  (if (gx#stx-null?
                                                       _tl2440024447_)
                                                      (if (gx#stx-pair?
                                                           _tl2439424431_)
                                                          (let ((_e2440124450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2439424431_)))
                    (let ((_hd2440224453_ (##car _e2440124450_))
                          (_tl2440324455_ (##cdr _e2440124450_)))
                      (if (gx#stx-pair? _hd2440224453_)
                          (let ((_e2440424458_ (gx#stx-e _hd2440224453_)))
                            (let ((_hd2440524461_ (##car _e2440424458_))
                                  (_tl2440624463_ (##cdr _e2440424458_)))
                              (if (gx#identifier? _hd2440524461_)
                                  (if (gx#stx-eq? '%#quote _hd2440524461_)
                                      (if (gx#stx-pair? _tl2440624463_)
                                          (let ((_e2440724466_
                                                 (gx#stx-e _tl2440624463_)))
                                            (let ((_hd2440824469_
                                                   (##car _e2440724466_))
                                                  (_tl2440924471_
                                                   (##cdr _e2440724466_)))
                                              (if (gx#stx-null? _tl2440924471_)
                                                  (if (gx#stx-null?
                                                       _tl2440324455_)
                                                      ((lambda (_L24474_
                                                                _L24475_)
                                                         (##structure
                                                          gxc#!struct-getf::t
                                                          (gxc#identifier-symbol
                                                           _L24475_)
                                                          (gx#stx-e _L24474_)
                                                          _unchecked?24385_))
                                                       _hd2440824469_
                                                       _hd2439924445_)
                                                      (_g2438724421_
                                                       _g2438924424_))
                                                  (_g2438724421_
                                                   _g2438924424_))))
                                          (_g2438724421_ _g2438924424_))
                                      (_g2438724421_ _g2438924424_))
                                  (_g2438724421_ _g2438924424_))))
                          (_g2438724421_ _g2438924424_))))
                  (_g2438724421_ _g2438924424_))
              (_g2438724421_ _g2438924424_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2438724421_ _g2438924424_))
                                          (_g2438724421_ _g2438924424_))
                                      (_g2438724421_ _g2438924424_))))
                              (_g2438724421_ _g2438924424_))))
                      (_g2438724421_ _g2438924424_)))))
          (_g2438624497_ _args24384_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-accessor__0
        (lambda (_stx24503_ _args24504_)
          (let ((_unchecked?24506_ '#f))
            (gxc#basic-expression-type-make-struct-field-accessor__%
             _stx24503_
             _args24504_
             _unchecked?24506_))))
      (define gxc#basic-expression-type-make-struct-field-accessor
        (lambda _g34906_
          (let ((_g34905_ (length _g34906_)))
            (cond ((##fx= _g34905_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__0
                          _g34906_))
                  ((##fx= _g34905_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-accessor__%
                          _g34906_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-accessor
                    _g34906_))))))))
  (begin
    (define gxc#basic-expression-type-make-struct-field-mutator__%
      (lambda (_stx24253_ _args24254_ _unchecked?24255_)
        (let* ((_g2425824284_
                (lambda (_g2425924281_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2425924281_)))
               (_g2425724291_ (lambda (_g2425924287_) ((lambda () '#f))))
               (_g2425624367_
                (lambda (_g2425924294_)
                  (if (gx#stx-pair? _g2425924294_)
                      (let ((_e2426224296_ (gx#stx-e _g2425924294_)))
                        (let ((_hd2426324299_ (##car _e2426224296_))
                              (_tl2426424301_ (##cdr _e2426224296_)))
                          (if (gx#stx-pair? _hd2426324299_)
                              (let ((_e2426524304_ (gx#stx-e _hd2426324299_)))
                                (let ((_hd2426624307_ (##car _e2426524304_))
                                      (_tl2426724309_ (##cdr _e2426524304_)))
                                  (if (gx#identifier? _hd2426624307_)
                                      (if (gx#stx-eq? '%#ref _hd2426624307_)
                                          (if (gx#stx-pair? _tl2426724309_)
                                              (let ((_e2426824312_
                                                     (gx#stx-e
                                                      _tl2426724309_)))
                                                (let ((_hd2426924315_
                                                       (##car _e2426824312_))
                                                      (_tl2427024317_
                                                       (##cdr _e2426824312_)))
                                                  (if (gx#stx-null?
                                                       _tl2427024317_)
                                                      (if (gx#stx-pair?
                                                           _tl2426424301_)
                                                          (let ((_e2427124320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2426424301_)))
                    (let ((_hd2427224323_ (##car _e2427124320_))
                          (_tl2427324325_ (##cdr _e2427124320_)))
                      (if (gx#stx-pair? _hd2427224323_)
                          (let ((_e2427424328_ (gx#stx-e _hd2427224323_)))
                            (let ((_hd2427524331_ (##car _e2427424328_))
                                  (_tl2427624333_ (##cdr _e2427424328_)))
                              (if (gx#identifier? _hd2427524331_)
                                  (if (gx#stx-eq? '%#quote _hd2427524331_)
                                      (if (gx#stx-pair? _tl2427624333_)
                                          (let ((_e2427724336_
                                                 (gx#stx-e _tl2427624333_)))
                                            (let ((_hd2427824339_
                                                   (##car _e2427724336_))
                                                  (_tl2427924341_
                                                   (##cdr _e2427724336_)))
                                              (if (gx#stx-null? _tl2427924341_)
                                                  (if (gx#stx-null?
                                                       _tl2427324325_)
                                                      ((lambda (_L24344_
                                                                _L24345_)
                                                         (##structure
                                                          gxc#!struct-setf::t
                                                          (gxc#identifier-symbol
                                                           _L24345_)
                                                          (gx#stx-e _L24344_)
                                                          _unchecked?24255_))
                                                       _hd2427824339_
                                                       _hd2426924315_)
                                                      (_g2425724291_
                                                       _g2425924294_))
                                                  (_g2425724291_
                                                   _g2425924294_))))
                                          (_g2425724291_ _g2425924294_))
                                      (_g2425724291_ _g2425924294_))
                                  (_g2425724291_ _g2425924294_))))
                          (_g2425724291_ _g2425924294_))))
                  (_g2425724291_ _g2425924294_))
              (_g2425724291_ _g2425924294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2425724291_ _g2425924294_))
                                          (_g2425724291_ _g2425924294_))
                                      (_g2425724291_ _g2425924294_))))
                              (_g2425724291_ _g2425924294_))))
                      (_g2425724291_ _g2425924294_)))))
          (_g2425624367_ _args24254_))))
    (begin
      (define gxc#basic-expression-type-make-struct-field-mutator__0
        (lambda (_stx24373_ _args24374_)
          (let ((_unchecked?24376_ '#f))
            (gxc#basic-expression-type-make-struct-field-mutator__%
             _stx24373_
             _args24374_
             _unchecked?24376_))))
      (define gxc#basic-expression-type-make-struct-field-mutator
        (lambda _g34908_
          (let ((_g34907_ (length _g34908_)))
            (cond ((##fx= _g34907_ 2)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__0
                          _g34908_))
                  ((##fx= _g34907_ 3)
                   (apply gxc#basic-expression-type-make-struct-field-mutator__%
                          _g34908_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    gxc#basic-expression-type-make-struct-field-mutator
                    _g34908_))))))))
  (define gxc#basic-expression-type-make-struct-field-unchecked-accessor
    (lambda (_stx24249_ _args24250_)
      (gxc#basic-expression-type-make-struct-field-accessor__%
       _stx24249_
       _args24250_
       '#t)))
  (define gxc#basic-expression-type-make-struct-field-unchecked-mutator
    (lambda (_stx24246_ _args24247_)
      (gxc#basic-expression-type-make-struct-field-mutator__%
       _stx24246_
       _args24247_
       '#t)))
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-type
   gxc#basic-expression-type-make-struct-type)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-predicate
   gxc#basic-expression-type-make-struct-predicate)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-accessor
   gxc#basic-expression-type-make-struct-field-accessor)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-mutator
   gxc#basic-expression-type-make-struct-field-mutator)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-unchecked-accessor
   gxc#basic-expression-type-make-struct-field-unchecked-accessor)
  (table-set!
   gxc#basic-expression-type-builtin
   'make-struct-field-unchecked-mutator
   gxc#basic-expression-type-make-struct-field-unchecked-mutator)
  (define gxc#basic-expression-type-ref%
    (lambda (_stx24195_)
      (let* ((_g2419724210_
              (lambda (_g2419824207_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2419824207_)))
             (_g2419624243_
              (lambda (_g2419824213_)
                (if (gx#stx-pair? _g2419824213_)
                    (let ((_e2420024215_ (gx#stx-e _g2419824213_)))
                      (let ((_hd2420124218_ (##car _e2420024215_))
                            (_tl2420224220_ (##cdr _e2420024215_)))
                        (if (gx#stx-pair? _tl2420224220_)
                            (let ((_e2420324223_ (gx#stx-e _tl2420224220_)))
                              (let ((_hd2420424226_ (##car _e2420324223_))
                                    (_tl2420524228_ (##cdr _e2420324223_)))
                                (if (gx#stx-null? _tl2420524228_)
                                    ((lambda (_L24231_)
                                       (gxc#optimizer-lookup-type
                                        (gxc#identifier-symbol _L24231_)))
                                     _hd2420424226_)
                                    (_g2419724210_ _g2419824213_))))
                            (_g2419724210_ _g2419824213_))))
                    (_g2419724210_ _g2419824213_)))))
        (_g2419624243_ _stx24195_))))
  (define gxc#optimize-call%
    (lambda (_stx24101_)
      (let* ((_g2410424124_
              (lambda (_g2410524121_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2410524121_)))
             (_g2410324131_
              (lambda (_g2410524127_)
                ((lambda () (gxc#xform-call% _stx24101_)))))
             (_g2410224192_
              (lambda (_g2410524134_)
                (if (gx#stx-pair? _g2410524134_)
                    (let ((_e2410824136_ (gx#stx-e _g2410524134_)))
                      (let ((_hd2410924139_ (##car _e2410824136_))
                            (_tl2411024141_ (##cdr _e2410824136_)))
                        (if (gx#stx-pair? _tl2411024141_)
                            (let ((_e2411124144_ (gx#stx-e _tl2411024141_)))
                              (let ((_hd2411224147_ (##car _e2411124144_))
                                    (_tl2411324149_ (##cdr _e2411124144_)))
                                (if (gx#stx-pair? _hd2411224147_)
                                    (let ((_e2411424152_
                                           (gx#stx-e _hd2411224147_)))
                                      (let ((_hd2411524155_
                                             (##car _e2411424152_))
                                            (_tl2411624157_
                                             (##cdr _e2411424152_)))
                                        (if (gx#identifier? _hd2411524155_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd2411524155_)
                                                (if (gx#stx-pair?
                                                     _tl2411624157_)
                                                    (let ((_e2411724160_
                                                           (gx#stx-e
                                                            _tl2411624157_)))
                                                      (let ((_hd2411824163_
                                                             (##car _e2411724160_))
                                                            (_tl2411924165_
                                                             (##cdr _e2411724160_)))
                                                        (if (gx#stx-null?
                                                             _tl2411924165_)
                                                            ((lambda (_L24168_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L24169_)
                       (let* ((_rator-id24187_
                               (gxc#identifier-symbol _L24169_))
                              (_rator-type24189_
                               (gxc#optimizer-resolve-type _rator-id24187_)))
                         (if (##structure-instance-of?
                              _rator-type24189_
                              'gxc#!procedure::t)
                             (begin
                               (gxc#verbose
                                '"optimize-call "
                                _rator-id24187_
                                '" => "
                                _rator-type24189_
                                '" "
                                (##structure-ref
                                 _rator-type24189_
                                 '1
                                 gxc#!type::t
                                 '#f))
                               (call-method
                                _rator-type24189_
                                'optimize-call
                                _stx24101_
                                _L24168_))
                             (if (not _rator-type24189_)
                                 (gxc#xform-call% _stx24101_)
                                 (gxc#raise-compile-error
                                  '"Illegal application; not a procedure"
                                  _stx24101_
                                  _rator-type24189_)))))
                     _tl2411324149_
                     _hd2411824163_)
                    (_g2410324131_ _g2410524134_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2410324131_
                                                     _g2410524134_))
                                                (_g2410324131_ _g2410524134_))
                                            (_g2410324131_ _g2410524134_))))
                                    (_g2410324131_ _g2410524134_))))
                            (_g2410324131_ _g2410524134_))))
                    (_g2410324131_ _g2410524134_)))))
        (_g2410224192_ _stx24101_))))
  (define gxc#!struct-pred::optimize-call
    (lambda (_self23955_ _stx23956_ _args23957_)
      (let* ((_self2395823964_ _self23955_)
             (_E2396023968_
              (lambda () (error '"No clause matching" _self2395823964_)))
             (_K2396124093_
              (lambda (_struct-t23971_)
                (let* ((_struct-type23973_
                        (gxc#optimizer-resolve-type _struct-t23971_))
                       (_struct-type2397423988_ _struct-type23973_)
                       (_else2397723996_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx23956_
                           _struct-t23971_
                           _struct-type23973_))))
                  (let ((_K2398024068_
                         (lambda (_plist24007_ _struct-type-id24008_)
                           (let* ((_g2401124021_
                                   (lambda (_g2401224018_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g2401224018_)))
                                  (_g2401024028_
                                   (lambda (_g2401224024_)
                                     ((lambda ()
                                        (gxc#raise-compile-error
                                         '"Illegal struct predicate application"
                                         _stx23956_)))))
                                  (_g2400924065_
                                   (lambda (_g2401224031_)
                                     (if (gx#stx-pair? _g2401224031_)
                                         (let ((_e2401424033_
                                                (gx#stx-e _g2401224031_)))
                                           (let ((_hd2401524036_
                                                  (##car _e2401424033_))
                                                 (_tl2401624038_
                                                  (##cdr _e2401424033_)))
                                             (if (gx#stx-null? _tl2401624038_)
                                                 ((lambda (_L24041_)
                                                    (let ((_expr24062_
                                                           (gxc#compile-e
                                                            _L24041_))
                                                          (_op24063_
                                                           (if (if _plist24007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (assgetq 'final: _plist24007_)
                           '#f)
                       '%#struct-direct-instance?
                       '%#struct-instance?)))
              (gxc#xform-wrap-source
               (cons _op24063_
                     (cons (cons '%#quote (cons _struct-type-id24008_ '()))
                           (cons _expr24062_ '())))
               _stx23956_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd2401524036_)
                                                 (_g2401024028_
                                                  _g2401224031_))))
                                         (_g2401024028_ _g2401224031_)))))
                             (_g2400924065_ _args23957_))))
                        (_K2397924001_
                         (lambda () (gxc#xform-call% _stx23956_))))
                    (let ((_try-match2397624004_
                           (lambda ()
                             (if (##eq? _struct-type2397423988_ '#f)
                                 (let () (_K2397924001_))
                                 (_else2397723996_)))))
                      (if (##structure-instance-of?
                           _struct-type2397423988_
                           'gxc#!struct-type::t)
                          (let* ((_e2398124071_
                                  (##vector-ref _struct-type2397423988_ '1))
                                 (_e2398224076_
                                  (##vector-ref _struct-type2397423988_ '2))
                                 (_e2398324079_
                                  (##vector-ref _struct-type2397423988_ '3))
                                 (_e2398424082_
                                  (##vector-ref _struct-type2397423988_ '4))
                                 (_e2398524085_
                                  (##vector-ref _struct-type2397423988_ '5))
                                 (_e2398624088_
                                  (##vector-ref _struct-type2397423988_ '6)))
                            (let ((_struct-type-id24074_ _e2398124071_)
                                  (_plist24091_ _e2398624088_))
                              (_K2398024068_
                               _plist24091_
                               _struct-type-id24074_)))
                          (_try-match2397624004_))))))))
        (if (##structure-instance-of? _self2395823964_ 'gxc#!struct-pred::t)
            (let* ((_e2396224096_ (##vector-ref _self2395823964_ '1))
                   (_struct-t24099_ _e2396224096_))
              (_K2396124093_ _struct-t24099_))
            (_E2396023968_)))))
  (bind-method!
   gxc#!struct-pred::t
   'optimize-call
   gxc#!struct-pred::optimize-call
   '#f)
  (define gxc#!struct-cons::optimize-call
    (lambda (_self23729_ _stx23730_ _args23731_)
      (let* ((_self2373223738_ _self23729_)
             (_E2373423742_
              (lambda () (error '"No clause matching" _self2373223738_)))
             (_K2373523825_
              (lambda (_struct-t23745_)
                (let* ((_struct-type23747_
                        (gxc#optimizer-resolve-type _struct-t23745_))
                       (_struct-type2374823761_ _struct-type23747_)
                       (_else2375123769_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct constructor application; not a struct type"
                           _stx23730_
                           _struct-t23745_
                           _struct-type23747_))))
                  (let ((_K2375423799_
                         (lambda (_ctor23780_
                                  _xfields23781_
                                  _fields23782_
                                  _type-id23783_)
                           (let* ((_args23785_ (map gxc#compile-e _args23731_))
                                  (_$e23787_
                                   (if _ctor23780_
                                       (if _xfields23781_
                                           (gxc#!struct-type-lookup-method
                                            _struct-type23747_
                                            _ctor23780_)
                                           '#f)
                                       '#f)))
                             (if _$e23787_
                                 ((lambda (_kons23790_)
                                    (let ((_$obj23792_
                                           (make-symbol (gensym '__obj))))
                                      (gxc#xform-wrap-source
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _$obj23792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#call
                                   (cons (cons '%#ref (cons 'make-object '()))
                                         (cons (cons '%#ref
                                                     (cons _struct-t23745_
                                                           '()))
                                               (cons (cons '%#quote
                                                           (cons (fx+ _fields23782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _xfields23781_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons '%#begin
                                                               (cons (gxc#compile-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gxc#xform-wrap-source
                               (cons '%#call
                                     (cons (cons '%#ref (cons _kons23790_ '()))
                                           (cons (cons '%#ref
                                                       (cons _$obj23792_ '()))
                                                 _args23785_)))
                               _stx23730_))
                             (cons (cons '%#ref (cons _$obj23792_ '())) '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _stx23730_)))
                                  _$e23787_)
                                 (if (let ((_$e23794_ _ctor23780_))
                                       (if _$e23794_
                                           _$e23794_
                                           (not _xfields23781_)))
                                     (gxc#xform-wrap-source
                                      (cons '%#call
                                            (cons (cons '%#ref
                                                        (cons 'make-struct-instance
                                                              '()))
                                                  (cons (cons '%#ref
                                                              (cons _struct-t23745_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                _args23785_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _stx23730_)
                                     (let ((_arity23797_
                                            (fx+ _fields23782_
                                                 _xfields23781_)))
                                       (if (fx= _arity23797_
                                                (length _args23785_))
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons '##structure
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#ref (cons _struct-t23745_ '())) _args23785_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx23730_)
                                           (gxc#raise-compile-error
                                            '"Illegal struct constructor application; arity mismatch"
                                            _stx23730_
                                            _struct-t23745_
                                            _arity23797_))))))))
                        (_K2375323774_
                         (lambda ()
                           (begin
                             (gxc#verbose
                              '"cannot inline struct constructor; unknown struct type "
                              _struct-t23745_)
                             (gxc#xform-call% _stx23730_)))))
                    (let ((_try-match2375023777_
                           (lambda ()
                             (if (##eq? _struct-type2374823761_ '#f)
                                 (let () (_K2375323774_))
                                 (_else2375123769_)))))
                      (if (##structure-instance-of?
                           _struct-type2374823761_
                           'gxc#!struct-type::t)
                          (let* ((_e2375523802_
                                  (##vector-ref _struct-type2374823761_ '1))
                                 (_e2375623807_
                                  (##vector-ref _struct-type2374823761_ '2))
                                 (_e2375723810_
                                  (##vector-ref _struct-type2374823761_ '3))
                                 (_e2375823815_
                                  (##vector-ref _struct-type2374823761_ '4))
                                 (_e2375923820_
                                  (##vector-ref _struct-type2374823761_ '5)))
                            (let ((_type-id23805_ _e2375523802_)
                                  (_fields23813_ _e2375723810_)
                                  (_xfields23818_ _e2375823815_)
                                  (_ctor23823_ _e2375923820_))
                              (_K2375423799_
                               _ctor23823_
                               _xfields23818_
                               _fields23813_
                               _type-id23805_)))
                          (_try-match2375023777_))))))))
        (if (##structure-instance-of? _self2373223738_ 'gxc#!struct-cons::t)
            (let* ((_e2373623828_ (##vector-ref _self2373223738_ '1))
                   (_struct-t23831_ _e2373623828_))
              (_K2373523825_ _struct-t23831_))
            (_E2373423742_)))))
  (bind-method!
   gxc#!struct-cons::t
   'optimize-call
   gxc#!struct-cons::optimize-call
   '#f)
  (define gxc#!struct-getf::optimize-call
    (lambda (_self23440_ _stx23441_ _args23442_)
      (let* ((_self2344323451_ _self23440_)
             (_E2344523455_
              (lambda () (error '"No clause matching" _self2344323451_)))
             (_K2344623589_
              (lambda (_unchecked?23458_ _off23459_ _struct-t23460_)
                (let* ((_struct-type23462_
                        (gxc#optimizer-resolve-type _struct-t23460_))
                       (_struct-type2346323477_ _struct-type23462_)
                       (_else2346623485_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx23441_
                           _struct-t23460_
                           _struct-type23462_))))
                  (let ((_K2346923560_
                         (lambda (_plist23496_
                                  _xfields23497_
                                  _fields23498_
                                  _struct-type-id23499_)
                           (if _xfields23497_
                               (let* ((_g2350223512_
                                       (lambda (_g2350323509_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2350323509_)))
                                      (_g2350123519_
                                       (lambda (_g2350323515_)
                                         ((lambda ()
                                            (gxc#raise-compile-error
                                             '"Illegal struct accessor application"
                                             _stx23441_)))))
                                      (_g2350023557_
                                       (lambda (_g2350323522_)
                                         (if (gx#stx-pair? _g2350323522_)
                                             (let ((_e2350523524_
                                                    (gx#stx-e _g2350323522_)))
                                               (let ((_hd2350623527_
                                                      (##car _e2350523524_))
                                                     (_tl2350723529_
                                                      (##cdr _e2350523524_)))
                                                 (if (gx#stx-null?
                                                      _tl2350723529_)
                                                     ((lambda (_L23532_)
                                                        (let ((_expr23553_
                                                               (gxc#compile-e
                                                                _L23532_))
                                                              (_off23554_
                                                               (fx+ _off23459_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _xfields23497_
                            '1))
                      (_op23555_
                       (if _unchecked?23458_
                           '%#struct-unchecked-ref
                           (if (if _plist23496_
                                   (assgetq 'final: _plist23496_)
                                   '#f)
                               '%#struct-direct-ref
                               '%#struct-ref))))
                  (gxc#xform-wrap-source
                   (cons _op23555_
                         (cons (cons '%#ref (cons _struct-t23460_ '()))
                               (cons (cons '%#quote (cons _off23554_ '()))
                                     (cons _expr23553_ '()))))
                   _stx23441_)))
              _hd2350623527_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2350123519_
                                                      _g2350323522_))))
                                             (_g2350123519_ _g2350323522_)))))
                                 (_g2350023557_ _args23442_))
                               (begin
                                 (gxc#verbose
                                  '"struct-getf: incomplete struct "
                                  _struct-type-id23499_)
                                 (gxc#xform-call% _stx23441_)))))
                        (_K2346823490_
                         (lambda () (gxc#xform-call% _stx23441_))))
                    (let ((_try-match2346523493_
                           (lambda ()
                             (if (##eq? _struct-type2346323477_ '#f)
                                 (let () (_K2346823490_))
                                 (_else2346623485_)))))
                      (if (##structure-instance-of?
                           _struct-type2346323477_
                           'gxc#!struct-type::t)
                          (let* ((_e2347023563_
                                  (##vector-ref _struct-type2346323477_ '1))
                                 (_e2347123568_
                                  (##vector-ref _struct-type2346323477_ '2))
                                 (_e2347223571_
                                  (##vector-ref _struct-type2346323477_ '3))
                                 (_e2347323576_
                                  (##vector-ref _struct-type2346323477_ '4))
                                 (_e2347423581_
                                  (##vector-ref _struct-type2346323477_ '5))
                                 (_e2347523584_
                                  (##vector-ref _struct-type2346323477_ '6)))
                            (let ((_struct-type-id23566_ _e2347023563_)
                                  (_fields23574_ _e2347223571_)
                                  (_xfields23579_ _e2347323576_)
                                  (_plist23587_ _e2347523584_))
                              (_K2346923560_
                               _plist23587_
                               _xfields23579_
                               _fields23574_
                               _struct-type-id23566_)))
                          (_try-match2346523493_))))))))
        (if (##structure-instance-of? _self2344323451_ 'gxc#!struct-getf::t)
            (let* ((_e2344723592_ (##vector-ref _self2344323451_ '1))
                   (_struct-t23595_ _e2344723592_)
                   (_e2344823597_ (##vector-ref _self2344323451_ '2))
                   (_off23600_ _e2344823597_)
                   (_e2344923602_ (##vector-ref _self2344323451_ '3))
                   (_unchecked?23605_ _e2344923602_))
              (_K2344623589_ _unchecked?23605_ _off23600_ _struct-t23595_))
            (_E2344523455_)))))
  (bind-method!
   gxc#!struct-getf::t
   'optimize-call
   gxc#!struct-getf::optimize-call
   '#f)
  (define gxc#!struct-setf::optimize-call
    (lambda (_self23134_ _stx23135_ _args23136_)
      (let* ((_self2313723145_ _self23134_)
             (_E2313923149_
              (lambda () (error '"No clause matching" _self2313723145_)))
             (_K2314023300_
              (lambda (_unchecked?23152_ _off23153_ _struct-t23154_)
                (let* ((_struct-type23156_
                        (gxc#optimizer-resolve-type _struct-t23154_))
                       (_struct-type2315723171_ _struct-type23156_)
                       (_else2316023179_
                        (lambda ()
                          (gxc#raise-compile-error
                           '"Illegal struct predicate application; not a struct type"
                           _stx23135_
                           _struct-t23154_
                           _struct-type23156_))))
                  (let ((_K2316323271_
                         (lambda (_plist23190_
                                  _xfields23191_
                                  _fields23192_
                                  _struct-type-id23193_)
                           (if _xfields23191_
                               (let* ((_g2319623210_
                                       (lambda (_g2319723207_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g2319723207_)))
                                      (_g2319523217_
                                       (lambda (_g2319723213_)
                                         ((lambda ()
                                            (gxc#raise-compile-error
                                             '"Illegal struct mutator application"
                                             _stx23135_)))))
                                      (_g2319423268_
                                       (lambda (_g2319723220_)
                                         (if (gx#stx-pair? _g2319723220_)
                                             (let ((_e2320023222_
                                                    (gx#stx-e _g2319723220_)))
                                               (let ((_hd2320123225_
                                                      (##car _e2320023222_))
                                                     (_tl2320223227_
                                                      (##cdr _e2320023222_)))
                                                 (if (gx#stx-pair?
                                                      _tl2320223227_)
                                                     (let ((_e2320323230_
                                                            (gx#stx-e
                                                             _tl2320223227_)))
                                                       (let ((_hd2320423233_
                                                              (##car _e2320323230_))
                                                             (_tl2320523235_
                                                              (##cdr _e2320323230_)))
                                                         (if (gx#stx-null?
                                                              _tl2320523235_)
                                                             ((lambda (_L23238_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L23239_)
                        (let ((_expr23263_ (gxc#compile-e _L23239_))
                              (_val23264_ (gxc#compile-e _L23238_))
                              (_off23265_ (fx+ _off23153_ _xfields23191_ '1))
                              (_op23266_
                               (if _unchecked?23152_
                                   '%#struct-unchecked-set!
                                   (if (if _plist23190_
                                           (assgetq 'final: _plist23190_)
                                           '#f)
                                       '%#struct-direct-set!
                                       '%#struct-set!))))
                          (gxc#xform-wrap-source
                           (cons _op23266_
                                 (cons (cons '%#ref (cons _struct-t23154_ '()))
                                       (cons (cons '%#quote
                                                   (cons _off23265_ '()))
                                             (cons _expr23263_
                                                   (cons _val23264_ '())))))
                           _stx23135_)))
                      _hd2320423233_
                      _hd2320123225_)
                     (_g2319523217_ _g2319723220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2319523217_
                                                      _g2319723220_))))
                                             (_g2319523217_ _g2319723220_)))))
                                 (_g2319423268_ _args23136_))
                               (begin
                                 (gxc#verbose
                                  '"struct-setf: incomplete struct "
                                  _struct-type-id23193_)
                                 (gxc#xform-call% _stx23135_)))))
                        (_K2316223184_
                         (lambda () (gxc#xform-call% _stx23135_))))
                    (let ((_try-match2315923187_
                           (lambda ()
                             (if (##eq? _struct-type2315723171_ '#f)
                                 (let () (_K2316223184_))
                                 (_else2316023179_)))))
                      (if (##structure-instance-of?
                           _struct-type2315723171_
                           'gxc#!struct-type::t)
                          (let* ((_e2316423274_
                                  (##vector-ref _struct-type2315723171_ '1))
                                 (_e2316523279_
                                  (##vector-ref _struct-type2315723171_ '2))
                                 (_e2316623282_
                                  (##vector-ref _struct-type2315723171_ '3))
                                 (_e2316723287_
                                  (##vector-ref _struct-type2315723171_ '4))
                                 (_e2316823292_
                                  (##vector-ref _struct-type2315723171_ '5))
                                 (_e2316923295_
                                  (##vector-ref _struct-type2315723171_ '6)))
                            (let ((_struct-type-id23277_ _e2316423274_)
                                  (_fields23285_ _e2316623282_)
                                  (_xfields23290_ _e2316723287_)
                                  (_plist23298_ _e2316923295_))
                              (_K2316323271_
                               _plist23298_
                               _xfields23290_
                               _fields23285_
                               _struct-type-id23277_)))
                          (_try-match2315923187_))))))))
        (if (##structure-instance-of? _self2313723145_ 'gxc#!struct-setf::t)
            (let* ((_e2314123303_ (##vector-ref _self2313723145_ '1))
                   (_struct-t23306_ _e2314123303_)
                   (_e2314223308_ (##vector-ref _self2313723145_ '2))
                   (_off23311_ _e2314223308_)
                   (_e2314323313_ (##vector-ref _self2313723145_ '3))
                   (_unchecked?23316_ _e2314323313_))
              (_K2314023300_ _unchecked?23316_ _off23311_ _struct-t23306_))
            (_E2313923149_)))))
  (bind-method!
   gxc#!struct-setf::t
   'optimize-call
   gxc#!struct-setf::optimize-call
   '#f)
  (define gxc#!lambda::optimize-call
    (lambda (_self22968_ _stx22969_ _args22970_)
      (let* ((_self2297122980_ _self22968_)
             (_E2297322984_
              (lambda () (error '"No clause matching" _self2297122980_)))
             (_K2297422991_
              (lambda (_inline22987_ _dispatch22988_ _arity22989_)
                (begin
                  (if (gxc#!lambda-arity-match? _self22968_ _args22970_)
                      '#!void
                      (gxc#raise-compile-error
                       '"Illegal lambda application; arity mismatch"
                       _stx22969_
                       _arity22989_))
                  (if _inline22987_
                      (begin
                        (gxc#verbose '"inline lambda")
                        (gxc#compile-e
                         (gxc#xform-wrap-source
                          (_inline22987_ _stx22969_)
                          _stx22969_)))
                      (if _dispatch22988_
                          (begin
                            (gxc#verbose
                             '"dispatch lambda => "
                             _dispatch22988_)
                            (gxc#compile-e
                             (gxc#xform-wrap-source
                              (cons '%#call
                                    (cons (cons '%#ref
                                                (cons _dispatch22988_ '()))
                                          _args22970_))
                              _stx22969_)))
                          (gxc#xform-call% _stx22969_)))))))
        (if (##structure-instance-of? _self2297122980_ 'gxc#!lambda::t)
            (let* ((_e2297522994_ (##vector-ref _self2297122980_ '1))
                   (_e2297622997_ (##vector-ref _self2297122980_ '2))
                   (_arity23000_ _e2297622997_)
                   (_e2297723002_ (##vector-ref _self2297122980_ '3))
                   (_dispatch23005_ _e2297723002_)
                   (_e2297823007_ (##vector-ref _self2297122980_ '4))
                   (_inline23010_ _e2297823007_))
              (_K2297422991_ _inline23010_ _dispatch23005_ _arity23000_))
            (_E2297322984_)))))
  (bind-method! gxc#!lambda::t 'optimize-call gxc#!lambda::optimize-call '#f)
  (define gxc#!case-lambda::optimize-call
    (lambda (_self22807_ _stx22808_ _args22809_)
      (let* ((_self2281022817_ _self22807_)
             (_E2281222821_
              (lambda () (error '"No clause matching" _self2281022817_)))
             (_K2281322835_
              (lambda (_clauses22824_)
                (let ((_$e22830_
                       (find (lambda (_g2282522827_)
                               (gxc#!lambda-arity-match?
                                _g2282522827_
                                _args22809_))
                             _clauses22824_)))
                  (if _$e22830_
                      ((lambda (_clause22833_)
                         (call-method
                          _clause22833_
                          'optimize-call
                          _stx22808_
                          _args22809_))
                       _$e22830_)
                      (gxc#raise-compile-error
                       '"Illegal case-lambda application; arity mismatch"
                       _stx22808_
                       (map gxc#!lambda-arity _clauses22824_)))))))
        (if (##structure-instance-of? _self2281022817_ 'gxc#!case-lambda::t)
            (let* ((_e2281422838_ (##vector-ref _self2281022817_ '1))
                   (_e2281522841_ (##vector-ref _self2281022817_ '2))
                   (_clauses22844_ _e2281522841_))
              (_K2281322835_ _clauses22844_))
            (_E2281222821_)))))
  (bind-method!
   gxc#!case-lambda::t
   'optimize-call
   gxc#!case-lambda::optimize-call
   '#f)
  (define gxc#!lambda-arity-match?
    (lambda (_self22621_ _args22622_)
      (let* ((_self2262322630_ _self22621_)
             (_E2262522634_
              (lambda () (error '"No clause matching" _self2262322630_)))
             (_K2262622674_
              (lambda (_arity22637_)
                (let* ((_arity2263822647_ _arity22637_)
                       (_E2264122651_
                        (lambda ()
                          (error '"No clause matching" _arity2263822647_))))
                  (let ((_K2264522671_
                         (lambda () (fx= (length _args22622_) _arity22637_)))
                        (_K2264222657_
                         (lambda (_arity22655_)
                           (fx>= (length _args22622_) _arity22655_))))
                    (let ((_try-match2264022667_
                           (lambda ()
                             (if (##pair? _arity2263822647_)
                                 (let ((_tl2264422662_
                                        (##cdr _arity2263822647_))
                                       (_hd2264322660_
                                        (##car _arity2263822647_)))
                                   (if (##null? _tl2264422662_)
                                       (let ((_arity22665_ _hd2264322660_))
                                         (_K2264222657_ _arity22665_))
                                       (_E2264122651_)))
                                 (_E2264122651_)))))
                      (if (fixnum? _arity2263822647_)
                          (let () (_K2264522671_))
                          (_try-match2264022667_))))))))
        (if (##structure-instance-of? _self2262322630_ 'gxc#!lambda::t)
            (let* ((_e2262722677_ (##vector-ref _self2262322630_ '1))
                   (_e2262822680_ (##vector-ref _self2262322630_ '2))
                   (_arity22683_ _e2262822680_))
              (_K2262622674_ _arity22683_))
            (_E2262522634_)))))
  (define gxc#!kw-lambda::optimize-call
    (lambda (_self22506_ _stx22507_ _args22508_)
      (let* ((_self2250922517_ _self22506_)
             (_E2251122521_
              (lambda () (error '"No clause matching" _self2250922517_)))
             (_K2251222605_
              (lambda (_dispatch22524_ _table22525_)
                (let* ((_g2252622535_
                        (gxc#optimizer-lookup-type _dispatch22524_))
                       (_else2252822543_
                        (lambda ()
                          (begin
                            (gxc#verbose
                             '"unknown keyword dispatch lambda "
                             _dispatch22524_)
                            (gxc#xform-call% _stx22507_))))
                       (_K2253022589_
                        (lambda (_main22546_ _keys22547_)
                          (let ((_g34909_
                                 (gxc#!kw-lambda-split-args
                                  _stx22507_
                                  _args22508_)))
                            (begin
                              (let ((_g34910_
                                     (if (##values? _g34909_)
                                         (##vector-length _g34909_)
                                         1)))
                                (if (not (##fx= _g34910_ 2))
                                    (error "Context expects 2 values"
                                           _g34910_)))
                              (let ((_pargs22549_ (##vector-ref _g34909_ 0))
                                    (_kwargs22550_ (##vector-ref _g34909_ 1)))
                                (begin
                                  (gxc#verbose
                                   '"dispatch kw-lambda => "
                                   _main22546_)
                                  (if _table22525_
                                      (let ((_xargs22557_
                                             (map (lambda (_key22552_)
                                                    (let ((_$e22554_
                                                           (assgetq _key22552_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _kwargs22550_)))
              (if _$e22554_ (values _$e22554_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _keys22547_)))
                                        (begin
                                          (for-each
                                           (lambda (_kw22559_)
                                             (if (memq (car _kw22559_)
                                                       _keys22547_)
                                                 '#!void
                                                 (gxc#raise-compile-error
                                                  '"Illegal keyword lambda application; unexpected keyword"
                                                  _stx22507_
                                                  _keys22547_
                                                  _kw22559_)))
                                           _kwargs22550_)
                                          (gxc#compile-e
                                           (gxc#xform-wrap-source
                                            (cons '%#call
                                                  (cons (cons '%#ref
                                                              (cons _main22546_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '%#quote (cons '#f '()))
                      (foldr1 cons _pargs22549_ _xargs22557_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _stx22507_))))
                                      (let* ((_kwt22561_
                                              (make-symbol (gensym '__kwt)))
                                             (_kwvars22564_
                                              (map (lambda (_g34911_)
                                                     (make-symbol
                                                      (gensym '__kw)))
                                                   _kwargs22550_))
                                             (_kwbind22569_
                                              (map (lambda (_kw22566_
                                                            _kwvar22567_)
                                                     (cons (cons _kwvar22567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (cdr _kw22566_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs22550_
                                                   _kwvars22564_))
                                             (_kwset22574_
                                              (map (lambda (_kw22571_
                                                            _kwvar22572_)
                                                     (cons '%#call
                                                           (cons '(%#ref hash-put!)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _kwt22561_ '()))
                               (cons (cons '%#quote (cons (car _kw22571_) '()))
                                     (cons (cons '%#ref
                                                 (cons _kwvar22572_ '()))
                                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs22550_
                                                   _kwvars22564_))
                                             (_xkwargs22579_
                                              (map (lambda (_kw22576_
                                                            _kwvar22577_)
                                                     (cons (car _kw22576_)
                                                           (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _kwvar22577_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _kwargs22550_
                                                   _kwvars22564_))
                                             (_xargs22586_
                                              (map (lambda (_key22581_)
                                                     (let ((_$e22583_
                                                            (assgetq _key22581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _xkwargs22579_)))
               (if _$e22583_ (values _$e22583_) '(%#ref absent-value))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _keys22547_)))
                                        (gxc#compile-e
                                         (gxc#xform-wrap-source
                                          (cons '%#let-values
                                                (cons _kwbind22569_
                                                      (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _kwt22561_ '())
                                            (cons (gxc#xform-wrap-source
                                                   (cons '%#call
                                                         (cons '(%#ref make-hash-table-eq)
                                                               (cons '(%#quote size:)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons '%#quote
                                         (cons (length _kwargs22550_) '()))
                                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _stx22507_)
                                                  '()))
                                      '())
                                (cons (cons '%#begin
                                            (foldr1 cons
                                                    (cons (gxc#xform-wrap-source
                                                           (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons '%#ref (cons _main22546_ '()))
                               (cons (cons '%#ref (cons _kwt22561_ '()))
                                     (foldr1 cons _pargs22549_ _xargs22586_))))
                   _stx22507_)
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _kwset22574_))
                                      '())))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _stx22507_)))))))))))
                  (if (##structure-instance-of?
                       _g2252622535_
                       'gxc#!kw-lambda-primary::t)
                      (let* ((_e2253122592_ (##vector-ref _g2252622535_ '1))
                             (_e2253222595_ (##vector-ref _g2252622535_ '2))
                             (_keys22598_ _e2253222595_)
                             (_e2253322600_ (##vector-ref _g2252622535_ '3))
                             (_main22603_ _e2253322600_))
                        (_K2253022589_ _main22603_ _keys22598_))
                      (_else2252822543_))))))
        (if (##structure-instance-of? _self2250922517_ 'gxc#!kw-lambda::t)
            (let* ((_e2251322608_ (##vector-ref _self2250922517_ '1))
                   (_e2251422611_ (##vector-ref _self2250922517_ '2))
                   (_table22614_ _e2251422611_)
                   (_e2251522616_ (##vector-ref _self2250922517_ '3))
                   (_dispatch22619_ _e2251522616_))
              (_K2251222605_ _dispatch22619_ _table22614_))
            (_E2251122521_)))))
  (bind-method!
   gxc#!kw-lambda::t
   'optimize-call
   gxc#!kw-lambda::optimize-call
   '#f)
  (define gxc#!kw-lambda-split-args
    (lambda (_stx22129_ _args22130_)
      (let _lp22132_ ((_rest22134_ _args22130_)
                      (_pargs22135_ '())
                      (_kwargs22136_ '()))
        (let* ((_g2214222192_
                (lambda (_g2214322189_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g2214322189_)))
               (_g2214122199_
                (lambda (_g2214322195_)
                  (if (gx#stx-null? _g2214322195_)
                      ((lambda ()
                         (values (reverse _pargs22135_)
                                 (reverse _kwargs22136_))))
                      (_g2214222192_ _g2214322195_))))
               (_g2214022227_
                (lambda (_g2214322202_)
                  (if (gx#stx-pair? _g2214322202_)
                      (let ((_e2218522204_ (gx#stx-e _g2214322202_)))
                        (let ((_hd2218622207_ (##car _e2218522204_))
                              (_tl2218722209_ (##cdr _e2218522204_)))
                          ((lambda (_L22212_ _L22213_)
                             (_lp22132_
                              _L22212_
                              (cons _L22213_ _pargs22135_)
                              _kwargs22136_))
                           _tl2218722209_
                           _hd2218622207_)))
                      (_g2214122199_ _g2214322202_))))
               (_g2213922285_
                (lambda (_g2214322230_)
                  (if (gx#stx-pair? _g2214322230_)
                      (let ((_e2217122232_ (gx#stx-e _g2214322230_)))
                        (let ((_hd2217222235_ (##car _e2217122232_))
                              (_tl2217322237_ (##cdr _e2217122232_)))
                          (if (gx#stx-pair? _hd2217222235_)
                              (let ((_e2217422240_ (gx#stx-e _hd2217222235_)))
                                (let ((_hd2217522243_ (##car _e2217422240_))
                                      (_tl2217622245_ (##cdr _e2217422240_)))
                                  (if (gx#identifier? _hd2217522243_)
                                      (if (gx#stx-eq? '%#quote _hd2217522243_)
                                          (if (gx#stx-pair? _tl2217622245_)
                                              (let ((_e2217722248_
                                                     (gx#stx-e
                                                      _tl2217622245_)))
                                                (let ((_hd2217822251_
                                                       (##car _e2217722248_))
                                                      (_tl2217922253_
                                                       (##cdr _e2217722248_)))
                                                  (if (gx#stx-null?
                                                       _tl2217922253_)
                                                      (if (gx#stx-pair?
                                                           _tl2217322237_)
                                                          (let ((_e2218022256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _tl2217322237_)))
                    (let ((_hd2218122259_ (##car _e2218022256_))
                          (_tl2218222261_ (##cdr _e2218022256_)))
                      ((lambda (_L22264_ _L22265_ _L22266_)
                         (if (gx#stx-keyword? _L22266_)
                             (let ((_kw22283_ (gx#stx-e _L22266_)))
                               (if (assq _kw22283_ _kwargs22136_)
                                   (gxc#raise-compile-error
                                    '"Illegal keyword lambda application; duplicate keyword"
                                    _stx22129_
                                    _kw22283_)
                                   (_lp22132_
                                    _L22264_
                                    _pargs22135_
                                    (cons (cons _kw22283_ _L22265_)
                                          _kwargs22136_))))
                             (_g2214022227_ _g2214322230_)))
                       _tl2218222261_
                       _hd2218122259_
                       _hd2217822251_)))
                  (_g2214022227_ _g2214322230_))
              (_g2214022227_ _g2214322230_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2214022227_ _g2214322230_))
                                          (_g2214022227_ _g2214322230_))
                                      (_g2214022227_ _g2214322230_))))
                              (_g2214022227_ _g2214322230_))))
                      (_g2214022227_ _g2214322230_))))
               (_g2213822327_
                (lambda (_g2214322288_)
                  (if (gx#stx-pair? _g2214322288_)
                      (let ((_e2215922290_ (gx#stx-e _g2214322288_)))
                        (let ((_hd2216022293_ (##car _e2215922290_))
                              (_tl2216122295_ (##cdr _e2215922290_)))
                          (if (gx#stx-pair? _hd2216022293_)
                              (let ((_e2216222298_ (gx#stx-e _hd2216022293_)))
                                (let ((_hd2216322301_ (##car _e2216222298_))
                                      (_tl2216422303_ (##cdr _e2216222298_)))
                                  (if (gx#identifier? _hd2216322301_)
                                      (if (gx#stx-eq? '%#quote _hd2216322301_)
                                          (if (gx#stx-pair? _tl2216422303_)
                                              (let ((_e2216522306_
                                                     (gx#stx-e
                                                      _tl2216422303_)))
                                                (let ((_hd2216622309_
                                                       (##car _e2216522306_))
                                                      (_tl2216722311_
                                                       (##cdr _e2216522306_)))
                                                  (if (gx#stx-datum?
                                                       _hd2216622309_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2216622309_)
                          '#!rest)
                  (if (gx#stx-null? _tl2216722311_)
                      ((lambda (_L22314_)
                         (values (foldl1 cons _L22314_ _pargs22135_)
                                 (reverse _kwargs22136_)))
                       _tl2216122295_)
                      (_g2213922285_ _g2214322288_))
                  (_g2213922285_ _g2214322288_))
              (_g2213922285_ _g2214322288_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2213922285_ _g2214322288_))
                                          (_g2213922285_ _g2214322288_))
                                      (_g2213922285_ _g2214322288_))))
                              (_g2213922285_ _g2214322288_))))
                      (_g2213922285_ _g2214322288_))))
               (_g2213722381_
                (lambda (_g2214322330_)
                  (if (gx#stx-pair? _g2214322330_)
                      (let ((_e2214622332_ (gx#stx-e _g2214322330_)))
                        (let ((_hd2214722335_ (##car _e2214622332_))
                              (_tl2214822337_ (##cdr _e2214622332_)))
                          (if (gx#stx-pair? _hd2214722335_)
                              (let ((_e2214922340_ (gx#stx-e _hd2214722335_)))
                                (let ((_hd2215022343_ (##car _e2214922340_))
                                      (_tl2215122345_ (##cdr _e2214922340_)))
                                  (if (gx#identifier? _hd2215022343_)
                                      (if (gx#stx-eq? '%#quote _hd2215022343_)
                                          (if (gx#stx-pair? _tl2215122345_)
                                              (let ((_e2215222348_
                                                     (gx#stx-e
                                                      _tl2215122345_)))
                                                (let ((_hd2215322351_
                                                       (##car _e2215222348_))
                                                      (_tl2215422353_
                                                       (##cdr _e2215222348_)))
                                                  (if (gx#stx-datum?
                                                       _hd2215322351_)
                                                      (if (equal? (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _hd2215322351_)
                          '#!key)
                  (if (gx#stx-null? _tl2215422353_)
                      (if (gx#stx-pair? _tl2214822337_)
                          (let ((_e2215522356_ (gx#stx-e _tl2214822337_)))
                            (let ((_hd2215622359_ (##car _e2215522356_))
                                  (_tl2215722361_ (##cdr _e2215522356_)))
                              ((lambda (_L22364_ _L22365_)
                                 (_lp22132_
                                  _L22364_
                                  (cons _L22365_ _pargs22135_)
                                  _kwargs22136_))
                               _tl2215722361_
                               _hd2215622359_)))
                          (_g2213822327_ _g2214322330_))
                      (_g2213822327_ _g2214322330_))
                  (_g2213822327_ _g2214322330_))
              (_g2213822327_ _g2214322330_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g2213822327_ _g2214322330_))
                                          (_g2213822327_ _g2214322330_))
                                      (_g2213822327_ _g2214322330_))))
                              (_g2213822327_ _g2214322330_))))
                      (_g2213822327_ _g2214322330_)))))
          (_g2213722381_ _rest22134_)))))
  (define gxc#!kw-lambda-primary::optimize-call
    (lambda (_self22125_ _stx22126_ _args22127_) (gxc#xform-call% _stx22126_)))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'optimize-call
   gxc#!kw-lambda-primary::optimize-call
   '#f)
  (define gxc#optimize-annotation%
    (lambda (_stx21924_)
      (let* ((_g2192721944_
              (lambda (_g2192821941_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2192821941_)))
             (_g2192621951_
              (lambda (_g2192821947_)
                ((lambda () (gxc#xform-begin-annotation% _stx21924_)))))
             (_g2192522000_
              (lambda (_g2192821954_)
                (if (gx#stx-pair? _g2192821954_)
                    (let ((_e2193121956_ (gx#stx-e _g2192821954_)))
                      (let ((_hd2193221959_ (##car _e2193121956_))
                            (_tl2193321961_ (##cdr _e2193121956_)))
                        (if (gx#stx-pair? _tl2193321961_)
                            (let ((_e2193421964_ (gx#stx-e _tl2193321961_)))
                              (let ((_hd2193521967_ (##car _e2193421964_))
                                    (_tl2193621969_ (##cdr _e2193421964_)))
                                (if (gx#stx-pair? _tl2193621969_)
                                    (let ((_e2193721972_
                                           (gx#stx-e _tl2193621969_)))
                                      (let ((_hd2193821975_
                                             (##car _e2193721972_))
                                            (_tl2193921977_
                                             (##cdr _e2193721972_)))
                                        (if (gx#stx-null? _tl2193921977_)
                                            ((lambda (_L21980_ _L21981_)
                                               (if (gx#identifier? _L21981_)
                                                   (let ((_$e21997_
                                                          (gx#stx-e _L21981_)))
                                                     (if (eq? '@match
                                                              _$e21997_)
                                                         (begin
                                                           (gxc#verbose
                                                            '"Optimizing match expansion")
                                                           (gxc#optimize-match
                                                            _L21980_))
                                                         (begin
                                                           (gxc#verbose
                                                            '"Ignoring uknown annotation "
                                                            (gx#stx-e
                                                             _L21981_))
                                                           (gxc#compile-e
                                                            _L21980_))))
                                                   (_g2192621951_
                                                    _g2192821954_)))
                                             _hd2193821975_
                                             _hd2193521967_)
                                            (_g2192621951_ _g2192821954_))))
                                    (_g2192621951_ _g2192821954_))))
                            (_g2192621951_ _g2192821954_))))
                    (_g2192621951_ _g2192821954_)))))
        (_g2192522000_ _stx21924_))))
  (define gxc#optimize-match
    (lambda (_stx21223_)
      (let* ((_g2122521255_
              (lambda (_g2122621252_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2122621252_)))
             (_g2122421921_
              (lambda (_g2122621258_)
                (if (gx#stx-pair? _g2122621258_)
                    (let ((_e2123021260_ (gx#stx-e _g2122621258_)))
                      (let ((_hd2123121263_ (##car _e2123021260_))
                            (_tl2123221265_ (##cdr _e2123021260_)))
                        (if (gx#identifier? _hd2123121263_)
                            (if (gx#stx-eq? '%#let-values _hd2123121263_)
                                (if (gx#stx-pair? _tl2123221265_)
                                    (let ((_e2123321268_
                                           (gx#stx-e _tl2123221265_)))
                                      (let ((_hd2123421271_
                                             (##car _e2123321268_))
                                            (_tl2123521273_
                                             (##cdr _e2123321268_)))
                                        (if (gx#stx-pair? _hd2123421271_)
                                            (let ((_e2123621276_
                                                   (gx#stx-e _hd2123421271_)))
                                              (let ((_hd2123721279_
                                                     (##car _e2123621276_))
                                                    (_tl2123821281_
                                                     (##cdr _e2123621276_)))
                                                (if (gx#stx-pair?
                                                     _hd2123721279_)
                                                    (let ((_e2123921284_
                                                           (gx#stx-e
                                                            _hd2123721279_)))
                                                      (let ((_hd2124021287_
                                                             (##car _e2123921284_))
                                                            (_tl2124121289_
                                                             (##cdr _e2123921284_)))
                                                        (if (gx#stx-pair?
                                                             _hd2124021287_)
                                                            (let ((_e2124221292_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd2124021287_)))
                      (let ((_hd2124321295_ (##car _e2124221292_))
                            (_tl2124421297_ (##cdr _e2124221292_)))
                        (if (gx#stx-null? _tl2124421297_)
                            (if (gx#stx-pair? _tl2124121289_)
                                (let ((_e2124521300_
                                       (gx#stx-e _tl2124121289_)))
                                  (let ((_hd2124621303_ (##car _e2124521300_))
                                        (_tl2124721305_ (##cdr _e2124521300_)))
                                    (if (gx#stx-null? _tl2124721305_)
                                        (if (gx#stx-null? _tl2123821281_)
                                            (if (gx#stx-pair? _tl2123521273_)
                                                (let ((_e2124821308_
                                                       (gx#stx-e
                                                        _tl2123521273_)))
                                                  (let ((_hd2124921311_
                                                         (##car _e2124821308_))
                                                        (_tl2125021313_
                                                         (##cdr _e2124821308_)))
                                                    (if (gx#stx-null?
                                                         _tl2125021313_)
                                                        ((lambda (_L21316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L21317_
                          _L21318_)
                   (let _lp21342_ ((_body21344_ _L21316_)
                                   (_negation21345_ (cons _L21318_ _L21317_))
                                   (_clauses21346_ '())
                                   (_konts21347_ '()))
                     (let* ((_g2135021390_
                             (lambda (_g2135121387_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g2135121387_)))
                            (_g2134921691_
                             (lambda (_g2135121393_)
                               (if (gx#stx-pair? _g2135121393_)
                                   (let ((_e2136521395_
                                          (gx#stx-e _g2135121393_)))
                                     (let ((_hd2136621398_
                                            (##car _e2136521395_))
                                           (_tl2136721400_
                                            (##cdr _e2136521395_)))
                                       (if (gx#identifier? _hd2136621398_)
                                           (if (gx#stx-eq?
                                                '%#let-values
                                                _hd2136621398_)
                                               (if (gx#stx-pair?
                                                    _tl2136721400_)
                                                   (let ((_e2136821403_
                                                          (gx#stx-e
                                                           _tl2136721400_)))
                                                     (let ((_hd2136921406_
                                                            (##car _e2136821403_))
                                                           (_tl2137021408_
                                                            (##cdr _e2136821403_)))
                                                       (if (gx#stx-pair?
                                                            _hd2136921406_)
                                                           (let ((_e2137121411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd2136921406_)))
                     (let ((_hd2137221414_ (##car _e2137121411_))
                           (_tl2137321416_ (##cdr _e2137121411_)))
                       (if (gx#stx-pair? _hd2137221414_)
                           (let ((_e2137421419_ (gx#stx-e _hd2137221414_)))
                             (let ((_hd2137521422_ (##car _e2137421419_))
                                   (_tl2137621424_ (##cdr _e2137421419_)))
                               (if (gx#stx-pair? _hd2137521422_)
                                   (let ((_e2137721427_
                                          (gx#stx-e _hd2137521422_)))
                                     (let ((_hd2137821430_
                                            (##car _e2137721427_))
                                           (_tl2137921432_
                                            (##cdr _e2137721427_)))
                                       (if (gx#stx-null? _tl2137921432_)
                                           (if (gx#stx-pair? _tl2137621424_)
                                               (let ((_e2138021435_
                                                      (gx#stx-e
                                                       _tl2137621424_)))
                                                 (let ((_hd2138121438_
                                                        (##car _e2138021435_))
                                                       (_tl2138221440_
                                                        (##cdr _e2138021435_)))
                                                   (if (gx#stx-null?
                                                        _tl2138221440_)
                                                       (if (gx#stx-null?
                                                            _tl2137321416_)
                                                           (if (gx#stx-pair?
                                                                _tl2137021408_)
                                                               (let ((_e2138321443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _tl2137021408_)))
                         (let ((_hd2138421446_ (##car _e2138321443_))
                               (_tl2138521448_ (##cdr _e2138321443_)))
                           (if (gx#stx-null? _tl2138521448_)
                               ((lambda (_L21451_ _L21452_ _L21453_)
                                  (let* ((_g2148021529_
                                          (lambda (_g2148121526_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax"
                                             _g2148121526_)))
                                         (_g2147921572_
                                          (lambda (_g2148121532_)
                                            (if (gx#stx-pair? _g2148121532_)
                                                (let ((_e2151621534_
                                                       (gx#stx-e
                                                        _g2148121532_)))
                                                  (let ((_hd2151721537_
                                                         (##car _e2151621534_))
                                                        (_tl2151821539_
                                                         (##cdr _e2151621534_)))
                                                    (if (gx#identifier?
                                                         _hd2151721537_)
                                                        (if (gx#stx-eq?
                                                             '%#begin-annotation
                                                             _hd2151721537_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2151821539_)
                        (let ((_e2151921542_ (gx#stx-e _tl2151821539_)))
                          (let ((_hd2152021545_ (##car _e2151921542_))
                                (_tl2152121547_ (##cdr _e2151921542_)))
                            (if (gx#identifier? _hd2152021545_)
                                (if (gx#stx-eq? '@match-else _hd2152021545_)
                                    (if (gx#stx-pair? _tl2152121547_)
                                        (let ((_e2152221550_
                                               (gx#stx-e _tl2152121547_)))
                                          (let ((_hd2152321553_
                                                 (##car _e2152221550_))
                                                (_tl2152421555_
                                                 (##cdr _e2152221550_)))
                                            (if (gx#stx-null? _tl2152421555_)
                                                ((lambda (_L21558_)
                                                   (_lp21342_
                                                    _L21451_
                                                    (cons _L21453_
                                                          (gxc#compile-e
                                                           _L21558_))
                                                    _clauses21346_
                                                    _konts21347_))
                                                 _hd2152321553_)
                                                (_g2148021529_
                                                 _g2148121532_))))
                                        (_g2148021529_ _g2148121532_))
                                    (_g2148021529_ _g2148121532_))
                                (_g2148021529_ _g2148121532_))))
                        (_g2148021529_ _g2148121532_))
                    (_g2148021529_ _g2148121532_))
                (_g2148021529_ _g2148121532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2148021529_
                                                 _g2148121532_))))
                                         (_g2147821688_
                                          (lambda (_g2148121575_)
                                            (if (gx#stx-pair? _g2148121575_)
                                                (let ((_e2148521577_
                                                       (gx#stx-e
                                                        _g2148121575_)))
                                                  (let ((_hd2148621580_
                                                         (##car _e2148521577_))
                                                        (_tl2148721582_
                                                         (##cdr _e2148521577_)))
                                                    (if (gx#identifier?
                                                         _hd2148621580_)
                                                        (if (gx#stx-eq?
                                                             '%#lambda
                                                             _hd2148621580_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2148721582_)
                        (let ((_e2148821585_ (gx#stx-e _tl2148721582_)))
                          (let ((_hd2148921588_ (##car _e2148821585_))
                                (_tl2149021590_ (##cdr _e2148821585_)))
                            (if (gx#stx-null? _hd2148921588_)
                                (if (gx#stx-pair? _tl2149021590_)
                                    (let ((_e2149121593_
                                           (gx#stx-e _tl2149021590_)))
                                      (let ((_hd2149221596_
                                             (##car _e2149121593_))
                                            (_tl2149321598_
                                             (##cdr _e2149121593_)))
                                        (if (gx#stx-pair? _hd2149221596_)
                                            (let ((_e2149421601_
                                                   (gx#stx-e _hd2149221596_)))
                                              (let ((_hd2149521604_
                                                     (##car _e2149421601_))
                                                    (_tl2149621606_
                                                     (##cdr _e2149421601_)))
                                                (if (gx#identifier?
                                                     _hd2149521604_)
                                                    (if (gx#stx-eq?
                                                         '%#let-values
                                                         _hd2149521604_)
                                                        (if (gx#stx-pair?
                                                             _tl2149621606_)
                                                            (let ((_e2149721609_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2149621606_)))
                      (let ((_hd2149821612_ (##car _e2149721609_))
                            (_tl2149921614_ (##cdr _e2149721609_)))
                        (if (gx#stx-pair? _hd2149821612_)
                            (let ((_e2150021617_ (gx#stx-e _hd2149821612_)))
                              (let ((_hd2150121620_ (##car _e2150021617_))
                                    (_tl2150221622_ (##cdr _e2150021617_)))
                                (if (gx#stx-pair? _hd2150121620_)
                                    (let ((_e2150321625_
                                           (gx#stx-e _hd2150121620_)))
                                      (let ((_hd2150421628_
                                             (##car _e2150321625_))
                                            (_tl2150521630_
                                             (##cdr _e2150321625_)))
                                        (if (gx#stx-pair? _hd2150421628_)
                                            (let ((_e2150621633_
                                                   (gx#stx-e _hd2150421628_)))
                                              (let ((_hd2150721636_
                                                     (##car _e2150621633_))
                                                    (_tl2150821638_
                                                     (##cdr _e2150621633_)))
                                                (if (gx#stx-null?
                                                     _tl2150821638_)
                                                    (if (gx#stx-pair?
                                                         _tl2150521630_)
                                                        (let ((_e2150921641_
                                                               (gx#stx-e
                                                                _tl2150521630_)))
                                                          (let ((_hd2151021644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2150921641_))
                        (_tl2151121646_ (##cdr _e2150921641_)))
                    (if (gx#stx-null? _tl2151121646_)
                        (if (gx#stx-null? _tl2150221622_)
                            (if (gx#stx-pair? _tl2149921614_)
                                (let ((_e2151221649_
                                       (gx#stx-e _tl2149921614_)))
                                  (let ((_hd2151321652_ (##car _e2151221649_))
                                        (_tl2151421654_ (##cdr _e2151221649_)))
                                    (if (gx#stx-null? _tl2151421654_)
                                        (if (gx#stx-null? _tl2149321598_)
                                            ((lambda (_L21657_
                                                      _L21658_
                                                      _L21659_)
                                               (_lp21342_
                                                _L21451_
                                                _negation21345_
                                                (cons (cons _L21453_
                                                            (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '%#lambda)
                          (cons '() (cons _L21657_ '()))))
              _clauses21346_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _L21659_
                                                            (gxc#compile-e
                                                             _L21658_))
                                                      _konts21347_)))
                                             _hd2151321652_
                                             _hd2151021644_
                                             _hd2150721636_)
                                            (_g2147921572_ _g2148121575_))
                                        (_g2147921572_ _g2148121575_))))
                                (_g2147921572_ _g2148121575_))
                            (_g2147921572_ _g2148121575_))
                        (_g2147921572_ _g2148121575_))))
                (_g2147921572_ _g2148121575_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2147921572_
                                                     _g2148121575_))))
                                            (_g2147921572_ _g2148121575_))))
                                    (_g2147921572_ _g2148121575_))))
                            (_g2147921572_ _g2148121575_))))
                    (_g2147921572_ _g2148121575_))
                (_g2147921572_ _g2148121575_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2147921572_
                                                     _g2148121575_))))
                                            (_g2147921572_ _g2148121575_))))
                                    (_g2147921572_ _g2148121575_))
                                (_g2147921572_ _g2148121575_))))
                        (_g2147921572_ _g2148121575_))
                    (_g2147921572_ _g2148121575_))
                (_g2147921572_ _g2148121575_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2147921572_
                                                 _g2148121575_)))))
                                    (_g2147821688_ _L21452_)))
                                _hd2138421446_
                                _hd2138121438_
                                _hd2137821430_)
                               (_g2135021390_ _g2135121393_))))
                       (_g2135021390_ _g2135121393_))
                   (_g2135021390_ _g2135121393_))
               (_g2135021390_ _g2135121393_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2135021390_ _g2135121393_))
                                           (_g2135021390_ _g2135121393_))))
                                   (_g2135021390_ _g2135121393_))))
                           (_g2135021390_ _g2135121393_))))
                   (_g2135021390_ _g2135121393_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2135021390_
                                                    _g2135121393_))
                                               (_g2135021390_ _g2135121393_))
                                           (_g2135021390_ _g2135121393_))))
                                   (_g2135021390_ _g2135121393_))))
                            (_g2134821918_
                             (lambda (_g2135121694_)
                               (if (gx#stx-pair? _g2135121694_)
                                   (let ((_e2135321696_
                                          (gx#stx-e _g2135121694_)))
                                     (let ((_hd2135421699_
                                            (##car _e2135321696_))
                                           (_tl2135521701_
                                            (##cdr _e2135321696_)))
                                       (if (gx#identifier? _hd2135421699_)
                                           (if (gx#stx-eq?
                                                '%#begin-annotation
                                                _hd2135421699_)
                                               (if (gx#stx-pair?
                                                    _tl2135521701_)
                                                   (let ((_e2135621704_
                                                          (gx#stx-e
                                                           _tl2135521701_)))
                                                     (let ((_hd2135721707_
                                                            (##car _e2135621704_))
                                                           (_tl2135821709_
                                                            (##cdr _e2135621704_)))
                                                       (if (gx#identifier?
                                                            _hd2135721707_)
                                                           (if (gx#stx-eq?
                                                                '@match-body
                                                                _hd2135721707_)
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tl2135821709_)
                           (let ((_e2135921712_ (gx#stx-e _tl2135821709_)))
                             (let ((_hd2136021715_ (##car _e2135921712_))
                                   (_tl2136121717_ (##cdr _e2135921712_)))
                               (if (gx#stx-null? _tl2136121717_)
                                   ((lambda (_L21720_)
                                      (let* ((_g2173421764_
                                              (lambda (_g2173521761_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _g2173521761_)))
                                             (_g2173321799_
                                              (lambda (_g2173521767_)
                                                ((lambda ()
                                                   (if (null? _clauses21346_)
                                                       (let* ((_negation2177021777_
                                                               _negation21345_)
                                                              (_E2177221781_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _negation2177021777_)))
                      (_K2177321787_
                       (lambda (_negate21784_ _E21785_)
                         (gxc#xform-wrap-source
                          (cons '%#let-values
                                (cons (cons (cons (cons _E21785_ '())
                                                  (cons _negate21784_ '()))
                                            '())
                                      (cons _L21720_ '())))
                          _stx21223_))))
                 (if (##pair? _negation2177021777_)
                     (let ((_hd2177421790_ (##car _negation2177021777_))
                           (_tl2177521792_ (##cdr _negation2177021777_)))
                       (let* ((_E21795_ _hd2177421790_)
                              (_negate21797_ _tl2177521792_))
                         (_K2177321787_ _negate21797_ _E21795_)))
                     (_E2177221781_)))
               (_g2173421764_ _g2173521767_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_g2173221915_
                                              (lambda (_g2173521802_)
                                                (if (gx#stx-pair?
                                                     _g2173521802_)
                                                    (let ((_e2173921804_
                                                           (gx#stx-e
                                                            _g2173521802_)))
                                                      (let ((_hd2174021807_
                                                             (##car _e2173921804_))
                                                            (_tl2174121809_
                                                             (##cdr _e2173921804_)))
                                                        (if (gx#identifier?
                                                             _hd2174021807_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#let-values
                         _hd2174021807_)
                        (if (gx#stx-pair? _tl2174121809_)
                            (let ((_e2174221812_ (gx#stx-e _tl2174121809_)))
                              (let ((_hd2174321815_ (##car _e2174221812_))
                                    (_tl2174421817_ (##cdr _e2174221812_)))
                                (if (gx#stx-pair? _hd2174321815_)
                                    (let ((_e2174521820_
                                           (gx#stx-e _hd2174321815_)))
                                      (let ((_hd2174621823_
                                             (##car _e2174521820_))
                                            (_tl2174721825_
                                             (##cdr _e2174521820_)))
                                        (if (gx#stx-pair? _hd2174621823_)
                                            (let ((_e2174821828_
                                                   (gx#stx-e _hd2174621823_)))
                                              (let ((_hd2174921831_
                                                     (##car _e2174821828_))
                                                    (_tl2175021833_
                                                     (##cdr _e2174821828_)))
                                                (if (gx#stx-pair?
                                                     _hd2174921831_)
                                                    (let ((_e2175121836_
                                                           (gx#stx-e
                                                            _hd2174921831_)))
                                                      (let ((_hd2175221839_
                                                             (##car _e2175121836_))
                                                            (_tl2175321841_
                                                             (##cdr _e2175121836_)))
                                                        (if (gx#stx-null?
                                                             _tl2175321841_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl2175021833_)
                        (let ((_e2175421844_ (gx#stx-e _tl2175021833_)))
                          (let ((_hd2175521847_ (##car _e2175421844_))
                                (_tl2175621849_ (##cdr _e2175421844_)))
                            (if (gx#stx-null? _tl2175621849_)
                                (if (gx#stx-null? _tl2174721825_)
                                    (if (gx#stx-pair? _tl2174421817_)
                                        (let ((_e2175721852_
                                               (gx#stx-e _tl2174421817_)))
                                          (let ((_hd2175821855_
                                                 (##car _e2175721852_))
                                                (_tl2175921857_
                                                 (##cdr _e2175721852_)))
                                            (if (gx#stx-null? _tl2175921857_)
                                                ((lambda (_L21860_
                                                          _L21861_
                                                          _L21862_)
                                                   (if (null? _clauses21346_)
                                                       (let* ((_negation2188621893_
                                                               _negation21345_)
                                                              (_E2188821897_
                                                               (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (error '"No clause matching" _negation2188621893_)))
                      (_K2188921903_
                       (lambda (_negate21900_ _E21901_)
                         (gxc#xform-wrap-source
                          (cons '%#let-values
                                (cons (cons (cons (cons _E21901_ '())
                                                  (cons _negate21900_ '()))
                                            '())
                                      (cons (cons '%#let-values
                                                  (cons (cons (cons (cons _L21862_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (gxc#compile-e _L21861_) '()))
                      '())
                (cons _L21860_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))
                          _stx21223_))))
                 (if (##pair? _negation2188621893_)
                     (let ((_hd2189021906_ (##car _negation2188621893_))
                           (_tl2189121908_ (##cdr _negation2188621893_)))
                       (let* ((_E21911_ _hd2189021906_)
                              (_negate21913_ _tl2189121908_))
                         (_K2188921903_ _negate21913_ _E21911_)))
                     (_E2188821897_)))
               (gxc#optimize-match-body
                _stx21223_
                _negation21345_
                (cons (cons '#f
                            (cons (gx#datum->syntax__0 '#f '%#lambda)
                                  (cons '() (cons _L21860_ '()))))
                      _clauses21346_)
                (cons (cons _L21862_ (gxc#compile-e _L21861_)) _konts21347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd2175821855_
                                                 _hd2175521847_
                                                 _hd2175221839_)
                                                (_g2173321799_
                                                 _g2173521802_))))
                                        (_g2173321799_ _g2173521802_))
                                    (_g2173321799_ _g2173521802_))
                                (_g2173321799_ _g2173521802_))))
                        (_g2173321799_ _g2173521802_))
                    (_g2173321799_ _g2173521802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2173321799_
                                                     _g2173521802_))))
                                            (_g2173321799_ _g2173521802_))))
                                    (_g2173321799_ _g2173521802_))))
                            (_g2173321799_ _g2173521802_))
                        (_g2173321799_ _g2173521802_))
                    (_g2173321799_ _g2173521802_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2173321799_
                                                     _g2173521802_)))))
                                        (_g2173221915_ _L21720_)))
                                    _hd2136021715_)
                                   (_g2134921691_ _g2135121694_))))
                           (_g2134921691_ _g2135121694_))
                       (_g2134921691_ _g2135121694_))
                   (_g2134921691_ _g2135121694_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2134921691_
                                                    _g2135121694_))
                                               (_g2134921691_ _g2135121694_))
                                           (_g2134921691_ _g2135121694_))))
                                   (_g2134921691_ _g2135121694_)))))
                       (_g2134821918_ _body21344_))))
                 _hd2124921311_
                 _hd2124621303_
                 _hd2124321295_)
                (_g2122521255_ _g2122621258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2122521255_ _g2122621258_))
                                            (_g2122521255_ _g2122621258_))
                                        (_g2122521255_ _g2122621258_))))
                                (_g2122521255_ _g2122621258_))
                            (_g2122521255_ _g2122621258_))))
                    (_g2122521255_ _g2122621258_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2122521255_
                                                     _g2122621258_))))
                                            (_g2122521255_ _g2122621258_))))
                                    (_g2122521255_ _g2122621258_))
                                (_g2122521255_ _g2122621258_))
                            (_g2122521255_ _g2122621258_))))
                    (_g2122521255_ _g2122621258_)))))
        (_g2122421921_ _stx21223_))))
  (define gxc#optimize-match-body
    (lambda (_stx20924_ _negation20925_ _clauses20926_ _konts20927_)
      (letrec ((_push-variables20929_
                (lambda (_clause21176_ _kont21177_)
                  (let ((_clause2117821189_ _clause21176_)
                        (_kont2117921191_ _kont21177_))
                    (let* ((_E2118121195_
                            (lambda ()
                              (error '"No clause matching"
                                     _clause2117821189_
                                     _kont2117921191_)))
                           (_K2118221211_
                            (lambda (_clause-lambda21198_ _clause-name21199_)
                              (let ((_K2118321203_
                                     (lambda (_K21201_)
                                       (cons _clause-name21199_
                                             (gxc#apply-push-match-vars
                                              _clause-lambda21198_
                                              '()
                                              _K21201_)))))
                                (if (##pair? _kont2117921191_)
                                    (let* ((_hd2118421206_
                                            (##car _kont2117921191_))
                                           (_K21209_ _hd2118421206_))
                                      (_K2118321203_ _K21209_))
                                    (_E2118121195_))))))
                      (if (##pair? _clause2117821189_)
                          (let ((_hd2118621214_ (##car _clause2117821189_))
                                (_tl2118721216_ (##cdr _clause2117821189_)))
                            (let* ((_clause-name21219_ _hd2118621214_)
                                   (_clause-lambda21221_ _tl2118721216_))
                              (_K2118221211_
                               _clause-lambda21221_
                               _clause-name21219_)))
                          (_E2118121195_))))))
               (_start-match20930_
                (lambda (_kont21110_)
                  (let* ((_g2111221128_
                          (lambda (_g2111321125_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2111321125_)))
                         (_g2111121173_
                          (lambda (_g2111321131_)
                            (if (gx#stx-pair? _g2111321131_)
                                (let ((_e2111521133_ (gx#stx-e _g2111321131_)))
                                  (let ((_hd2111621136_ (##car _e2111521133_))
                                        (_tl2111721138_ (##cdr _e2111521133_)))
                                    (if (gx#identifier? _hd2111621136_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd2111621136_)
                                            (if (gx#stx-pair? _tl2111721138_)
                                                (let ((_e2111821141_
                                                       (gx#stx-e
                                                        _tl2111721138_)))
                                                  (let ((_hd2111921144_
                                                         (##car _e2111821141_))
                                                        (_tl2112021146_
                                                         (##cdr _e2111821141_)))
                                                    (if (gx#stx-null?
                                                         _hd2111921144_)
                                                        (if (gx#stx-pair?
                                                             _tl2112021146_)
                                                            (let ((_e2112121149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2112021146_)))
                      (let ((_hd2112221152_ (##car _e2112121149_))
                            (_tl2112321154_ (##cdr _e2112121149_)))
                        (if (gx#stx-null? _tl2112321154_)
                            ((lambda (_L21157_) _L21157_) _hd2112221152_)
                            (_g2111221128_ _g2111321131_))))
                    (_g2111221128_ _g2111321131_))
                (_g2111221128_ _g2111321131_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2111221128_ _g2111321131_))
                                            (_g2111221128_ _g2111321131_))
                                        (_g2111221128_ _g2111321131_))))
                                (_g2111221128_ _g2111321131_)))))
                    (_g2111121173_ _kont21110_))))
               (_match-body20931_
                (lambda (_blocks21007_)
                  (let* ((_blocks2100821017_ _blocks21007_)
                         (_E2101021021_
                          (lambda ()
                            (error '"No clause matching" _blocks2100821017_)))
                         (_K2101121093_
                          (lambda (_rest21024_ _start21025_)
                            (let _lp21027_ ((_rest21029_ _rest21024_)
                                            (_body21030_
                                             (_start-match20930_
                                              _start21025_)))
                              (let* ((_rest2103121039_ _rest21029_)
                                     (_else2103321047_ (lambda () _body21030_))
                                     (_K2103521081_
                                      (lambda (_rest21050_ _block21051_)
                                        (let* ((_block2105221059_ _block21051_)
                                               (_E2105421063_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _block2105221059_)))
                                               (_K2105521069_
                                                (lambda (_kont21066_ _K21067_)
                                                  (_lp21027_
                                                   _rest21050_
                                                   (cons '%#let-values
                                                         (cons (cons (cons (cons _K21067_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         '())
                                   (cons _kont21066_ '()))
                             '())
                       (cons _body21030_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _block2105221059_)
                                              (let ((_hd2105621072_
                                                     (##car _block2105221059_))
                                                    (_tl2105721074_
                                                     (##cdr _block2105221059_)))
                                                (let* ((_K21077_
                                                        _hd2105621072_)
                                                       (_kont21079_
                                                        _tl2105721074_))
                                                  (_K2105521069_
                                                   _kont21079_
                                                   _K21077_)))
                                              (_E2105421063_))))))
                                (if (##pair? _rest2103121039_)
                                    (let ((_hd2103621084_
                                           (##car _rest2103121039_))
                                          (_tl2103721086_
                                           (##cdr _rest2103121039_)))
                                      (let* ((_block21089_ _hd2103621084_)
                                             (_rest21091_ _tl2103721086_))
                                        (_K2103521081_
                                         _rest21091_
                                         _block21089_)))
                                    (_else2103321047_)))))))
                    (if (##pair? _blocks2100821017_)
                        (let ((_hd2101221096_ (##car _blocks2100821017_))
                              (_tl2101321098_ (##cdr _blocks2100821017_)))
                          (if (##pair? _hd2101221096_)
                              (let ((_hd2101421101_ (##car _hd2101221096_))
                                    (_tl2101521103_ (##cdr _hd2101221096_)))
                                (if (##eq? _hd2101421101_ '#f)
                                    (let* ((_start21106_ _tl2101521103_)
                                           (_rest21108_ _tl2101321098_))
                                      (_K2101121093_ _rest21108_ _start21106_))
                                    (_E2101021021_)))
                              (_E2101021021_)))
                        (_E2101021021_))))))
        (call-with-parameters
         (lambda ()
           (let* ((_clauses20934_
                   (map _push-variables20929_ _clauses20926_ _konts20927_))
                  (_blocks20936_
                   (gxc#optimize-match-basic-blocks _clauses20934_))
                  (_blocks20938_
                   (gxc#optimize-match-fold-basic-blocks _blocks20936_))
                  (_body20940_ (_match-body20931_ _blocks20938_))
                  (_bind20974_
                   (map (lambda (_e2094120943_)
                          (let* ((_g2094520952_ _e2094120943_)
                                 (_E2094720956_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _g2094520952_)))
                                 (_K2094820962_
                                  (lambda (_kont20959_ _K20960_)
                                    (cons (cons _K20960_ '())
                                          (cons _kont20959_ '())))))
                            (if (##pair? _g2094520952_)
                                (let ((_hd2094920965_ (##car _g2094520952_))
                                      (_tl2095020967_ (##cdr _g2094520952_)))
                                  (let* ((_K20970_ _hd2094920965_)
                                         (_kont20972_ _tl2095020967_))
                                    (_K2094820962_ _kont20972_ _K20970_)))
                                (_E2094720956_))))
                        _konts20927_))
                  (_negate21004_
                   (let* ((_negation2097520982_ _negation20925_)
                          (_E2097720986_
                           (lambda ()
                             (error '"No clause matching"
                                    _negation2097520982_)))
                          (_K2097820992_
                           (lambda (_kont20989_ _K20990_)
                             (cons (cons _K20990_ '())
                                   (cons _kont20989_ '())))))
                     (if (##pair? _negation2097520982_)
                         (let ((_hd2097920995_ (##car _negation2097520982_))
                               (_tl2098020997_ (##cdr _negation2097520982_)))
                           (let* ((_K21000_ _hd2097920995_)
                                  (_kont21002_ _tl2098020997_))
                             (_K2097820992_ _kont21002_ _K21000_)))
                         (_E2097720986_)))))
             (gxc#xform-wrap-source
              (cons '%#let-values
                    (cons (cons _negate21004_ '())
                          (cons (cons '%#let-values
                                      (cons _bind20974_
                                            (cons _body20940_ '())))
                                '())))
              _stx20924_)))
         gx#current-expander-context
         (let ((__obj34832 (make-object gx#local-context::t '5)))
           (begin (gx#local-context:::init!__0 __obj34832) __obj34832))))))
  (define gxc#optimize-match-basic-blocks
    (lambda (_clauses20884_)
      (let _lp20886_ ((_rest20888_ _clauses20884_) (_blocks20889_ '()))
        (let* ((_rest2089020898_ _rest20888_)
               (_else2089220906_ (lambda () (reverse _blocks20889_)))
               (_K2089420912_
                (lambda (_rest20909_ _clause20910_)
                  (_lp20886_
                   _rest20909_
                   (gxc#optimize-match-lift-basic-blocks
                    _clause20910_
                    _blocks20889_)))))
          (if (##pair? _rest2089020898_)
              (let ((_hd2089520915_ (##car _rest2089020898_))
                    (_tl2089620917_ (##cdr _rest2089020898_)))
                (let* ((_clause20920_ _hd2089520915_)
                       (_rest20922_ _tl2089620917_))
                  (_K2089420912_ _rest20922_ _clause20920_)))
              (_else2089220906_))))))
  (define gxc#optimize-match-lift-basic-blocks
    (lambda (_clause20135_ _blocks20136_)
      (letrec ((_bind->args20138_
                (lambda (_bind20879_)
                  (foldl1 (lambda (_b20881_ _r20882_)
                            (cons (cons '%#ref (cons (car _b20881_) '()))
                                  _r20882_))
                          '()
                          _bind20879_)))
               (_create-block20139_
                (lambda (_body20828_ _let-bind20829_ _bind20830_ _assert20831_)
                  (let* ((_id20833_ (make-symbol (gensym '__match)))
                         (_id20835_ (gx#core-quote-syntax__0 _id20833_))
                         (_g34912_ (gx#core-bind-runtime!__0 _id20835_))
                         (_block20838_
                          (cons _id20835_
                                (cons _body20828_
                                      (cons _bind20830_
                                            (cons _assert20831_ '())))))
                         (_continue20840_
                          (cons '%#call
                                (cons (cons '%#ref (cons _id20835_ '()))
                                      (_bind->args20138_ _bind20830_))))
                         (_continue20876_
                          (if (null? _let-bind20829_)
                              _continue20840_
                              (let ((_locals20874_
                                     (map (lambda (_e2084120843_)
                                            (let* ((_g2084520852_
                                                    _e2084120843_)
                                                   (_E2084720856_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _g2084520852_)))
                                                   (_K2084820862_
                                                    (lambda (_expr20859_
                                                             _id20860_)
                                                      (cons (cons _id20860_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr20859_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (##pair? _g2084520852_)
                                                  (let ((_hd2084920865_
                                                         (##car _g2084520852_))
                                                        (_tl2085020867_
                                                         (##cdr _g2084520852_)))
                                                    (let* ((_id20870_
                                                            _hd2084920865_)
                                                           (_expr20872_
                                                            _tl2085020867_))
                                                      (_K2084820862_
                                                       _expr20872_
                                                       _id20870_)))
                                                  (_E2084720856_))))
                                          _let-bind20829_)))
                                (cons '%#let-values
                                      (cons _locals20874_
                                            (cons _continue20840_ '())))))))
                    (values _continue20876_ _block20838_))))
               (_basic-block20140_
                (lambda (_body20321_ _bind20322_ _assert20323_)
                  (let* ((_g2032620347_
                          (lambda (_g2032720344_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2032720344_)))
                         (_g2032520354_
                          (lambda (_g2032720350_)
                            ((lambda () (values _body20321_ '())))))
                         (_g2032420825_
                          (lambda (_g2032720357_)
                            (if (gx#stx-pair? _g2032720357_)
                                (let ((_e2033120359_ (gx#stx-e _g2032720357_)))
                                  (let ((_hd2033220362_ (##car _e2033120359_))
                                        (_tl2033320364_ (##cdr _e2033120359_)))
                                    (if (gx#identifier? _hd2033220362_)
                                        (if (gx#stx-eq? '%#if _hd2033220362_)
                                            (if (gx#stx-pair? _tl2033320364_)
                                                (let ((_e2033420367_
                                                       (gx#stx-e
                                                        _tl2033320364_)))
                                                  (let ((_hd2033520370_
                                                         (##car _e2033420367_))
                                                        (_tl2033620372_
                                                         (##cdr _e2033420367_)))
                                                    (if (gx#stx-pair?
                                                         _tl2033620372_)
                                                        (let ((_e2033720375_
                                                               (gx#stx-e
                                                                _tl2033620372_)))
                                                          (let ((_hd2033820378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e2033720375_))
                        (_tl2033920380_ (##cdr _e2033720375_)))
                    (if (gx#stx-pair? _tl2033920380_)
                        (let ((_e2034020383_ (gx#stx-e _tl2033920380_)))
                          (let ((_hd2034120386_ (##car _e2034020383_))
                                (_tl2034220388_ (##cdr _e2034020383_)))
                            (if (gx#stx-null? _tl2034220388_)
                                ((lambda (_L20391_ _L20392_ _L20393_)
                                   (let* ((_g2041420483_
                                           (lambda (_g2041520480_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g2041520480_)))
                                          (_g2041320531_
                                           (lambda (_g2041520486_)
                                             ((lambda ()
                                                (let ((_g34913_
                                                       (_create-block20139_
                                                        _L20392_
                                                        '()
                                                        _bind20322_
                                                        (cons (cons _L20393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#t)
                      _assert20323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (let ((_g34914_
                                                           (if (##values?
                                                                _g34913_)
                                                               (##vector-length
                                                                _g34913_)
                                                               1)))
                                                      (if (not (##fx= _g34914_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                  (error "Context expects 2 values" _g34914_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_k-continue20490_
                                                           (##vector-ref
                                                            _g34913_
                                                            0))
                                                          (_k-block20491_
                                                           (##vector-ref
                                                            _g34913_
                                                            1)))
                                                      (let* ((_g2049420503_
                                                              (lambda (_g2049520500_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g2049520500_)))
                     (_g2049320513_
                      (lambda (_g2049520506_)
                        ((lambda ()
                           (let ((_g34915_
                                  (_create-block20139_
                                   _L20391_
                                   '()
                                   _bind20322_
                                   (cons (cons _L20393_ '#f) _assert20323_))))
                             (begin
                               (let ((_g34916_
                                      (if (##values? _g34915_)
                                          (##vector-length _g34915_)
                                          1)))
                                 (if (not (##fx= _g34916_ 2))
                                     (error "Context expects 2 values"
                                            _g34916_)))
                               (let ((_e-continue20510_
                                      (##vector-ref _g34915_ 0))
                                     (_e-block20511_
                                      (##vector-ref _g34915_ 1)))
                                 (values (cons '%#if
                                               (cons _L20393_
                                                     (cons _k-continue20490_
                                                           (cons _e-continue20510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons _k-block20491_
                                               (cons _e-block20511_
                                                     '()))))))))))
                     (_g2049220528_
                      (lambda (_g2049520516_)
                        (if (gx#stx-pair? _g2049520516_)
                            (let ((_e2049620518_ (gx#stx-e _g2049520516_)))
                              (let ((_hd2049720521_ (##car _e2049620518_))
                                    (_tl2049820523_ (##cdr _e2049620518_)))
                                (if (gx#identifier? _hd2049720521_)
                                    (if (gx#stx-eq? '%#call _hd2049720521_)
                                        ((lambda ()
                                           (values (cons '%#if
                                                         (cons _L20393_
                                                               (cons _k-continue20490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _L20391_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _k-block20491_ '()))))
                                        (_g2049320513_ _g2049520516_))
                                    (_g2049320513_ _g2049520516_))))
                            (_g2049320513_ _g2049520516_)))))
                (_g2049220528_ _L20391_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2041220693_
                                           (lambda (_g2041520534_)
                                             (if (gx#stx-pair? _g2041520534_)
                                                 (let ((_e2045020536_
                                                        (gx#stx-e
                                                         _g2041520534_)))
                                                   (let ((_hd2045120539_
                                                          (##car _e2045020536_))
                                                         (_tl2045220541_
                                                          (##cdr _e2045020536_)))
                                                     (if (gx#identifier?
                                                          _hd2045120539_)
                                                         (if (gx#stx-eq?
                                                              '%#let-values
                                                              _hd2045120539_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2045220541_)
                         (let ((_e2045320544_ (gx#stx-e _tl2045220541_)))
                           (let ((_hd2045420547_ (##car _e2045320544_))
                                 (_tl2045520549_ (##cdr _e2045320544_)))
                             (if (gx#stx-pair/null? _hd2045420547_)
                                 (if (fx>= (gx#stx-length _hd2045420547_) '0)
                                     (let ((_g34917_
                                            (gx#syntax-split-splice
                                             _hd2045420547_
                                             '0)))
                                       (begin
                                         (let ((_g34918_
                                                (if (##values? _g34917_)
                                                    (##vector-length _g34917_)
                                                    1)))
                                           (if (not (##fx= _g34918_ 2))
                                               (error "Context expects 2 values"
                                                      _g34918_)))
                                         (let ((_target2045620552_
                                                (##vector-ref _g34917_ 0))
                                               (_tl2045820554_
                                                (##vector-ref _g34917_ 1)))
                                           (if (gx#stx-null? _tl2045820554_)
                                               (letrec ((_loop2045920557_
                                                         (lambda (_hd2045720560_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _expr2046320562_
                          _id2046420564_)
                   (if (gx#stx-pair? _hd2045720560_)
                       (let ((_e2046020567_ (gx#stx-e _hd2045720560_)))
                         (let ((_lp-hd2046120570_ (##car _e2046020567_))
                               (_lp-tl2046220572_ (##cdr _e2046020567_)))
                           (if (gx#stx-pair? _lp-hd2046120570_)
                               (let ((_e2046720575_
                                      (gx#stx-e _lp-hd2046120570_)))
                                 (let ((_hd2046820578_ (##car _e2046720575_))
                                       (_tl2046920580_ (##cdr _e2046720575_)))
                                   (if (gx#stx-pair? _hd2046820578_)
                                       (let ((_e2047020583_
                                              (gx#stx-e _hd2046820578_)))
                                         (let ((_hd2047120586_
                                                (##car _e2047020583_))
                                               (_tl2047220588_
                                                (##cdr _e2047020583_)))
                                           (if (gx#stx-null? _tl2047220588_)
                                               (if (gx#stx-pair?
                                                    _tl2046920580_)
                                                   (let ((_e2047320591_
                                                          (gx#stx-e
                                                           _tl2046920580_)))
                                                     (let ((_hd2047420594_
                                                            (##car _e2047320591_))
                                                           (_tl2047520596_
                                                            (##cdr _e2047320591_)))
                                                       (if (gx#stx-null?
                                                            _tl2047520596_)
                                                           (_loop2045920557_
                                                            _lp-tl2046220572_
                                                            (cons _hd2047420594_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _expr2046320562_)
                    (cons _hd2047120586_ _id2046420564_))
                   (_g2041320531_ _g2041520534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2041320531_
                                                    _g2041520534_))
                                               (_g2041320531_ _g2041520534_))))
                                       (_g2041320531_ _g2041520534_))))
                               (_g2041320531_ _g2041520534_))))
                       (let ((_expr2046520599_ (reverse _expr2046320562_))
                             (_id2046620601_ (reverse _id2046420564_)))
                         (if (gx#stx-pair? _tl2045520549_)
                             (let ((_e2047620604_ (gx#stx-e _tl2045520549_)))
                               (let ((_hd2047720607_ (##car _e2047620604_))
                                     (_tl2047820609_ (##cdr _e2047620604_)))
                                 (if (gx#stx-null? _tl2047820609_)
                                     ((lambda (_L20612_ _L20613_ _L20614_)
                                        (let* ((_let-bind20649_
                                                (map cons
                                                     (begin
                                                       '#!void
                                                       (foldr1 (lambda (_g2063420637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2063520639_)
                         (cons _g2063420637_ _g2063520639_))
                       '()
                       _L20614_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       '#!void
                                                       (foldr1 (lambda (_g2064120644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2064220646_)
                         (cons _g2064120644_ _g2064220646_))
                       '()
                       _L20613_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g34919_
                                                (_create-block20139_
                                                 _L20612_
                                                 _let-bind20649_
                                                 (foldl1 cons
                                                         _bind20322_
                                                         _let-bind20649_)
                                                 (cons (cons _L20393_ '#t)
                                                       _assert20323_))))
                                          (begin
                                            (let ((_g34920_
                                                   (if (##values? _g34919_)
                                                       (##vector-length
                                                        _g34919_)
                                                       1)))
                                              (if (not (##fx= _g34920_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34920_)))
                                            (let ((_k-continue20651_
                                                   (##vector-ref _g34919_ 0))
                                                  (_k-block20652_
                                                   (##vector-ref _g34919_ 1)))
                                              (let ()
                                                (let* ((_g2065620665_
                                                        (lambda (_g2065720662_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g2065720662_)))
                                                       (_g2065520675_
                                                        (lambda (_g2065720668_)
                                                          ((lambda ()
                                                             (let ((_g34921_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (_create-block20139_
                             _L20391_
                             '()
                             _bind20322_
                             (cons (cons _L20393_ '#f) _assert20323_))))
                       (begin
                         (let ((_g34922_
                                (if (##values? _g34921_)
                                    (##vector-length _g34921_)
                                    1)))
                           (if (not (##fx= _g34922_ 2))
                               (error "Context expects 2 values" _g34922_)))
                         (let ((_e-continue20672_ (##vector-ref _g34921_ 0))
                               (_e-block20673_ (##vector-ref _g34921_ 1)))
                           (values (cons '%#if
                                         (cons _L20393_
                                               (cons _k-continue20651_
                                                     (cons _e-continue20672_
                                                           '()))))
                                   (cons _k-block20652_
                                         (cons _e-block20673_ '()))))))))))
               (_g2065420690_
                (lambda (_g2065720678_)
                  (if (gx#stx-pair? _g2065720678_)
                      (let ((_e2065820680_ (gx#stx-e _g2065720678_)))
                        (let ((_hd2065920683_ (##car _e2065820680_))
                              (_tl2066020685_ (##cdr _e2065820680_)))
                          (if (gx#identifier? _hd2065920683_)
                              (if (gx#stx-eq? '%#call _hd2065920683_)
                                  ((lambda ()
                                     (values (cons '%#if
                                                   (cons _L20393_
                                                         (cons _k-continue20651_
                                                               (cons _L20391_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons _k-block20652_ '()))))
                                  (_g2065520675_ _g2065720678_))
                              (_g2065520675_ _g2065720678_))))
                      (_g2065520675_ _g2065720678_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g2065420690_
                                                   _L20391_)))))))
                                      _hd2047720607_
                                      _expr2046520599_
                                      _id2046620601_)
                                     (_g2041320531_ _g2041520534_))))
                             (_g2041320531_ _g2041520534_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop2045920557_
                                                  _target2045620552_
                                                  '()
                                                  '()))
                                               (_g2041320531_
                                                _g2041520534_)))))
                                     (_g2041320531_ _g2041520534_))
                                 (_g2041320531_ _g2041520534_))))
                         (_g2041320531_ _g2041520534_))
                     (_g2041320531_ _g2041520534_))
                 (_g2041320531_ _g2041520534_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2041320531_
                                                  _g2041520534_))))
                                          (_g2041120822_
                                           (lambda (_g2041520696_)
                                             (if (gx#stx-pair? _g2041520696_)
                                                 (let ((_e2041620698_
                                                        (gx#stx-e
                                                         _g2041520696_)))
                                                   (let ((_hd2041720701_
                                                          (##car _e2041620698_))
                                                         (_tl2041820703_
                                                          (##cdr _e2041620698_)))
                                                     (if (gx#identifier?
                                                          _hd2041720701_)
                                                         (if (gx#stx-eq?
                                                              '%#let-values
                                                              _hd2041720701_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl2041820703_)
                         (let ((_e2041920706_ (gx#stx-e _tl2041820703_)))
                           (let ((_hd2042020709_ (##car _e2041920706_))
                                 (_tl2042120711_ (##cdr _e2041920706_)))
                             (if (gx#stx-pair/null? _hd2042020709_)
                                 (if (fx>= (gx#stx-length _hd2042020709_) '0)
                                     (let ((_g34923_
                                            (gx#syntax-split-splice
                                             _hd2042020709_
                                             '0)))
                                       (begin
                                         (let ((_g34924_
                                                (if (##values? _g34923_)
                                                    (##vector-length _g34923_)
                                                    1)))
                                           (if (not (##fx= _g34924_ 2))
                                               (error "Context expects 2 values"
                                                      _g34924_)))
                                         (let ((_target2042220714_
                                                (##vector-ref _g34923_ 0))
                                               (_tl2042420716_
                                                (##vector-ref _g34923_ 1)))
                                           (if (gx#stx-null? _tl2042420716_)
                                               (letrec ((_loop2042520719_
                                                         (lambda (_hd2042320722_)
                                                           (if (gx#stx-pair?
                                                                _hd2042320722_)
                                                               (let ((_e2042620725_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd2042320722_)))
                         (let ((_lp-hd2042720728_ (##car _e2042620725_))
                               (_lp-tl2042820730_ (##cdr _e2042620725_)))
                           (if (gx#stx-pair? _lp-hd2042720728_)
                               (let ((_e2042920733_
                                      (gx#stx-e _lp-hd2042720728_)))
                                 (let ((_hd2043020736_ (##car _e2042920733_))
                                       (_tl2043120738_ (##cdr _e2042920733_)))
                                   (if (gx#stx-pair? _hd2043020736_)
                                       (let ((_e2043220741_
                                              (gx#stx-e _hd2043020736_)))
                                         (let ((_hd2043320744_
                                                (##car _e2043220741_))
                                               (_tl2043420746_
                                                (##cdr _e2043220741_)))
                                           (if (gx#stx-null? _tl2043420746_)
                                               (if (gx#stx-pair?
                                                    _tl2043120738_)
                                                   (let ((_e2043520749_
                                                          (gx#stx-e
                                                           _tl2043120738_)))
                                                     (let ((_hd2043620752_
                                                            (##car _e2043520749_))
                                                           (_tl2043720754_
                                                            (##cdr _e2043520749_)))
                                                       (if (gx#stx-pair?
                                                            _hd2043620752_)
                                                           (let ((_e2043820757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd2043620752_)))
                     (let ((_hd2043920760_ (##car _e2043820757_))
                           (_tl2044020762_ (##cdr _e2043820757_)))
                       (if (gx#identifier? _hd2043920760_)
                           (if (gx#stx-eq? '%#ref _hd2043920760_)
                               (if (gx#stx-pair? _tl2044020762_)
                                   (let ((_e2044120765_
                                          (gx#stx-e _tl2044020762_)))
                                     (let ((_hd2044220768_
                                            (##car _e2044120765_))
                                           (_tl2044320770_
                                            (##cdr _e2044120765_)))
                                       (if (gx#stx-null? _tl2044320770_)
                                           (if (gx#stx-null? _tl2043720754_)
                                               (_loop2042520719_
                                                _lp-tl2042820730_)
                                               (_g2041220693_ _g2041520696_))
                                           (_g2041220693_ _g2041520696_))))
                                   (_g2041220693_ _g2041520696_))
                               (_g2041220693_ _g2041520696_))
                           (_g2041220693_ _g2041520696_))))
                   (_g2041220693_ _g2041520696_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2041220693_
                                                    _g2041520696_))
                                               (_g2041220693_ _g2041520696_))))
                                       (_g2041220693_ _g2041520696_))))
                               (_g2041220693_ _g2041520696_))))
                       (let ()
                         (if (gx#stx-pair? _tl2042120711_)
                             (let ((_e2044420774_ (gx#stx-e _tl2042120711_)))
                               (let ((_hd2044520777_ (##car _e2044420774_))
                                     (_tl2044620779_ (##cdr _e2044420774_)))
                                 (if (gx#stx-null? _tl2044620779_)
                                     ((lambda ()
                                        (let* ((_g2078520794_
                                                (lambda (_g2078620791_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax"
                                                   _g2078620791_)))
                                               (_g2078420804_
                                                (lambda (_g2078620797_)
                                                  ((lambda ()
                                                     (let ((_g34925_
                                                            (_create-block20139_
                                                             _L20391_
                                                             '()
                                                             _bind20322_
                                                             (cons (cons _L20393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f)
                           _assert20323_))))
               (begin
                 (let ((_g34926_
                        (if (##values? _g34925_)
                            (##vector-length _g34925_)
                            1)))
                   (if (not (##fx= _g34926_ 2))
                       (error "Context expects 2 values" _g34926_)))
                 (let ((_e-continue20801_ (##vector-ref _g34925_ 0))
                       (_e-block20802_ (##vector-ref _g34925_ 1)))
                   (values (cons '%#if
                                 (cons _L20393_
                                       (cons _L20392_
                                             (cons _e-continue20801_ '()))))
                           (cons _e-block20802_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g2078320819_
                                                (lambda (_g2078620807_)
                                                  (if (gx#stx-pair?
                                                       _g2078620807_)
                                                      (let ((_e2078720809_
                                                             (gx#stx-e
                                                              _g2078620807_)))
                                                        (let ((_hd2078820812_
                                                               (##car _e2078720809_))
                                                              (_tl2078920814_
                                                               (##cdr _e2078720809_)))
                                                          (if (gx#identifier?
                                                               _hd2078820812_)
                                                              (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#call
                           _hd2078820812_)
                          ((lambda () (values _body20321_ '())))
                          (_g2078420804_ _g2078620807_))
                      (_g2078420804_ _g2078620807_))))
              (_g2078420804_ _g2078620807_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_g2078320819_ _L20391_))))
                                     (_g2041220693_ _g2041520696_))))
                             (_g2041220693_ _g2041520696_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop2042520719_
                                                  _target2042220714_))
                                               (_g2041220693_
                                                _g2041520696_)))))
                                     (_g2041220693_ _g2041520696_))
                                 (_g2041220693_ _g2041520696_))))
                         (_g2041220693_ _g2041520696_))
                     (_g2041220693_ _g2041520696_))
                 (_g2041220693_ _g2041520696_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2041220693_
                                                  _g2041520696_)))))
                                     (_g2041120822_ _L20392_)))
                                 _hd2034120386_
                                 _hd2033820378_
                                 _hd2033520370_)
                                (_g2032520354_ _g2032720357_))))
                        (_g2032520354_ _g2032720357_))))
                (_g2032520354_ _g2032720357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2032520354_ _g2032720357_))
                                            (_g2032520354_ _g2032720357_))
                                        (_g2032520354_ _g2032720357_))))
                                (_g2032520354_ _g2032720357_)))))
                    (_g2032420825_ _body20321_))))
               (_fold-blocks20141_
                (lambda (_rest20240_ _blocks20241_)
                  (let* ((_rest2024220259_ _rest20240_)
                         (_E2024520263_
                          (lambda ()
                            (error '"No clause matching" _rest2024220259_))))
                    (let ((_K2024720283_
                           (lambda (_rest20274_
                                    _assert20275_
                                    _bind20276_
                                    _body20277_
                                    _name20278_)
                             (let ((_g34927_
                                    (_basic-block20140_
                                     _body20277_
                                     _bind20276_
                                     _assert20275_)))
                               (begin
                                 (let ((_g34928_
                                        (if (##values? _g34927_)
                                            (##vector-length _g34927_)
                                            1)))
                                   (if (not (##fx= _g34928_ 2))
                                       (error "Context expects 2 values"
                                              _g34928_)))
                                 (let ((_body20280_ (##vector-ref _g34927_ 0))
                                       (_body-blocks20281_
                                        (##vector-ref _g34927_ 1)))
                                   (_fold-blocks20141_
                                    (foldl1 cons
                                            _rest20274_
                                            _body-blocks20281_)
                                    (cons (cons _name20278_
                                                (cons 'continue:
                                                      (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (reverse (map car _bind20276_))
                                (cons _body20280_ '())))
                    (cons _bind20276_ (cons _assert20275_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _blocks20241_)))))))
                          (_K2024620268_ (lambda () _blocks20241_)))
                      (let ((_try-match2024420271_
                             (lambda ()
                               (if (##null? _rest2024220259_)
                                   (let () (_K2024620268_))
                                   (_E2024520263_)))))
                        (if (##pair? _rest2024220259_)
                            (let ((_tl2024920288_ (##cdr _rest2024220259_))
                                  (_hd2024820286_ (##car _rest2024220259_)))
                              (if (##pair? _hd2024820286_)
                                  (let ((_tl2025120293_ (##cdr _hd2024820286_))
                                        (_hd2025020291_
                                         (##car _hd2024820286_)))
                                    (if (##pair? _tl2025120293_)
                                        (let ((_tl2025320300_
                                               (##cdr _tl2025120293_))
                                              (_hd2025220298_
                                               (##car _tl2025120293_)))
                                          (if (##pair? _tl2025320300_)
                                              (let ((_tl2025520307_
                                                     (##cdr _tl2025320300_))
                                                    (_hd2025420305_
                                                     (##car _tl2025320300_)))
                                                (if (##pair? _tl2025520307_)
                                                    (let ((_tl2025720314_
                                                           (##cdr _tl2025520307_))
                                                          (_hd2025620312_
                                                           (##car _tl2025520307_)))
                                                      (if (##null? _tl2025720314_)
                                                          (let ((_name20296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd2025020291_)
                        (_body20303_ _hd2025220298_)
                        (_bind20310_ _hd2025420305_)
                        (_assert20317_ _hd2025620312_)
                        (_rest20319_ _tl2024920288_))
                    (_K2024720283_
                     _rest20319_
                     _assert20317_
                     _bind20310_
                     _body20303_
                     _name20296_))
                  (_E2024520263_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E2024520263_)))
                                              (_E2024520263_)))
                                        (_E2024520263_)))
                                  (_E2024520263_)))
                            (_try-match2024420271_))))))))
        (let* ((_clause2014220149_ _clause20135_)
               (_E2014420153_
                (lambda () (error '"No clause matching" _clause2014220149_)))
               (_K2014520228_
                (lambda (_body20156_ _name20157_)
                  (let* ((_g2015920175_
                          (lambda (_g2016020172_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g2016020172_)))
                         (_g2015820225_
                          (lambda (_g2016020178_)
                            (if (gx#stx-pair? _g2016020178_)
                                (let ((_e2016220180_ (gx#stx-e _g2016020178_)))
                                  (let ((_hd2016320183_ (##car _e2016220180_))
                                        (_tl2016420185_ (##cdr _e2016220180_)))
                                    (if (gx#identifier? _hd2016320183_)
                                        (if (gx#stx-eq?
                                             '%#lambda
                                             _hd2016320183_)
                                            (if (gx#stx-pair? _tl2016420185_)
                                                (let ((_e2016520188_
                                                       (gx#stx-e
                                                        _tl2016420185_)))
                                                  (let ((_hd2016620191_
                                                         (##car _e2016520188_))
                                                        (_tl2016720193_
                                                         (##cdr _e2016520188_)))
                                                    (if (gx#stx-null?
                                                         _hd2016620191_)
                                                        (if (gx#stx-pair?
                                                             _tl2016720193_)
                                                            (let ((_e2016820196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl2016720193_)))
                      (let ((_hd2016920199_ (##car _e2016820196_))
                            (_tl2017020201_ (##cdr _e2016820196_)))
                        (if (gx#stx-null? _tl2017020201_)
                            ((lambda (_L20204_)
                               (let ((_g34929_
                                      (_basic-block20140_ _L20204_ '() '())))
                                 (begin
                                   (let ((_g34930_
                                          (if (##values? _g34929_)
                                              (##vector-length _g34929_)
                                              1)))
                                     (if (not (##fx= _g34930_ 2))
                                         (error "Context expects 2 values"
                                                _g34930_)))
                                   (let ((_body20222_
                                          (##vector-ref _g34929_ 0))
                                         (_body-blocks20223_
                                          (##vector-ref _g34929_ 1)))
                                     (_fold-blocks20141_
                                      _body-blocks20223_
                                      (cons (cons _name20157_
                                                  (cons 'restart:
                                                        (cons (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons '() (cons _body20222_ '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _blocks20136_))))))
                             _hd2016920199_)
                            (_g2015920175_ _g2016020178_))))
                    (_g2015920175_ _g2016020178_))
                (_g2015920175_ _g2016020178_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g2015920175_ _g2016020178_))
                                            (_g2015920175_ _g2016020178_))
                                        (_g2015920175_ _g2016020178_))))
                                (_g2015920175_ _g2016020178_)))))
                    (_g2015820225_ _body20156_)))))
          (if (##pair? _clause2014220149_)
              (let ((_hd2014620231_ (##car _clause2014220149_))
                    (_tl2014720233_ (##cdr _clause2014220149_)))
                (let* ((_name20236_ _hd2014620231_)
                       (_body20238_ _tl2014720233_))
                  (_K2014520228_ _body20238_ _name20236_)))
              (_E2014420153_))))))
  (define gxc#optimize-match-fold-basic-blocks
    (lambda (_blocks19796_)
      (let _lp19798_ ((_rest19800_ _blocks19796_) (_blocks19801_ '()))
        (let* ((_rest1980219810_ _rest19800_)
               (_else1980419818_ (lambda () (reverse _blocks19801_)))
               (_K1980620123_
                (lambda (_rest19821_ _block19822_)
                  (let* ((_block1982319846_ _block19822_)
                         (_E1982619850_
                          (lambda ()
                            (error '"No clause matching" _block1982319846_))))
                    (let ((_K1983820101_
                           (lambda (_kont20026_ _name20027_)
                             (let* ((_g2002920045_
                                     (lambda (_g2003020042_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g2003020042_)))
                                    (_g2002820098_
                                     (lambda (_g2003020048_)
                                       (if (gx#stx-pair? _g2003020048_)
                                           (let ((_e2003220050_
                                                  (gx#stx-e _g2003020048_)))
                                             (let ((_hd2003320053_
                                                    (##car _e2003220050_))
                                                   (_tl2003420055_
                                                    (##cdr _e2003220050_)))
                                               (if (gx#identifier?
                                                    _hd2003320053_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd2003320053_)
                                                       (if (gx#stx-pair?
                                                            _tl2003420055_)
                                                           (let ((_e2003520058_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl2003420055_)))
                     (let ((_hd2003620061_ (##car _e2003520058_))
                           (_tl2003720063_ (##cdr _e2003520058_)))
                       (if (gx#stx-null? _hd2003620061_)
                           (if (gx#stx-pair? _tl2003720063_)
                               (let ((_e2003820066_ (gx#stx-e _tl2003720063_)))
                                 (let ((_hd2003920069_ (##car _e2003820066_))
                                       (_tl2004020071_ (##cdr _e2003820066_)))
                                   (if (gx#stx-null? _tl2004020071_)
                                       ((lambda (_L20074_)
                                          (let* ((_body20089_
                                                  (gxc#optimize-match-block
                                                   _L20074_
                                                   '()
                                                   '()
                                                   _rest19821_))
                                                 (_block20091_
                                                  (cons _name20027_
                                                        (cons '%#lambda
                                                              (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _body20089_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_blocks20093_
                                                  (cons _block20091_
                                                        _blocks19801_))
                                                 (_rest20095_
                                                  (gxc#optimize-match-prune-blocks
                                                   _rest19821_
                                                   _blocks20093_)))
                                            (_lp19798_
                                             _rest20095_
                                             _blocks20093_)))
                                        _hd2003920069_)
                                       (_g2002920045_ _g2003020048_))))
                               (_g2002920045_ _g2003020048_))
                           (_g2002920045_ _g2003020048_))))
                   (_g2002920045_ _g2003020048_))
               (_g2002920045_ _g2003020048_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g2002920045_
                                                    _g2003020048_))))
                                           (_g2002920045_ _g2003020048_)))))
                               (_g2002820098_ _kont20026_))))
                          (_K1982719987_
                           (lambda (_assert19854_
                                    _bind19855_
                                    _kont19856_
                                    _name19857_)
                             (let* ((_g1985919885_
                                     (lambda (_g1986019882_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _g1986019882_)))
                                    (_g1985819984_
                                     (lambda (_g1986019888_)
                                       (if (gx#stx-pair? _g1986019888_)
                                           (let ((_e1986319890_
                                                  (gx#stx-e _g1986019888_)))
                                             (let ((_hd1986419893_
                                                    (##car _e1986319890_))
                                                   (_tl1986519895_
                                                    (##cdr _e1986319890_)))
                                               (if (gx#identifier?
                                                    _hd1986419893_)
                                                   (if (gx#stx-eq?
                                                        '%#lambda
                                                        _hd1986419893_)
                                                       (if (gx#stx-pair?
                                                            _tl1986519895_)
                                                           (let ((_e1986619898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1986519895_)))
                     (let ((_hd1986719901_ (##car _e1986619898_))
                           (_tl1986819903_ (##cdr _e1986619898_)))
                       (if (gx#stx-pair/null? _hd1986719901_)
                           (if (fx>= (gx#stx-length _hd1986719901_) '0)
                               (let ((_g34931_
                                      (gx#syntax-split-splice
                                       _hd1986719901_
                                       '0)))
                                 (begin
                                   (let ((_g34932_
                                          (if (##values? _g34931_)
                                              (##vector-length _g34931_)
                                              1)))
                                     (if (not (##fx= _g34932_ 2))
                                         (error "Context expects 2 values"
                                                _g34932_)))
                                   (let ((_target1986919906_
                                          (##vector-ref _g34931_ 0))
                                         (_tl1987119908_
                                          (##vector-ref _g34931_ 1)))
                                     (if (gx#stx-null? _tl1987119908_)
                                         (letrec ((_loop1987219911_
                                                   (lambda (_hd1987019914_
                                                            _id1987619916_)
                                                     (if (gx#stx-pair?
                                                          _hd1987019914_)
                                                         (let ((_e1987319919_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1987019914_)))
                   (let ((_lp-hd1987419922_ (##car _e1987319919_))
                         (_lp-tl1987519924_ (##cdr _e1987319919_)))
                     (_loop1987219911_
                      _lp-tl1987519924_
                      (cons _lp-hd1987419922_ _id1987619916_))))
                 (let ((_id1987719927_ (reverse _id1987619916_)))
                   (if (gx#stx-pair? _tl1986819903_)
                       (let ((_e1987819930_ (gx#stx-e _tl1986819903_)))
                         (let ((_hd1987919933_ (##car _e1987819930_))
                               (_tl1988019935_ (##cdr _e1987819930_)))
                           (if (gx#stx-null? _tl1988019935_)
                               ((lambda (_L19938_ _L19939_)
                                  (let* ((_body19968_
                                          (gxc#optimize-match-block
                                           _L19938_
                                           _bind19855_
                                           _assert19854_
                                           _rest19821_))
                                         (_block19977_
                                          (cons _name19857_
                                                (cons '%#lambda
                                                      (cons (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1996919972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1997019974_)
                                (cons _g1996919972_ _g1997019974_))
                              '()
                              _L19939_))
                    (cons _body19968_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_blocks19979_
                                          (cons _block19977_ _blocks19801_))
                                         (_rest19981_
                                          (gxc#optimize-match-prune-blocks
                                           _rest19821_
                                           _blocks19979_)))
                                    (_lp19798_ _rest19981_ _blocks19979_)))
                                _hd1987919933_
                                _id1987719927_)
                               (_g1985919885_ _g1986019888_))))
                       (_g1985919885_ _g1986019888_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1987219911_
                                            _target1986919906_
                                            '()))
                                         (_g1985919885_ _g1986019888_)))))
                               (_g1985919885_ _g1986019888_))
                           (_g1985919885_ _g1986019888_))))
                   (_g1985919885_ _g1986019888_))
               (_g1985919885_ _g1986019888_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1985919885_
                                                    _g1986019888_))))
                                           (_g1985919885_ _g1986019888_)))))
                               (_g1985819984_ _kont19856_)))))
                      (if (##pair? _block1982319846_)
                          (let ((_tl1984020106_ (##cdr _block1982319846_))
                                (_hd1983920104_ (##car _block1982319846_)))
                            (if (##pair? _tl1984020106_)
                                (let ((_tl1984220113_ (##cdr _tl1984020106_))
                                      (_hd1984120111_ (##car _tl1984020106_)))
                                  (if (##eq? _hd1984120111_ 'restart:)
                                      (if (##pair? _tl1984220113_)
                                          (let ((_tl1984420118_
                                                 (##cdr _tl1984220113_))
                                                (_hd1984320116_
                                                 (##car _tl1984220113_)))
                                            (if (##null? _tl1984420118_)
                                                (let ((_name20109_
                                                       _hd1983920104_)
                                                      (_kont20121_
                                                       _hd1984320116_))
                                                  (_K1983820101_
                                                   _kont20121_
                                                   _name20109_))
                                                (_E1982619850_)))
                                          (_E1982619850_))
                                      (if (##eq? _hd1984120111_ 'continue:)
                                          (if (##pair? _tl1984220113_)
                                              (let ((_tl1983320004_
                                                     (##cdr _tl1984220113_))
                                                    (_hd1983220002_
                                                     (##car _tl1984220113_)))
                                                (if (##pair? _tl1983320004_)
                                                    (let ((_tl1983520011_
                                                           (##cdr _tl1983320004_))
                                                          (_hd1983420009_
                                                           (##car _tl1983320004_)))
                                                      (if (##pair? _tl1983520011_)
                                                          (let ((_tl1983720018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _tl1983520011_))
                        (_hd1983620016_ (##car _tl1983520011_)))
                    (if (##null? _tl1983720018_)
                        (let ((_name19995_ _hd1983920104_)
                              (_kont20007_ _hd1983220002_)
                              (_bind20014_ _hd1983420009_)
                              (_assert20021_ _hd1983620016_))
                          (_K1982719987_
                           _assert20021_
                           _bind20014_
                           _kont20007_
                           _name19995_))
                        (_E1982619850_)))
                  (_E1982619850_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1982619850_)))
                                              (_E1982619850_))
                                          (_E1982619850_))))
                                (_E1982619850_)))
                          (_E1982619850_)))))))
          (if (##pair? _rest1980219810_)
              (let ((_hd1980720126_ (##car _rest1980219810_))
                    (_tl1980820128_ (##cdr _rest1980219810_)))
                (let* ((_block20131_ _hd1980720126_)
                       (_rest20133_ _tl1980820128_))
                  (_K1980620123_ _rest20133_ _block20131_)))
              (_else1980419818_))))))
  (define gxc#optimize-match-block
    (lambda (_body16729_ _bind16730_ _assert16731_ _blocks16732_)
      (letrec* ((_env-assert16902_ '())
                (_env-type16903_ '())
                (_env-bind16904_ '())
                (_do-assert16905_
                 (lambda (_assert19719_ _K19720_)
                   (if (pair? _assert19719_)
                       (let _lp19722_ ((_rest19724_ _assert19719_)
                                       (_env-assert19725_ _env-assert16902_)
                                       (_env-type19726_ _env-type16903_))
                         (let* ((_rest1972719735_ _rest19724_)
                                (_else1972919743_
                                 (lambda ()
                                   (_do-assert!16910_
                                    _env-assert19725_
                                    _env-type19726_
                                    _K19720_)))
                                (_K1973119784_
                                 (lambda (_rest19746_ _assert19747_)
                                   (let* ((_assert1974819755_ _assert19747_)
                                          (_E1975019759_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _assert1974819755_)))
                                          (_K1975119772_
                                           (lambda (_val19762_ _expr19763_)
                                             (let* ((_sexpr19765_
                                                     (gxc#apply-generate-runtime
                                                      _expr19763_))
                                                    (_env-assert19767_
                                                     (cons (cons _sexpr19765_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _val19762_)
                   _env-assert19725_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_env-type19769_
                                                     (_fold-assert-type16907_
                                                      _expr19763_
                                                      _val19762_
                                                      _env-type19726_)))
                                               (_lp19722_
                                                _rest19746_
                                                _env-assert19767_
                                                _env-type19769_)))))
                                     (if (##pair? _assert1974819755_)
                                         (let ((_hd1975219775_
                                                (##car _assert1974819755_))
                                               (_tl1975319777_
                                                (##cdr _assert1974819755_)))
                                           (let* ((_expr19780_ _hd1975219775_)
                                                  (_val19782_ _tl1975319777_))
                                             (_K1975119772_
                                              _val19782_
                                              _expr19780_)))
                                         (_E1975019759_))))))
                           (if (##pair? _rest1972719735_)
                               (let ((_hd1973219787_ (##car _rest1972719735_))
                                     (_tl1973319789_ (##cdr _rest1972719735_)))
                                 (let* ((_assert19792_ _hd1973219787_)
                                        (_rest19794_ _tl1973319789_))
                                   (_K1973119784_ _rest19794_ _assert19792_)))
                               (_else1972919743_))))
                       (_K19720_))))
                (_predicate-type16906_
                 (lambda (_id19673_)
                   (let* ((_sym19675_ (gxc#identifier-symbol _id19673_))
                          (_$e19677_ _sym19675_))
                     (if (let ((_$e19680_ (eq? 'pair? _$e19677_)))
                           (if _$e19680_ _$e19680_ (eq? '##pair? _$e19677_)))
                         'pair
                         (if (let ((_$e19683_ (eq? 'null? _$e19677_)))
                               (if _$e19683_
                                   _$e19683_
                                   (eq? '##null? _$e19677_)))
                             'null
                             (if (let ((_$e19686_ (eq? 'vector? _$e19677_)))
                                   (if _$e19686_
                                       _$e19686_
                                       (eq? '##vector? _$e19677_)))
                                 'vector
                                 (if (let ((_$e19689_ (eq? 'box? _$e19677_)))
                                       (if _$e19689_
                                           _$e19689_
                                           (eq? '##box? _$e19677_)))
                                     'box
                                     (let* ((_g1969119698_
                                             (gxc#optimizer-resolve-type
                                              _sym19675_))
                                            (_else1969319706_ (lambda () '#f))
                                            (_K1969519711_
                                             (lambda (_struct-t19709_)
                                               (gxc#optimizer-resolve-type
                                                _struct-t19709_))))
                                       (if (##structure-instance-of?
                                            _g1969119698_
                                            'gxc#!struct-pred::t)
                                           (let* ((_e1969619714_
                                                   (##vector-ref
                                                    _g1969119698_
                                                    '1))
                                                  (_struct-t19717_
                                                   _e1969619714_))
                                             (gxc#optimizer-resolve-type
                                              _struct-t19717_))
                                           (_else1969319706_))))))))))
                (_fold-assert-type16907_
                 (lambda (_expr19198_ _val19199_ _env19200_)
                   (let* ((_g1920419260_
                           (lambda (_g1920519257_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1920519257_)))
                          (_g1920319267_
                           (lambda (_g1920519263_) ((lambda () _env19200_))))
                          (_g1920219581_
                           (lambda (_g1920519270_)
                             (if (gx#stx-pair? _g1920519270_)
                                 (let ((_e1923219272_
                                        (gx#stx-e _g1920519270_)))
                                   (let ((_hd1923319275_ (##car _e1923219272_))
                                         (_tl1923419277_
                                          (##cdr _e1923219272_)))
                                     (if (gx#identifier? _hd1923319275_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1923319275_)
                                             (if (gx#stx-pair? _tl1923419277_)
                                                 (let ((_e1923519280_
                                                        (gx#stx-e
                                                         _tl1923419277_)))
                                                   (let ((_hd1923619283_
                                                          (##car _e1923519280_))
                                                         (_tl1923719285_
                                                          (##cdr _e1923519280_)))
                                                     (if (gx#stx-pair?
                                                          _hd1923619283_)
                                                         (let ((_e1923819288_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1923619283_)))
                   (let ((_hd1923919291_ (##car _e1923819288_))
                         (_tl1924019293_ (##cdr _e1923819288_)))
                     (if (gx#identifier? _hd1923919291_)
                         (if (gx#stx-eq? '%#ref _hd1923919291_)
                             (if (gx#stx-pair? _tl1924019293_)
                                 (let ((_e1924119296_
                                        (gx#stx-e _tl1924019293_)))
                                   (let ((_hd1924219299_ (##car _e1924119296_))
                                         (_tl1924319301_
                                          (##cdr _e1924119296_)))
                                     (if (gx#stx-null? _tl1924319301_)
                                         (if (gx#stx-pair? _tl1923719285_)
                                             (let ((_e1924419304_
                                                    (gx#stx-e _tl1923719285_)))
                                               (let ((_hd1924519307_
                                                      (##car _e1924419304_))
                                                     (_tl1924619309_
                                                      (##cdr _e1924419304_)))
                                                 (if (gx#stx-pair?
                                                      _tl1924619309_)
                                                     (let ((_e1924719312_
                                                            (gx#stx-e
                                                             _tl1924619309_)))
                                                       (let ((_hd1924819315_
                                                              (##car _e1924719312_))
                                                             (_tl1924919317_
                                                              (##cdr _e1924719312_)))
                                                         (if (gx#stx-pair?
                                                              _hd1924819315_)
                                                             (let ((_e1925019320_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1924819315_)))
                       (let ((_hd1925119323_ (##car _e1925019320_))
                             (_tl1925219325_ (##cdr _e1925019320_)))
                         (if (gx#identifier? _hd1925119323_)
                             (if (gx#stx-eq? '%#quote _hd1925119323_)
                                 (if (gx#stx-pair? _tl1925219325_)
                                     (let ((_e1925319328_
                                            (gx#stx-e _tl1925219325_)))
                                       (let ((_hd1925419331_
                                              (##car _e1925319328_))
                                             (_tl1925519333_
                                              (##cdr _e1925319328_)))
                                         (if (gx#stx-null? _tl1925519333_)
                                             (if (gx#stx-null? _tl1924919317_)
                                                 ((lambda (_L19336_
                                                           _L19337_
                                                           _L19338_)
                                                    (let ((_$e19365_
                                                           (gxc#identifier-symbol
                                                            _L19338_)))
                                                      (if (let ((_$e19368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (eq? '##fx= _$e19365_)))
                    (if _$e19368_ _$e19368_ (eq? 'fx= _$e19365_)))
                  (let* ((_g1937219401_
                          (lambda (_g1937319398_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g1937319398_)))
                         (_g1937119408_
                          (lambda (_g1937319404_) ((lambda () _env19200_))))
                         (_g1937019500_
                          (lambda (_g1937319411_)
                            (if (gx#stx-pair? _g1937319411_)
                                (let ((_e1937619413_ (gx#stx-e _g1937319411_)))
                                  (let ((_hd1937719416_ (##car _e1937619413_))
                                        (_tl1937819418_ (##cdr _e1937619413_)))
                                    (if (gx#identifier? _hd1937719416_)
                                        (if (gx#stx-eq? '%#call _hd1937719416_)
                                            (if (gx#stx-pair? _tl1937819418_)
                                                (let ((_e1937919421_
                                                       (gx#stx-e
                                                        _tl1937819418_)))
                                                  (let ((_hd1938019424_
                                                         (##car _e1937919421_))
                                                        (_tl1938119426_
                                                         (##cdr _e1937919421_)))
                                                    (if (gx#stx-pair?
                                                         _hd1938019424_)
                                                        (let ((_e1938219429_
                                                               (gx#stx-e
                                                                _hd1938019424_)))
                                                          (let ((_hd1938319432_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1938219429_))
                        (_tl1938419434_ (##cdr _e1938219429_)))
                    (if (gx#identifier? _hd1938319432_)
                        (if (gx#stx-eq? '%#ref _hd1938319432_)
                            (if (gx#stx-pair? _tl1938419434_)
                                (let ((_e1938519437_
                                       (gx#stx-e _tl1938419434_)))
                                  (let ((_hd1938619440_ (##car _e1938519437_))
                                        (_tl1938719442_ (##cdr _e1938519437_)))
                                    (if (gx#stx-null? _tl1938719442_)
                                        (if (gx#stx-pair? _tl1938119426_)
                                            (let ((_e1938819445_
                                                   (gx#stx-e _tl1938119426_)))
                                              (let ((_hd1938919448_
                                                     (##car _e1938819445_))
                                                    (_tl1939019450_
                                                     (##cdr _e1938819445_)))
                                                (if (gx#stx-pair?
                                                     _hd1938919448_)
                                                    (let ((_e1939119453_
                                                           (gx#stx-e
                                                            _hd1938919448_)))
                                                      (let ((_hd1939219456_
                                                             (##car _e1939119453_))
                                                            (_tl1939319458_
                                                             (##cdr _e1939119453_)))
                                                        (if (gx#identifier?
                                                             _hd1939219456_)
                                                            (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#ref
                         _hd1939219456_)
                        (if (gx#stx-pair? _tl1939319458_)
                            (let ((_e1939419461_ (gx#stx-e _tl1939319458_)))
                              (let ((_hd1939519464_ (##car _e1939419461_))
                                    (_tl1939619466_ (##cdr _e1939419461_)))
                                (if (gx#stx-null? _tl1939619466_)
                                    (if (gx#stx-null? _tl1939019450_)
                                        ((lambda (_L19469_ _L19470_)
                                           (let ((_$e19495_
                                                  (_countf-symbol16908_
                                                   _L19470_)))
                                             (if _$e19495_
                                                 ((lambda (_sym19498_)
                                                    (cons (cons _L19469_
                                                                (cons _sym19498_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#stx-e _L19336_)
                                    (cons _val19199_ '()))))
                  _env19200_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e19495_)
                                                 _env19200_)))
                                         _hd1939519464_
                                         _hd1938619440_)
                                        (_g1937119408_ _g1937319411_))
                                    (_g1937119408_ _g1937319411_))))
                            (_g1937119408_ _g1937319411_))
                        (_g1937119408_ _g1937319411_))
                    (_g1937119408_ _g1937319411_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1937119408_
                                                     _g1937319411_))))
                                            (_g1937119408_ _g1937319411_))
                                        (_g1937119408_ _g1937319411_))))
                                (_g1937119408_ _g1937319411_))
                            (_g1937119408_ _g1937319411_))
                        (_g1937119408_ _g1937319411_))))
                (_g1937119408_ _g1937319411_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1937119408_ _g1937319411_))
                                            (_g1937119408_ _g1937319411_))
                                        (_g1937119408_ _g1937319411_))))
                                (_g1937119408_ _g1937319411_)))))
                    (_g1937019500_ _L19337_))
                  (if (let ((_$e19503_ (eq? '##eq? _$e19365_)))
                        (if _$e19503_
                            _$e19503_
                            (let ((_$e19506_ (eq? 'eq? _$e19365_)))
                              (if _$e19506_
                                  _$e19506_
                                  (let ((_$e19509_ (eq? '##eqv? _$e19365_)))
                                    (if _$e19509_
                                        _$e19509_
                                        (let ((_$e19512_
                                               (eq? 'eqv? _$e19365_)))
                                          (if _$e19512_
                                              _$e19512_
                                              (let ((_$e19515_
                                                     (eq? '##equal?
                                                          _$e19365_)))
                                                (if _$e19515_
                                                    _$e19515_
                                                    (eq? 'equal?
                                                         _$e19365_)))))))))))
                      ((lambda (_sym19518_)
                         (let* ((_sym19520_ (_eqf-symbol16909_ _sym19518_))
                                (_g1952319536_
                                 (lambda (_g1952419533_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1952419533_)))
                                (_g1952219543_
                                 (lambda (_g1952419539_)
                                   ((lambda () _env19200_))))
                                (_g1952119578_
                                 (lambda (_g1952419546_)
                                   (if (gx#stx-pair? _g1952419546_)
                                       (let ((_e1952619548_
                                              (gx#stx-e _g1952419546_)))
                                         (let ((_hd1952719551_
                                                (##car _e1952619548_))
                                               (_tl1952819553_
                                                (##cdr _e1952619548_)))
                                           (if (gx#identifier? _hd1952719551_)
                                               (if (gx#stx-eq?
                                                    '%#ref
                                                    _hd1952719551_)
                                                   (if (gx#stx-pair?
                                                        _tl1952819553_)
                                                       (let ((_e1952919556_
                                                              (gx#stx-e
                                                               _tl1952819553_)))
                                                         (let ((_hd1953019559_
                                                                (##car _e1952919556_))
                                                               (_tl1953119561_
                                                                (##cdr _e1952919556_)))
                                                           (if (gx#stx-null?
                                                                _tl1953119561_)
                                                               ((lambda (_L19564_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons _L19564_
                                      (cons _sym19520_
                                            (cons (gx#stx-e _L19336_)
                                                  (cons _val19199_ '()))))
                                _env19200_))
                        _hd1953019559_)
                       (_g1952219543_ _g1952419546_))))
               (_g1952219543_ _g1952419546_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1952219543_
                                                    _g1952419546_))
                                               (_g1952219543_ _g1952419546_))))
                                       (_g1952219543_ _g1952419546_)))))
                           (_g1952119578_ _L19337_)))
                       _$e19365_)
                      _env19200_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _hd1925419331_
                                                  _hd1924519307_
                                                  _hd1924219299_)
                                                 (_g1920319267_ _g1920519270_))
                                             (_g1920319267_ _g1920519270_))))
                                     (_g1920319267_ _g1920519270_))
                                 (_g1920319267_ _g1920519270_))
                             (_g1920319267_ _g1920519270_))))
                     (_g1920319267_ _g1920519270_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1920319267_
                                                      _g1920519270_))))
                                             (_g1920319267_ _g1920519270_))
                                         (_g1920319267_ _g1920519270_))))
                                 (_g1920319267_ _g1920519270_))
                             (_g1920319267_ _g1920519270_))
                         (_g1920319267_ _g1920519270_))))
                 (_g1920319267_ _g1920519270_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1920319267_ _g1920519270_))
                                             (_g1920319267_ _g1920519270_))
                                         (_g1920319267_ _g1920519270_))))
                                 (_g1920319267_ _g1920519270_))))
                          (_g1920119670_
                           (lambda (_g1920519584_)
                             (if (gx#stx-pair? _g1920519584_)
                                 (let ((_e1920819586_
                                        (gx#stx-e _g1920519584_)))
                                   (let ((_hd1920919589_ (##car _e1920819586_))
                                         (_tl1921019591_
                                          (##cdr _e1920819586_)))
                                     (if (gx#identifier? _hd1920919589_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1920919589_)
                                             (if (gx#stx-pair? _tl1921019591_)
                                                 (let ((_e1921119594_
                                                        (gx#stx-e
                                                         _tl1921019591_)))
                                                   (let ((_hd1921219597_
                                                          (##car _e1921119594_))
                                                         (_tl1921319599_
                                                          (##cdr _e1921119594_)))
                                                     (if (gx#stx-pair?
                                                          _hd1921219597_)
                                                         (let ((_e1921419602_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1921219597_)))
                   (let ((_hd1921519605_ (##car _e1921419602_))
                         (_tl1921619607_ (##cdr _e1921419602_)))
                     (if (gx#identifier? _hd1921519605_)
                         (if (gx#stx-eq? '%#ref _hd1921519605_)
                             (if (gx#stx-pair? _tl1921619607_)
                                 (let ((_e1921719610_
                                        (gx#stx-e _tl1921619607_)))
                                   (let ((_hd1921819613_ (##car _e1921719610_))
                                         (_tl1921919615_
                                          (##cdr _e1921719610_)))
                                     (if (gx#stx-null? _tl1921919615_)
                                         (if (gx#stx-pair? _tl1921319599_)
                                             (let ((_e1922019618_
                                                    (gx#stx-e _tl1921319599_)))
                                               (let ((_hd1922119621_
                                                      (##car _e1922019618_))
                                                     (_tl1922219623_
                                                      (##cdr _e1922019618_)))
                                                 (if (gx#stx-pair?
                                                      _hd1922119621_)
                                                     (let ((_e1922319626_
                                                            (gx#stx-e
                                                             _hd1922119621_)))
                                                       (let ((_hd1922419629_
                                                              (##car _e1922319626_))
                                                             (_tl1922519631_
                                                              (##cdr _e1922319626_)))
                                                         (if (gx#identifier?
                                                              _hd1922419629_)
                                                             (if (gx#stx-eq?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '%#ref
                          _hd1922419629_)
                         (if (gx#stx-pair? _tl1922519631_)
                             (let ((_e1922619634_ (gx#stx-e _tl1922519631_)))
                               (let ((_hd1922719637_ (##car _e1922619634_))
                                     (_tl1922819639_ (##cdr _e1922619634_)))
                                 (if (gx#stx-null? _tl1922819639_)
                                     (if (gx#stx-null? _tl1922219623_)
                                         ((lambda (_L19642_ _L19643_)
                                            (let ((_$e19665_
                                                   (_predicate-type16906_
                                                    _L19643_)))
                                              (if _$e19665_
                                                  ((lambda (_t19668_)
                                                     (cons (cons _L19642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _t19668_ (cons _val19199_ '())))
                   _env19200_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _$e19665_)
                                                  _env19200_)))
                                          _hd1922719637_
                                          _hd1921819613_)
                                         (_g1920219581_ _g1920519584_))
                                     (_g1920219581_ _g1920519584_))))
                             (_g1920219581_ _g1920519584_))
                         (_g1920219581_ _g1920519584_))
                     (_g1920219581_ _g1920519584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1920219581_
                                                      _g1920519584_))))
                                             (_g1920219581_ _g1920519584_))
                                         (_g1920219581_ _g1920519584_))))
                                 (_g1920219581_ _g1920519584_))
                             (_g1920219581_ _g1920519584_))
                         (_g1920219581_ _g1920519584_))))
                 (_g1920219581_ _g1920519584_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1920219581_ _g1920519584_))
                                             (_g1920219581_ _g1920519584_))
                                         (_g1920219581_ _g1920519584_))))
                                 (_g1920219581_ _g1920519584_)))))
                     (_g1920119670_ _expr19198_))))
                (_countf-symbol16908_
                 (lambda (_id19190_)
                   (let ((_$e19192_ (gxc#identifier-symbol _id19190_)))
                     (if (let ((_$e19195_ (eq? '##vector-length _$e19192_)))
                           (if _$e19195_
                               _$e19195_
                               (eq? 'vector-length _$e19192_)))
                         'vector-length
                         (if (eq? 'values-count _$e19192_)
                             'values-count
                             '#f)))))
                (_eqf-symbol16909_
                 (lambda (_sym19176_)
                   (let ((_$e19178_ _sym19176_))
                     (if (let ((_$e19181_ (eq? '##eq? _$e19178_)))
                           (if _$e19181_ _$e19181_ (eq? 'eq? _$e19178_)))
                         'eq?
                         (if (let ((_$e19184_ (eq? '##eqv? _$e19178_)))
                               (if _$e19184_ _$e19184_ (eq? 'eqv? _$e19178_)))
                             'eqv?
                             (if (let ((_$e19187_ (eq? '##equal? _$e19178_)))
                                   (if _$e19187_
                                       _$e19187_
                                       (eq? 'equal? _$e19178_)))
                                 'equal?
                                 '#f))))))
                (_do-assert!16910_
                 (lambda (_assert19167_ _type19168_ _K19169_)
                   (let ((_unwind-assert19171_ _env-assert16902_)
                         (_unwind-type19172_ _env-type16903_))
                     (begin
                       (set! _env-assert16902_ _assert19167_)
                       (set! _env-type16903_ _type19168_)
                       (let ((_val19174_ (_K19169_)))
                         (begin
                           (set! _env-assert16902_ _unwind-assert19171_)
                           (set! _env-type16903_ _unwind-type19172_)
                           _val19174_))))))
                (_do-bind16911_
                 (lambda (_bind19164_ _K19165_)
                   (_do-bind!16913_
                    (_fold-bind-env16912_ _bind19164_ _env-bind16904_)
                    _K19165_)))
                (_fold-bind-env16912_
                 (lambda (_bind19093_ _env19094_)
                   (let _lp19096_ ((_rest19098_ _bind19093_)
                                   (_env19099_ _env19094_))
                     (let* ((_rest1910019108_ _rest19098_)
                            (_else1910219116_ (lambda () _env19099_))
                            (_K1910419152_
                             (lambda (_rest19119_ _bind19120_)
                               (let* ((_bind1912119128_ _bind19120_)
                                      (_E1912319132_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind1912119128_)))
                                      (_K1912419140_
                                       (lambda (_expr19135_ _id19136_)
                                         (let ((_sexpr19138_
                                                (gxc#apply-generate-runtime
                                                 _expr19135_)))
                                           (_lp19096_
                                            _rest19119_
                                            (cons (cons _sexpr19138_ _id19136_)
                                                  _env19099_))))))
                                 (if (##pair? _bind1912119128_)
                                     (let ((_hd1912519143_
                                            (##car _bind1912119128_))
                                           (_tl1912619145_
                                            (##cdr _bind1912119128_)))
                                       (let* ((_id19148_ _hd1912519143_)
                                              (_expr19150_ _tl1912619145_))
                                         (_K1912419140_
                                          _expr19150_
                                          _id19148_)))
                                     (_E1912319132_))))))
                       (if (##pair? _rest1910019108_)
                           (let ((_hd1910519155_ (##car _rest1910019108_))
                                 (_tl1910619157_ (##cdr _rest1910019108_)))
                             (let* ((_bind19160_ _hd1910519155_)
                                    (_rest19162_ _tl1910619157_))
                               (_K1910419152_ _rest19162_ _bind19160_)))
                           (_else1910219116_))))))
                (_do-bind!16913_
                 (lambda (_env19086_ _K19087_)
                   (let ((_unwind19089_ _env-bind16904_))
                     (begin
                       (set! _env-bind16904_ _env19086_)
                       (let ((_val19091_ (_K19087_)))
                         (begin
                           (set! _env-bind16904_ _unwind19089_)
                           _val19091_))))))
                (_optimize-e16914_
                 (lambda (_expr18575_)
                   (let* ((_g1858118694_
                           (lambda (_g1858218691_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1858218691_)))
                          (_g1858018701_
                           (lambda (_g1858218697_) ((lambda () _expr18575_))))
                          (_g1857918813_
                           (lambda (_g1858218704_)
                             (if (gx#stx-pair? _g1858218704_)
                                 (let ((_e1866318706_
                                        (gx#stx-e _g1858218704_)))
                                   (let ((_hd1866418709_ (##car _e1866318706_))
                                         (_tl1866518711_
                                          (##cdr _e1866318706_)))
                                     (if (gx#identifier? _hd1866418709_)
                                         (if (gx#stx-eq?
                                              '%#call
                                              _hd1866418709_)
                                             (if (gx#stx-pair? _tl1866518711_)
                                                 (let ((_e1866618714_
                                                        (gx#stx-e
                                                         _tl1866518711_)))
                                                   (let ((_hd1866718717_
                                                          (##car _e1866618714_))
                                                         (_tl1866818719_
                                                          (##cdr _e1866618714_)))
                                                     (if (gx#stx-pair?
                                                          _hd1866718717_)
                                                         (let ((_e1866918722_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1866718717_)))
                   (let ((_hd1867018725_ (##car _e1866918722_))
                         (_tl1867118727_ (##cdr _e1866918722_)))
                     (if (gx#identifier? _hd1867018725_)
                         (if (gx#stx-eq? '%#ref _hd1867018725_)
                             (if (gx#stx-pair? _tl1867118727_)
                                 (let ((_e1867218730_
                                        (gx#stx-e _tl1867118727_)))
                                   (let ((_hd1867318733_ (##car _e1867218730_))
                                         (_tl1867418735_
                                          (##cdr _e1867218730_)))
                                     (if (gx#stx-null? _tl1867418735_)
                                         (if (gx#stx-pair/null? _tl1866818719_)
                                             (if (fx>= (gx#stx-length
                                                        _tl1866818719_)
                                                       '0)
                                                 (let ((_g34933_
                                                        (gx#syntax-split-splice
                                                         _tl1866818719_
                                                         '0)))
                                                   (begin
                                                     (let ((_g34934_
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g34933_)
                        (##vector-length _g34933_)
                        1)))
               (if (not (##fx= _g34934_ 2))
                   (error "Context expects 2 values" _g34934_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target1867518738_
                                                            (##vector-ref
                                                             _g34933_
                                                             0))
                                                           (_tl1867718740_
                                                            (##vector-ref
                                                             _g34933_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl1867718740_)
                                                           (letrec ((_loop1867818743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd1867618746_ _id1868218748_)
                               (if (gx#stx-pair? _hd1867618746_)
                                   (let ((_e1867918751_
                                          (gx#stx-e _hd1867618746_)))
                                     (let ((_lp-hd1868018754_
                                            (##car _e1867918751_))
                                           (_lp-tl1868118756_
                                            (##cdr _e1867918751_)))
                                       (if (gx#stx-pair? _lp-hd1868018754_)
                                           (let ((_e1868418759_
                                                  (gx#stx-e
                                                   _lp-hd1868018754_)))
                                             (let ((_hd1868518762_
                                                    (##car _e1868418759_))
                                                   (_tl1868618764_
                                                    (##cdr _e1868418759_)))
                                               (if (gx#identifier?
                                                    _hd1868518762_)
                                                   (if (gx#stx-eq?
                                                        '%#ref
                                                        _hd1868518762_)
                                                       (if (gx#stx-pair?
                                                            _tl1868618764_)
                                                           (let ((_e1868718767_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1868618764_)))
                     (let ((_hd1868818770_ (##car _e1868718767_))
                           (_tl1868918772_ (##cdr _e1868718767_)))
                       (if (gx#stx-null? _tl1868918772_)
                           (_loop1867818743_
                            _lp-tl1868118756_
                            (cons _hd1868818770_ _id1868218748_))
                           (_g1858018701_ _g1858218704_))))
                   (_g1858018701_ _g1858218704_))
               (_g1858018701_ _g1858218704_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1858018701_
                                                    _g1858218704_))))
                                           (_g1858018701_ _g1858218704_))))
                                   (let ((_id1868318775_
                                          (reverse _id1868218748_)))
                                     ((lambda (_L18778_ _L18779_)
                                        (let ((_$e18801_
                                               (_lookup-block16922_ _L18779_)))
                                          (if _$e18801_
                                              ((lambda (_block18804_)
                                                 (_optimize-e16914_
                                                  (_inline-block16923_
                                                   _block18804_
                                                   (begin
                                                     '#!void
                                                     (foldr1 (lambda (_g1880518808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g1880618810_)
                       (cons _g1880518808_ _g1880618810_))
                     '()
                     _L18778_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _$e18801_)
                                              _expr18575_)))
                                      _id1868318775_
                                      _hd1867318733_))))))
                     (_loop1867818743_ _target1867518738_ '()))
                   (_g1858018701_ _g1858218704_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1858018701_ _g1858218704_))
                                             (_g1858018701_ _g1858218704_))
                                         (_g1858018701_ _g1858218704_))))
                                 (_g1858018701_ _g1858218704_))
                             (_g1858018701_ _g1858218704_))
                         (_g1858018701_ _g1858218704_))))
                 (_g1858018701_ _g1858218704_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1858018701_ _g1858218704_))
                                             (_g1858018701_ _g1858218704_))
                                         (_g1858018701_ _g1858218704_))))
                                 (_g1858018701_ _g1858218704_))))
                          (_g1857818929_
                           (lambda (_g1858218816_)
                             (if (gx#stx-pair? _g1858218816_)
                                 (let ((_e1863218818_
                                        (gx#stx-e _g1858218816_)))
                                   (let ((_hd1863318821_ (##car _e1863218818_))
                                         (_tl1863418823_
                                          (##cdr _e1863218818_)))
                                     (if (gx#identifier? _hd1863318821_)
                                         (if (gx#stx-eq?
                                              '%#let-values
                                              _hd1863318821_)
                                             (if (gx#stx-pair? _tl1863418823_)
                                                 (let ((_e1863518826_
                                                        (gx#stx-e
                                                         _tl1863418823_)))
                                                   (let ((_hd1863618829_
                                                          (##car _e1863518826_))
                                                         (_tl1863718831_
                                                          (##cdr _e1863518826_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd1863618829_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1863618829_)
                           '0)
                     (let ((_g34935_
                            (gx#syntax-split-splice _hd1863618829_ '0)))
                       (begin
                         (let ((_g34936_
                                (if (##values? _g34935_)
                                    (##vector-length _g34935_)
                                    1)))
                           (if (not (##fx= _g34936_ 2))
                               (error "Context expects 2 values" _g34936_)))
                         (let ((_target1863818834_ (##vector-ref _g34935_ 0))
                               (_tl1864018836_ (##vector-ref _g34935_ 1)))
                           (if (gx#stx-null? _tl1864018836_)
                               (letrec ((_loop1864118839_
                                         (lambda (_hd1863918842_
                                                  _expr1864518844_
                                                  _id1864618846_)
                                           (if (gx#stx-pair? _hd1863918842_)
                                               (let ((_e1864218849_
                                                      (gx#stx-e
                                                       _hd1863918842_)))
                                                 (let ((_lp-hd1864318852_
                                                        (##car _e1864218849_))
                                                       (_lp-tl1864418854_
                                                        (##cdr _e1864218849_)))
                                                   (if (gx#stx-pair?
                                                        _lp-hd1864318852_)
                                                       (let ((_e1864918857_
                                                              (gx#stx-e
                                                               _lp-hd1864318852_)))
                                                         (let ((_hd1865018860_
                                                                (##car _e1864918857_))
                                                               (_tl1865118862_
                                                                (##cdr _e1864918857_)))
                                                           (if (gx#stx-pair?
                                                                _hd1865018860_)
                                                               (let ((_e1865218865_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1865018860_)))
                         (let ((_hd1865318868_ (##car _e1865218865_))
                               (_tl1865418870_ (##cdr _e1865218865_)))
                           (if (gx#stx-null? _tl1865418870_)
                               (if (gx#stx-pair? _tl1865118862_)
                                   (let ((_e1865518873_
                                          (gx#stx-e _tl1865118862_)))
                                     (let ((_hd1865618876_
                                            (##car _e1865518873_))
                                           (_tl1865718878_
                                            (##cdr _e1865518873_)))
                                       (if (gx#stx-null? _tl1865718878_)
                                           (_loop1864118839_
                                            _lp-tl1864418854_
                                            (cons _hd1865618876_
                                                  _expr1864518844_)
                                            (cons _hd1865318868_
                                                  _id1864618846_))
                                           (_g1857918813_ _g1858218816_))))
                                   (_g1857918813_ _g1858218816_))
                               (_g1857918813_ _g1858218816_))))
                       (_g1857918813_ _g1858218816_))))
               (_g1857918813_ _g1858218816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_expr1864718881_
                                                      (reverse _expr1864518844_))
                                                     (_id1864818883_
                                                      (reverse _id1864618846_)))
                                                 (if (gx#stx-pair?
                                                      _tl1863718831_)
                                                     (let ((_e1865818886_
                                                            (gx#stx-e
                                                             _tl1863718831_)))
                                                       (let ((_hd1865918889_
                                                              (##car _e1865818886_))
                                                             (_tl1866018891_
                                                              (##cdr _e1865818886_)))
                                                         (if (gx#stx-null?
                                                              _tl1866018891_)
                                                             ((lambda (_L18894_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L18895_
                               _L18896_)
                        (_bind-e__0__3477634777_
                         (map cons
                              (begin
                                '#!void
                                (foldr1 (lambda (_g1891418917_ _g1891518919_)
                                          (cons _g1891418917_ _g1891518919_))
                                        '()
                                        _L18896_))
                              (begin
                                '#!void
                                (foldr1 (lambda (_g1892118924_ _g1892218926_)
                                          (cons _g1892118924_ _g1892218926_))
                                        '()
                                        _L18895_)))
                         _L18894_))
                      _hd1865918889_
                      _expr1864718881_
                      _id1864818883_)
                     (_g1857918813_ _g1858218816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1857918813_
                                                      _g1858218816_)))))))
                                 (_loop1864118839_ _target1863818834_ '() '()))
                               (_g1857918813_ _g1858218816_)))))
                     (_g1857918813_ _g1858218816_))
                 (_g1857918813_ _g1858218816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1857918813_ _g1858218816_))
                                             (_g1857918813_ _g1858218816_))
                                         (_g1857918813_ _g1858218816_))))
                                 (_g1857918813_ _g1858218816_))))
                          (_g1857719020_
                           (lambda (_g1858218932_)
                             (if (gx#stx-pair? _g1858218932_)
                                 (let ((_e1859818934_
                                        (gx#stx-e _g1858218932_)))
                                   (let ((_hd1859918937_ (##car _e1859818934_))
                                         (_tl1860018939_
                                          (##cdr _e1859818934_)))
                                     (if (gx#identifier? _hd1859918937_)
                                         (if (gx#stx-eq?
                                              '%#let-values
                                              _hd1859918937_)
                                             (if (gx#stx-pair? _tl1860018939_)
                                                 (let ((_e1860118942_
                                                        (gx#stx-e
                                                         _tl1860018939_)))
                                                   (let ((_hd1860218945_
                                                          (##car _e1860118942_))
                                                         (_tl1860318947_
                                                          (##cdr _e1860118942_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd1860218945_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1860218945_)
                           '0)
                     (let ((_g34937_
                            (gx#syntax-split-splice _hd1860218945_ '0)))
                       (begin
                         (let ((_g34938_
                                (if (##values? _g34937_)
                                    (##vector-length _g34937_)
                                    1)))
                           (if (not (##fx= _g34938_ 2))
                               (error "Context expects 2 values" _g34938_)))
                         (let ((_target1860418950_ (##vector-ref _g34937_ 0))
                               (_tl1860618952_ (##vector-ref _g34937_ 1)))
                           (if (gx#stx-null? _tl1860618952_)
                               (letrec ((_loop1860718955_
                                         (lambda (_hd1860518958_)
                                           (if (gx#stx-pair? _hd1860518958_)
                                               (let ((_e1860818961_
                                                      (gx#stx-e
                                                       _hd1860518958_)))
                                                 (let ((_lp-hd1860918964_
                                                        (##car _e1860818961_))
                                                       (_lp-tl1861018966_
                                                        (##cdr _e1860818961_)))
                                                   (if (gx#stx-pair?
                                                        _lp-hd1860918964_)
                                                       (let ((_e1861118969_
                                                              (gx#stx-e
                                                               _lp-hd1860918964_)))
                                                         (let ((_hd1861218972_
                                                                (##car _e1861118969_))
                                                               (_tl1861318974_
                                                                (##cdr _e1861118969_)))
                                                           (if (gx#stx-pair?
                                                                _hd1861218972_)
                                                               (let ((_e1861418977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1861218972_)))
                         (let ((_hd1861518980_ (##car _e1861418977_))
                               (_tl1861618982_ (##cdr _e1861418977_)))
                           (if (gx#stx-null? _tl1861618982_)
                               (if (gx#stx-pair? _tl1861318974_)
                                   (let ((_e1861718985_
                                          (gx#stx-e _tl1861318974_)))
                                     (let ((_hd1861818988_
                                            (##car _e1861718985_))
                                           (_tl1861918990_
                                            (##cdr _e1861718985_)))
                                       (if (gx#stx-pair? _hd1861818988_)
                                           (let ((_e1862018993_
                                                  (gx#stx-e _hd1861818988_)))
                                             (let ((_hd1862118996_
                                                    (##car _e1862018993_))
                                                   (_tl1862218998_
                                                    (##cdr _e1862018993_)))
                                               (if (gx#identifier?
                                                    _hd1862118996_)
                                                   (if (gx#stx-eq?
                                                        '%#ref
                                                        _hd1862118996_)
                                                       (if (gx#stx-pair?
                                                            _tl1862218998_)
                                                           (let ((_e1862319001_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1862218998_)))
                     (let ((_hd1862419004_ (##car _e1862319001_))
                           (_tl1862519006_ (##cdr _e1862319001_)))
                       (if (gx#stx-null? _tl1862519006_)
                           (if (gx#stx-null? _tl1861918990_)
                               (_loop1860718955_ _lp-tl1861018966_)
                               (_g1857818929_ _g1858218932_))
                           (_g1857818929_ _g1858218932_))))
                   (_g1857818929_ _g1858218932_))
               (_g1857818929_ _g1858218932_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1857818929_
                                                    _g1858218932_))))
                                           (_g1857818929_ _g1858218932_))))
                                   (_g1857818929_ _g1858218932_))
                               (_g1857818929_ _g1858218932_))))
                       (_g1857818929_ _g1858218932_))))
               (_g1857818929_ _g1858218932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (if (gx#stx-pair?
                                                      _tl1860318947_)
                                                     (let ((_e1862619010_
                                                            (gx#stx-e
                                                             _tl1860318947_)))
                                                       (let ((_hd1862719013_
                                                              (##car _e1862619010_))
                                                             (_tl1862819015_
                                                              (##cdr _e1862619010_)))
                                                         (if (gx#stx-null?
                                                              _tl1862819015_)
                                                             ((lambda ()
                                                                _expr18575_))
                                                             (_g1857818929_
                                                              _g1858218932_))))
                                                     (_g1857818929_
                                                      _g1858218932_)))))))
                                 (_loop1860718955_ _target1860418950_))
                               (_g1857818929_ _g1858218932_)))))
                     (_g1857818929_ _g1858218932_))
                 (_g1857818929_ _g1858218932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1857818929_ _g1858218932_))
                                             (_g1857818929_ _g1858218932_))
                                         (_g1857818929_ _g1858218932_))))
                                 (_g1857818929_ _g1858218932_))))
                          (_g1857619083_
                           (lambda (_g1858219023_)
                             (if (gx#stx-pair? _g1858219023_)
                                 (let ((_e1858619025_
                                        (gx#stx-e _g1858219023_)))
                                   (let ((_hd1858719028_ (##car _e1858619025_))
                                         (_tl1858819030_
                                          (##cdr _e1858619025_)))
                                     (if (gx#identifier? _hd1858719028_)
                                         (if (gx#stx-eq? '%#if _hd1858719028_)
                                             (if (gx#stx-pair? _tl1858819030_)
                                                 (let ((_e1858919033_
                                                        (gx#stx-e
                                                         _tl1858819030_)))
                                                   (let ((_hd1859019036_
                                                          (##car _e1858919033_))
                                                         (_tl1859119038_
                                                          (##cdr _e1858919033_)))
                                                     (if (gx#stx-pair?
                                                          _tl1859119038_)
                                                         (let ((_e1859219041_
                                                                (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1859119038_)))
                   (let ((_hd1859319044_ (##car _e1859219041_))
                         (_tl1859419046_ (##cdr _e1859219041_)))
                     (if (gx#stx-pair? _tl1859419046_)
                         (let ((_e1859519049_ (gx#stx-e _tl1859419046_)))
                           (let ((_hd1859619052_ (##car _e1859519049_))
                                 (_tl1859719054_ (##cdr _e1859519049_)))
                             (if (gx#stx-null? _tl1859719054_)
                                 ((lambda (_L19057_ _L19058_ _L19059_)
                                    (let ((_$e19077_
                                           (_assert-e16917_ _L19059_)))
                                      (if (eq? '#t _$e19077_)
                                          (_optimize-e16914_ _L19058_)
                                          (if (eq? '#f _$e19077_)
                                              (_optimize-e16914_ _L19057_)
                                              (let ((_K19080_
                                                     (_optimize-t16915_
                                                      _L19058_
                                                      _L19059_))
                                                    (_E19081_
                                                     (_optimize-f__3477034771_
                                                      _L19057_
                                                      _L19059_)))
                                                (if (equal? (gxc#apply-generate-runtime
                                                             _K19080_)
                                                            (gxc#apply-generate-runtime
                                                             _E19081_))
                                                    _K19080_
                                                    (cons '%#if
                                                          (cons _L19059_
                                                                (cons _K19080_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _E19081_ '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _hd1859619052_
                                  _hd1859319044_
                                  _hd1859019036_)
                                 (_g1857719020_ _g1858219023_))))
                         (_g1857719020_ _g1858219023_))))
                 (_g1857719020_ _g1858219023_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1857719020_ _g1858219023_))
                                             (_g1857719020_ _g1858219023_))
                                         (_g1857719020_ _g1858219023_))))
                                 (_g1857719020_ _g1858219023_)))))
                     (_g1857619083_ _expr18575_))))
                (_optimize-t16915_
                 (lambda (_expr18571_ _test18572_)
                   (_do-assert16905_
                    (cons (cons _test18572_ '#t) '())
                    (lambda () (_optimize-e16914_ _expr18571_)))))
                (_optimize-f__3477034771_
                 (lambda (_expr17948_ _test17949_)
                   (_do-assert16905_
                    (if _test17949_ (cons (cons _test17949_ '#f) '()) '())
                    (lambda ()
                      (let* ((_g1795317988_
                              (lambda (_g1795417985_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g1795417985_)))
                             (_g1795217995_
                              (lambda (_g1795417991_)
                                ((lambda () (_optimize-e16914_ _expr17948_)))))
                             (_g1795118558_
                              (lambda (_g1795417998_)
                                (if (gx#stx-pair? _g1795417998_)
                                    (let ((_e1795718000_
                                           (gx#stx-e _g1795417998_)))
                                      (let ((_hd1795818003_
                                             (##car _e1795718000_))
                                            (_tl1795918005_
                                             (##cdr _e1795718000_)))
                                        (if (gx#identifier? _hd1795818003_)
                                            (if (gx#stx-eq?
                                                 '%#call
                                                 _hd1795818003_)
                                                (if (gx#stx-pair?
                                                     _tl1795918005_)
                                                    (let ((_e1796018008_
                                                           (gx#stx-e
                                                            _tl1795918005_)))
                                                      (let ((_hd1796118011_
                                                             (##car _e1796018008_))
                                                            (_tl1796218013_
                                                             (##cdr _e1796018008_)))
                                                        (if (gx#stx-pair?
                                                             _hd1796118011_)
                                                            (let ((_e1796318016_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1796118011_)))
                      (let ((_hd1796418019_ (##car _e1796318016_))
                            (_tl1796518021_ (##cdr _e1796318016_)))
                        (if (gx#identifier? _hd1796418019_)
                            (if (gx#stx-eq? '%#ref _hd1796418019_)
                                (if (gx#stx-pair? _tl1796518021_)
                                    (let ((_e1796618024_
                                           (gx#stx-e _tl1796518021_)))
                                      (let ((_hd1796718027_
                                             (##car _e1796618024_))
                                            (_tl1796818029_
                                             (##cdr _e1796618024_)))
                                        (if (gx#stx-null? _tl1796818029_)
                                            (if (gx#stx-pair/null?
                                                 _tl1796218013_)
                                                (if (fx>= (gx#stx-length
                                                           _tl1796218013_)
                                                          '0)
                                                    (let ((_g34939_
                                                           (gx#syntax-split-splice
                                                            _tl1796218013_
                                                            '0)))
                                                      (begin
                                                        (let ((_g34940_
                                                               (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g34939_)
                           (##vector-length _g34939_)
                           1)))
                  (if (not (##fx= _g34940_ 2))
                      (error "Context expects 2 values" _g34940_)))
                (let ((_target1796918032_ (##vector-ref _g34939_ 0))
                      (_tl1797118034_ (##vector-ref _g34939_ 1)))
                  (if (gx#stx-null? _tl1797118034_)
                      (letrec ((_loop1797218037_
                                (lambda (_hd1797018040_ _id1797618042_)
                                  (if (gx#stx-pair? _hd1797018040_)
                                      (let ((_e1797318045_
                                             (gx#stx-e _hd1797018040_)))
                                        (let ((_lp-hd1797418048_
                                               (##car _e1797318045_))
                                              (_lp-tl1797518050_
                                               (##cdr _e1797318045_)))
                                          (if (gx#stx-pair? _lp-hd1797418048_)
                                              (let ((_e1797818053_
                                                     (gx#stx-e
                                                      _lp-hd1797418048_)))
                                                (let ((_hd1797918056_
                                                       (##car _e1797818053_))
                                                      (_tl1798018058_
                                                       (##cdr _e1797818053_)))
                                                  (if (gx#identifier?
                                                       _hd1797918056_)
                                                      (if (gx#stx-eq?
                                                           '%#ref
                                                           _hd1797918056_)
                                                          (if (gx#stx-pair?
                                                               _tl1798018058_)
                                                              (let ((_e1798118061_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1798018058_)))
                        (let ((_hd1798218064_ (##car _e1798118061_))
                              (_tl1798318066_ (##cdr _e1798118061_)))
                          (if (gx#stx-null? _tl1798318066_)
                              (_loop1797218037_
                               _lp-tl1797518050_
                               (cons _hd1798218064_ _id1797618042_))
                              (_g1795217995_ _g1795417998_))))
                      (_g1795217995_ _g1795417998_))
                  (_g1795217995_ _g1795417998_))
              (_g1795217995_ _g1795417998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1795217995_ _g1795417998_))))
                                      (let ((_id1797718069_
                                             (reverse _id1797618042_)))
                                        ((lambda (_L18072_ _L18073_)
                                           (let ((_$e18096_
                                                  (_lookup-block16922_
                                                   _L18073_)))
                                             (if _$e18096_
                                                 ((lambda (_block18099_)
                                                    (let ((_inline18108_
                                                           (_inline-block16923_
                                                            _block18099_
                                                            (begin
                                                              '#!void
                                                              (foldr1 (lambda (_g1810018103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _g1810118105_)
                                (cons _g1810018103_ _g1810118105_))
                              '()
                              _L18072_)))))
              (let _fuse18110_ ((_inline18112_ _inline18108_)
                                (_expr18113_ _expr17948_))
                (let* ((_g1811918207_
                        (lambda (_g1812018204_)
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g1812018204_)))
                       (_g1811818214_
                        (lambda (_g1812018210_)
                          ((lambda ()
                             (_optimize-f__0__3477234773_ _inline18112_)))))
                       (_g1811718339_
                        (lambda (_g1812018217_)
                          (if (gx#stx-pair? _g1812018217_)
                              (let ((_e1817418219_ (gx#stx-e _g1812018217_)))
                                (let ((_hd1817518222_ (##car _e1817418219_))
                                      (_tl1817618224_ (##cdr _e1817418219_)))
                                  (if (gx#identifier? _hd1817518222_)
                                      (if (gx#stx-eq?
                                           '%#let-values
                                           _hd1817518222_)
                                          (if (gx#stx-pair? _tl1817618224_)
                                              (let ((_e1817718227_
                                                     (gx#stx-e
                                                      _tl1817618224_)))
                                                (let ((_hd1817818230_
                                                       (##car _e1817718227_))
                                                      (_tl1817918232_
                                                       (##cdr _e1817718227_)))
                                                  (if (gx#stx-pair/null?
                                                       _hd1817818230_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1817818230_)
                        '0)
                  (let ((_g34941_ (gx#syntax-split-splice _hd1817818230_ '0)))
                    (begin
                      (let ((_g34942_
                             (if (##values? _g34941_)
                                 (##vector-length _g34941_)
                                 1)))
                        (if (not (##fx= _g34942_ 2))
                            (error "Context expects 2 values" _g34942_)))
                      (let ((_target1818018235_ (##vector-ref _g34941_ 0))
                            (_tl1818218237_ (##vector-ref _g34941_ 1)))
                        (if (gx#stx-null? _tl1818218237_)
                            (letrec ((_loop1818318240_
                                      (lambda (_hd1818118243_
                                               _expr1818718245_
                                               _id1818818247_)
                                        (if (gx#stx-pair? _hd1818118243_)
                                            (let ((_e1818418250_
                                                   (gx#stx-e _hd1818118243_)))
                                              (let ((_lp-hd1818518253_
                                                     (##car _e1818418250_))
                                                    (_lp-tl1818618255_
                                                     (##cdr _e1818418250_)))
                                                (if (gx#stx-pair?
                                                     _lp-hd1818518253_)
                                                    (let ((_e1819118258_
                                                           (gx#stx-e
                                                            _lp-hd1818518253_)))
                                                      (let ((_hd1819218261_
                                                             (##car _e1819118258_))
                                                            (_tl1819318263_
                                                             (##cdr _e1819118258_)))
                                                        (if (gx#stx-pair?
                                                             _hd1819218261_)
                                                            (let ((_e1819418266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1819218261_)))
                      (let ((_hd1819518269_ (##car _e1819418266_))
                            (_tl1819618271_ (##cdr _e1819418266_)))
                        (if (gx#stx-null? _tl1819618271_)
                            (if (gx#stx-pair? _tl1819318263_)
                                (let ((_e1819718274_
                                       (gx#stx-e _tl1819318263_)))
                                  (let ((_hd1819818277_ (##car _e1819718274_))
                                        (_tl1819918279_ (##cdr _e1819718274_)))
                                    (if (gx#stx-null? _tl1819918279_)
                                        (_loop1818318240_
                                         _lp-tl1818618255_
                                         (cons _hd1819818277_ _expr1818718245_)
                                         (cons _hd1819518269_ _id1818818247_))
                                        (_g1811818214_ _g1812018217_))))
                                (_g1811818214_ _g1812018217_))
                            (_g1811818214_ _g1812018217_))))
                    (_g1811818214_ _g1812018217_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1811818214_
                                                     _g1812018217_))))
                                            (let ((_expr1818918282_
                                                   (reverse _expr1818718245_))
                                                  (_id1819018284_
                                                   (reverse _id1818818247_)))
                                              (if (gx#stx-pair? _tl1817918232_)
                                                  (let ((_e1820018287_
                                                         (gx#stx-e
                                                          _tl1817918232_)))
                                                    (let ((_hd1820118290_
                                                           (##car _e1820018287_))
                                                          (_tl1820218292_
                                                           (##cdr _e1820018287_)))
                                                      (if (gx#stx-null?
                                                           _tl1820218292_)
                                                          ((lambda (_L18295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L18296_
                            _L18297_)
                     (_bind-e__3477434775_
                      (map cons
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1832218325_ _g1832318327_)
                                       (cons _g1832218325_ _g1832318327_))
                                     '()
                                     _L18297_))
                           (begin
                             '#!void
                             (foldr1 (lambda (_g1832918332_ _g1833018334_)
                                       (cons _g1832918332_ _g1833018334_))
                                     '()
                                     _L18296_)))
                      _L18295_
                      (lambda (_e18337_) (_fuse18110_ _e18337_ _e18337_))))
                   _hd1820118290_
                   _expr1818918282_
                   _id1819018284_)
                  (_g1811818214_ _g1812018217_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1811818214_
                                                   _g1812018217_)))))))
                              (_loop1818318240_ _target1818018235_ '() '()))
                            (_g1811818214_ _g1812018217_)))))
                  (_g1811818214_ _g1812018217_))
              (_g1811818214_ _g1812018217_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1811818214_ _g1812018217_))
                                          (_g1811818214_ _g1812018217_))
                                      (_g1811818214_ _g1812018217_))))
                              (_g1811818214_ _g1812018217_))))
                       (_g1811618480_
                        (lambda (_g1812018342_)
                          (if (gx#stx-pair? _g1812018342_)
                              (let ((_e1814018344_ (gx#stx-e _g1812018342_)))
                                (let ((_hd1814118347_ (##car _e1814018344_))
                                      (_tl1814218349_ (##cdr _e1814018344_)))
                                  (if (gx#identifier? _hd1814118347_)
                                      (if (gx#stx-eq?
                                           '%#let-values
                                           _hd1814118347_)
                                          (if (gx#stx-pair? _tl1814218349_)
                                              (let ((_e1814318352_
                                                     (gx#stx-e
                                                      _tl1814218349_)))
                                                (let ((_hd1814418355_
                                                       (##car _e1814318352_))
                                                      (_tl1814518357_
                                                       (##cdr _e1814318352_)))
                                                  (if (gx#stx-pair/null?
                                                       _hd1814418355_)
                                                      (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1814418355_)
                        '0)
                  (let ((_g34943_ (gx#syntax-split-splice _hd1814418355_ '0)))
                    (begin
                      (let ((_g34944_
                             (if (##values? _g34943_)
                                 (##vector-length _g34943_)
                                 1)))
                        (if (not (##fx= _g34944_ 2))
                            (error "Context expects 2 values" _g34944_)))
                      (let ((_target1814618360_ (##vector-ref _g34943_ 0))
                            (_tl1814818362_ (##vector-ref _g34943_ 1)))
                        (if (gx#stx-null? _tl1814818362_)
                            (letrec ((_loop1814918365_
                                      (lambda (_hd1814718368_)
                                        (if (gx#stx-pair? _hd1814718368_)
                                            (let ((_e1815018371_
                                                   (gx#stx-e _hd1814718368_)))
                                              (let ((_lp-hd1815118374_
                                                     (##car _e1815018371_))
                                                    (_lp-tl1815218376_
                                                     (##cdr _e1815018371_)))
                                                (if (gx#stx-pair?
                                                     _lp-hd1815118374_)
                                                    (let ((_e1815318379_
                                                           (gx#stx-e
                                                            _lp-hd1815118374_)))
                                                      (let ((_hd1815418382_
                                                             (##car _e1815318379_))
                                                            (_tl1815518384_
                                                             (##cdr _e1815318379_)))
                                                        (if (gx#stx-pair?
                                                             _hd1815418382_)
                                                            (let ((_e1815618387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1815418382_)))
                      (let ((_hd1815718390_ (##car _e1815618387_))
                            (_tl1815818392_ (##cdr _e1815618387_)))
                        (if (gx#stx-null? _tl1815818392_)
                            (if (gx#stx-pair? _tl1815518384_)
                                (let ((_e1815918395_
                                       (gx#stx-e _tl1815518384_)))
                                  (let ((_hd1816018398_ (##car _e1815918395_))
                                        (_tl1816118400_ (##cdr _e1815918395_)))
                                    (if (gx#stx-pair? _hd1816018398_)
                                        (let ((_e1816218403_
                                               (gx#stx-e _hd1816018398_)))
                                          (let ((_hd1816318406_
                                                 (##car _e1816218403_))
                                                (_tl1816418408_
                                                 (##cdr _e1816218403_)))
                                            (if (gx#identifier? _hd1816318406_)
                                                (if (gx#stx-eq?
                                                     '%#ref
                                                     _hd1816318406_)
                                                    (if (gx#stx-pair?
                                                         _tl1816418408_)
                                                        (let ((_e1816518411_
                                                               (gx#stx-e
                                                                _tl1816418408_)))
                                                          (let ((_hd1816618414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1816518411_))
                        (_tl1816718416_ (##cdr _e1816518411_)))
                    (if (gx#stx-null? _tl1816718416_)
                        (if (gx#stx-null? _tl1816118400_)
                            (_loop1814918365_ _lp-tl1815218376_)
                            (_g1811718339_ _g1812018342_))
                        (_g1811718339_ _g1812018342_))))
                (_g1811718339_ _g1812018342_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1811718339_
                                                     _g1812018342_))
                                                (_g1811718339_
                                                 _g1812018342_))))
                                        (_g1811718339_ _g1812018342_))))
                                (_g1811718339_ _g1812018342_))
                            (_g1811718339_ _g1812018342_))))
                    (_g1811718339_ _g1812018342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1811718339_
                                                     _g1812018342_))))
                                            (let ()
                                              (if (gx#stx-pair? _tl1814518357_)
                                                  (let ((_e1816818420_
                                                         (gx#stx-e
                                                          _tl1814518357_)))
                                                    (let ((_hd1816918423_
                                                           (##car _e1816818420_))
                                                          (_tl1817018425_
                                                           (##cdr _e1816818420_)))
                                                      (if (gx#stx-null?
                                                           _tl1817018425_)
                                                          ((lambda (_L18428_)
                                                             (let* ((_g1844618455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1844718452_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1844718452_)))
                            (_g1844518462_
                             (lambda (_g1844718458_)
                               ((lambda () _expr18113_))))
                            (_g1844418477_
                             (lambda (_g1844718465_)
                               (if (gx#stx-pair? _g1844718465_)
                                   (let ((_e1844818467_
                                          (gx#stx-e _g1844718465_)))
                                     (let ((_hd1844918470_
                                            (##car _e1844818467_))
                                           (_tl1845018472_
                                            (##cdr _e1844818467_)))
                                       (if (gx#identifier? _hd1844918470_)
                                           (if (gx#stx-eq?
                                                '%#call
                                                _hd1844918470_)
                                               ((lambda () _inline18112_))
                                               (_g1844518462_ _g1844718465_))
                                           (_g1844518462_ _g1844718465_))))
                                   (_g1844518462_ _g1844718465_)))))
                       (_g1844418477_ _L18428_)))
                   _hd1816918423_)
                  (_g1811718339_ _g1812018342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1811718339_
                                                   _g1812018342_)))))))
                              (_loop1814918365_ _target1814618360_))
                            (_g1811718339_ _g1812018342_)))))
                  (_g1811718339_ _g1812018342_))
              (_g1811718339_ _g1812018342_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1811718339_ _g1812018342_))
                                          (_g1811718339_ _g1812018342_))
                                      (_g1811718339_ _g1812018342_))))
                              (_g1811718339_ _g1812018342_))))
                       (_g1811518495_
                        (lambda (_g1812018483_)
                          (if (gx#stx-pair? _g1812018483_)
                              (let ((_e1813618485_ (gx#stx-e _g1812018483_)))
                                (let ((_hd1813718488_ (##car _e1813618485_))
                                      (_tl1813818490_ (##cdr _e1813618485_)))
                                  (if (gx#identifier? _hd1813718488_)
                                      (if (gx#stx-eq?
                                           '%#letrec-values
                                           _hd1813718488_)
                                          ((lambda () _expr18113_))
                                          (_g1811618480_ _g1812018483_))
                                      (_g1811618480_ _g1812018483_))))
                              (_g1811618480_ _g1812018483_))))
                       (_g1811418555_
                        (lambda (_g1812018498_)
                          (if (gx#stx-pair? _g1812018498_)
                              (let ((_e1812418500_ (gx#stx-e _g1812018498_)))
                                (let ((_hd1812518503_ (##car _e1812418500_))
                                      (_tl1812618505_ (##cdr _e1812418500_)))
                                  (if (gx#identifier? _hd1812518503_)
                                      (if (gx#stx-eq? '%#if _hd1812518503_)
                                          (if (gx#stx-pair? _tl1812618505_)
                                              (let ((_e1812718508_
                                                     (gx#stx-e
                                                      _tl1812618505_)))
                                                (let ((_hd1812818511_
                                                       (##car _e1812718508_))
                                                      (_tl1812918513_
                                                       (##cdr _e1812718508_)))
                                                  (if (gx#stx-pair?
                                                       _tl1812918513_)
                                                      (let ((_e1813018516_
                                                             (gx#stx-e
                                                              _tl1812918513_)))
                                                        (let ((_hd1813118519_
                                                               (##car _e1813018516_))
                                                              (_tl1813218521_
                                                               (##cdr _e1813018516_)))
                                                          (if (gx#stx-pair?
                                                               _tl1813218521_)
                                                              (let ((_e1813318524_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _tl1813218521_)))
                        (let ((_hd1813418527_ (##car _e1813318524_))
                              (_tl1813518529_ (##cdr _e1813318524_)))
                          (if (gx#stx-null? _tl1813518529_)
                              ((lambda (_L18532_ _L18533_ _L18534_)
                                 (let ((_$e18552_ (_assert-e16917_ _L18534_)))
                                   (if (eq? '#t _$e18552_)
                                       (_optimize-e16914_ _L18533_)
                                       (if (eq? '#f _$e18552_)
                                           (_optimize-f__0__3477234773_
                                            _L18532_)
                                           _expr18113_))))
                               _hd1813418527_
                               _hd1813118519_
                               _hd1812818511_)
                              (_g1811518495_ _g1812018498_))))
                      (_g1811518495_ _g1812018498_))))
              (_g1811518495_ _g1812018498_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1811518495_ _g1812018498_))
                                          (_g1811518495_ _g1812018498_))
                                      (_g1811518495_ _g1812018498_))))
                              (_g1811518495_ _g1812018498_)))))
                  (_g1811418555_ _inline18112_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _$e18096_)
                                                 _expr17948_)))
                                         _id1797718069_
                                         _hd1796718027_))))))
                        (_loop1797218037_ _target1796918032_ '()))
                      (_g1795217995_ _g1795417998_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1795217995_
                                                     _g1795417998_))
                                                (_g1795217995_ _g1795417998_))
                                            (_g1795217995_ _g1795417998_))))
                                    (_g1795217995_ _g1795417998_))
                                (_g1795217995_ _g1795417998_))
                            (_g1795217995_ _g1795417998_))))
                    (_g1795217995_ _g1795417998_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1795217995_
                                                     _g1795417998_))
                                                (_g1795217995_ _g1795417998_))
                                            (_g1795217995_ _g1795417998_))))
                                    (_g1795217995_ _g1795417998_)))))
                        (_g1795118558_ _expr17948_))))))
                (_optimize-f__0__3477234773_
                 (lambda (_expr18564_)
                   (let ((_test18566_ '#f))
                     (_optimize-f__3477034771_ _expr18564_ _test18566_))))
                (_optimize-f16916_
                 (lambda _g34946_
                   (let ((_g34945_ (length _g34946_)))
                     (cond ((##fx= _g34945_ 1)
                            (apply _optimize-f__0__3477234773_ _g34946_))
                           ((##fx= _g34945_ 2)
                            (apply _optimize-f__3477034771_ _g34946_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g34946_))))))
                (_assert-e16917_
                 (lambda (_expr17470_)
                   (let* ((_sexpr17472_
                           (gxc#apply-generate-runtime _expr17470_))
                          (_$e17474_ (assoc _sexpr17472_ _env-assert16902_)))
                     (if _$e17474_
                         (cdr _$e17474_)
                         (let* ((_g1747917535_
                                 (lambda (_g1748017532_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax"
                                    _g1748017532_)))
                                (_g1747817542_
                                 (lambda (_g1748017538_)
                                   ((lambda () '#!void))))
                                (_g1747717855_
                                 (lambda (_g1748017545_)
                                   (if (gx#stx-pair? _g1748017545_)
                                       (let ((_e1750717547_
                                              (gx#stx-e _g1748017545_)))
                                         (let ((_hd1750817550_
                                                (##car _e1750717547_))
                                               (_tl1750917552_
                                                (##cdr _e1750717547_)))
                                           (if (gx#identifier? _hd1750817550_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1750817550_)
                                                   (if (gx#stx-pair?
                                                        _tl1750917552_)
                                                       (let ((_e1751017555_
                                                              (gx#stx-e
                                                               _tl1750917552_)))
                                                         (let ((_hd1751117558_
                                                                (##car _e1751017555_))
                                                               (_tl1751217560_
                                                                (##cdr _e1751017555_)))
                                                           (if (gx#stx-pair?
                                                                _hd1751117558_)
                                                               (let ((_e1751317563_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1751117558_)))
                         (let ((_hd1751417566_ (##car _e1751317563_))
                               (_tl1751517568_ (##cdr _e1751317563_)))
                           (if (gx#identifier? _hd1751417566_)
                               (if (gx#stx-eq? '%#ref _hd1751417566_)
                                   (if (gx#stx-pair? _tl1751517568_)
                                       (let ((_e1751617571_
                                              (gx#stx-e _tl1751517568_)))
                                         (let ((_hd1751717574_
                                                (##car _e1751617571_))
                                               (_tl1751817576_
                                                (##cdr _e1751617571_)))
                                           (if (gx#stx-null? _tl1751817576_)
                                               (if (gx#stx-pair?
                                                    _tl1751217560_)
                                                   (let ((_e1751917579_
                                                          (gx#stx-e
                                                           _tl1751217560_)))
                                                     (let ((_hd1752017582_
                                                            (##car _e1751917579_))
                                                           (_tl1752117584_
                                                            (##cdr _e1751917579_)))
                                                       (if (gx#stx-pair?
                                                            _tl1752117584_)
                                                           (let ((_e1752217587_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _tl1752117584_)))
                     (let ((_hd1752317590_ (##car _e1752217587_))
                           (_tl1752417592_ (##cdr _e1752217587_)))
                       (if (gx#stx-pair? _hd1752317590_)
                           (let ((_e1752517595_ (gx#stx-e _hd1752317590_)))
                             (let ((_hd1752617598_ (##car _e1752517595_))
                                   (_tl1752717600_ (##cdr _e1752517595_)))
                               (if (gx#identifier? _hd1752617598_)
                                   (if (gx#stx-eq? '%#quote _hd1752617598_)
                                       (if (gx#stx-pair? _tl1752717600_)
                                           (let ((_e1752817603_
                                                  (gx#stx-e _tl1752717600_)))
                                             (let ((_hd1752917606_
                                                    (##car _e1752817603_))
                                                   (_tl1753017608_
                                                    (##cdr _e1752817603_)))
                                               (if (gx#stx-null?
                                                    _tl1753017608_)
                                                   (if (gx#stx-null?
                                                        _tl1752417592_)
                                                       ((lambda (_L17611_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L17612_
                         _L17613_)
                  (let ((_$e17642_ (gxc#identifier-symbol _L17613_)))
                    (if (let ((_$e17645_ (eq? '##fx= _$e17642_)))
                          (if _$e17645_ _$e17645_ (eq? 'fx= _$e17642_)))
                        (let* ((_g1764917678_
                                (lambda (_g1765017675_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g1765017675_)))
                               (_g1764817685_
                                (lambda (_g1765017681_) ((lambda () '#!void))))
                               (_g1764717777_
                                (lambda (_g1765017688_)
                                  (if (gx#stx-pair? _g1765017688_)
                                      (let ((_e1765317690_
                                             (gx#stx-e _g1765017688_)))
                                        (let ((_hd1765417693_
                                               (##car _e1765317690_))
                                              (_tl1765517695_
                                               (##cdr _e1765317690_)))
                                          (if (gx#identifier? _hd1765417693_)
                                              (if (gx#stx-eq?
                                                   '%#call
                                                   _hd1765417693_)
                                                  (if (gx#stx-pair?
                                                       _tl1765517695_)
                                                      (let ((_e1765617698_
                                                             (gx#stx-e
                                                              _tl1765517695_)))
                                                        (let ((_hd1765717701_
                                                               (##car _e1765617698_))
                                                              (_tl1765817703_
                                                               (##cdr _e1765617698_)))
                                                          (if (gx#stx-pair?
                                                               _hd1765717701_)
                                                              (let ((_e1765917706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-e _hd1765717701_)))
                        (let ((_hd1766017709_ (##car _e1765917706_))
                              (_tl1766117711_ (##cdr _e1765917706_)))
                          (if (gx#identifier? _hd1766017709_)
                              (if (gx#stx-eq? '%#ref _hd1766017709_)
                                  (if (gx#stx-pair? _tl1766117711_)
                                      (let ((_e1766217714_
                                             (gx#stx-e _tl1766117711_)))
                                        (let ((_hd1766317717_
                                               (##car _e1766217714_))
                                              (_tl1766417719_
                                               (##cdr _e1766217714_)))
                                          (if (gx#stx-null? _tl1766417719_)
                                              (if (gx#stx-pair? _tl1765817703_)
                                                  (let ((_e1766517722_
                                                         (gx#stx-e
                                                          _tl1765817703_)))
                                                    (let ((_hd1766617725_
                                                           (##car _e1766517722_))
                                                          (_tl1766717727_
                                                           (##cdr _e1766517722_)))
                                                      (if (gx#stx-pair?
                                                           _hd1766617725_)
                                                          (let ((_e1766817730_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1766617725_)))
                    (let ((_hd1766917733_ (##car _e1766817730_))
                          (_tl1767017735_ (##cdr _e1766817730_)))
                      (if (gx#identifier? _hd1766917733_)
                          (if (gx#stx-eq? '%#ref _hd1766917733_)
                              (if (gx#stx-pair? _tl1767017735_)
                                  (let ((_e1767117738_
                                         (gx#stx-e _tl1767017735_)))
                                    (let ((_hd1767217741_
                                           (##car _e1767117738_))
                                          (_tl1767317743_
                                           (##cdr _e1767117738_)))
                                      (if (gx#stx-null? _tl1767317743_)
                                          (if (gx#stx-null? _tl1766717727_)
                                              ((lambda (_L17746_ _L17747_)
                                                 (let ((_$e17772_
                                                        (_countf-symbol16908_
                                                         _L17747_)))
                                                   (if _$e17772_
                                                       ((lambda (_sym17775_)
                                                          (_assert-count16919_
                                                           _L17746_
                                                           _sym17775_
                                                           (gx#stx-e
                                                            _L17611_)))
                                                        _$e17772_)
                                                       '#!void)))
                                               _hd1767217741_
                                               _hd1766317717_)
                                              (_g1764817685_ _g1765017688_))
                                          (_g1764817685_ _g1765017688_))))
                                  (_g1764817685_ _g1765017688_))
                              (_g1764817685_ _g1765017688_))
                          (_g1764817685_ _g1765017688_))))
                  (_g1764817685_ _g1765017688_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1764817685_
                                                   _g1765017688_))
                                              (_g1764817685_ _g1765017688_))))
                                      (_g1764817685_ _g1765017688_))
                                  (_g1764817685_ _g1765017688_))
                              (_g1764817685_ _g1765017688_))))
                      (_g1764817685_ _g1765017688_))))
              (_g1764817685_ _g1765017688_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g1764817685_
                                                   _g1765017688_))
                                              (_g1764817685_ _g1765017688_))))
                                      (_g1764817685_ _g1765017688_)))))
                          (_g1764717777_ _L17612_))
                        (if (let ((_$e17780_ (eq? '##eq? _$e17642_)))
                              (if _$e17780_
                                  _$e17780_
                                  (let ((_$e17783_ (eq? 'eq? _$e17642_)))
                                    (if _$e17783_
                                        _$e17783_
                                        (let ((_$e17786_
                                               (eq? '##eqv? _$e17642_)))
                                          (if _$e17786_
                                              _$e17786_
                                              (let ((_$e17789_
                                                     (eq? 'eqv? _$e17642_)))
                                                (if _$e17789_
                                                    _$e17789_
                                                    (let ((_$e17792_
                                                           (eq? '##equal?
                                                                _$e17642_)))
                                                      (if _$e17792_
                                                          _$e17792_
                                                          (eq? 'equal?
                                                               _$e17642_)))))))))))
                            ((lambda (_sym17795_)
                               (let* ((_g1779817811_
                                       (lambda (_g1779917808_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _g1779917808_)))
                                      (_g1779717818_
                                       (lambda (_g1779917814_)
                                         ((lambda () '#!void))))
                                      (_g1779617852_
                                       (lambda (_g1779917821_)
                                         (if (gx#stx-pair? _g1779917821_)
                                             (let ((_e1780117823_
                                                    (gx#stx-e _g1779917821_)))
                                               (let ((_hd1780217826_
                                                      (##car _e1780117823_))
                                                     (_tl1780317828_
                                                      (##cdr _e1780117823_)))
                                                 (if (gx#identifier?
                                                      _hd1780217826_)
                                                     (if (gx#stx-eq?
                                                          '%#ref
                                                          _hd1780217826_)
                                                         (if (gx#stx-pair?
                                                              _tl1780317828_)
                                                             (let ((_e1780417831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _tl1780317828_)))
                       (let ((_hd1780517834_ (##car _e1780417831_))
                             (_tl1780617836_ (##cdr _e1780417831_)))
                         (if (gx#stx-null? _tl1780617836_)
                             ((lambda (_L17839_)
                                (_assert-eqf16920_
                                 _L17839_
                                 (_eqf-symbol16909_ _sym17795_)
                                 (gx#stx-e _L17611_)))
                              _hd1780517834_)
                             (_g1779717818_ _g1779917821_))))
                     (_g1779717818_ _g1779917821_))
                 (_g1779717818_ _g1779917821_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1779717818_
                                                      _g1779917821_))))
                                             (_g1779717818_ _g1779917821_)))))
                                 (_g1779617852_ _L17612_)))
                             _$e17642_)
                            '#!void))))
                _hd1752917606_
                _hd1752017582_
                _hd1751717574_)
               (_g1747817542_ _g1748017545_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1747817542_
                                                    _g1748017545_))))
                                           (_g1747817542_ _g1748017545_))
                                       (_g1747817542_ _g1748017545_))
                                   (_g1747817542_ _g1748017545_))))
                           (_g1747817542_ _g1748017545_))))
                   (_g1747817542_ _g1748017545_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1747817542_
                                                    _g1748017545_))
                                               (_g1747817542_ _g1748017545_))))
                                       (_g1747817542_ _g1748017545_))
                                   (_g1747817542_ _g1748017545_))
                               (_g1747817542_ _g1748017545_))))
                       (_g1747817542_ _g1748017545_))))
               (_g1747817542_ _g1748017545_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1747817542_
                                                    _g1748017545_))
                                               (_g1747817542_ _g1748017545_))))
                                       (_g1747817542_ _g1748017545_))))
                                (_g1747617944_
                                 (lambda (_g1748017858_)
                                   (if (gx#stx-pair? _g1748017858_)
                                       (let ((_e1748317860_
                                              (gx#stx-e _g1748017858_)))
                                         (let ((_hd1748417863_
                                                (##car _e1748317860_))
                                               (_tl1748517865_
                                                (##cdr _e1748317860_)))
                                           (if (gx#identifier? _hd1748417863_)
                                               (if (gx#stx-eq?
                                                    '%#call
                                                    _hd1748417863_)
                                                   (if (gx#stx-pair?
                                                        _tl1748517865_)
                                                       (let ((_e1748617868_
                                                              (gx#stx-e
                                                               _tl1748517865_)))
                                                         (let ((_hd1748717871_
                                                                (##car _e1748617868_))
                                                               (_tl1748817873_
                                                                (##cdr _e1748617868_)))
                                                           (if (gx#stx-pair?
                                                                _hd1748717871_)
                                                               (let ((_e1748917876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#stx-e _hd1748717871_)))
                         (let ((_hd1749017879_ (##car _e1748917876_))
                               (_tl1749117881_ (##cdr _e1748917876_)))
                           (if (gx#identifier? _hd1749017879_)
                               (if (gx#stx-eq? '%#ref _hd1749017879_)
                                   (if (gx#stx-pair? _tl1749117881_)
                                       (let ((_e1749217884_
                                              (gx#stx-e _tl1749117881_)))
                                         (let ((_hd1749317887_
                                                (##car _e1749217884_))
                                               (_tl1749417889_
                                                (##cdr _e1749217884_)))
                                           (if (gx#stx-null? _tl1749417889_)
                                               (if (gx#stx-pair?
                                                    _tl1748817873_)
                                                   (let ((_e1749517892_
                                                          (gx#stx-e
                                                           _tl1748817873_)))
                                                     (let ((_hd1749617895_
                                                            (##car _e1749517892_))
                                                           (_tl1749717897_
                                                            (##cdr _e1749517892_)))
                                                       (if (gx#stx-pair?
                                                            _hd1749617895_)
                                                           (let ((_e1749817900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-e _hd1749617895_)))
                     (let ((_hd1749917903_ (##car _e1749817900_))
                           (_tl1750017905_ (##cdr _e1749817900_)))
                       (if (gx#identifier? _hd1749917903_)
                           (if (gx#stx-eq? '%#ref _hd1749917903_)
                               (if (gx#stx-pair? _tl1750017905_)
                                   (let ((_e1750117908_
                                          (gx#stx-e _tl1750017905_)))
                                     (let ((_hd1750217911_
                                            (##car _e1750117908_))
                                           (_tl1750317913_
                                            (##cdr _e1750117908_)))
                                       (if (gx#stx-null? _tl1750317913_)
                                           (if (gx#stx-null? _tl1749717897_)
                                               ((lambda (_L17916_ _L17917_)
                                                  (let ((_$e17939_
                                                         (_predicate-type16906_
                                                          _L17917_)))
                                                    (if _$e17939_
                                                        ((lambda (_t17942_)
                                                           (_assert-type16918_
                                                            _L17916_
                                                            _t17942_))
                                                         _$e17939_)
                                                        '#!void)))
                                                _hd1750217911_
                                                _hd1749317887_)
                                               (_g1747717855_ _g1748017858_))
                                           (_g1747717855_ _g1748017858_))))
                                   (_g1747717855_ _g1748017858_))
                               (_g1747717855_ _g1748017858_))
                           (_g1747717855_ _g1748017858_))))
                   (_g1747717855_ _g1748017858_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1747717855_
                                                    _g1748017858_))
                                               (_g1747717855_ _g1748017858_))))
                                       (_g1747717855_ _g1748017858_))
                                   (_g1747717855_ _g1748017858_))
                               (_g1747717855_ _g1748017858_))))
                       (_g1747717855_ _g1748017858_))))
               (_g1747717855_ _g1748017858_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g1747717855_
                                                    _g1748017858_))
                                               (_g1747717855_ _g1748017858_))))
                                       (_g1747717855_ _g1748017858_)))))
                           (_g1747617944_ _expr17470_))))))
                (_assert-type16918_
                 (lambda (_id17362_ _t17363_)
                   (letrec ((_super-e17365_
                             (lambda (_t17462_)
                               (let ((_tid1746317465_
                                      (##structure-ref
                                       _t17462_
                                       '2
                                       gxc#!struct-type::t
                                       '#f)))
                                 (if _tid1746317465_
                                     (let ((_tid17468_ _tid1746317465_))
                                       (gxc#optimizer-resolve-type _tid17468_))
                                     '#f)))))
                     (let _lp17367_ ((_rest17369_ _env-type16903_))
                       (let* ((_rest1737017378_ _rest17369_)
                              (_else1737217386_ (lambda () '#!void))
                              (_K1737417450_
                               (lambda (_rest17389_ _type-info17390_)
                                 (let* ((_type-info1739117403_
                                         _type-info17390_)
                                        (_else1739317411_
                                         (lambda () (_lp17367_ _rest17389_)))
                                        (_K1739517426_
                                         (lambda (_val17414_
                                                  _xt17415_
                                                  _xid17416_)
                                           (if (gx#free-identifier=?
                                                _id17362_
                                                _xid17416_)
                                               (if (eq? _t17363_ _xt17415_)
                                                   _val17414_
                                                   (if _val17414_
                                                       (if (if (##structure-instance-of?
                                                                _t17363_
                                                                'gxc#!struct-type::t)
                                                               (##structure-instance-of?
                                                                _xt17415_
                                                                'gxc#!struct-type::t)
                                                               '#f)
                                                           (let _subtype?17418_ ((_xt17420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          (_super-e17365_ _xt17415_)))
                     (if (not _xt17420_)
                         '#f
                         (if (eq? _xt17420_ _t17363_)
                             '#t
                             (_subtype?17418_ (_super-e17365_ _xt17420_)))))
                   '#f)
               (if (if (##structure-instance-of? _t17363_ 'gxc#!struct-type::t)
                       (##structure-instance-of?
                        _xt17415_
                        'gxc#!struct-type::t)
                       '#f)
                   (let _supertype?17422_ ((_t17424_
                                            (_super-e17365_ _t17363_)))
                     (if (not _t17424_)
                         (_lp17367_ _rest17389_)
                         (if (eq? _t17424_ _xt17415_)
                             '#f
                             (_supertype?17422_ (_super-e17365_ _t17424_)))))
                   (_lp17367_ _rest17389_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_lp17367_ _rest17389_)))))
                                   (if (##pair? _type-info1739117403_)
                                       (let ((_hd1739617429_
                                              (##car _type-info1739117403_))
                                             (_tl1739717431_
                                              (##cdr _type-info1739117403_)))
                                         (let ((_xid17434_ _hd1739617429_))
                                           (if (##pair? _tl1739717431_)
                                               (let ((_hd1739817436_
                                                      (##car _tl1739717431_))
                                                     (_tl1739917438_
                                                      (##cdr _tl1739717431_)))
                                                 (let ((_xt17441_
                                                        _hd1739817436_))
                                                   (if (##pair? _tl1739917438_)
                                                       (let ((_hd1740017443_
                                                              (##car _tl1739917438_))
                                                             (_tl1740117445_
                                                              (##cdr _tl1739917438_)))
                                                         (let ((_val17448_
                                                                _hd1740017443_))
                                                           (if (##null? _tl1740117445_)
                                                               (_K1739517426_
                                                                _val17448_
                                                                _xt17441_
                                                                _xid17434_)
                                                               (_else1739317411_))))
                                                       (_else1739317411_))))
                                               (_else1739317411_))))
                                       (_else1739317411_))))))
                         (if (##pair? _rest1737017378_)
                             (let ((_hd1737517453_ (##car _rest1737017378_))
                                   (_tl1737617455_ (##cdr _rest1737017378_)))
                               (let* ((_type-info17458_ _hd1737517453_)
                                      (_rest17460_ _tl1737617455_))
                                 (_K1737417450_ _rest17460_ _type-info17458_)))
                             (_else1737217386_)))))))
                (_assert-count16919_
                 (lambda (_id17261_ _sym17262_ _count17263_)
                   (let _lp17265_ ((_rest17267_ _env-type16903_))
                     (let* ((_rest1726817276_ _rest17267_)
                            (_else1727017284_ (lambda () '#!void))
                            (_K1727217350_
                             (lambda (_rest17287_ _type-info17288_)
                               (let* ((_type-info1728917303_ _type-info17288_)
                                      (_else1729117311_
                                       (lambda () (_lp17265_ _rest17287_)))
                                      (_K1729317319_
                                       (lambda (_val17314_
                                                _xcount17315_
                                                _xsym17316_
                                                _xid17317_)
                                         (if (if (eq? _sym17262_ _xsym17316_)
                                                 (gx#free-identifier=?
                                                  _id17261_
                                                  _xid17317_)
                                                 '#f)
                                             (if _val17314_
                                                 (fx= _count17263_
                                                      _xcount17315_)
                                                 (if (fx= _count17263_
                                                          _xcount17315_)
                                                     '#f
                                                     (_lp17265_ _rest17287_)))
                                             (_lp17265_ _rest17287_)))))
                                 (if (##pair? _type-info1728917303_)
                                     (let ((_hd1729417322_
                                            (##car _type-info1728917303_))
                                           (_tl1729517324_
                                            (##cdr _type-info1728917303_)))
                                       (let ((_xid17327_ _hd1729417322_))
                                         (if (##pair? _tl1729517324_)
                                             (let ((_hd1729617329_
                                                    (##car _tl1729517324_))
                                                   (_tl1729717331_
                                                    (##cdr _tl1729517324_)))
                                               (let ((_xsym17334_
                                                      _hd1729617329_))
                                                 (if (##pair? _tl1729717331_)
                                                     (let ((_hd1729817336_
                                                            (##car _tl1729717331_))
                                                           (_tl1729917338_
                                                            (##cdr _tl1729717331_)))
                                                       (let ((_xcount17341_
                                                              _hd1729817336_))
                                                         (if (##pair? _tl1729917338_)
                                                             (let ((_hd1730017343_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1729917338_))
                           (_tl1730117345_ (##cdr _tl1729917338_)))
                       (let ((_val17348_ _hd1730017343_))
                         (if (##null? _tl1730117345_)
                             (_K1729317319_
                              _val17348_
                              _xcount17341_
                              _xsym17334_
                              _xid17327_)
                             (_else1729117311_))))
                     (_else1729117311_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_else1729117311_))))
                                             (_else1729117311_))))
                                     (_else1729117311_))))))
                       (if (##pair? _rest1726817276_)
                           (let ((_hd1727317353_ (##car _rest1726817276_))
                                 (_tl1727417355_ (##cdr _rest1726817276_)))
                             (let* ((_type-info17358_ _hd1727317353_)
                                    (_rest17360_ _tl1727417355_))
                               (_K1727217350_ _rest17360_ _type-info17358_)))
                           (_else1727017284_))))))
                (_assert-eqf16920_
                 (lambda (_id17153_ _sym17154_ _datum17155_)
                   (letrec ((_eqf17157_
                             (lambda (_sym17256_)
                               (let ((_$e17258_ _sym17256_))
                                 (if (eq? 'eq? _$e17258_)
                                     eq?
                                     (if (eq? 'eqv? _$e17258_)
                                         eqv?
                                         equal?))))))
                     (let _lp17159_ ((_rest17161_ _env-type16903_))
                       (let* ((_rest1716217170_ _rest17161_)
                              (_else1716417178_ (lambda () '#!void))
                              (_K1716617244_
                               (lambda (_rest17181_ _type-info17182_)
                                 (let* ((_type-info1718317197_
                                         _type-info17182_)
                                        (_else1718517205_
                                         (lambda () (_lp17159_ _rest17181_)))
                                        (_K1718717213_
                                         (lambda (_val17208_
                                                  _xdatum17209_
                                                  _xsym17210_
                                                  _xid17211_)
                                           (if (if (_eqf-symbol16909_
                                                    _xsym17210_)
                                                   (gx#free-identifier=?
                                                    _id17153_
                                                    _xid17211_)
                                                   '#f)
                                               (if _val17208_
                                                   ((_eqf17157_ _sym17154_)
                                                    _datum17155_
                                                    _xdatum17209_)
                                                   (if ((_eqf17157_
                                                         _xsym17210_)
                                                        _datum17155_
                                                        _xdatum17209_)
                                                       '#f
                                                       (_lp17159_
                                                        _rest17181_)))
                                               (_lp17159_ _rest17181_)))))
                                   (if (##pair? _type-info1718317197_)
                                       (let ((_hd1718817216_
                                              (##car _type-info1718317197_))
                                             (_tl1718917218_
                                              (##cdr _type-info1718317197_)))
                                         (let ((_xid17221_ _hd1718817216_))
                                           (if (##pair? _tl1718917218_)
                                               (let ((_hd1719017223_
                                                      (##car _tl1718917218_))
                                                     (_tl1719117225_
                                                      (##cdr _tl1718917218_)))
                                                 (let ((_xsym17228_
                                                        _hd1719017223_))
                                                   (if (##pair? _tl1719117225_)
                                                       (let ((_hd1719217230_
                                                              (##car _tl1719117225_))
                                                             (_tl1719317232_
                                                              (##cdr _tl1719117225_)))
                                                         (let ((_xdatum17235_
                                                                _hd1719217230_))
                                                           (if (##pair? _tl1719317232_)
                                                               (let ((_hd1719417237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (##car _tl1719317232_))
                             (_tl1719517239_ (##cdr _tl1719317232_)))
                         (let ((_val17242_ _hd1719417237_))
                           (if (##null? _tl1719517239_)
                               (_K1718717213_
                                _val17242_
                                _xdatum17235_
                                _xsym17228_
                                _xid17221_)
                               (_else1718517205_))))
                       (_else1718517205_))))
               (_else1718517205_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_else1718517205_))))
                                       (_else1718517205_))))))
                         (if (##pair? _rest1716217170_)
                             (let ((_hd1716717247_ (##car _rest1716217170_))
                                   (_tl1716817249_ (##cdr _rest1716217170_)))
                               (let* ((_type-info17252_ _hd1716717247_)
                                      (_rest17254_ _tl1716817249_))
                                 (_K1716617244_ _rest17254_ _type-info17252_)))
                             (_else1716417178_)))))))
                (_bind-e__3477434775_
                 (lambda (_bind17056_ _body17057_ _continue17058_)
                   (let _lp17060_ ((_rest17062_ _bind17056_)
                                   (_subst17063_ '())
                                   (_locals17064_ '())
                                   (_env17065_ _env-bind16904_))
                     (let* ((_rest1706617074_ _rest17062_)
                            (_else1706817088_
                             (lambda ()
                               (let* ((_body17082_
                                       (if (null? _subst17063_)
                                           _body17057_
                                           (gxc#apply-expression-subst*
                                            _body17057_
                                            _subst17063_)))
                                      (_body17085_
                                       (_do-bind!16913_
                                        _env17065_
                                        (lambda ()
                                          (_continue17058_ _body17082_)))))
                                 (if (null? _locals17064_)
                                     _body17085_
                                     (cons '%#let-values
                                           (cons _locals17064_
                                                 (cons _body17085_ '())))))))
                            (_K1707017129_
                             (lambda (_rest17091_ _bind17092_)
                               (let* ((_bind1709317100_ _bind17092_)
                                      (_E1709517104_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _bind1709317100_)))
                                      (_K1709617117_
                                       (lambda (_expr17107_ _id17108_)
                                         (let* ((_sexpr17110_
                                                 (gxc#apply-generate-runtime
                                                  _expr17107_))
                                                (_$e17112_
                                                 (assget _sexpr17110_
                                                         _env-bind16904_)))
                                           (if _$e17112_
                                               ((lambda (_xid17115_)
                                                  (_lp17060_
                                                   _rest17091_
                                                   (cons (cons _id17108_
                                                               _xid17115_)
                                                         _subst17063_)
                                                   _locals17064_
                                                   _env17065_))
                                                _$e17112_)
                                               (_lp17060_
                                                _rest17091_
                                                _subst17063_
                                                (cons (cons (cons _id17108_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons _expr17107_ '()))
              _locals17064_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons _sexpr17110_
                                                            _id17108_)
                                                      _env17065_)))))))
                                 (if (##pair? _bind1709317100_)
                                     (let ((_hd1709717120_
                                            (##car _bind1709317100_))
                                           (_tl1709817122_
                                            (##cdr _bind1709317100_)))
                                       (let* ((_id17125_ _hd1709717120_)
                                              (_expr17127_ _tl1709817122_))
                                         (_K1709617117_
                                          _expr17127_
                                          _id17125_)))
                                     (_E1709517104_))))))
                       (if (##pair? _rest1706617074_)
                           (let ((_hd1707117132_ (##car _rest1706617074_))
                                 (_tl1707217134_ (##cdr _rest1706617074_)))
                             (let* ((_bind17137_ _hd1707117132_)
                                    (_rest17139_ _tl1707217134_))
                               (_K1707017129_ _rest17139_ _bind17137_)))
                           (_else1706817088_))))))
                (_bind-e__0__3477634777_
                 (lambda (_bind17144_ _body17145_)
                   (let ((_continue17147_ _optimize-e16914_))
                     (_bind-e__3477434775_
                      _bind17144_
                      _body17145_
                      _continue17147_))))
                (_bind-e16921_
                 (lambda _g34948_
                   (let ((_g34947_ (length _g34948_)))
                     (cond ((##fx= _g34947_ 2)
                            (apply _bind-e__0__3477634777_ _g34948_))
                           ((##fx= _g34947_ 3)
                            (apply _bind-e__3477434775_ _g34948_))
                           (else
                            (##raise-wrong-number-of-arguments-exception
                             'case-lambda-dispatch
                             _g34948_))))))
                (_lookup-block16922_
                 (lambda (_id17051_)
                   (find (lambda (_block17053_)
                           (gx#free-identifier=? (car _block17053_) _id17051_))
                         _blocks16732_)))
                (_inline-block16923_
                 (lambda (_block16927_ _args16928_)
                   (let* ((_kont16930_ (caddr _block16927_))
                          (_g1693216958_
                           (lambda (_g1693316955_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1693316955_)))
                          (_g1693117048_
                           (lambda (_g1693316961_)
                             (if (gx#stx-pair? _g1693316961_)
                                 (let ((_e1693616963_
                                        (gx#stx-e _g1693316961_)))
                                   (let ((_hd1693716966_ (##car _e1693616963_))
                                         (_tl1693816968_
                                          (##cdr _e1693616963_)))
                                     (if (gx#identifier? _hd1693716966_)
                                         (if (gx#stx-eq?
                                              '%#lambda
                                              _hd1693716966_)
                                             (if (gx#stx-pair? _tl1693816968_)
                                                 (let ((_e1693916971_
                                                        (gx#stx-e
                                                         _tl1693816968_)))
                                                   (let ((_hd1694016974_
                                                          (##car _e1693916971_))
                                                         (_tl1694116976_
                                                          (##cdr _e1693916971_)))
                                                     (if (gx#stx-pair/null?
                                                          _hd1694016974_)
                                                         (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _hd1694016974_)
                           '0)
                     (let ((_g34949_
                            (gx#syntax-split-splice _hd1694016974_ '0)))
                       (begin
                         (let ((_g34950_
                                (if (##values? _g34949_)
                                    (##vector-length _g34949_)
                                    1)))
                           (if (not (##fx= _g34950_ 2))
                               (error "Context expects 2 values" _g34950_)))
                         (let ((_target1694216979_ (##vector-ref _g34949_ 0))
                               (_tl1694416981_ (##vector-ref _g34949_ 1)))
                           (if (gx#stx-null? _tl1694416981_)
                               (letrec ((_loop1694516984_
                                         (lambda (_hd1694316987_
                                                  _id1694916989_)
                                           (if (gx#stx-pair? _hd1694316987_)
                                               (let ((_e1694616992_
                                                      (gx#stx-e
                                                       _hd1694316987_)))
                                                 (let ((_lp-hd1694716995_
                                                        (##car _e1694616992_))
                                                       (_lp-tl1694816997_
                                                        (##cdr _e1694616992_)))
                                                   (_loop1694516984_
                                                    _lp-tl1694816997_
                                                    (cons _lp-hd1694716995_
                                                          _id1694916989_))))
                                               (let ((_id1695017000_
                                                      (reverse _id1694916989_)))
                                                 (if (gx#stx-pair?
                                                      _tl1694116976_)
                                                     (let ((_e1695117003_
                                                            (gx#stx-e
                                                             _tl1694116976_)))
                                                       (let ((_hd1695217006_
                                                              (##car _e1695117003_))
                                                             (_tl1695317008_
                                                              (##cdr _e1695117003_)))
                                                         (if (gx#stx-null?
                                                              _tl1695317008_)
                                                             ((lambda (_L17011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L17012_)
                        (if (null? (begin
                                     '#!void
                                     (foldr1 (lambda (_g1703117034_
                                                      _g1703217036_)
                                               (cons _g1703117034_
                                                     _g1703217036_))
                                             '()
                                             _L17012_)))
                            _L17011_
                            (let ((_subst17046_
                                   (map cons
                                        (begin
                                          '#!void
                                          (foldr1 (lambda (_g1703817041_
                                                           _g1703917043_)
                                                    (cons _g1703817041_
                                                          _g1703917043_))
                                                  '()
                                                  _L17012_))
                                        _args16928_)))
                              (gxc#apply-expression-subst*
                               _L17011_
                               _subst17046_))))
                      _hd1695217006_
                      _id1695017000_)
                     (_g1693216958_ _g1693316961_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1693216958_
                                                      _g1693316961_)))))))
                                 (_loop1694516984_ _target1694216979_ '()))
                               (_g1693216958_ _g1693316961_)))))
                     (_g1693216958_ _g1693316961_))
                 (_g1693216958_ _g1693316961_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g1693216958_ _g1693316961_))
                                             (_g1693216958_ _g1693316961_))
                                         (_g1693216958_ _g1693316961_))))
                                 (_g1693216958_ _g1693316961_)))))
                     (_g1693117048_ _kont16930_)))))
        (_do-assert16905_
         _assert16731_
         (lambda ()
           (_do-bind16911_
            _bind16730_
            (lambda () (_optimize-e16914_ _body16729_))))))))
  (define gxc#optimize-match-prune-blocks
    (lambda (_blocks16611_ _konts16612_)
      (letrec* ((_rtab16614_ (make-hash-table-eq)))
        (begin
          (for-each
           (lambda (_e1661516617_)
             (let* ((_g1661916626_ _e1661516617_)
                    (_E1662116630_
                     (lambda () (error '"No clause matching" _g1661916626_)))
                    (_K1662216636_
                     (lambda (_kont16633_ _K16634_)
                       (gxc#apply-collect-runtime-refs
                        _kont16633_
                        _rtab16614_))))
               (if (##pair? _g1661916626_)
                   (let ((_hd1662316639_ (##car _g1661916626_))
                         (_tl1662416641_ (##cdr _g1661916626_)))
                     (let* ((_K16644_ _hd1662316639_)
                            (_kont16646_ _tl1662416641_))
                       (_K1662216636_ _kont16646_ _K16644_)))
                   (_E1662116630_))))
           _konts16612_)
          (let _lp16648_ ((_rest16650_ _blocks16611_) (_r16651_ '()))
            (let* ((_rest1665216660_ _rest16650_)
                   (_else1665416668_ (lambda () (reverse _r16651_)))
                   (_K1665616717_
                    (lambda (_rest16671_ _block16672_)
                      (let* ((_block1667316684_ _block16672_)
                             (_E1667516688_
                              (lambda ()
                                (error '"No clause matching"
                                       _block1667316684_)))
                             (_K1667616695_
                              (lambda (_kont16691_ _type16692_ _name16693_)
                                (if (table-ref
                                     _rtab16614_
                                     (gxc#identifier-symbol _name16693_)
                                     '#f)
                                    (begin
                                      (gxc#apply-collect-runtime-refs
                                       _kont16691_
                                       _rtab16614_)
                                      (_lp16648_
                                       _rest16671_
                                       (cons _block16672_ _r16651_)))
                                    (_lp16648_ _rest16671_ _r16651_)))))
                        (if (##pair? _block1667316684_)
                            (let ((_hd1667716698_ (##car _block1667316684_))
                                  (_tl1667816700_ (##cdr _block1667316684_)))
                              (let ((_name16703_ _hd1667716698_))
                                (if (##pair? _tl1667816700_)
                                    (let ((_hd1667916705_
                                           (##car _tl1667816700_))
                                          (_tl1668016707_
                                           (##cdr _tl1667816700_)))
                                      (let ((_type16710_ _hd1667916705_))
                                        (if (##pair? _tl1668016707_)
                                            (let* ((_hd1668116712_
                                                    (##car _tl1668016707_))
                                                   (_kont16715_
                                                    _hd1668116712_))
                                              (_K1667616695_
                                               _kont16715_
                                               _type16710_
                                               _name16703_))
                                            (_E1667516688_))))
                                    (_E1667516688_))))
                            (_E1667516688_))))))
              (if (##pair? _rest1665216660_)
                  (let ((_hd1665716720_ (##car _rest1665216660_))
                        (_tl1665816722_ (##cdr _rest1665216660_)))
                    (let* ((_block16725_ _hd1665716720_)
                           (_rest16727_ _tl1665816722_))
                      (_K1665616717_ _rest16727_ _block16725_)))
                  (_else1665416668_))))))))
  (define gxc#collect-runtime-refs-ref%
    (lambda (_stx16557_ _ht16558_)
      (let* ((_g1656016573_
              (lambda (_g1656116570_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1656116570_)))
             (_g1655916608_
              (lambda (_g1656116576_)
                (if (gx#stx-pair? _g1656116576_)
                    (let ((_e1656316578_ (gx#stx-e _g1656116576_)))
                      (let ((_hd1656416581_ (##car _e1656316578_))
                            (_tl1656516583_ (##cdr _e1656316578_)))
                        (if (gx#stx-pair? _tl1656516583_)
                            (let ((_e1656616586_ (gx#stx-e _tl1656516583_)))
                              (let ((_hd1656716589_ (##car _e1656616586_))
                                    (_tl1656816591_ (##cdr _e1656616586_)))
                                (if (gx#stx-null? _tl1656816591_)
                                    ((lambda (_L16594_)
                                       (let ((_eid16606_
                                              (gxc#identifier-symbol
                                               _L16594_)))
                                         (table-set!
                                          _ht16558_
                                          _eid16606_
                                          '#t)))
                                     _hd1656716589_)
                                    (_g1656016573_ _g1656116576_))))
                            (_g1656016573_ _g1656116576_))))
                    (_g1656016573_ _g1656116576_)))))
        (_g1655916608_ _stx16557_))))
  (define gxc#collect-runtime-refs-setq%
    (lambda (_stx16487_ _ht16488_)
      (let* ((_g1649016507_
              (lambda (_g1649116504_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1649116504_)))
             (_g1648916554_
              (lambda (_g1649116510_)
                (if (gx#stx-pair? _g1649116510_)
                    (let ((_e1649416512_ (gx#stx-e _g1649116510_)))
                      (let ((_hd1649516515_ (##car _e1649416512_))
                            (_tl1649616517_ (##cdr _e1649416512_)))
                        (if (gx#stx-pair? _tl1649616517_)
                            (let ((_e1649716520_ (gx#stx-e _tl1649616517_)))
                              (let ((_hd1649816523_ (##car _e1649716520_))
                                    (_tl1649916525_ (##cdr _e1649716520_)))
                                (if (gx#stx-pair? _tl1649916525_)
                                    (let ((_e1650016528_
                                           (gx#stx-e _tl1649916525_)))
                                      (let ((_hd1650116531_
                                             (##car _e1650016528_))
                                            (_tl1650216533_
                                             (##cdr _e1650016528_)))
                                        (if (gx#stx-null? _tl1650216533_)
                                            ((lambda (_L16536_ _L16537_)
                                               (let ((_eid16552_
                                                      (gxc#identifier-symbol
                                                       _L16537_)))
                                                 (begin
                                                   (table-set!
                                                    _ht16488_
                                                    _eid16552_
                                                    '#t)
                                                   (gxc#compile-e
                                                    _L16536_
                                                    _ht16488_))))
                                             _hd1650116531_
                                             _hd1649816523_)
                                            (_g1649016507_ _g1649116510_))))
                                    (_g1649016507_ _g1649116510_))))
                            (_g1649016507_ _g1649116510_))))
                    (_g1649016507_ _g1649116510_)))))
        (_g1648916554_ _stx16487_))))
  (define gxc#push-match-vars-let-values%
    (lambda (_stx16273_ _vars16274_ _K16275_)
      (let* ((_g1627716294_
              (lambda (_g1627816291_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1627816291_)))
             (_g1627616484_
              (lambda (_g1627816297_)
                (if (gx#stx-pair? _g1627816297_)
                    (let ((_e1628116299_ (gx#stx-e _g1627816297_)))
                      (let ((_hd1628216302_ (##car _e1628116299_))
                            (_tl1628316304_ (##cdr _e1628116299_)))
                        (if (gx#stx-pair? _tl1628316304_)
                            (let ((_e1628416307_ (gx#stx-e _tl1628316304_)))
                              (let ((_hd1628516310_ (##car _e1628416307_))
                                    (_tl1628616312_ (##cdr _e1628416307_)))
                                (if (gx#stx-pair? _tl1628616312_)
                                    (let ((_e1628716315_
                                           (gx#stx-e _tl1628616312_)))
                                      (let ((_hd1628816318_
                                             (##car _e1628716315_))
                                            (_tl1628916320_
                                             (##cdr _e1628716315_)))
                                        (if (gx#stx-null? _tl1628916320_)
                                            ((lambda (_L16323_ _L16324_)
                                               (let _lp16339_ ((_rest16341_
                                                                _L16324_)
                                                               (_rebind16342_
                                                                '())
                                                               (_vars16343_
                                                                _vars16274_))
                                                 (let* ((_rest1634416352_
                                                         _rest16341_)
                                                        (_else1634616360_
                                                         (lambda ()
                                                           (if (null? _rebind16342_)
                                                               (gxc#compile-e
                                                                _L16323_
                                                                _vars16343_
                                                                _K16275_)
                                                               (gxc#xform-wrap-source
                                                                (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (reverse _rebind16342_)
                                    (cons (gxc#compile-e
                                           _L16323_
                                           _vars16343_
                                           _K16275_)
                                          '())))
                        _stx16273_))))
                (_K1634816472_
                 (lambda (_rest16363_ _bind16364_)
                   (let* ((_g1636716390_
                           (lambda (_g1636816387_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _g1636816387_)))
                          (_g1636616397_
                           (lambda (_g1636816393_)
                             ((lambda ()
                                (_lp16339_
                                 _rest16363_
                                 (cons _bind16364_ _rebind16342_)
                                 _vars16343_)))))
                          (_g1636516469_
                           (lambda (_g1636816400_)
                             (if (gx#stx-pair? _g1636816400_)
                                 (let ((_e1637116402_
                                        (gx#stx-e _g1636816400_)))
                                   (let ((_hd1637216405_ (##car _e1637116402_))
                                         (_tl1637316407_
                                          (##cdr _e1637116402_)))
                                     (if (gx#stx-pair? _hd1637216405_)
                                         (let ((_e1637416410_
                                                (gx#stx-e _hd1637216405_)))
                                           (let ((_hd1637516413_
                                                  (##car _e1637416410_))
                                                 (_tl1637616415_
                                                  (##cdr _e1637416410_)))
                                             (if (gx#stx-null? _tl1637616415_)
                                                 (if (gx#stx-pair?
                                                      _tl1637316407_)
                                                     (let ((_e1637716418_
                                                            (gx#stx-e
                                                             _tl1637316407_)))
                                                       (let ((_hd1637816421_
                                                              (##car _e1637716418_))
                                                             (_tl1637916423_
                                                              (##cdr _e1637716418_)))
                                                         (if (gx#stx-pair?
                                                              _hd1637816421_)
                                                             (let ((_e1638016426_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#stx-e _hd1637816421_)))
                       (let ((_hd1638116429_ (##car _e1638016426_))
                             (_tl1638216431_ (##cdr _e1638016426_)))
                         (if (gx#identifier? _hd1638116429_)
                             (if (gx#stx-eq? '%#ref _hd1638116429_)
                                 (if (gx#stx-pair? _tl1638216431_)
                                     (let ((_e1638316434_
                                            (gx#stx-e _tl1638216431_)))
                                       (let ((_hd1638416437_
                                              (##car _e1638316434_))
                                             (_tl1638516439_
                                              (##cdr _e1638316434_)))
                                         (if (gx#stx-null? _tl1638516439_)
                                             (if (gx#stx-null? _tl1637916423_)
                                                 ((lambda (_L16442_ _L16443_)
                                                    (_lp16339_
                                                     _rest16363_
                                                     _rebind16342_
                                                     (cons _bind16364_
                                                           _vars16343_)))
                                                  _hd1638416437_
                                                  _hd1637516413_)
                                                 (_g1636616397_ _g1636816400_))
                                             (_g1636616397_ _g1636816400_))))
                                     (_g1636616397_ _g1636816400_))
                                 (_g1636616397_ _g1636816400_))
                             (_g1636616397_ _g1636816400_))))
                     (_g1636616397_ _g1636816400_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1636616397_
                                                      _g1636816400_))
                                                 (_g1636616397_
                                                  _g1636816400_))))
                                         (_g1636616397_ _g1636816400_))))
                                 (_g1636616397_ _g1636816400_)))))
                     (_g1636516469_ _bind16364_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _rest1634416352_)
                                                       (let ((_hd1634916475_
                                                              (##car _rest1634416352_))
                                                             (_tl1635016477_
                                                              (##cdr _rest1634416352_)))
                                                         (let* ((_bind16480_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1634916475_)
                        (_rest16482_ _tl1635016477_))
                   (_K1634816472_ _rest16482_ _bind16480_)))
               (_else1634616360_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd1628816318_
                                             _hd1628516310_)
                                            (_g1627716294_ _g1627816297_))))
                                    (_g1627716294_ _g1627816297_))))
                            (_g1627716294_ _g1627816297_))))
                    (_g1627716294_ _g1627816297_)))))
        (_g1627616484_ _stx16273_))))
  (define gxc#push-match-vars-if%
    (lambda (_stx16188_ _vars16189_ _K16190_)
      (let* ((_g1619216213_
              (lambda (_g1619316210_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1619316210_)))
             (_g1619116270_
              (lambda (_g1619316216_)
                (if (gx#stx-pair? _g1619316216_)
                    (let ((_e1619716218_ (gx#stx-e _g1619316216_)))
                      (let ((_hd1619816221_ (##car _e1619716218_))
                            (_tl1619916223_ (##cdr _e1619716218_)))
                        (if (gx#stx-pair? _tl1619916223_)
                            (let ((_e1620016226_ (gx#stx-e _tl1619916223_)))
                              (let ((_hd1620116229_ (##car _e1620016226_))
                                    (_tl1620216231_ (##cdr _e1620016226_)))
                                (if (gx#stx-pair? _tl1620216231_)
                                    (let ((_e1620316234_
                                           (gx#stx-e _tl1620216231_)))
                                      (let ((_hd1620416237_
                                             (##car _e1620316234_))
                                            (_tl1620516239_
                                             (##cdr _e1620316234_)))
                                        (if (gx#stx-pair? _tl1620516239_)
                                            (let ((_e1620616242_
                                                   (gx#stx-e _tl1620516239_)))
                                              (let ((_hd1620716245_
                                                     (##car _e1620616242_))
                                                    (_tl1620816247_
                                                     (##cdr _e1620616242_)))
                                                (if (gx#stx-null?
                                                     _tl1620816247_)
                                                    ((lambda (_L16250_
                                                              _L16251_
                                                              _L16252_)
                                                       (if (gxc#apply-find-var-refs
                                                            _L16252_
                                                            (map caar
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _vars16189_))
                   (gxc#push-match-vars-stop _stx16188_ _vars16189_ _K16190_)
                   (gxc#xform-wrap-source
                    (cons '%#if
                          (cons _L16252_
                                (cons (gxc#compile-e
                                       _L16251_
                                       _vars16189_
                                       _K16190_)
                                      (cons (gxc#compile-e
                                             _L16250_
                                             _vars16189_
                                             _K16190_)
                                            '()))))
                    _stx16188_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1620716245_
                                                     _hd1620416237_
                                                     _hd1620116229_)
                                                    (_g1619216213_
                                                     _g1619316216_))))
                                            (_g1619216213_ _g1619316216_))))
                                    (_g1619216213_ _g1619316216_))))
                            (_g1619216213_ _g1619316216_))))
                    (_g1619216213_ _g1619316216_)))))
        (_g1619116270_ _stx16188_))))
  (define gxc#push-match-vars-call%
    (lambda (_stx16109_ _vars16110_ _K16111_)
      (let* ((_g1611316132_
              (lambda (_g1611416129_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1611416129_)))
             (_g1611216185_
              (lambda (_g1611416135_)
                (if (gx#stx-pair? _g1611416135_)
                    (let ((_e1611616137_ (gx#stx-e _g1611416135_)))
                      (let ((_hd1611716140_ (##car _e1611616137_))
                            (_tl1611816142_ (##cdr _e1611616137_)))
                        (if (gx#stx-pair? _tl1611816142_)
                            (let ((_e1611916145_ (gx#stx-e _tl1611816142_)))
                              (let ((_hd1612016148_ (##car _e1611916145_))
                                    (_tl1612116150_ (##cdr _e1611916145_)))
                                (if (gx#stx-pair? _hd1612016148_)
                                    (let ((_e1612216153_
                                           (gx#stx-e _hd1612016148_)))
                                      (let ((_hd1612316156_
                                             (##car _e1612216153_))
                                            (_tl1612416158_
                                             (##cdr _e1612216153_)))
                                        (if (gx#identifier? _hd1612316156_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1612316156_)
                                                (if (gx#stx-pair?
                                                     _tl1612416158_)
                                                    (let ((_e1612516161_
                                                           (gx#stx-e
                                                            _tl1612416158_)))
                                                      (let ((_hd1612616164_
                                                             (##car _e1612516161_))
                                                            (_tl1612716166_
                                                             (##cdr _e1612516161_)))
                                                        (if (gx#stx-null?
                                                             _tl1612716166_)
                                                            ((lambda (_L16169_)
                                                               (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L16169_
                            _K16111_)
                           (gxc#xform-wrap-source
                            (cons '%#let-values
                                  (cons (reverse _vars16110_)
                                        (cons _stx16109_ '())))
                            _stx16109_)
                           _stx16109_))
                     _hd1612616164_)
                    (_g1611316132_ _g1611416135_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1611316132_
                                                     _g1611416135_))
                                                (_g1611316132_ _g1611416135_))
                                            (_g1611316132_ _g1611416135_))))
                                    (_g1611316132_ _g1611416135_))))
                            (_g1611316132_ _g1611416135_))))
                    (_g1611316132_ _g1611416135_)))))
        (_g1611216185_ _stx16109_))))
  (define gxc#push-match-vars-stop
    (lambda (_stx16105_ _vars16106_ _K16107_)
      (if (null? _vars16106_)
          _stx16105_
          (gxc#xform-wrap-source
           (cons '%#let-values
                 (cons (reverse _vars16106_) (cons _stx16105_ '())))
           _stx16105_))))
  (define gxc#find-body%
    (lambda (_stx16018_ _arg16019_)
      (let* ((_g1602116040_
              (lambda (_g1602216037_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1602216037_)))
             (_g1602016102_
              (lambda (_g1602216043_)
                (if (gx#stx-pair? _g1602216043_)
                    (let ((_e1602416045_ (gx#stx-e _g1602216043_)))
                      (let ((_hd1602516048_ (##car _e1602416045_))
                            (_tl1602616050_ (##cdr _e1602416045_)))
                        (if (gx#stx-pair/null? _tl1602616050_)
                            (if (fx>= (gx#stx-length _tl1602616050_) '0)
                                (let ((_g34951_
                                       (gx#syntax-split-splice
                                        _tl1602616050_
                                        '0)))
                                  (begin
                                    (let ((_g34952_
                                           (if (##values? _g34951_)
                                               (##vector-length _g34951_)
                                               1)))
                                      (if (not (##fx= _g34952_ 2))
                                          (error "Context expects 2 values"
                                                 _g34952_)))
                                    (let ((_target1602716053_
                                           (##vector-ref _g34951_ 0))
                                          (_tl1602916055_
                                           (##vector-ref _g34951_ 1)))
                                      (if (gx#stx-null? _tl1602916055_)
                                          (letrec ((_loop1603016058_
                                                    (lambda (_hd1602816061_
                                                             _expr1603416063_)
                                                      (if (gx#stx-pair?
                                                           _hd1602816061_)
                                                          (let ((_e1603116066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1602816061_)))
                    (let ((_lp-hd1603216069_ (##car _e1603116066_))
                          (_lp-tl1603316071_ (##cdr _e1603116066_)))
                      (_loop1603016058_
                       _lp-tl1603316071_
                       (cons _lp-hd1603216069_ _expr1603416063_))))
                  (let ((_expr1603516074_ (reverse _expr1603416063_)))
                    ((lambda (_L16077_)
                       (ormap1 (lambda (_g1609016092_)
                                 (gxc#compile-e _g1609016092_ _arg16019_))
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1609416097_ _g1609516099_)
                                           (cons _g1609416097_ _g1609516099_))
                                         '()
                                         _L16077_))))
                     _expr1603516074_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1603016058_
                                             _target1602716053_
                                             '()))
                                          (_g1602116040_ _g1602216043_)))))
                                (_g1602116040_ _g1602216043_))
                            (_g1602116040_ _g1602216043_))))
                    (_g1602116040_ _g1602216043_)))))
        (_g1602016102_ _stx16018_))))
  (define gxc#find-begin-annotation%
    (lambda (_stx15950_ _arg15951_)
      (let* ((_g1595315970_
              (lambda (_g1595415967_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1595415967_)))
             (_g1595216015_
              (lambda (_g1595415973_)
                (if (gx#stx-pair? _g1595415973_)
                    (let ((_e1595715975_ (gx#stx-e _g1595415973_)))
                      (let ((_hd1595815978_ (##car _e1595715975_))
                            (_tl1595915980_ (##cdr _e1595715975_)))
                        (if (gx#stx-pair? _tl1595915980_)
                            (let ((_e1596015983_ (gx#stx-e _tl1595915980_)))
                              (let ((_hd1596115986_ (##car _e1596015983_))
                                    (_tl1596215988_ (##cdr _e1596015983_)))
                                (if (gx#stx-pair? _tl1596215988_)
                                    (let ((_e1596315991_
                                           (gx#stx-e _tl1596215988_)))
                                      (let ((_hd1596415994_
                                             (##car _e1596315991_))
                                            (_tl1596515996_
                                             (##cdr _e1596315991_)))
                                        (if (gx#stx-null? _tl1596515996_)
                                            ((lambda (_L15999_ _L16000_)
                                               (gxc#compile-e
                                                _L15999_
                                                _arg15951_))
                                             _hd1596415994_
                                             _hd1596115986_)
                                            (_g1595315970_ _g1595415973_))))
                                    (_g1595315970_ _g1595415973_))))
                            (_g1595315970_ _g1595415973_))))
                    (_g1595315970_ _g1595415973_)))))
        (_g1595216015_ _stx15950_))))
  (define gxc#find-lambda%
    (lambda (_stx15882_ _arg15883_)
      (let* ((_g1588515902_
              (lambda (_g1588615899_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1588615899_)))
             (_g1588415947_
              (lambda (_g1588615905_)
                (if (gx#stx-pair? _g1588615905_)
                    (let ((_e1588915907_ (gx#stx-e _g1588615905_)))
                      (let ((_hd1589015910_ (##car _e1588915907_))
                            (_tl1589115912_ (##cdr _e1588915907_)))
                        (if (gx#stx-pair? _tl1589115912_)
                            (let ((_e1589215915_ (gx#stx-e _tl1589115912_)))
                              (let ((_hd1589315918_ (##car _e1589215915_))
                                    (_tl1589415920_ (##cdr _e1589215915_)))
                                (if (gx#stx-pair? _tl1589415920_)
                                    (let ((_e1589515923_
                                           (gx#stx-e _tl1589415920_)))
                                      (let ((_hd1589615926_
                                             (##car _e1589515923_))
                                            (_tl1589715928_
                                             (##cdr _e1589515923_)))
                                        (if (gx#stx-null? _tl1589715928_)
                                            ((lambda (_L15931_ _L15932_)
                                               (gxc#compile-e
                                                _L15931_
                                                _arg15883_))
                                             _hd1589615926_
                                             _hd1589315918_)
                                            (_g1588515902_ _g1588615905_))))
                                    (_g1588515902_ _g1588615905_))))
                            (_g1588515902_ _g1588615905_))))
                    (_g1588515902_ _g1588615905_)))))
        (_g1588415947_ _stx15882_))))
  (define gxc#find-case-lambda%
    (lambda (_stx15764_ _arg15765_)
      (let* ((_g1576715795_
              (lambda (_g1576815792_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1576815792_)))
             (_g1576615879_
              (lambda (_g1576815798_)
                (if (gx#stx-pair? _g1576815798_)
                    (let ((_e1577115800_ (gx#stx-e _g1576815798_)))
                      (let ((_hd1577215803_ (##car _e1577115800_))
                            (_tl1577315805_ (##cdr _e1577115800_)))
                        (if (gx#stx-pair/null? _tl1577315805_)
                            (if (fx>= (gx#stx-length _tl1577315805_) '0)
                                (let ((_g34953_
                                       (gx#syntax-split-splice
                                        _tl1577315805_
                                        '0)))
                                  (begin
                                    (let ((_g34954_
                                           (if (##values? _g34953_)
                                               (##vector-length _g34953_)
                                               1)))
                                      (if (not (##fx= _g34954_ 2))
                                          (error "Context expects 2 values"
                                                 _g34954_)))
                                    (let ((_target1577415808_
                                           (##vector-ref _g34953_ 0))
                                          (_tl1577615810_
                                           (##vector-ref _g34953_ 1)))
                                      (if (gx#stx-null? _tl1577615810_)
                                          (letrec ((_loop1577715813_
                                                    (lambda (_hd1577515816_
                                                             _body1578115818_
                                                             _hd1578215820_)
                                                      (if (gx#stx-pair?
                                                           _hd1577515816_)
                                                          (let ((_e1577815823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _hd1577515816_)))
                    (let ((_lp-hd1577915826_ (##car _e1577815823_))
                          (_lp-tl1578015828_ (##cdr _e1577815823_)))
                      (if (gx#stx-pair? _lp-hd1577915826_)
                          (let ((_e1578515831_ (gx#stx-e _lp-hd1577915826_)))
                            (let ((_hd1578615834_ (##car _e1578515831_))
                                  (_tl1578715836_ (##cdr _e1578515831_)))
                              (if (gx#stx-pair? _tl1578715836_)
                                  (let ((_e1578815839_
                                         (gx#stx-e _tl1578715836_)))
                                    (let ((_hd1578915842_
                                           (##car _e1578815839_))
                                          (_tl1579015844_
                                           (##cdr _e1578815839_)))
                                      (if (gx#stx-null? _tl1579015844_)
                                          (_loop1577715813_
                                           _lp-tl1578015828_
                                           (cons _hd1578915842_
                                                 _body1578115818_)
                                           (cons _hd1578615834_
                                                 _hd1578215820_))
                                          (_g1576715795_ _g1576815798_))))
                                  (_g1576715795_ _g1576815798_))))
                          (_g1576715795_ _g1576815798_))))
                  (let ((_body1578315847_ (reverse _body1578115818_))
                        (_hd1578415849_ (reverse _hd1578215820_)))
                    ((lambda (_L15852_ _L15853_)
                       (ormap1 (lambda (_g1586715869_)
                                 (gxc#compile-e _g1586715869_ _arg15765_))
                               (begin
                                 '#!void
                                 (foldr1 (lambda (_g1587115874_ _g1587215876_)
                                           (cons _g1587115874_ _g1587215876_))
                                         '()
                                         _L15852_))))
                     _body1578315847_
                     _hd1578415849_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_loop1577715813_
                                             _target1577415808_
                                             '()
                                             '()))
                                          (_g1576715795_ _g1576815798_)))))
                                (_g1576715795_ _g1576815798_))
                            (_g1576715795_ _g1576815798_))))
                    (_g1576715795_ _g1576815798_)))))
        (_g1576615879_ _stx15764_))))
  (define gxc#find-let-values%
    (lambda (_stx15614_ _arg15615_)
      (let* ((_g1561715652_
              (lambda (_g1561815649_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1561815649_)))
             (_g1561615761_
              (lambda (_g1561815655_)
                (if (gx#stx-pair? _g1561815655_)
                    (let ((_e1562215657_ (gx#stx-e _g1561815655_)))
                      (let ((_hd1562315660_ (##car _e1562215657_))
                            (_tl1562415662_ (##cdr _e1562215657_)))
                        (if (gx#stx-pair? _tl1562415662_)
                            (let ((_e1562515665_ (gx#stx-e _tl1562415662_)))
                              (let ((_hd1562615668_ (##car _e1562515665_))
                                    (_tl1562715670_ (##cdr _e1562515665_)))
                                (if (gx#stx-pair/null? _hd1562615668_)
                                    (if (fx>= (gx#stx-length _hd1562615668_)
                                              '0)
                                        (let ((_g34955_
                                               (gx#syntax-split-splice
                                                _hd1562615668_
                                                '0)))
                                          (begin
                                            (let ((_g34956_
                                                   (if (##values? _g34955_)
                                                       (##vector-length
                                                        _g34955_)
                                                       1)))
                                              (if (not (##fx= _g34956_ 2))
                                                  (error "Context expects 2 values"
                                                         _g34956_)))
                                            (let ((_target1562815673_
                                                   (##vector-ref _g34955_ 0))
                                                  (_tl1563015675_
                                                   (##vector-ref _g34955_ 1)))
                                              (if (gx#stx-null? _tl1563015675_)
                                                  (letrec ((_loop1563115678_
                                                            (lambda (_hd1562915681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _expr1563515683_
                             _bind1563615685_)
                      (if (gx#stx-pair? _hd1562915681_)
                          (let ((_e1563215688_ (gx#stx-e _hd1562915681_)))
                            (let ((_lp-hd1563315691_ (##car _e1563215688_))
                                  (_lp-tl1563415693_ (##cdr _e1563215688_)))
                              (if (gx#stx-pair? _lp-hd1563315691_)
                                  (let ((_e1563915696_
                                         (gx#stx-e _lp-hd1563315691_)))
                                    (let ((_hd1564015699_
                                           (##car _e1563915696_))
                                          (_tl1564115701_
                                           (##cdr _e1563915696_)))
                                      (if (gx#stx-pair? _tl1564115701_)
                                          (let ((_e1564215704_
                                                 (gx#stx-e _tl1564115701_)))
                                            (let ((_hd1564315707_
                                                   (##car _e1564215704_))
                                                  (_tl1564415709_
                                                   (##cdr _e1564215704_)))
                                              (if (gx#stx-null? _tl1564415709_)
                                                  (_loop1563115678_
                                                   _lp-tl1563415693_
                                                   (cons _hd1564315707_
                                                         _expr1563515683_)
                                                   (cons _hd1564015699_
                                                         _bind1563615685_))
                                                  (_g1561715652_
                                                   _g1561815655_))))
                                          (_g1561715652_ _g1561815655_))))
                                  (_g1561715652_ _g1561815655_))))
                          (let ((_expr1563715712_ (reverse _expr1563515683_))
                                (_bind1563815714_ (reverse _bind1563615685_)))
                            (if (gx#stx-pair? _tl1562715670_)
                                (let ((_e1564515717_
                                       (gx#stx-e _tl1562715670_)))
                                  (let ((_hd1564615720_ (##car _e1564515717_))
                                        (_tl1564715722_ (##cdr _e1564515717_)))
                                    (if (gx#stx-null? _tl1564715722_)
                                        ((lambda (_L15725_ _L15726_ _L15727_)
                                           (let ((_$e15758_
                                                  (ormap1 (lambda (_g1574615748_)
                                                            (gxc#compile-e
                                                             _g1574615748_
                                                             _arg15615_))
                                                          (begin
                                                            '#!void
                                                            (foldr1 (lambda (_g1575015753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g1575115755_)
                              (cons _g1575015753_ _g1575115755_))
                            '()
                            _L15726_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if _$e15758_
                                                 _$e15758_
                                                 (gxc#compile-e
                                                  _L15725_
                                                  _arg15615_))))
                                         _hd1564615720_
                                         _expr1563715712_
                                         _bind1563815714_)
                                        (_g1561715652_ _g1561815655_))))
                                (_g1561715652_ _g1561815655_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_loop1563115678_
                                                     _target1562815673_
                                                     '()
                                                     '()))
                                                  (_g1561715652_
                                                   _g1561815655_)))))
                                        (_g1561715652_ _g1561815655_))
                                    (_g1561715652_ _g1561815655_))))
                            (_g1561715652_ _g1561815655_))))
                    (_g1561715652_ _g1561815655_)))))
        (_g1561615761_ _stx15614_))))
  (define gxc#find-setq%
    (lambda (_stx15546_ _arg15547_)
      (let* ((_g1554915566_
              (lambda (_g1555015563_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1555015563_)))
             (_g1554815611_
              (lambda (_g1555015569_)
                (if (gx#stx-pair? _g1555015569_)
                    (let ((_e1555315571_ (gx#stx-e _g1555015569_)))
                      (let ((_hd1555415574_ (##car _e1555315571_))
                            (_tl1555515576_ (##cdr _e1555315571_)))
                        (if (gx#stx-pair? _tl1555515576_)
                            (let ((_e1555615579_ (gx#stx-e _tl1555515576_)))
                              (let ((_hd1555715582_ (##car _e1555615579_))
                                    (_tl1555815584_ (##cdr _e1555615579_)))
                                (if (gx#stx-pair? _tl1555815584_)
                                    (let ((_e1555915587_
                                           (gx#stx-e _tl1555815584_)))
                                      (let ((_hd1556015590_
                                             (##car _e1555915587_))
                                            (_tl1556115592_
                                             (##cdr _e1555915587_)))
                                        (if (gx#stx-null? _tl1556115592_)
                                            ((lambda (_L15595_ _L15596_)
                                               (gxc#compile-e
                                                _L15595_
                                                _arg15547_))
                                             _hd1556015590_
                                             _hd1555715582_)
                                            (_g1554915566_ _g1555015569_))))
                                    (_g1554915566_ _g1555015569_))))
                            (_g1554915566_ _g1555015569_))))
                    (_g1554915566_ _g1555015569_)))))
        (_g1554815611_ _stx15546_))))
  (define gxc#find-var-refs-ref%
    (lambda (_stx15490_ _ids15491_)
      (let* ((_g1549315506_
              (lambda (_g1549415503_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1549415503_)))
             (_g1549215543_
              (lambda (_g1549415509_)
                (if (gx#stx-pair? _g1549415509_)
                    (let ((_e1549615511_ (gx#stx-e _g1549415509_)))
                      (let ((_hd1549715514_ (##car _e1549615511_))
                            (_tl1549815516_ (##cdr _e1549615511_)))
                        (if (gx#stx-pair? _tl1549815516_)
                            (let ((_e1549915519_ (gx#stx-e _tl1549815516_)))
                              (let ((_hd1550015522_ (##car _e1549915519_))
                                    (_tl1550115524_ (##cdr _e1549915519_)))
                                (if (gx#stx-null? _tl1550115524_)
                                    ((lambda (_L15527_)
                                       (find (lambda (_g1553815540_)
                                               (gx#free-identifier=?
                                                _L15527_
                                                _g1553815540_))
                                             _ids15491_))
                                     _hd1550015522_)
                                    (_g1549315506_ _g1549415509_))))
                            (_g1549315506_ _g1549415509_))))
                    (_g1549315506_ _g1549415509_)))))
        (_g1549215543_ _stx15490_))))
  (define gxc#find-var-refs-setq%
    (lambda (_stx15415_ _ids15416_)
      (let* ((_g1541815435_
              (lambda (_g1541915432_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1541915432_)))
             (_g1541715487_
              (lambda (_g1541915438_)
                (if (gx#stx-pair? _g1541915438_)
                    (let ((_e1542215440_ (gx#stx-e _g1541915438_)))
                      (let ((_hd1542315443_ (##car _e1542215440_))
                            (_tl1542415445_ (##cdr _e1542215440_)))
                        (if (gx#stx-pair? _tl1542415445_)
                            (let ((_e1542515448_ (gx#stx-e _tl1542415445_)))
                              (let ((_hd1542615451_ (##car _e1542515448_))
                                    (_tl1542715453_ (##cdr _e1542515448_)))
                                (if (gx#stx-pair? _tl1542715453_)
                                    (let ((_e1542815456_
                                           (gx#stx-e _tl1542715453_)))
                                      (let ((_hd1542915459_
                                             (##car _e1542815456_))
                                            (_tl1543015461_
                                             (##cdr _e1542815456_)))
                                        (if (gx#stx-null? _tl1543015461_)
                                            ((lambda (_L15464_ _L15465_)
                                               (let ((_$e15484_
                                                      (find (lambda (_g1547915481_)
                                                              (gx#free-identifier=?
                                                               _L15465_
                                                               _g1547915481_))
                                                            _ids15416_)))
                                                 (if _$e15484_
                                                     _$e15484_
                                                     (gxc#compile-e
                                                      _L15464_
                                                      _ids15416_))))
                                             _hd1542915459_
                                             _hd1542615451_)
                                            (_g1541815435_ _g1541915438_))))
                                    (_g1541815435_ _g1541915438_))))
                            (_g1541815435_ _g1541915438_))))
                    (_g1541815435_ _g1541915438_)))))
        (_g1541715487_ _stx15415_))))
  (define gxc#generate-ssxi-module%
    (lambda (_stx15355_)
      (let* ((_g1535715371_
              (lambda (_g1535815368_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1535815368_)))
             (_g1535615412_
              (lambda (_g1535815374_)
                (if (gx#stx-pair? _g1535815374_)
                    (let ((_e1536115376_ (gx#stx-e _g1535815374_)))
                      (let ((_hd1536215379_ (##car _e1536115376_))
                            (_tl1536315381_ (##cdr _e1536115376_)))
                        (if (gx#stx-pair? _tl1536315381_)
                            (let ((_e1536415384_ (gx#stx-e _tl1536315381_)))
                              (let ((_hd1536515387_ (##car _e1536415384_))
                                    (_tl1536615389_ (##cdr _e1536415384_)))
                                ((lambda (_L15392_ _L15393_)
                                   (let* ((_ctx15406_
                                           (gx#syntax-local-e__0 _L15393_))
                                          (_code15408_
                                           (##structure-ref
                                            _ctx15406_
                                            '11
                                            gx#module-context::t
                                            '#f)))
                                     (call-with-parameters
                                      (lambda () (gxc#compile-e _code15408_))
                                      gx#current-expander-context
                                      _ctx15406_)))
                                 _tl1536615389_
                                 _hd1536515387_)))
                            (_g1535715371_ _g1535815374_))))
                    (_g1535715371_ _g1535815374_)))))
        (_g1535615412_ _stx15355_))))
  (define gxc#generate-ssxi-define-values%
    (lambda (_stx15165_)
      (letrec ((_generate-e15167_
                (lambda (_id15344_)
                  (let* ((_sym15346_
                          (if (gx#identifier? (gx#datum->syntax__0 '#f 'id))
                              (gxc#identifier-symbol _id15344_)
                              '#f))
                         (_$e15348_
                          (if _sym15346_
                              (gxc#optimizer-lookup-type _sym15346_)
                              '#f)))
                    (if _$e15348_
                        ((lambda (_type15351_)
                           (begin
                             (gxc#verbose '"generate typedecl " _sym15346_)
                             (let ((_typedecl15353_
                                    (call-method _type15351_ 'typedecl)))
                               (cons 'declare-type
                                     (cons _sym15346_
                                           (cons _typedecl15353_ '()))))))
                         _$e15348_)
                        '(begin))))))
        (let* ((_g1517015208_
                (lambda (_g1517115205_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1517115205_)))
               (_g1516915289_
                (lambda (_g1517115211_)
                  (if (gx#stx-pair? _g1517115211_)
                      (let ((_e1518615213_ (gx#stx-e _g1517115211_)))
                        (let ((_hd1518715216_ (##car _e1518615213_))
                              (_tl1518815218_ (##cdr _e1518615213_)))
                          (if (gx#stx-pair? _tl1518815218_)
                              (let ((_e1518915221_ (gx#stx-e _tl1518815218_)))
                                (let ((_hd1519015224_ (##car _e1518915221_))
                                      (_tl1519115226_ (##cdr _e1518915221_)))
                                  (if (gx#stx-pair/null? _hd1519015224_)
                                      (if (fx>= (gx#stx-length _hd1519015224_)
                                                '0)
                                          (let ((_g34957_
                                                 (gx#syntax-split-splice
                                                  _hd1519015224_
                                                  '0)))
                                            (begin
                                              (let ((_g34958_
                                                     (if (##values? _g34957_)
                                                         (##vector-length
                                                          _g34957_)
                                                         1)))
                                                (if (not (##fx= _g34958_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34958_)))
                                              (let ((_target1519215229_
                                                     (##vector-ref _g34957_ 0))
                                                    (_tl1519415231_
                                                     (##vector-ref
                                                      _g34957_
                                                      1)))
                                                (if (gx#stx-null?
                                                     _tl1519415231_)
                                                    (letrec ((_loop1519515234_
                                                              (lambda (_hd1519315237_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id1519915239_)
                        (if (gx#stx-pair? _hd1519315237_)
                            (let ((_e1519615242_ (gx#stx-e _hd1519315237_)))
                              (let ((_lp-hd1519715245_ (##car _e1519615242_))
                                    (_lp-tl1519815247_ (##cdr _e1519615242_)))
                                (_loop1519515234_
                                 _lp-tl1519815247_
                                 (cons _lp-hd1519715245_ _id1519915239_))))
                            (let ((_id1520015250_ (reverse _id1519915239_)))
                              (if (gx#stx-pair? _tl1519115226_)
                                  (let ((_e1520115253_
                                         (gx#stx-e _tl1519115226_)))
                                    (let ((_hd1520215256_
                                           (##car _e1520115253_))
                                          (_tl1520315258_
                                           (##cdr _e1520115253_)))
                                      (if (gx#stx-null? _tl1520315258_)
                                          ((lambda (_L15261_)
                                             (let ((_types15287_
                                                    (map _generate-e15167_
                                                         (begin
                                                           '#!void
                                                           (foldr1 (lambda (_g1527915282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _g1528015284_)
                             (cons _g1527915282_ _g1528015284_))
                           '()
                           _L15261_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons 'begin _types15287_)))
                                           _id1520015250_)
                                          (_g1517015208_ _g1517115211_))))
                                  (_g1517015208_ _g1517115211_)))))))
              (_loop1519515234_ _target1519215229_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1517015208_
                                                     _g1517115211_)))))
                                          (_g1517015208_ _g1517115211_))
                                      (_g1517015208_ _g1517115211_))))
                              (_g1517015208_ _g1517115211_))))
                      (_g1517015208_ _g1517115211_))))
               (_g1516815341_
                (lambda (_g1517115292_)
                  (if (gx#stx-pair? _g1517115292_)
                      (let ((_e1517315294_ (gx#stx-e _g1517115292_)))
                        (let ((_hd1517415297_ (##car _e1517315294_))
                              (_tl1517515299_ (##cdr _e1517315294_)))
                          (if (gx#stx-pair? _tl1517515299_)
                              (let ((_e1517615302_ (gx#stx-e _tl1517515299_)))
                                (let ((_hd1517715305_ (##car _e1517615302_))
                                      (_tl1517815307_ (##cdr _e1517615302_)))
                                  (if (gx#stx-pair? _hd1517715305_)
                                      (let ((_e1517915310_
                                             (gx#stx-e _hd1517715305_)))
                                        (let ((_hd1518015313_
                                               (##car _e1517915310_))
                                              (_tl1518115315_
                                               (##cdr _e1517915310_)))
                                          (if (gx#stx-null? _tl1518115315_)
                                              (if (gx#stx-pair? _tl1517815307_)
                                                  (let ((_e1518215318_
                                                         (gx#stx-e
                                                          _tl1517815307_)))
                                                    (let ((_hd1518315321_
                                                           (##car _e1518215318_))
                                                          (_tl1518415323_
                                                           (##cdr _e1518215318_)))
                                                      (if (gx#stx-null?
                                                           _tl1518415323_)
                                                          ((lambda (_L15326_)
                                                             (_generate-e15167_
                                                              _L15326_))
                                                           _hd1518015313_)
                                                          (_g1516915289_
                                                           _g1517115292_))))
                                                  (_g1516915289_
                                                   _g1517115292_))
                                              (_g1516915289_ _g1517115292_))))
                                      (_g1516915289_ _g1517115292_))))
                              (_g1516915289_ _g1517115292_))))
                      (_g1516915289_ _g1517115292_)))))
          (_g1516815341_ _stx15165_)))))
  (define gxc#generate-ssxi-call%
    (lambda (_stx14719_)
      (let* ((_g1472314825_
              (lambda (_g1472414822_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g1472414822_)))
             (_g1472214832_ (lambda (_g1472414828_) ((lambda () '(begin)))))
             (_g1472114982_
              (lambda (_g1472414835_)
                (if (gx#stx-pair? _g1472414835_)
                    (let ((_e1478214837_ (gx#stx-e _g1472414835_)))
                      (let ((_hd1478314840_ (##car _e1478214837_))
                            (_tl1478414842_ (##cdr _e1478214837_)))
                        (if (gx#stx-pair? _tl1478414842_)
                            (let ((_e1478514845_ (gx#stx-e _tl1478414842_)))
                              (let ((_hd1478614848_ (##car _e1478514845_))
                                    (_tl1478714850_ (##cdr _e1478514845_)))
                                (if (gx#stx-pair? _hd1478614848_)
                                    (let ((_e1478814853_
                                           (gx#stx-e _hd1478614848_)))
                                      (let ((_hd1478914856_
                                             (##car _e1478814853_))
                                            (_tl1479014858_
                                             (##cdr _e1478814853_)))
                                        (if (gx#identifier? _hd1478914856_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1478914856_)
                                                (if (gx#stx-pair?
                                                     _tl1479014858_)
                                                    (let ((_e1479114861_
                                                           (gx#stx-e
                                                            _tl1479014858_)))
                                                      (let ((_hd1479214864_
                                                             (##car _e1479114861_))
                                                            (_tl1479314866_
                                                             (##cdr _e1479114861_)))
                                                        (if (gx#stx-null?
                                                             _tl1479314866_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1478714850_)
                        (let ((_e1479414869_ (gx#stx-e _tl1478714850_)))
                          (let ((_hd1479514872_ (##car _e1479414869_))
                                (_tl1479614874_ (##cdr _e1479414869_)))
                            (if (gx#stx-pair? _hd1479514872_)
                                (let ((_e1479714877_
                                       (gx#stx-e _hd1479514872_)))
                                  (let ((_hd1479814880_ (##car _e1479714877_))
                                        (_tl1479914882_ (##cdr _e1479714877_)))
                                    (if (gx#identifier? _hd1479814880_)
                                        (if (gx#stx-eq? '%#ref _hd1479814880_)
                                            (if (gx#stx-pair? _tl1479914882_)
                                                (let ((_e1480014885_
                                                       (gx#stx-e
                                                        _tl1479914882_)))
                                                  (let ((_hd1480114888_
                                                         (##car _e1480014885_))
                                                        (_tl1480214890_
                                                         (##cdr _e1480014885_)))
                                                    (if (gx#stx-null?
                                                         _tl1480214890_)
                                                        (if (gx#stx-pair?
                                                             _tl1479614874_)
                                                            (let ((_e1480314893_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1479614874_)))
                      (let ((_hd1480414896_ (##car _e1480314893_))
                            (_tl1480514898_ (##cdr _e1480314893_)))
                        (if (gx#stx-pair? _hd1480414896_)
                            (let ((_e1480614901_ (gx#stx-e _hd1480414896_)))
                              (let ((_hd1480714904_ (##car _e1480614901_))
                                    (_tl1480814906_ (##cdr _e1480614901_)))
                                (if (gx#identifier? _hd1480714904_)
                                    (if (gx#stx-eq? '%#quote _hd1480714904_)
                                        (if (gx#stx-pair? _tl1480814906_)
                                            (let ((_e1480914909_
                                                   (gx#stx-e _tl1480814906_)))
                                              (let ((_hd1481014912_
                                                     (##car _e1480914909_))
                                                    (_tl1481114914_
                                                     (##cdr _e1480914909_)))
                                                (if (gx#stx-null?
                                                     _tl1481114914_)
                                                    (if (gx#stx-pair?
                                                         _tl1480514898_)
                                                        (let ((_e1481214917_
                                                               (gx#stx-e
                                                                _tl1480514898_)))
                                                          (let ((_hd1481314920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1481214917_))
                        (_tl1481414922_ (##cdr _e1481214917_)))
                    (if (gx#stx-pair? _hd1481314920_)
                        (let ((_e1481514925_ (gx#stx-e _hd1481314920_)))
                          (let ((_hd1481614928_ (##car _e1481514925_))
                                (_tl1481714930_ (##cdr _e1481514925_)))
                            (if (gx#identifier? _hd1481614928_)
                                (if (gx#stx-eq? '%#ref _hd1481614928_)
                                    (if (gx#stx-pair? _tl1481714930_)
                                        (let ((_e1481814933_
                                               (gx#stx-e _tl1481714930_)))
                                          (let ((_hd1481914936_
                                                 (##car _e1481814933_))
                                                (_tl1482014938_
                                                 (##cdr _e1481814933_)))
                                            (if (gx#stx-null? _tl1482014938_)
                                                (if (gx#stx-null?
                                                     _tl1481414922_)
                                                    ((lambda (_L14941_
                                                              _L14942_
                                                              _L14943_
                                                              _L14944_)
                                                       (if (gxc#runtime-identifier=?
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '-bind-method)
                                                            'bind-method!)
                                                           (cons 'declare-method
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gxc#identifier-symbol _L14943_)
                               (cons (gx#stx-e _L14942_)
                                     (cons (gxc#identifier-symbol _L14941_)
                                           (cons '#f '())))))
                   (_g1472214832_ _g1472414835_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd1481914936_
                                                     _hd1481014912_
                                                     _hd1480114888_
                                                     _hd1479214864_)
                                                    (_g1472214832_
                                                     _g1472414835_))
                                                (_g1472214832_
                                                 _g1472414835_))))
                                        (_g1472214832_ _g1472414835_))
                                    (_g1472214832_ _g1472414835_))
                                (_g1472214832_ _g1472414835_))))
                        (_g1472214832_ _g1472414835_))))
                (_g1472214832_ _g1472414835_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1472214832_
                                                     _g1472414835_))))
                                            (_g1472214832_ _g1472414835_))
                                        (_g1472214832_ _g1472414835_))
                                    (_g1472214832_ _g1472414835_))))
                            (_g1472214832_ _g1472414835_))))
                    (_g1472214832_ _g1472414835_))
                (_g1472214832_ _g1472414835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1472214832_ _g1472414835_))
                                            (_g1472214832_ _g1472414835_))
                                        (_g1472214832_ _g1472414835_))))
                                (_g1472214832_ _g1472414835_))))
                        (_g1472214832_ _g1472414835_))
                    (_g1472214832_ _g1472414835_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1472214832_
                                                     _g1472414835_))
                                                (_g1472214832_ _g1472414835_))
                                            (_g1472214832_ _g1472414835_))))
                                    (_g1472214832_ _g1472414835_))))
                            (_g1472214832_ _g1472414835_))))
                    (_g1472214832_ _g1472414835_))))
             (_g1472015162_
              (lambda (_g1472414985_)
                (if (gx#stx-pair? _g1472414985_)
                    (let ((_e1473014987_ (gx#stx-e _g1472414985_)))
                      (let ((_hd1473114990_ (##car _e1473014987_))
                            (_tl1473214992_ (##cdr _e1473014987_)))
                        (if (gx#stx-pair? _tl1473214992_)
                            (let ((_e1473314995_ (gx#stx-e _tl1473214992_)))
                              (let ((_hd1473414998_ (##car _e1473314995_))
                                    (_tl1473515000_ (##cdr _e1473314995_)))
                                (if (gx#stx-pair? _hd1473414998_)
                                    (let ((_e1473615003_
                                           (gx#stx-e _hd1473414998_)))
                                      (let ((_hd1473715006_
                                             (##car _e1473615003_))
                                            (_tl1473815008_
                                             (##cdr _e1473615003_)))
                                        (if (gx#identifier? _hd1473715006_)
                                            (if (gx#stx-eq?
                                                 '%#ref
                                                 _hd1473715006_)
                                                (if (gx#stx-pair?
                                                     _tl1473815008_)
                                                    (let ((_e1473915011_
                                                           (gx#stx-e
                                                            _tl1473815008_)))
                                                      (let ((_hd1474015014_
                                                             (##car _e1473915011_))
                                                            (_tl1474115016_
                                                             (##cdr _e1473915011_)))
                                                        (if (gx#stx-null?
                                                             _tl1474115016_)
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1473515000_)
                        (let ((_e1474215019_ (gx#stx-e _tl1473515000_)))
                          (let ((_hd1474315022_ (##car _e1474215019_))
                                (_tl1474415024_ (##cdr _e1474215019_)))
                            (if (gx#stx-pair? _hd1474315022_)
                                (let ((_e1474515027_
                                       (gx#stx-e _hd1474315022_)))
                                  (let ((_hd1474615030_ (##car _e1474515027_))
                                        (_tl1474715032_ (##cdr _e1474515027_)))
                                    (if (gx#identifier? _hd1474615030_)
                                        (if (gx#stx-eq? '%#ref _hd1474615030_)
                                            (if (gx#stx-pair? _tl1474715032_)
                                                (let ((_e1474815035_
                                                       (gx#stx-e
                                                        _tl1474715032_)))
                                                  (let ((_hd1474915038_
                                                         (##car _e1474815035_))
                                                        (_tl1475015040_
                                                         (##cdr _e1474815035_)))
                                                    (if (gx#stx-null?
                                                         _tl1475015040_)
                                                        (if (gx#stx-pair?
                                                             _tl1474415024_)
                                                            (let ((_e1475115043_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _tl1474415024_)))
                      (let ((_hd1475215046_ (##car _e1475115043_))
                            (_tl1475315048_ (##cdr _e1475115043_)))
                        (if (gx#stx-pair? _hd1475215046_)
                            (let ((_e1475415051_ (gx#stx-e _hd1475215046_)))
                              (let ((_hd1475515054_ (##car _e1475415051_))
                                    (_tl1475615056_ (##cdr _e1475415051_)))
                                (if (gx#identifier? _hd1475515054_)
                                    (if (gx#stx-eq? '%#quote _hd1475515054_)
                                        (if (gx#stx-pair? _tl1475615056_)
                                            (let ((_e1475715059_
                                                   (gx#stx-e _tl1475615056_)))
                                              (let ((_hd1475815062_
                                                     (##car _e1475715059_))
                                                    (_tl1475915064_
                                                     (##cdr _e1475715059_)))
                                                (if (gx#stx-null?
                                                     _tl1475915064_)
                                                    (if (gx#stx-pair?
                                                         _tl1475315048_)
                                                        (let ((_e1476015067_
                                                               (gx#stx-e
                                                                _tl1475315048_)))
                                                          (let ((_hd1476115070_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e1476015067_))
                        (_tl1476215072_ (##cdr _e1476015067_)))
                    (if (gx#stx-pair? _hd1476115070_)
                        (let ((_e1476315075_ (gx#stx-e _hd1476115070_)))
                          (let ((_hd1476415078_ (##car _e1476315075_))
                                (_tl1476515080_ (##cdr _e1476315075_)))
                            (if (gx#identifier? _hd1476415078_)
                                (if (gx#stx-eq? '%#ref _hd1476415078_)
                                    (if (gx#stx-pair? _tl1476515080_)
                                        (let ((_e1476615083_
                                               (gx#stx-e _tl1476515080_)))
                                          (let ((_hd1476715086_
                                                 (##car _e1476615083_))
                                                (_tl1476815088_
                                                 (##cdr _e1476615083_)))
                                            (if (gx#stx-null? _tl1476815088_)
                                                (if (gx#stx-pair?
                                                     _tl1476215072_)
                                                    (let ((_e1476915091_
                                                           (gx#stx-e
                                                            _tl1476215072_)))
                                                      (let ((_hd1477015094_
                                                             (##car _e1476915091_))
                                                            (_tl1477115096_
                                                             (##cdr _e1476915091_)))
                                                        (if (gx#stx-pair?
                                                             _hd1477015094_)
                                                            (let ((_e1477215099_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-e _hd1477015094_)))
                      (let ((_hd1477315102_ (##car _e1477215099_))
                            (_tl1477415104_ (##cdr _e1477215099_)))
                        (if (gx#identifier? _hd1477315102_)
                            (if (gx#stx-eq? '%#quote _hd1477315102_)
                                (if (gx#stx-pair? _tl1477415104_)
                                    (let ((_e1477515107_
                                           (gx#stx-e _tl1477415104_)))
                                      (let ((_hd1477615110_
                                             (##car _e1477515107_))
                                            (_tl1477715112_
                                             (##cdr _e1477515107_)))
                                        (if (gx#stx-null? _tl1477715112_)
                                            (if (gx#stx-null? _tl1477115096_)
                                                ((lambda (_L15115_
                                                          _L15116_
                                                          _L15117_
                                                          _L15118_
                                                          _L15119_)
                                                   (if (gxc#runtime-identifier=?
                                                        _L15119_
                                                        'bind-method!)
                                                       (cons 'declare-method
                                                             (cons (gxc#identifier-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _L15118_)
                           (cons (gx#stx-e _L15117_)
                                 (cons (gxc#identifier-symbol _L15116_)
                                       (cons (gx#stx-e _L15115_) '())))))
               (_g1472114982_ _g1472414985_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd1477615110_
                                                 _hd1476715086_
                                                 _hd1475815062_
                                                 _hd1474915038_
                                                 _hd1474015014_)
                                                (_g1472114982_ _g1472414985_))
                                            (_g1472114982_ _g1472414985_))))
                                    (_g1472114982_ _g1472414985_))
                                (_g1472114982_ _g1472414985_))
                            (_g1472114982_ _g1472414985_))))
                    (_g1472114982_ _g1472414985_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1472114982_
                                                     _g1472414985_))
                                                (_g1472114982_
                                                 _g1472414985_))))
                                        (_g1472114982_ _g1472414985_))
                                    (_g1472114982_ _g1472414985_))
                                (_g1472114982_ _g1472414985_))))
                        (_g1472114982_ _g1472414985_))))
                (_g1472114982_ _g1472414985_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1472114982_
                                                     _g1472414985_))))
                                            (_g1472114982_ _g1472414985_))
                                        (_g1472114982_ _g1472414985_))
                                    (_g1472114982_ _g1472414985_))))
                            (_g1472114982_ _g1472414985_))))
                    (_g1472114982_ _g1472414985_))
                (_g1472114982_ _g1472414985_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1472114982_ _g1472414985_))
                                            (_g1472114982_ _g1472414985_))
                                        (_g1472114982_ _g1472414985_))))
                                (_g1472114982_ _g1472414985_))))
                        (_g1472114982_ _g1472414985_))
                    (_g1472114982_ _g1472414985_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g1472114982_
                                                     _g1472414985_))
                                                (_g1472114982_ _g1472414985_))
                                            (_g1472114982_ _g1472414985_))))
                                    (_g1472114982_ _g1472414985_))))
                            (_g1472114982_ _g1472414985_))))
                    (_g1472114982_ _g1472414985_)))))
        (_g1472015162_ _stx14719_))))
  (define gxc#!alias::typedecl
    (lambda (_self14695_)
      (let* ((_self1469614702_ _self14695_)
             (_E1469814706_
              (lambda () (error '"No clause matching" _self1469614702_)))
             (_K1469914711_
              (lambda (_alias-id14709_)
                (cons '@alias (cons _alias-id14709_ '())))))
        (if (##structure-instance-of? _self1469614702_ 'gxc#!alias::t)
            (let* ((_e1470014714_ (##vector-ref _self1469614702_ '1))
                   (_alias-id14717_ _e1470014714_))
              (_K1469914711_ _alias-id14717_))
            (_E1469814706_)))))
  (bind-method! gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f)
  (define gxc#!struct-type::typedecl
    (lambda (_self14517_)
      (let* ((_self1451814529_ _self14517_)
             (_E1452014533_
              (lambda () (error '"No clause matching" _self1451814529_)))
             (_K1452114542_
              (lambda (_plist14536_
                       _ctor14537_
                       _fields14538_
                       _super14539_
                       _type-id14540_)
                (cons '@struct-type
                      (cons _type-id14540_
                            (cons _super14539_
                                  (cons _fields14538_
                                        (cons _ctor14537_
                                              (cons _plist14536_ '())))))))))
        (if (##structure-instance-of? _self1451814529_ 'gxc#!struct-type::t)
            (let* ((_e1452214545_ (##vector-ref _self1451814529_ '1))
                   (_type-id14548_ _e1452214545_)
                   (_e1452314550_ (##vector-ref _self1451814529_ '2))
                   (_super14553_ _e1452314550_)
                   (_e1452414555_ (##vector-ref _self1451814529_ '3))
                   (_fields14558_ _e1452414555_)
                   (_e1452514560_ (##vector-ref _self1451814529_ '4))
                   (_e1452614563_ (##vector-ref _self1451814529_ '5))
                   (_ctor14566_ _e1452614563_)
                   (_e1452714568_ (##vector-ref _self1451814529_ '6))
                   (_plist14571_ _e1452714568_))
              (_K1452114542_
               _plist14571_
               _ctor14566_
               _fields14558_
               _super14553_
               _type-id14548_))
            (_E1452014533_)))))
  (bind-method! gxc#!struct-type::t 'typedecl gxc#!struct-type::typedecl '#f)
  (define gxc#!struct-pred::typedecl
    (lambda (_self14371_)
      (let* ((_self1437214378_ _self14371_)
             (_E1437414382_
              (lambda () (error '"No clause matching" _self1437214378_)))
             (_K1437514387_
              (lambda (_struct-t14385_)
                (cons '@struct-pred (cons _struct-t14385_ '())))))
        (if (##structure-instance-of? _self1437214378_ 'gxc#!struct-pred::t)
            (let* ((_e1437614390_ (##vector-ref _self1437214378_ '1))
                   (_struct-t14393_ _e1437614390_))
              (_K1437514387_ _struct-t14393_))
            (_E1437414382_)))))
  (bind-method! gxc#!struct-pred::t 'typedecl gxc#!struct-pred::typedecl '#f)
  (define gxc#!struct-cons::typedecl
    (lambda (_self14225_)
      (let* ((_self1422614232_ _self14225_)
             (_E1422814236_
              (lambda () (error '"No clause matching" _self1422614232_)))
             (_K1422914241_
              (lambda (_struct-t14239_)
                (cons '@struct-cons (cons _struct-t14239_ '())))))
        (if (##structure-instance-of? _self1422614232_ 'gxc#!struct-cons::t)
            (let* ((_e1423014244_ (##vector-ref _self1422614232_ '1))
                   (_struct-t14247_ _e1423014244_))
              (_K1422914241_ _struct-t14247_))
            (_E1422814236_)))))
  (bind-method! gxc#!struct-cons::t 'typedecl gxc#!struct-cons::typedecl '#f)
  (define gxc#!struct-getf::typedecl
    (lambda (_self14065_)
      (let* ((_self1406614074_ _self14065_)
             (_E1406814078_
              (lambda () (error '"No clause matching" _self1406614074_)))
             (_K1406914085_
              (lambda (_unchecked?14081_ _off14082_ _struct-t14083_)
                (cons '@struct-getf
                      (cons _struct-t14083_
                            (cons _off14082_ (cons _unchecked?14081_ '())))))))
        (if (##structure-instance-of? _self1406614074_ 'gxc#!struct-getf::t)
            (let* ((_e1407014088_ (##vector-ref _self1406614074_ '1))
                   (_struct-t14091_ _e1407014088_)
                   (_e1407114093_ (##vector-ref _self1406614074_ '2))
                   (_off14096_ _e1407114093_)
                   (_e1407214098_ (##vector-ref _self1406614074_ '3))
                   (_unchecked?14101_ _e1407214098_))
              (_K1406914085_ _unchecked?14101_ _off14096_ _struct-t14091_))
            (_E1406814078_)))))
  (bind-method! gxc#!struct-getf::t 'typedecl gxc#!struct-getf::typedecl '#f)
  (define gxc#!struct-setf::typedecl
    (lambda (_self13905_)
      (let* ((_self1390613914_ _self13905_)
             (_E1390813918_
              (lambda () (error '"No clause matching" _self1390613914_)))
             (_K1390913925_
              (lambda (_unchecked?13921_ _off13922_ _struct-t13923_)
                (cons '@struct-setf
                      (cons _struct-t13923_
                            (cons _off13922_ (cons _unchecked?13921_ '())))))))
        (if (##structure-instance-of? _self1390613914_ 'gxc#!struct-setf::t)
            (let* ((_e1391013928_ (##vector-ref _self1390613914_ '1))
                   (_struct-t13931_ _e1391013928_)
                   (_e1391113933_ (##vector-ref _self1390613914_ '2))
                   (_off13936_ _e1391113933_)
                   (_e1391213938_ (##vector-ref _self1390613914_ '3))
                   (_unchecked?13941_ _e1391213938_))
              (_K1390913925_ _unchecked?13941_ _off13936_ _struct-t13931_))
            (_E1390813918_)))))
  (bind-method! gxc#!struct-setf::t 'typedecl gxc#!struct-setf::typedecl '#f)
  (define gxc#!lambda::typedecl
    (lambda (_self13731_)
      (let* ((_self1373213742_ _self13731_)
             (_E1373413746_
              (lambda () (error '"No clause matching" _self1373213742_)))
             (_K1373513757_
              (lambda (_typedecl13749_
                       _inline13750_
                       _dispatch13751_
                       _arity13752_)
                (if _inline13750_
                    (let ((_$e13754_ _typedecl13749_))
                      (if _$e13754_
                          _$e13754_
                          (error '"Cannot generate typedecl for inline rules")))
                    (cons '@lambda
                          (cons _arity13752_ (cons _dispatch13751_ '())))))))
        (if (##structure-instance-of? _self1373213742_ 'gxc#!lambda::t)
            (let* ((_e1373613760_ (##vector-ref _self1373213742_ '1))
                   (_e1373713763_ (##vector-ref _self1373213742_ '2))
                   (_arity13766_ _e1373713763_)
                   (_e1373813768_ (##vector-ref _self1373213742_ '3))
                   (_dispatch13771_ _e1373813768_)
                   (_e1373913773_ (##vector-ref _self1373213742_ '4))
                   (_inline13776_ _e1373913773_)
                   (_e1374013778_ (##vector-ref _self1373213742_ '5))
                   (_typedecl13781_ _e1374013778_))
              (_K1373513757_
               _typedecl13781_
               _inline13776_
               _dispatch13771_
               _arity13766_))
            (_E1373413746_)))))
  (bind-method! gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f)
  (define gxc#!case-lambda::typedecl
    (lambda (_self13542_)
      (letrec ((_clause-e13544_
                (lambda (_clause13574_)
                  (let* ((_clause1357513583_ _clause13574_)
                         (_E1357713587_
                          (lambda ()
                            (error '"No clause matching" _clause1357513583_)))
                         (_K1357813593_
                          (lambda (_dispatch13590_ _arity13591_)
                            (cons _arity13591_ (cons _dispatch13590_ '())))))
                    (if (##structure-instance-of?
                         _clause1357513583_
                         'gxc#!lambda::t)
                        (let* ((_e1357913596_
                                (##vector-ref _clause1357513583_ '1))
                               (_e1358013599_
                                (##vector-ref _clause1357513583_ '2))
                               (_arity13602_ _e1358013599_)
                               (_e1358113604_
                                (##vector-ref _clause1357513583_ '3))
                               (_dispatch13607_ _e1358113604_))
                          (_K1357813593_ _dispatch13607_ _arity13602_))
                        (_E1357713587_))))))
        (let* ((_self1354513552_ _self13542_)
               (_E1354713556_
                (lambda () (error '"No clause matching" _self1354513552_)))
               (_K1354813563_
                (lambda (_clauses13559_)
                  (let ((_clauses13561_ (map _clause-e13544_ _clauses13559_)))
                    (cons '@case-lambda _clauses13561_)))))
          (if (##structure-instance-of? _self1354513552_ 'gxc#!case-lambda::t)
              (let* ((_e1354913566_ (##vector-ref _self1354513552_ '1))
                     (_e1355013569_ (##vector-ref _self1354513552_ '2))
                     (_clauses13572_ _e1355013569_))
                (_K1354813563_ _clauses13572_))
              (_E1354713556_))))))
  (bind-method! gxc#!case-lambda::t 'typedecl gxc#!case-lambda::typedecl '#f)
  (define gxc#!kw-lambda::typedecl
    (lambda (_self13385_)
      (let* ((_self1338613394_ _self13385_)
             (_E1338813398_
              (lambda () (error '"No clause matching" _self1338613394_)))
             (_K1338913404_
              (lambda (_dispatch13401_ _table13402_)
                (cons '@kw-lambda
                      (cons _table13402_ (cons _dispatch13401_ '()))))))
        (if (##structure-instance-of? _self1338613394_ 'gxc#!kw-lambda::t)
            (let* ((_e1339013407_ (##vector-ref _self1338613394_ '1))
                   (_e1339113410_ (##vector-ref _self1338613394_ '2))
                   (_table13413_ _e1339113410_)
                   (_e1339213415_ (##vector-ref _self1338613394_ '3))
                   (_dispatch13418_ _e1339213415_))
              (_K1338913404_ _dispatch13418_ _table13413_))
            (_E1338813398_)))))
  (bind-method! gxc#!kw-lambda::t 'typedecl gxc#!kw-lambda::typedecl '#f)
  (define gxc#!kw-lambda-primary::typedecl
    (lambda (_self13228_)
      (let* ((_self1322913237_ _self13228_)
             (_E1323113241_
              (lambda () (error '"No clause matching" _self1322913237_)))
             (_K1323213247_
              (lambda (_main13244_ _keys13245_)
                (cons '@kw-lambda-dispatch
                      (cons _keys13245_ (cons _main13244_ '()))))))
        (if (##structure-instance-of?
             _self1322913237_
             'gxc#!kw-lambda-primary::t)
            (let* ((_e1323313250_ (##vector-ref _self1322913237_ '1))
                   (_e1323413253_ (##vector-ref _self1322913237_ '2))
                   (_keys13256_ _e1323413253_)
                   (_e1323513258_ (##vector-ref _self1322913237_ '3))
                   (_main13261_ _e1323513258_))
              (_K1323213247_ _main13261_ _keys13256_))
            (_E1323113241_)))))
  (bind-method!
   gxc#!kw-lambda-primary::t
   'typedecl
   gxc#!kw-lambda-primary::typedecl
   '#f)
  (define gxc#identifier-symbol
    (lambda (_stx13104_)
      (if (##structure-direct-instance-of? _stx13104_ 'gx#syntax-quote::t)
          (gxc#generate-runtime-binding-id _stx13104_)
          (gx#stx-e _stx13104_)))))
